---
tags: [ressourcen, referenzarchitektur, nvidia, ai-infrastruktur, gpu, dgx, gb200, blackwell]
status: aktiv
erstellt: 2026-05-29
hersteller: [NVIDIA]
quelle: "RA-11338-001 V01 – 2025-06-16"
---

# NVIDIA DGX SuperPOD (GB200)

> Next-Generation AI-Factory-Architektur von NVIDIA – die größte und leistungsstärkste DGX-Referenz für AI-Leadership. Rack-Scale, vollintegriert, basierend auf DGX GB200 NVL72 mit Grace-Blackwell-Superchips.

📎 [[NVIDIA DGX SuperPOD GB200 RA.pdf]]

---

## Worum geht es?

DGX SuperPOD ist NVIDIAs **Top-Tier Reference Architecture** für AI-Factories. Es ist der **physische Zwilling des internen R&D-Systems**, mit dem NVIDIA selbst Software, Anwendungen und Support entwickelt und vorab testet. Wer einen SuperPOD kauft, bekommt die Infrastruktur, auf der NVIDIA seine eigene KI baut.

**Positionierung:** Rack-Scale AI-Factory mit Scalable Units (SU). Jede SU = 8× DGX GB200 NVL72.

**Kennzahlen pro SU (Single-SU-RA):**
- **576 Blackwell GPUs** (8 Racks × 72 GPUs)
- **288 Grace CPUs**
- **240 TB Fast Memory**
- **11,5 ExaFLOPS FP4**
- 30× Inference / 4× Training / 25× Energy Savings (vs. Vorgänger)
- **TDP pro SU: 1,2 MW**

Skaliert über mehrere SUs: bis **128 Racks / 9.216 GPUs** (16 SUs).

---

## Architektur-Komponenten

### Compute – DGX GB200 NVL72 Rack System (pro Rack)

- **72 Blackwell GPUs** in einer einzigen NVLink-Domain (NVL72-Topologie)
- **18 Compute Trays** pro Rack
- Pro Compute Tray:
  - 2× GB200 Superchips (= 4× B200 GPUs + 2× Grace CPUs)
  - NVLink-C2C: 900 GB/s zwischen Superchips
  - 4× ConnectX-7 NICs (InfiniBand NDR Cross-Rack Compute)
  - 2× BlueField-3 DPUs (2× 200 Gbps – In-Band Mgmt + Storage)
  - 4× 3,84 TB E1.S NVMe (RAID0 lokal) + 1× 1,92 TB M.2 NVMe (OS)
- **9 NVLink Switch Trays** pro Rack (NVL5)
- **8 Power Shelves** (je 6× 5,5 kW PSU = 33 kW pro Shelf, N-Redundanz)
- **Hybrid Cooling**: Direct Liquid Cooling für GPU/CPU, Air für Rest

### Networking – 5 Netzwerk-Fabrics

| Fabric | Technologie | Zweck |
|---|---|---|
| **NVLink 5 (MN-NVL)** | NVLink Switch Trays | 1,8 TB/s GPU↔GPU innerhalb Rack |
| **Compute Fabric** | NVIDIA Quantum **QM9700** (NDR 400 Gbps InfiniBand) | Rail-optimized Fat-Tree, Cross-Rack |
| **Storage Fabric** | NVIDIA Spectrum-4 **SN5600** (800 Gbps Ethernet) | High-Speed Storage über RoCE |
| **In-Band Management** | NVIDIA SN5600 | Ethernet, NFS, Internet, User-Access |
| **Out-of-Band Mgmt** | NVIDIA **SN2201** (1 Gbps Ethernet) | BMC, BlueField-BMC, NVSwitch COMe |

### Management & Software

| Bereich | Komponente |
|---|---|
| **InfiniBand Mgmt** | NVIDIA UFM Enterprise Edition |
| **NVLink Mgmt** | NVIDIA Network Manager eXperience (NMX) |
| **Full-Stack Orchestrierung** | **NVIDIA Mission Control** (mit Run:ai integriert) |
| **AI-Plattform** | NVIDIA AI Enterprise + Magnum IO + NGC |
| **Scheduler** | Slurm + Run:ai (für K8s) |
| **Support** | NVIDIA Enterprise Support (NVEX) – End-to-End |

### Storage – zwei separate Systeme

1. **High-Performance Storage (HPS)** – RoCEv2, POSIX-FS, parallel I/O, Grace-zertifiziert
2. **User Storage** – NFS über In-Band, Home-Dirs, Log Collection, BCM-Storage

---

## Scalable Unit (SU) – Modell

