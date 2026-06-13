---
tags:
  - lernkarten
  - ai-storage
  - storage-architektur
  - datenpfad
  - gpudirect
status: aktiv
erstellt: 2026-06-04
hersteller:
  - NVIDIA
  - NetApp
---

# Lernkarten – Kapitel 3.5: Datenpfade und Zugriffsmuster

---

## 🔵 Grundbegriff: Der Datenpfad

Was beschreibt der Datenpfad, warum ist er entscheidend, und was kann ihn zum Flaschenhals machen?
?
- **Definition:** Der Datenpfad beschreibt den Weg der Daten **vom Storage-Medium bis in den GPU-Speicher**
- Er bestimmt zusammen mit Netzwerk und Storage-System die **tatsächlich erreichbare Performance**
- **Kernaussage:** Ein gut geplantes Storage-System verliert seinen Vorteil, wenn der Datenpfad zum Flaschenhals wird

---

## 🐢 Klassischer Datenpfad ⚠️ *wiederholen*

Wie funktioniert der klassische Datenpfad, welche Schritte durchläuft er, und warum ist er für GPU-Cluster ein Problem?
?
- **Ablauf:** Storage → CPU-Kern liest Daten → Host-RAM (DRAM) → ggf. Vorverarbeitung → GPU-Speicher
- **Problem:** Dieser Umweg über den Host-RAM ist bei großen Datenmengen **teuer**:
  - Belastet **CPU und Speicherbus**
  - Erzeugt **Kopieroperationen**
  - Verlängert die **Ladezeit**
- **Wann ausreichend:** Für einen einzelnen Inferenz-Server mit lokalem NVMe in der Regel vertretbar
- **Wann ein Engpass:** Bei GPU-Clustern mit vielen parallelen Anfragen ist er ein **messbarer Flaschenhals**

```
Klassischer Pfad:
Storage → CPU → Host-RAM → GPU
```

---

## ⚡ GPUDirect Storage (GDS) ⚠️ *wiederholen*

Was ist GPUDirect Storage, wie verändert es den Datenpfad, und welche Voraussetzungen braucht es?
?
- **Definition:** GDS (von NVIDIA) überträgt Daten **direkt vom Storage-Medium in den GPU-Speicher** – ohne Umweg über CPU oder Host-RAM (direkter DMA-Transfer)
- **Verkürzter Pfad:** Storage → GPU (CPU behält den Kontrollpfad, ist aber aus dem Datenpfad raus)
- **Vorteile:**
  - Reduzierte **Latenz**
  - CPU wird **entlastet**
  - Erhöhter **effektiver Durchsatz**
- **Voraussetzungen:**
  1. NVMe-SSDs (lokal oder über NVMe-oF angebunden)
  2. RDMA-fähiges Netzwerk (InfiniBand oder RoCE)
  3. GDS-kompatibler Storage-Treiber
- **Status:** NVIDIA referenziert GDS in AI Factory Referenzarchitekturen als **Standardbestandteil** produktiver GPU-Cluster

```
GPUDirect Storage:
Storage → GPU  (CPU nur noch Kontrollpfad)
```

---

## 🔀 Typische Zugriffsmuster im AI-Betrieb ⚠️ *wiederholen*

Welche zwei grundlegend verschiedenen I/O-Muster erzeugen AI-Workloads, und was passiert, wenn beide gleichzeitig auftreten?
?
- **Muster 1 – Sequentielle, große Reads (Modell laden):**
  - Beim Start eines Inferenz-Servers werden **Modellgewichte vollständig in den VRAM geladen**
  - Typische Dateigrößen: 15 GB (7B-Modell in FP16) bis mehrere hundert GB (405B-Modell)
  - Zugriffsmuster: **sequentiell**
  - Dominierende Kennzahl: **Durchsatz**
- **Muster 2 – Viele kleine, zufällige Reads (Vektordatenbank):**
  - Im laufenden Betrieb erzeugt eine Vektordatenbank bei jeder Suchanfrage **viele kleine, zufällige Lesezugriffe** auf den Vektorindex
  - Zugriffsmuster: **random-read-heavy**
  - Dominierende Kennzahl: **IOPS + Latenz**
- **Gleichzeitiger Betrieb:**
  - Beide Muster können **gleichzeitig** auf derselben Infrastruktur auftreten (Inferenz + Retrieval im selben System)
  - Anforderung: **I/O-Isolation im Storage-System** – sequentielle Bulk-Reads beim Modell-Laden dürfen die IOPS-Performance der Vektordatenbank nicht beeinträchtigen

| Muster | Auslöser | Kennzahl | Typische Größe |
|--------|---------|---------|---------------|
| Sequentiell, groß | Modell wird gestartet | Durchsatz | 15 GB – 400+ GB |
| Random, klein | Vektordatenbank-Suche | IOPS + Latenz | Viele × < 4 KB |

---

## 🚀 NVIDIA SCADA ⚠️ *wiederholen*

Was ist SCADA, wie geht es über GDS hinaus, und warum ist es für AI-Inferenz relevant?
?
- **Definition:** SCADA = Scaled Accelerated Data Access – ein **GPU-initiiertes Storage-I/O-Modell** von NVIDIA (vorgestellt November 2025)
- **Unterschied zu GDS:**
  - GDS: Datenpfad von CPU-Kopiervorgang befreit, aber CPU steuert noch die I/O-Anfragen
  - SCADA: **GPU initiiert I/O-Anfragen vollständig eigenständig** – CPU komplett aus dem Steuerungs- und Datenpfad raus
- **Einsatzgebiet:** Hochparallele Inferenz-Workloads mit sehr hoher Anfragelast
- **Bedeutung:** Zeigt die Entwicklungsrichtung: Storage-Zugriff wird zunehmend Teil der **GPU-Architektur** selbst, nicht mehr nur der Serverinfrastruktur

> **Übersicht Datenpfad-Entwicklung:**
> | Technologie | Datenpfad | Kontrollpfad |
> |-------------|-----------|-------------|
> | Klassisch | Storage → CPU → RAM → GPU | CPU |
> | GPUDirect Storage (GDS) | Storage → direkt → GPU | CPU (noch dabei) |
> | SCADA | Storage → direkt → GPU | **GPU** (CPU komplett raus) |
