---
tags:
  - lernkarten
  - ai-storage
  - storage-architektur
status: aktiv
erstellt: 2026-05-22
hersteller:
  - NetApp
  - IBM
  - Pure Storage
---

# Lernkarten – Kapitel 3.1: Storage-Architektur im Rechenzentrum: Überblick

---

## 🔵 Das Sechs-Bausteine-Modell

Was ist das Sechs-Bausteine-Modell, woher kommt es, und was macht es valide – obwohl es kein Industriestandard ist?
?
- **Idee:** Eine Storage-Architektur im Rechenzentrum ist kein einzelnes System, sondern das Zusammenspiel mehrerer Ebenen
- **Herkunft:** Kein offizielles Industriestandard-Modell (kein SNIA-Referenzmodell o. ä.) – sondern eine **didaktische Strukturierung**, die sich aus etablierten Praxismodellen ableitet
- **Validität:** Hersteller wie **IBM, NetApp und Pure Storage** gliedern ihre Architekturbeschreibungen regelmäßig entlang dieser sechs Dimensionen → pragmatisch valide, aber keine normative Referenz
- **Zweck:** Hilft, eine Architektur strukturiert zu beschreiben und zu bewerten – in der Fachliteratur und bei Storage-Herstellern wiederkehrendes Ordnungsraster

---

## 🖥️ Baustein 1: Hosts (Compute-Anbindung)

Was sind Hosts in einer Storage-Architektur, welche Rolle spielen sie im AI-Kontext, und was bestimmt die erreichbare Latenz?
?
- **Definition:** Systeme, die auf Storage zugreifen – klassische Server, aber im AI-Kontext vor allem **GPU-Hosts** für Training und Inferenz
- **Entscheidende Dimension:** Die **Art der Anbindung** (lokal vs. netzwerkbasiert) bestimmt maßgeblich die erreichbare Latenz und den Durchsatz
- **Merksatz:** Kein noch so schnelles Storage-System hilft, wenn der Host es nicht schnell genug anbinden kann

---

## 🌐 Baustein 2: Netzwerk und Konnektivität

Welche Aufgabe hat das Storage-Netzwerk, was ist für AI-Workloads entscheidend, und welche Protokolle sind relevant?
?
- **Aufgabe:** Verbindet Hosts mit Storage-Systemen
- **AI-Anforderung:** Hohe Bandbreite **und** geringe Latenz – beides gleichzeitig entscheidend
- **Protokolle:**
  - **NFS** – netzwerkbasiert, einfach, weit verbreitet
  - **iSCSI** – Block-Storage über TCP/IP
  - **FC (Fibre Channel)** – dediziertes Storage-Netz, sehr niedrige Latenz
  - **RDMA-basierte Varianten** (z. B. RoCE, NVMe-oF) – entlasten CPU-Overhead im Datenpfad

```
Zentral
  ├── NFS           → einfaches Netzwerk-Dateisystem
  ├── iSCSI         → Block-Storage über normales TCP/IP-Netz
  ├── Fibre Channel → dediziertes Storage-Netz, sehr schnell
  └── RDMA/RoCE     → kein CPU-Umweg, sehr niedrige Latenz
```

> **⚠️ Häufige Verwechslung:** iSCSI und RDMA sind keine gleichwertigen Alternativen. iSCSI ist ein Protokoll (Block über TCP/IP, CPU-intensiv). RDMA ist eine Transport-Optimierung (kein CPU-Umweg) – es gibt sogar iSER (iSCSI over RDMA) als Kombination. Für AI bevorzugt: **NVMe-oF über RDMA**, weil die CPU entlastet wird und GPUs nicht auf Netzwerkarbeit warten.

> **⚠️ NVMe-oF ist nicht immer RDMA-basiert** – es ist ein Rahmenprotokoll mit verschiedenen Transportwegen:
> ```
> NVMe-oF
>   ├── NVMe/RDMA (RoCE)   → RDMA-basiert, schnellste Option, kein CPU-Umweg
>   ├── NVMe/InfiniBand    → RDMA-basiert, typisch in HPC
>   ├── NVMe/FC            → Fibre Channel, kein RDMA, aber sehr niedrige Latenz
>   └── NVMe/TCP           → normales TCP/IP, kein RDMA, einfach zu deployen
> ```
> Für AI bevorzugt: **NVMe/RDMA (RoCE)**. NVMe/TCP wird immer beliebter weil keine Spezialhardware nötig.

---

## 💾 Baustein 3: Storage-System ⚠️ *wiederholen*

Woraus besteht ein Storage-System, warum sind Scale-out-Architekturen im AI-Umfeld im Vorteil, und welche Medien sind entscheidend?
?
- **Bestandteile:** Controller + Medien (NVMe SSDs, HDDs) + Software-Stack
- **AI-Anforderung:** Entscheidend sind die notwendigen **IOPS** und **niedrige Latenz** → All-Flash-Systeme sind hier klar im Vorteil
- **Scale-out vs. Scale-up:**
  - **Scale-out** (mehrere Nodes, gemeinsam skalieren) → flexibel, wächst mit dem AI-Bedarf
  - **Scale-up** (klassische Arrays, vertikal erweitern) → Engpassrisiko bei großen AI-Workloads