| # GPUs | # SUs | # IB Leaf | # IB Spine | # Core Switches |
|---|---|---|---|---|
| 576 | 1 | – | – | – |
| 1.152 | 2 | 64 | 48 | 18 |
| 2.304 | 4 | 128 | 96 | 36 |
| 4.608 | 8 | 256 | 192 | 72 |
| 9.216 | 16 | 512 | 384 | 144 |

→ **Single-SU** vollständig im RA dokumentiert. Multi-SU bis 16 SUs als Scale-out-Design (Spine-Leaf-Groups + Core-Groups + Super-Spines). Für 4+ SUs: NVIDIA-Vertretung kontaktieren.

---

## NVIDIA Mission Control – Software-Highlight

Mission Control ist **das** Differenzierungsmerkmal:

- **Automated Failure Detection & Self-Recovery** – minimale Downtime
- **Optimized Workload Migration** – keine Idle-GPUs
- **Unified Diagnostics** – Infra + App in einem Tool
- **In-Memory Checkpointing** – Recovery ohne Checkpoint-Reload, kein Datenverlust
- Integriert: BCM, Run:ai, Slurm, Telemetrie (Grafana/Prometheus/Loki), UFM, NMX
- Predictive Maintenance & autonomous Hardware Recovery

→ Same Tech die NVIDIA selbst für seine Top500-Cluster nutzt.

---

## Design-Anforderungen (Datacenter)

- **TDP: 1,2 MW pro SU**
- Uptime Institute Tier 3 oder TIA942-B Rated 3 oder EN50600 Class 3
- Concurrent Maintainability, kein Single Point of Failure
- **Hybrid Cooling** ist Pflicht (Liquid + Air)
- Building Management System (BMS) Integration via eBGP

---

## Storage Performance – Guidelines

| Performance Level | 1 SU Read / Write | 4 SU Read / Write |
|---|---|---|
| Standard (LLM Training/Fine-Tuning) | 40 / 20 GBps | 160 / 80 GBps |
| Enhanced (Multimodal, große Datasets > 30 TB) | 125 / 62 GBps | 500 / 250 GBps |

→ Spezifischer Storage-Partner aus DGX SuperPOD Certified-Liste.

---

## Presales-Relevanz

> **Kernbotschaft:** "DGX SuperPOD ist die Architektur, auf der NVIDIA selbst arbeitet. Wer Frontier-Modelle trainieren will, kauft hier nicht 'AI-Hardware' – er kauft eine validierte AI-Factory."

**Stärken im Kundengespräch:**
- **Rack-Scale Turnkey**: NVL72-Rack ist die kleinste Einheit, kein Bastel-Setup
- **Mission Control** als Software-Highlight – aktuell DGX-exklusiv. OEM-Partner liefern vergleichbare Funktionalität über BCM Essentials + NetQ + Run:ai, aber als getrennte Bausteine statt als integrierte Plattform. (Stand: 05/2026 – NVIDIA hat eine schrittweise Öffnung für Partner angekündigt.)
- **Physical Twin** der NVIDIA-eigenen Forschungsinfrastruktur
- **NVEX End-to-End-Support** – Compute, Storage, Network, Software aus einer Hand
- Skalierung von 576 bis 9.216 GPUs **ohne** Architektur-Redesign

**Typische Kundensituation:**
- AI-Factory-Vorhaben mit Frontier-Anspruch (Pre-Training großer Foundation Models)
- Public-Sector / Forschung / Hyperscaler-ähnliche Workloads
- TDP > 1 MW im Datacenter realisierbar (Liquid Cooling vorhanden)
- Commitment auf NVIDIA-Stack inkl. Mission Control / Run:ai

**Abgrenzung:**
- vs. **DGX BasePOD**: BasePOD = 2–8 DGX (B200/H200/H100), prescriptive Entry. SuperPOD = NVL72 Rack-Scale, Mission Control, mehrere MW Energy-Footprint
- vs. **Dell AI Factory / Cisco Secure AI Factory**: OEM-Architekturen mit deren Compute/Storage statt DGX – attraktiv bei Bestandskunden mit OEM-Footprint und Mixed-Workloads
- vs. **HPE Enterprise AI RA**: PCIe-basiert, RTX PRO 6000 → Inference/Fine-Tuning. SuperPOD = Training-fokussiert auf höchstem Niveau

---

## Verwandte Dokumente

- [[NVIDIA DGX BasePOD]]
- [[Dell AI Factory with NVIDIA – Spectrum-X]]
- [[Cisco Secure AI Factory – AI PODs]]
- [[NVIDIA Enterprise AI RA with HPE]]
- [[04 Ressourcen/Referenzarchitekturen/Referenzarchitekturen]]
