---
tags: [ressourcen, referenzarchitektur, nvidia, ai-infrastruktur, gpu, dgx]
status: aktiv
erstellt: 2026-05-29
hersteller: [NVIDIA]
quelle: "RA-11127-001 V5 – 2025-08-06"
---

# NVIDIA DGX BasePOD

> Die prescriptive Enterprise-AI-Referenzarchitektur von NVIDIA – das NVIDIA-Äquivalent zur "AI Factory" der OEM-Partner. Foundation für DGX-basierte AI-Infrastruktur mit DGX B200, H200 und H100.

📎 [[NVIDIA DGX BasePOD RA.pdf]]

---

## Worum geht es?

DGX BasePOD ist NVIDIAs **prescriptive Referenzarchitektur** für Enterprise-AI auf Basis von DGX-Systemen. Sie nimmt Unternehmen die Designarbeit ab: validierte Hardware, NVIDIA-Software-Stack und zertifizierte Partner-Storage – als integrierter Bauplan vom Compute über Networking bis Management.

**Positionierung:** Einstieg in DGX-basierte Enterprise-AI. Skaliert von **2 bis dutzenden DGX-Nodes**, ist aber gleichzeitig die Basis für den Aufstieg in den DGX SuperPOD.

**Pitch:** "NVIDIA hat die komplexe Designarbeit für Sie erledigt – Sie bekommen einen erprobten, integrierten AI-Stack ohne monatelange Architekturphase."

---

## Architektur-Layer

```
NVIDIA AI Enterprise   ─── NIM · CUDA-X Microservices · DS/DL Frameworks
Kubernetes / Slurm     ─── Orchestrierung
NVIDIA Base Command    ─── BCM · Magnum IO · Base OS
DGX BasePOD            ─── DGX Systems + Partner Certified Storage
```

---

## Core Components

### Compute – DGX Systeme (Mix möglich)

| System | GPUs | GPU-Memory | Highlight |
|---|---|---|---|
| **DGX B200** | 8× NVIDIA B200 | 1,4 TB | Blackwell – Top-Aktuell |
| **DGX H200** | 8× Hopper H200 | 1.128 GB | Hopper, größerer HBM |
| **DGX H100** | 8× Hopper H100 SXM | 640 GB | Bewährter Hopper-Stack |

**Pro DGX:**
- 4× OSFP-Ports (NDR400 InfiniBand Compute Fabric)
- 2× Dual-Port BlueField-3 DPUs (Storage/Management)
- Dual Intel Xeon Platinum 8480C, 2 TB DDR5
- 2× 1,92 TB M.2 NVMe (OS) + 8× 3,84 TB U.2 NVMe (Cache)

### Networking

| Funktion | Switch | Details |
|---|---|---|
| **Compute Fabric** | NVIDIA Quantum **QM9700** | NDR 400 Gbps InfiniBand |
| **Storage + In-Band Mgmt** | NVIDIA **SN4600C** | 64× QSFP28, 1–100 GbE |
| **Out-of-Band Mgmt** | NVIDIA **SN2201** | 48× RJ45, 1 GbE |

### Software Stack

- **NVIDIA Base Command** – Cluster-Management, Provisioning, Monitoring
- **NVIDIA Base Command Manager (BCM)** – HA-Head-Nodes
- **NVIDIA AI Enterprise** – Production-AI-Plattform
- **NVIDIA NGC** – GPU-optimierte Container, CVE-gescannt
- **NVIDIA Magnum IO** – IO-Beschleunigung
- **Slurm oder Kubernetes** – Workload-Orchestrierung

### Control Plane (Minimum pro Mgmt-Server)

- 2× Intel Xeon Gold+, 512 GB RAM
- 1× 6,4 TB NVMe + 2× 480 GB M.2 RAID (OS)
- 4× 200 Gbps + 2× 100 GbE
- **5 dual-socket x86 Server**: 2× Head Nodes (BCM HA-Paar) + 3× Service Nodes (Slurm Login / K8s)

---

## Reference Architecture: DGX BasePOD mit NDR400

| Komponente | Technologie |
|---|---|
| Compute Nodes | 2–8 DGX (B200, H200 oder H100) |
| Compute Fabric | NVIDIA Quantum QM9700 NDR400 InfiniBand |
| Management + Storage Fabric | NVIDIA SN4600C |
| OOB Management Fabric | NVIDIA SN2201 |
| Control Plane | 5× x86 (2 Head + 3 Service) |
| Storage | Zertifizierter Partner (Pure, NetApp, DDN, VAST, WEKA, …) |

### Skalierung (Switches & Kabel)

| Komponente | 4 DGX | 8 DGX |
|---|---|---|
| QM9700 InfiniBand Switches | 2 | 2 |
| NDR Fiber Cables (DGX → IB) | 16 | 32 |
| 2×400G OSFP Transceiver (DGX) | 16 | 32 |
| 2×400G OSFP Transceiver (Switch) | 16 | 32 |
| NDR DAC für ISL | 8 | 16 |
| SN2201 Switches | 1 | 2 |
| SN4600C Switches | 2 | 2 |

→ Validiert für **bis zu 8 DGX-Nodes**. Darüber hinaus DGX SuperPOD-Pfad.

---

## Networks (3-Fabric-Design)

1. **InfiniBand Compute Network** – RDMA, GPU-zu-GPU, NDR400
2. **Ethernet Fabric** – System Management + Storage (SN4600C)
3. **OOB Management** – BMC-Zugriff für alle Devices (SN2201)

---

## Presales-Relevanz

> **Kernbotschaft:** "Wenn der Kunde DGX kaufen will – BasePOD ist die offizielle, von NVIDIA validierte Blaupause. Kein Bastel-Setup, sondern dokumentierte, supportbare Referenz."

**Stärken im Kundengespräch:**
- Reines NVIDIA-Stack-Design – keine OEM-Kompromisse beim AI-Fokus
- Mix von DGX-Generationen möglich (B200/H200/H100) → Investitionsschutz
- Klarer Upgrade-Pfad zum **DGX SuperPOD** (gleicher Stack, größerer Maßstab)
- Storage-Ökosystem: zertifizierte Partner mit getesteter Performance
- "Best Practices" sind nicht Marketing – sie sind im RA festgeschrieben

**Typische Kundensituation:**
- Kunde will dedizierte AI-Infrastruktur, kein "GPU-Server-Cluster"
- Multi-User / Multi-Tenant AI-Dev-Umgebung (Slurm oder K8s)
- 2–8 DGX als Startpunkt, Skalierung absehbar
- Anspruch auf Enterprise-Support inkl. NVIDIA Enterprise Support (NVEX)

**Abgrenzung:**
- vs. **DGX SuperPOD**: BasePOD = bis ~8 Nodes (Validation Limit), prescriptive; SuperPOD = Scalable Units à 8 DGX GB200, bis 16+ SUs, Rack-Scale Designs
- vs. **Dell AI Factory / Cisco Secure AI Factory / HPE Enterprise AI RA**: OEM-Versionen mit deren Servern und Storage-Ökosystem statt DGX

---

## Verwandte Dokumente

- [[NVIDIA DGX SuperPOD GB200]]
- [[Dell AI Factory with NVIDIA – Spectrum-X]]
- [[Cisco Secure AI Factory – AI PODs]]
- [[NVIDIA Enterprise AI RA with HPE]]
- [[04 Ressourcen/Referenzarchitekturen/Referenzarchitekturen]]