- **Fazit:** Scale-out-Architekturen sind im AI-Umfeld gegenüber klassischen Scale-up-Arrays im Vorteil

---

## 🔁 Baustein 4: Datenpfad ⚠️ *wiederholen*

Was beschreibt der Datenpfad, welche Technologien optimieren ihn, und warum ist er so kritisch für AI?
?
- **Definition:** Der Weg der Daten vom Speichermedium bis in den **GPU-Speicher**
- **Optimierungen:**
  - **Caching** – häufig benötigte Daten nahe am GPU halten
  - **Prefetching** – Daten vorausschauend laden, bevor sie angefordert werden
  - **GPUDirect Storage (GDS)** – GPU empfängt Daten direkt ohne CPU-Umweg (direkter DMA-Transfer), CPU behält aber den Kontrollpfad
  - **SCADA** (Scaled Accelerated Data Access) – GPU initiiert und kontrolliert Storage-IO vollständig selbst, CPU komplett raus. Besonders effektiv für kleine Blöcke (< 4 KB) bei AI-Inferenz. *(NVIDIA, ab 2025 produktionsreif)*
- **Kritikalität:** Engpässe im Datenpfad bremsen den **gesamten AI-Workflow** – ein langsamer Datenpfad macht auch schnelles Storage nutzlos

> **Übersicht Datenpfad-Entwicklung:**
> | Technologie | Datenpfad | Kontrollpfad |
> |-------------|-----------|-------------|
> | Klassisch | Storage → CPU → RAM → GPU | CPU |
> | GPUDirect Storage | Storage → direkt → GPU | CPU (noch dabei) |
> | SCADA | Storage → direkt → GPU | **GPU** (CPU komplett raus) |

---

## 🛡️ Baustein 5: Schutzmechanismen

Welche Schutzmechanismen sind relevant, was ist AI-spezifisch wichtig, und was leisten moderne Systeme darüber hinaus?
?
- **Klassische Mechanismen:** Replikation, Snapshots, High Availability (HA), Backup
- **AI-spezifisch:** Trainingsdaten und **Modell-Checkpoints** müssen konsistent gesichert sein – ein korrupter Checkpoint bedeutet verlorene Trainingszeit
- **Moderne Erweiterung:** Cyber-Resilienz direkt in der Storage-Plattform
  - Schutz vor **Ransomware**
  - **Unveränderliche Snapshots** (Immutable Snapshots) – können nicht gelöscht oder manipuliert werden
  - **Quantum-Safe Encryption** – Verschlüsselung die auch gegen zukünftige Quantencomputer-Angriffe resistent ist (post-quantum Kryptographie)
  - **Confidential Computing** – Daten werden auch *während der Verarbeitung* geschützt (nicht nur at rest / in transit); GPU-Enklaven verhindern dass selbst Infrastruktur-Admins auf Modelldaten zugreifen können

---

## 📈 Baustein 6: Skalierung und Betriebsmodell

Wie skaliert eine Storage-Architektur, und wie beeinflusst das Betriebsmodell den Datenzugriff?
?
- **Skalierungsrichtungen:**
  - **Horizontal:** Mehr Nodes hinzufügen (typisch Scale-out)
  - **Cloud-Anbindung:** Hybrid-Modelle – Daten fließen zwischen On-Prem und Cloud
- **Betriebsmodelle und ihre Auswirkungen:**
  - **On-Premises:** Volle Kontrolle, Daten bleiben im eigenen Rechenzentrum
  - **Hybrid:** Kombination aus lokalem Storage und Cloud-Diensten
  - **Cloud-native:** Infrastruktur vollständig beim Cloud-Anbieter
- **Kernfrage:** Das Betriebsmodell bestimmt **wo Daten liegen** und **wer sie verwaltet**

---

## 📊 Überblick: Die sechs Bausteine

| Baustein | Kernfrage | AI-Relevanz |
|----------|-----------|-------------|
| Hosts (Compute) | Wie ist der Zugriff angebunden? | GPU-Hosts dominieren; Anbindungsart entscheidet über Latenz |
| Netzwerk | Wie kommen Daten zum Host? | Hohe Bandbreite + geringe Latenz; RDMA entlastet CPU |
| Storage-System | Wo und wie werden Daten gespeichert? | All-Flash + Scale-out für AI-IOPS |
| Datenpfad | Wie kommen Daten in den GPU-Speicher? | GPUDirect Storage eliminiert CPU-Bottleneck |
| Schutzmechanismen | Wie sind Daten gesichert? | Checkpoints, Immutable Snapshots, Cyber-Resilienz |
| Skalierung & Betrieb | Wie wächst das System? | Hybrid-Modelle; Betriebsmodell bestimmt Datensouveränität |
