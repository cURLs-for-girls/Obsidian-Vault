---
tags: [onenote, aivengers]
---

# Technologien Deep Dive

🏠 Das LLM-Inferencing-Haus (Technologie-Metapher)

Nvidia (DGX, TensorRT, NeMo, GH200)

Intel (Gaudi2/3, Xeon + AMX, OpenVINO)

AMD (MI300X, ROCm)→ Diese Plattformen bilden das tragende Fundament, auf dem alle Inferenzprozesse aufbauen.

🧱 Fundament: Plattformen & Hardware

Infiniband / RoCE v2: Datenleitungen zwischen Etagen

NVLink / PCIe Gen5 / CXL: interne Verbindungen & Memory-Sharing

Separierung: Mgmt / Prod / Storage → getrennte Stromkreise

🔌 Versorgungsleitungen: Netzwerk & Interconnects

vLLM = Küchengerät für KV-Cache-optimierte Inferenz

Triton Inference Server = zentraler Maschinenraum für Modell-Serving

ONNX Runtime / OpenVINO / TensorRT = spezialisierte Laufzeiten für maximale Hardware-Auslastung

🧰 Erdgeschoss: Frameworks & Engines

KV-Cache = Kühlschrank mit vorbereiteten Zutaten

RAG = Bücherregal mit zusätzlichem externem Wissen

Speculative Decoding = der Butler, der mehrere Gänge vorbereitet

Quantisierung = platzsparende Möbel, die nichts an Funktion verlieren

🛋️ Obergeschoss: Kerntechnologien

LoRA / QLoRA = Möbel für kleine Zimmer (Low-Memory-Einsatz)

Few-/Zero-Shot Learning vs. Fine-Tuning = Gäste mit Eigeninitiative vs. Personal

Streaming = Gericht wird Token für Token serviert

CPU-only Inferenz = Kochen mit Mikrowelle statt Herd (Xeon + AMX)

Batching / Throughput-Optimierung = effiziente Haushaltsplanung

🧠 Dachboden: Weitere Themen & Spezialisierungen

LLM 
INFERENCING 
WEITERE THEMEN 
Speculative 
KV-Cache 
Decoding 
Streaming 
Quantisierung 
FRAMEWORKS & ENGINES 
ONX 
Runtime 
ONNX Runtime / 
Infiniband / 
Triton 
OpenVINO / TensorRT 
ROCE 
Inference Server 
NETZWERK & INTERCONNECTS 
Infiniband / RoCE 
Separ / Mgmt / 
NVLink / PCle / CXL 
Prod / Storage 
Nvidia 
Intel 
AMD ...LLM 
INFERENCING 
WEITERE THEMEN 
Speculative 
KV-Cache 
Decoding 
Streaming 
Quantisierung 
FRAMEWORKS & ENGINES 
ONX 
Runtime 
ONNX Runtime / 
Infiniband / 
Triton 
OpenVINO / TensorRT 
ROCE 
Inference Server 
NETZWERK & INTERCONNECTS 
Infiniband / RoCE 
Separ / Mgmt / 
NVLink / PCle / CXL 
Prod / Storage 
Nvidia 
Intel 
AMD

"Versorgungsleitungen":

Netzwerk & Interconnects

Netzwerktyp

Beschreibung

Technik / Bandbreite

Frontend-Netzwerk

Clientzugriff, API, UI, Storage, Monitoring

Ethernet, 10–25 Gb/s

Backend-Netzwerk

GPU-GPU Kommunikation, verteiltes Training

RoCEv2 / InfiniBand, ≥ 100 Gb/s

Out-of-Band-Mgmt

BMC/IPMI, Remote-FW/Power Mgmt

1 GbE

intra-node: NVLink / NVSwitch

inter-node: InfiniBand / RoCE

Backend Scale-out Netzwerk → besteht aus:

FRONTEND NETWORK 
10-25 
Gbit/s 
BACKEND SCALE-OUT NETWORK 
GPU 
GPU 
GPU 
> 100 
Gbit/s 
NVLINK 
OUT-OF-BAND MANAGEMENT 
1 
Gbit/s ...FRONTEND NETWORK 
10-25 
Gbit/s 
BACKEND SCALE-OUT NETWORK 
GPU 
GPU 
GPU 
> 100 
Gbit/s 
NVLINK 
OUT-OF-BAND MANAGEMENT 
1 
Gbit/s

Interconnect-Technologien:

Interconnect-Technologien sind entscheidend für die Kommunikation zwischen verschiedenen Komponenten in einem Computersystem oder Netzwerk. Während Intraconnect-Technologien sich auf die Kommunikation innerhalb eines Systems oder einer Komponente konzentrieren, befassen sich Interconnect-Technologien mit der Verbindung zwischen verschiedenen Systemen oder Komponenten. Hier sind zwei wichtige Interconnect-Technologien:

### 1. **RDMA over Converged Ethernet (RoCE)**

