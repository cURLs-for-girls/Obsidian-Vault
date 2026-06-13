---
tags: [ressource, lernkarten, ai-storage]
status: aktiv
erstellt: 2026-05-17
---

# Lernkarten – Kapitel 2.1–2.5 AI Storage

> Rekonstruiert aus den Lern-Sessions vom 16.–17.05.2026

---

## Kapitel 2.1 – Grundlagen & Workload-Typen

### Karte 1
**❓ Was ist der Unterschied zwischen Training- und Inferenz-Workloads aus Storage-Sicht?**

✅
- **Training**: große Datenmengen, hoher sequenzieller Lesedurchsatz, Schreibzugriffe für Checkpoints, Ausfälle verschmerzbar
- **Inferenz**: kleinere Datenmengen, niedrige Latenz entscheidend, Lesezugriffe überwiegen, Ausfälle sofort sichtbar für Endnutzer

---

### Karte 2
**❓ Was ist RAG (Retrieval-Augmented Generation) – und welche Storage-Komponenten braucht es?**

✅ RAG erweitert ein LLM um eine externe Wissensbasis. Das Modell holt sich relevante Dokumente zur Anfrage und generiert damit eine fundierte Antwort.

Storage-Komponenten:
1. **Dokumentenbasis** (bereinigte Quelldokumente)
2. **Vektordatenbank** (Embeddings für Similarity Search)
3. **Modellgewichte** (das LLM selbst)

---

## Kapitel 2.2 – Storage-Typen & Zugriffsprotokolle

### Karte 3
**❓ Was sind die drei grundlegenden Storage-Typen – und was unterscheidet sie?**

✅

| Typ | Struktur | Protokoll | Stärke |
|---|---|---|---|
| Block | Rohe Blöcke (kein Dateisystem) | iSCSI, Fibre Channel | Niedrige Latenz, flexibel |
| File | Ordner/Dateien | NFS, SMB | Einfach nutzbar, POSIX-konform |
| Object | Buckets/Objekte + Metadaten | HTTP/S3 API | Massive Skalierung |

Wichtig: Object Storage ist eine **Abstraktionsschicht** – die Daten liegen darunter physisch als Block Storage. Der Nutzer sieht nur Objekte + eindeutige ID (Key).

---

### Karte 3a
**❓ Was ist der Unterschied zwischen Fibre Channel SAN und iSCSI SAN?**

✅ Beide sind **Block Storage Protokolle** und sprechen dieselbe Grundsprache: **SCSI** (ein Befehlssatz für Block Storage: *"Schreib Block 42", "Lies Block 100"*). Der Unterschied liegt ausschließlich im **Transport** – also wie die SCSI-Befehle durchs Netzwerk kommen:

| | Fibre Channel (FC) | iSCSI |
|---|---|---|
| **Transport** | Dediziertes FC-Netz (eigenes Layer 1–3) | Standard Ethernet / TCP/IP |
| **Hardware** | FC-Switches, FC-HBAs, spezielle Kabel | Normale Ethernet-Switches, normale NICs |
| **Entwickelt** | Ende der 80er – speziell für Storage gebaut | 2003 – SCSI über IP zugänglich machen |
| **Stärke** | Lossless, konstant niedrige Latenz, dediziertes Netz | Günstiger, kein Spezialnetz nötig |

> **iSCSI** = "Internet SCSI" – buchstäblich SCSI-Befehle über TCP/IP verschickt.

**Analogie:**
- FC = Privatbahn nur für Güterverkehr – eigene Gleise, immer pünktlich, aber teure Infrastruktur
- iSCSI = LKW auf der Autobahn – flexibel und günstig, aber manchmal ist Stau

→ FC ist **älter, aber spezialisierter**. iSCSI hat SAN demokratisiert – kein Spezialnetz nötig.

---

### Karte 3b
**❓ Was sind die OSI-Layer – und was bedeuten Layer 2 und 3 in Netzwerk-Diagrammen?**

✅ Das OSI-Modell beschreibt wie Netzwerkkommunikation in 7 Schichten aufgeteilt ist:

| Layer | Name | Beispiel in Storage-Kontext |
|---|---|---|
| **1** | Physical | Kabel, Glasfaser, DAC-Kabel, SFP-Transceiver, Stecker |
| **2** | Data Link | Ethernet-Frames, MAC-Adressen, Switches, physische Verkabelung |
| **3** | Network | IP-Adressen, VLANs, Routing |
| **4** | Transport | TCP/UDP – sorgt für Ankunft und Reihenfolge der Pakete |
| **5** | Session | Verbindungsaufbau (z.B. NFS-Session zwischen Server und Storage) |
| **6** | Presentation | Verschlüsselung (TLS), Dateiformat, Encoding |
| **7** | Application | NFS, SMB, S3, iSCSI – die Protokolle die Anwendungen direkt nutzen |

In Netzwerk-Diagrammen bedeutet:
- **"Layer 2 – Physische Verkabelung"** → wer ist womit physisch verbunden (Switches, Kabel)
- **"Layer 3 – Logische Topologie"** → wie fließt der Traffic über VLANs und IP-Segmente

> **Eselsbrücke:** *"Please Do Not Throw Sausage Pizza Away"* → Physical, Data Link, Network, Transport, Session, Presentation, Application

---

### Karte 4
**❓ Welche Software wird genutzt um Object Storage bereitzustellen?**

✅ Object Storage ist kein Protokoll sondern ein Konzept – es braucht Software die es umsetzt:

