---
tags: [ressource, ai-storage, rag, chatbot, cancom]
status: aktiv
erstellt: 2026-05-15
---

# Storage-Relevanz in der CANCOM Chatbot-Architektur

*Einordnung in das AI Storage Inhaltsverzeichnis V5*

## Übersicht

Die Chatbot-Architektur ist ein konkretes Beispiel für eine produktive **RAG-basierte Inferenz-Anwendung** (Retrieval-Augmented Generation – Anreicherung eines LLM mit externen Dokumenten zur Laufzeit). Sie macht Storage-Konzepte greifbar und beobachtbar. Die folgende Analyse ordnet jede Storage-Komponente dem passenden Kapitel des AI-Storage-Inhaltsverzeichnisses zu.

---

## Architektur-Komponenten und ihre Storage-Relevanz

### 1. QDrant Vector DB — Kapitel 4.6 & 2.1

**Was sie tut:**
QDrant speichert Embeddings (hochdimensionale numerische Repräsentationen von Dokumenten) und führt bei jeder RAG-Anfrage einen Approximate Nearest Neighbor Search (ANN) durch.

**Storage-Verhalten:**
Arbeitet mit Memory-Mapped Files (mmap). Index liegt auf Disk, heiße Segmente im RAM. I/O-Muster: **random read-heavy**, kleine Blockgrößen (< 4 KB).

**On-Premises Empfehlung:**

| Szenario | Storage-Typ | Begründung |
|---|---|---|
| Single-Node, bis ~100 GB Index | Lokale NVMe (DAS) | Latenz < 0,1 ms, kein Netzwerkhop |
| Multi-Node / HA | SAN mit NVMe-oF | Shared Block Device, Latenz nahe DAS-Niveau |
| Bestehende All-Flash NAS | NAS (NFS over RDMA) | Akzeptabel bei ≥ 25 GbE und All-Flash-Backend |

> **Kapitel-Verweise:** 2.1 (Block vs. File Storage), 2.2 (DAS / SAN / NAS), 3.5 (Datenpfade & Zugriffsmuster), 4.6 (Vektor-Datenbanken)

---

### 2. S3 / Azure Blob — Kapitel 2.9 & 4.5

**Was sie tut:**
Persistenter Speicher für Raw Documents (`source/relative_path`) und Processed Documents (`connector_id/source_type/source_id/id`). Ingestion-Prozess greift asynchron zu.

**Storage-Verhalten:**
Sequentielle Reads und Writes, große Objekte (PDFs, Word-Dateien), keine Echtzeit-Latenzanforderung. Throughput wichtiger als IOPS.

**On-Premises Empfehlung:**
S3-kompatibles Object Storage (z. B. MinIO, Dell ObjectScale, IBM COS). Kein All-Flash erforderlich – Hybrid oder kapazitätsorientiertes Flash reicht.

> **Kapitel-Verweise:** 2.9 (Object Storage / S3), 4.5 (Ablauf RAG-Prozess: Ingestion & Chunking)

---

### 3. MongoDB — Kapitel 2.1 & 3.5

**Was sie tut:**
Hält User-Daten, Bot-Konfigurationen und Chat-Historien. Backend greift bei jeder Anfrage darauf zu (Konversationskontext laden).

**Storage-Verhalten:**
Gemischtes I/O-Muster: kleine Reads (Benutzer, Sessions) und Writes (Chat speichern). Konsistenz wichtiger als reine Performance, aber Latenz beeinflusst wahrgenommene Antwortzeit.

**On-Premises Empfehlung:**
Block Storage (SAN oder lokale NVMe) für das MongoDB-Datenverzeichnis. Snapshots für Backup.

> **Kapitel-Verweise:** 2.1 (Block Storage), 3.6 (Schutzmechanismen & Snapshots), 4.7 (Storage-Muster zu Workloads)

---

### 4. Redis Streams — Kapitel 3.5