- **Hersteller**: Verschiedene Hersteller, einschließlich Mellanox (jetzt Teil von Nvidia)

- **Bandbreite pro Verbindung**: Bis zu 200 Gb/s (abhängig von der Ethernet-Generation)

- **Skalierbarkeit**: Hoch, kann in großen Rechenzentren und Clustern eingesetzt werden

- **Besonderheiten**:

- Nutzt Ethernet als Transportmedium

- Bietet Remote Direct Memory Access (RDMA), was die Latenz reduziert und den Datendurchsatz erhöht

- Erfordert spezielle Netzwerkhardware, die RoCE unterstützt

### 2. **InfiniBand**

- **Hersteller**: Mellanox (jetzt Teil von Nvidia), Intel

- **Bandbreite pro Verbindung**: Bis zu 400 Gb/s (mit HDR InfiniBand)

- **Skalierbarkeit**: Hoch, geeignet für Hochleistungsrechnen (HPC) und große Datenzentren

- Spezialisiert auf Hochgeschwindigkeitsverbindungen mit niedriger Latenz

- Wird häufig in Supercomputern und Clustern eingesetzt

- Unterstützt RDMA für effizienten Datentransfer

### Vergleich und Anwendung

- **RoCE** wird oft in Rechenzentren eingesetzt, die bereits auf Ethernet-Infrastruktur setzen und von den Vorteilen von RDMA profitieren möchten.

- **InfiniBand** wird häufig in Hochleistungsrechenumgebungen verwendet, wo extrem niedrige Latenz und hoher Durchsatz entscheidend sind.

Intraconnect-Technologien:

Technologie

Hersteller

Bidirektionale Bandbreite (gesamt je GPU)

Skalierbarkeit

Besonderheiten

NVLink 4 / NVSwitch 3

Nvidia

900 GB/s (z. B. H100 NVSwitch-System)

Sehr hoch (8+ GPUs, bis 256 via NVSwitch)

Vollvermascht, deterministisch, niedrigste Latenz, proprietär

Infinity Fabric / xGMI

AMD

bis ~336 GB/s real nutzbar (MI300X)

Hoch (bis 8 GPUs via Vollmesh)

Direktverbindungen, ohne Switch, kohärent, proprietär

Gaudi 3 Ethernet-Fabric

Intel (Habana)

1.2 TB/s (24× 200 GbE)

Sehr hoch (offene Ethernet-Topologie)

Standardbasiert, sehr skalierbar, kein Switch erforderlich, höhere Latenz möglich

PCIe Gen5 + CXL 2.0

Alle

128 GB/s (x16 bidirektional)

Mittel (Server-intern)

Universell verfügbar, kohärent (CXL), aber höherer Overhead

PCIe Gen6 + CXL 3.0

Alle (ab 2025)

256 GB/s (x16 bidirektional)

Hoch (komponierbare Architekturen, Fabrics)

Peer-to-Peer, Memory Sharing, abwärtskompatibel

Ergebnis:

In der Werkstatt des KI-Hauses wird nicht geforscht oder experimentiert – hier wird produktiv gearbeitet. Aus den gelieferten Plänen (ONNX-Modelle) werden laufende, skalierbare Systeme, bereit für den Produktiveinsatz in Inferenz-Workloads, sei es im Datacenter oder am Edge.

🔧 Erdgeschoss: Die Werkstatt – Frameworks & Engines

Hier ist der Maschinenraum des KI-Hauses – eine präzise ausgestattete Werkstatt, in der aus trainierten Modellen einsatzfähige, optimierte Inferenzsysteme werden. Jeder Baustein hat seine Rolle:

🛠️ vLLM – die CNC-Fräse mit Speicherpuffer

Eine spezialisierte Maschine für Hochgeschwindigkeitsarbeit an großen Sprachmodellen. Durch ihren internen Cache (KV-Cache) muss sie nicht bei jedem Auftrag von vorn beginnen – sie erinnert sich, was zuletzt bearbeitet wurde, und fräst nahtlos weiter.

⚙️ Triton Inference Server – der Werkstattleiter

Organisiert, wann welche Maschine (Modell) läuft, welche Werkstücke (Requests) zusammengefasst werden (Batching), und sorgt für effiziente Ressourcennutzung. Er betreibt mehrere Maschinen gleichzeitig, kennt alle Schnittstellen und wechselt je nach Anforderung flexibel zwischen ihnen.

🔩 OpenVINO / TensorRT / ONNX Runtime – die spezialisierten Werkzeuge

TensorRT: Die Hochleistungsturbine für NVIDIA-GPUs – maximale Performance mit geringem Energieverbrauch.

OpenVINO: Das Feinmechanik-Tool für Intel-Hardware – effizient, ressourcenschonend, ideal für Edge und CPU.

ONNX Runtime: Der flexible Universalschlüssel – funktioniert plattformunabhängig, mit guter Kompatibilität und stabiler Basis.

Jede dieser Laufzeitumgebungen ist ein präzises Spezialwerkzeug:
