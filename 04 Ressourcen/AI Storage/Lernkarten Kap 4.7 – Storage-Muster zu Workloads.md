---
tags:
  - lernkarten
  - ai-storage
  - rag
  - inferenz
  - workload-pattern
status: aktiv
erstellt: 2026-05-22
---

# Lernkarten – Kapitel 4.7: Storage-Muster zu Workloads

---

## 🗂️ Die drei Storage-Schichten in einem RAG-System

Welche drei Storage-Schichten gibt es in einem RAG-System, was liegt jeweils darin, und was sind ihre Anforderungen?
?
| Schicht | Inhalt | Hauptanforderung |
|---|---|---|
| **Dokument-Korpus** | Rohdokumente (PDFs, Word, HTML) | Kapazität, S3-kompatibel |
| **Vector Index** | Embeddings / Vektoren | Niedrige Latenz, hohe IOPS |
| **Modellgewichte** | LLM-Gewichte (z.B. 140 GB für Llama 70B) | Hoher Durchsatz, Parallel-Lesen |

**Merksatz:** Drei Schichten – drei verschiedene Storage-Typen. Eine Lösung für alles ist fast immer ein Kompromiss.

---

## ⚡ Warum ist der Vector Index storage-kritisch?

Warum stellt der Vector Index besondere Anforderungen an Storage – und was passiert, wenn Storage zu langsam ist?
?
- Der Vector Index wird bei **jeder einzelnen Nutzeranfrage** gelesen – nicht nur beim Laden
- Die Vector DB (z.B. QDrant, Milvus) arbeitet mit **Memory-Mapped Files**: Index liegt auf Disk, heiße Segmente im RAM
- Zugriffsmuster: **random read-heavy**, kleine Blockgrößen (< 4 KB)
- Zu langsames Storage → spürbare **Latenz für den Endnutzer** bei jeder Anfrage
- **Empfehlung:** NVMe-basiertes Block Storage (lokal oder SAN mit NVMe-oF)

---

## 🧠 Modellgewichte: Warum reicht normales NAS nicht?

Warum sind parallele Dateisysteme beim Laden von LLM-Gewichten entscheidend – und wann wird das zum Problem?
?
- Ein großes Modell (z.B. Llama 70B = ~140 GB, Llama 405B = ~800 GB) muss beim Start vollständig in den GPU-RAM geladen werden
- Bei **mehreren Inferenz-Knoten** laden alle Nodes **gleichzeitig** das gleiche Modell
- Normales NAS ist für **einen sequentiellen Client** optimiert – bricht bei vielen parallelen Lesern ein
- **Lösung:** Paralleles Filesystem (PowerScale F710, HPE Alletra MP X10000, VAST, DDN) – skaliert den Durchsatz mit der Anzahl der Clients
- **Faustregel:** Je mehr Inferenz-Nodes, desto kritischer das Storage-Backend

---

## 📦 Dokument-Korpus: Welches Storage passt?

Welche Storage-Technologie eignet sich für den Dokument-Korpus in einer RAG-Pipeline – und warum kein All-Flash?
?
- Der Dokument-Korpus enthält Rohdokumente (PDFs, Word, HTML, E-Mails)
- Wird nur beim **Ingestion-Prozess** gelesen – nicht bei jeder Nutzeranfrage
- Zugriffsmuster: sequentiell, große Objekte, kein Echtzeit-Druck
- **Empfehlung:** S3-kompatibles Object Storage (MinIO, Dell ObjectScale, HPE Alletra Object)
- All-Flash nicht nötig – Hybrid Flash oder kapazitätsorientiertes Storage reicht
- **Vorteil S3:** Alle RAG-Frameworks (LangChain, LlamaIndex, NVIDIA NIM) sprechen S3 nativ

---

## 🗄️ Storage-Tier-Zuordnung in einer RAG-Architektur

Welches Storage-Tier gehört zu welcher RAG-Komponente?
?
```
Tier 0 (RAM)       Redis / KV-Cache          → heiße Daten, keine Persistenz nötig
Tier 1 (NVMe)      Vector DB (QDrant/Milvus)  → random read, IOPS-kritisch
Tier 1 (NVMe/SAN)  Datenbank (MongoDB etc.)   → gemischtes I/O, Block Storage
Tier 2 (Parallel)  Modellgewichte             → Throughput, Multi-Node-fähig
Tier 3 (Object)    Dokument-Korpus            → Kapazität, S3-kompatibel
```

---

## 🔄 Unterschied: Ingestion vs. Inference – Storage-Perspektive

Wie unterscheiden sich Ingestion und Inference aus Storage-Sicht in einem RAG-System?
?
| | **Ingestion** | **Inference** |
|---|---|---|
| **Wann** | Einmalig oder periodisch | Bei jeder Nutzeranfrage |
| **Was wird gelesen** | Rohdokumente aus Object Storage | Vector Index + Modellgewichte |
| **Latenz-Anforderung** | Niedrig (Batch-Prozess) | Hoch (Nutzer wartet) |
| **Storage-Typ** | Object Storage (S3) | NVMe Block + Parallel File |
| **Engpass** | Throughput beim Chunking/Embedding | IOPS und Latenz des Vector Index |

**Merksatz:** Ingestion ist Storage-entspannt. Inference ist storage-kritisch.

---

## 🏗️ Konkrete Storage-Produktzuordnung (On-Premises)

Welches On-Prem Storage-Produkt passt zu welcher RAG-Schicht?
?
| RAG-Schicht | Storage-Typ | Konkrete Produkte |
|---|---|---|
| **Dokument-Korpus** | Object Storage | MinIO, Dell ObjectScale, HPE Alletra Object |
| **Vector Index** | Block / NVMe | Lokale NVMe, SAN mit NVMe-oF |
| **Modellgewichte** | Paralleles Filesystem | Dell PowerScale F710, HPE Alletra MP X10000, VAST, DDN |
| **Datenbank (MongoDB)** | Block Storage | iSCSI / FC SAN, lokale NVMe |

---

## 💡 Die vertriebliche Kernaussage zu RAG und Storage

Was ist die wichtigste Botschaft für Kunden, die RAG On-Premises betreiben wollen?
?
> "Ein RAG-System hat drei Storage-Anforderungen gleichzeitig – und die sind so unterschiedlich, dass eine einzige Storage-Lösung sie nicht alle optimal bedient. Wer das ignoriert, kauft GPUs und wundert sich dann, warum das System langsam ist."

**Drei Punkte zum Merken:**
1. **Vector Index** ist latenz-kritisch → NVMe, kein langsames NAS
2. **Modellgewichte** brauchen Parallel-Filesystem → PowerScale, nicht Standard-NAS
3. **Dokument-Korpus** braucht Kapazität → Object Storage, kein teures All-Flash

---

## 🔗 Verwandte Kapitel

- **4.4** Was ist RAG?
- **4.5** Ablauf eines RAG-Prozesses (Ingestion → Chunking → Embedding → Vector DB)
- **4.6** Vektor-Datenbanken (QDrant, Milvus, pgvector)
- **2.9** Object Storage und S3
- **3.5** Datenpfade und Zugriffsmuster