**Was sie tut:**
Message-Broker zwischen Ingestion-Prozess und Embedding-Service (Event: `evt.ingestion.task.completed`). Daten primär im RAM.

**Storage-Relevanz:**
Bei Persistenz (AOF – Append Only File, oder RDB-Snapshots) wird Storage beansprucht. I/O-Muster: sequentiell-schreibend.

> **Kapitel-Verweise:** 3.5 (Datenpfade & Caching), 4.7 (Storage-Muster: RAM-naher Tier)

---

### 5. Embedding-Service — Kapitel 4.5 & 5.2

**Was sie tut:**
Transformiert Chunks aus Processed Documents in Vektoren → schreibt in QDrant. Liest aus S3.

**Storage-Relevanz:**
Wenn GPU-basiert (z. B. sentence-transformers auf GPU): GPUDirect Storage (GDS – direkte Verbindung zwischen Storage und GPU ohne CPU-Umweg) kann die Pipeline beschleunigen.

> **Kapitel-Verweise:** 4.5 (Ablauf RAG-Prozess: Embeddings), 5.2 (AI-Frameworks und ihr Storage-Zugriff)

---

## Gesamtbild: Storage-Tier-Zuordnung

```
┌─────────────────────────────────────────────────────────┐
│                  Chatbot-Architektur                    │
│                                                         │
│  Tier 0 (RAM)      Redis Streams (Hot Cache)            │
│  Tier 1 (NVMe)     QDrant Vector DB (Random Read)       │
│  Tier 1 (NVMe/SAN) MongoDB (Block, gemischt)            │
│  Tier 2/3 (Object) S3 / Azure Blob (Dokumente, Batch)  │
└─────────────────────────────────────────────────────────┘
```

---

## On-Premises: Was sich ändert

In Azure sind Performance-Garantien eingebaut, Capacity Planning übernimmt der Cloud-Anbieter. On-Premises ändert sich:

| Aspekt | Azure (Managed) | On-Premises |
|---|---|---|
| QDrant Storage | Azure Managed Disk (Premium SSD) | Lokale NVMe oder SAN mit NVMe-oF |
| S3-Äquivalent | Azure Blob Storage | MinIO, Dell ObjectScale, IBM COS |
| MongoDB Storage | Azure Managed Disk | Block Storage (iSCSI/FC) |
| Backup / HA | Eingebaut | Eigene Snapshots, Replikation nötig |
| Netzwerkanbindung | Garantierte Bandbreite | 25/100 GbE selbst planen |
| Skalierung | Automatisch (elastic) | Capacity Planning manuell |

---

## Einordnung ins AI-Storage-Inhaltsverzeichnis V5

| Kapitel | Bezug zur Chatbot-Architektur |
|---|---|
| **2.1** Speicherarten | Block (QDrant, MongoDB), Object (S3), RAM (Redis) |
| **2.2** Anbindungsformen | DAS / SAN (QDrant On-Prem), NAS als Alternative |
| **2.9** Object Storage / S3 | S3 als Quellspeicher für Dokumente im Ingestion-Pfad |
| **3.5** Datenpfade & Zugriffsmuster | Random-Read-Pattern der Vector DB, sequentielle Writes in S3 |
| **4.4** Was ist RAG? | Die gesamte Architektur ist ein RAG-System |
| **4.5** Ablauf eines RAG-Prozesses | Ingestion → S3 → Chunking → Embedding-Service → QDrant |
| **4.6** Vektor-Datenbanken | QDrant als konkretes Produktbeispiel |
| **4.7** Storage-Muster zu Workloads | Direkte Zuordnung je Komponente |
| **5.3** Persistenter Storage in Kubernetes | Wenn Architektur containerisiert (z. B. QDrant in K8s) |
| **5.4** Hybrid Cloud Data Management | Azure → On-Prem Migration der S3-Ebene |
| **6.4** Use Cases Demo Lab | Diese Architektur als Demo-Szenario geeignet |