- **MinIO**: Open-Source, S3-kompatibel, sehr verbreitet für On-Prem AI-Deployments
- **Ceph**: Open-Source, kann Block + File + Object gleichzeitig, komplex aber mächtig
- **Dell ECS**: Enterprise Object Storage von Dell
- **NetApp StorageGRID**: Enterprise-grade, stark bei Compliance und Geo-Replikation
- **AWS S3**: Der Cloud-Standard – alle anderen orientieren sich daran (S3-API-Kompatibilität)

→ Für On-Prem AI: **MinIO** ist oft die erste Wahl wegen S3-Kompatibilität und einfachem Setup.

---

## Kapitel 2.3 – Dateisysteme & Schnittstellen

### Karte 3
**❓ Was ist POSIX – und warum ist es für AI Storage relevant?**

✅ POSIX ist ein Standard für die Schnittstelle zwischen Anwendung und Dateisystem. Er definiert Operationen wie Random Access, File Locking und Seek.

AI-Frameworks wie PyTorch und TensorFlow erwarten POSIX-Semantik → reines Object Storage (z.B. S3) funktioniert nicht für Training.

- NFS ✅ POSIX-konform
- S3 ❌ kein POSIX (HTTP-basiertes Objekt-API)

---

### Karte 4
**❓ XFS vs ext4 – wann nimmt man was?**

✅
- **ext4**: Standard-Dateisystem, gut für allgemeine Workloads, stabil und weit verbreitet
- **XFS**: optimiert für große Dateien und hohen Durchsatz, besser für AI/HPC-Workloads mit großen Modelldateien und parallelen Zugriffen

→ Für AI Storage ist **XFS** die bessere Wahl.

---

### Karte 5
**❓ Was ist WEKA – und was unterscheidet es von IBM Storage Scale?**

✅
- **WEKA**: Cloud-natives paralleles Dateisystem, optimiert für GPU-Cluster und AI-Workloads, sehr niedrige Latenz, NVMe-nativ
- **IBM Storage Scale (GPFS)**: enterprise-erprobt, stark bei HPC, gut skalierbar, breiter Funktionsumfang (Tiering, Compliance)

Beide bieten POSIX-konforme Schnittstellen für AI-Frameworks.

→ **WEKA** = modern & GPU-first. **IBM Storage Scale** = erprobt & enterprise-grade.

---

## Kapitel 2.4 – Inferenz & KV-Cache

### Karte 6
**❓ Was ist KV-Cache-Offloading – und warum ist es storage-relevant?**

✅ Beim Inferenz-Betrieb eines LLM werden Key-Value-Paare (Attention-Cache) im GPU-RAM gehalten. Bei langen Kontexten oder vielen parallelen Anfragen reicht der GPU-RAM nicht aus.

**KV-Cache-Offloading** = Auslagern des Caches auf schnellen Host-RAM oder NVMe-Storage.

Storage-Relevanz: Der Offload-Speicher muss **extrem niedrige Latenz** haben – NVMe ist hier Pflicht, SATA-SSD zu langsam.

---

### Karte 7
**❓ Warum ist Latenz bei Inferenz wichtiger als Durchsatz?**

✅ Bei Inferenz wartet ein Nutzer auf eine Antwort in Echtzeit. Jede Millisekunde zählt.
Beim Training hingegen wird stundenlang gerechnet – hoher Durchsatz (viele GB/s) ist entscheidend, nicht die einzelne Zugriffszeit.

→ **Inferenz = Latenz-sensitiv. Training = Durchsatz-sensitiv.**

---

## Kapitel 2.5 – Technische Kennzahlen

### Karte 8
**❓ Bringe diese Speichertypen vom schnellsten zum langsamsten:**
DRAM · NVMe · SATA-SSD · HDD

✅ **DRAM → NVMe → SATA-SSD → HDD**

| Typ | Latenz (ca.) |
|---|---|
| DRAM | ~100 ns |
| NVMe | ~100 µs |
| SATA-SSD | ~500 µs |
| HDD | ~10 ms |

---

### Karte 9
**❓ Was ist der Unterschied zwischen NVMe und SATA – Material oder Schnittstelle?**

✅ **Schnittstelle** – nicht das Material!

Beide können Flash-Speicher verwenden. Der Unterschied:
- **SATA**: altes Protokoll, ursprünglich für HDDs entwickelt, sequenziell ausgelegt
- **NVMe**: modernes Protokoll, direkt am PCIe-Bus, für Flash entwickelt, massiv parallel

→ SATA-SSD = schnelles Material, langsame Leitung. NVMe = schnelles Material, schnelle Leitung.

---

### Karte 10
**❓ Was sind SLC / MLC / TLC / QLC bei Flash-Speicher?**

✅ Die Abkürzungen beschreiben wie viele Bits pro Speicherzelle gespeichert werden:

| Typ | Bits/Zelle | Geschwindigkeit | Haltbarkeit | Kosten |
|---|---|---|---|---|
| SLC | 1 | schnellste | höchste | teuerste |
| MLC | 2 | schnell | hoch | mittel |
| TLC | 3 | mittel | mittel | günstig |
| QLC | 4 | langsamer | geringer | günstigste |

→ Für AI Storage (hohe Schreiblast): **SLC/MLC** bevorzugt. Für Read-heavy (Inferenz): **TLC/QLC** ausreichend.

---

### Karte 11 – Bonuskarte
**❓ Was ist ein All-Flash Array (AFA) – und warum ist es für AI relevant?**

✅ Ein All-Flash Array besteht ausschließlich aus Flash-Speicher (keine HDDs). Vorteile:
- Konsistent niedrige Latenz
- Hohe IOPS
- Kompaktere Bauform

Für AI-Inferenz und RAG besonders geeignet, weil Lesezugriffe auf Modellgewichte und Vektordatenbank latenz-sensitiv sind.

Anbieter: **Pure Storage**, **NetApp**, **Dell PowerStore**
