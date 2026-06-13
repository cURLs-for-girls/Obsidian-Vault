---
tags: [ressourcen, referenzarchitektur, dell, nvidia, ai-infrastruktur, gpu, networking]
status: aktiv
erstellt: 2026-05-21
hersteller: [Dell Technologies, NVIDIA]
quelle: "H20214.7 – April 2026"
---

# Dell AI Factory with NVIDIA – Spectrum-X Networking

> Validated Reference Architecture für Enterprise Generative AI: Dell PowerEdge + NVIDIA GPUs + Spectrum-X Ethernet + PowerScale Storage

📎 [[h20214.7_dell_ai_factory_with_nvidia_gpus_spectrum.pdf]]

---

## Worum geht es?

Dell und NVIDIA liefern gemeinsam eine **validierte End-to-End-Architektur** für On-Premises Generative AI – vom GPU-Server über das Netzwerk bis zum Storage. Ziel: LLMs trainieren, fine-tunen und deployen, ohne Cloud-Abhängigkeit.

---

## Kernkomponenten auf einen Blick

| Schicht                            | Komponente                                                              |
| ---------------------------------- | ----------------------------------------------------------------------- |
| **Management**                     | 4× PowerEdge R670 (Kubernetes Control Plane + BCM)                      |
| **Compute – Training/Fine-Tuning** | bis 16× XE7740/XE7745 oder bis 12× XE9680                               |
| **Compute – Inference only**       | bis 32× R770 / R7725 / R7715                                            |
| **Networking**                     | 2× Spectrum-4 SN5610 (Frontend + Backend konvergiert) + 1× SN2201 (OOB) |
| **Storage**                        | PowerScale F710 (min. 3 Nodes, max. 252 Nodes / 186 PB)                 |
| **Cluster Management**             | NVIDIA Base Command Manager Essentials                                  |
| **Orchestrierung**                 | Kubernetes (upstream)                                                   |
| **AI Software**                    | NVIDIA AI Enterprise (inkl. GPU Operator, NIM Operator, Run:ai, NeMo)   |

---

## GPU-Server im Vergleich

### PowerEdge XE7740 / XE7745 (4U, 2-Socket)
- **GPU:** 8× NVIDIA H200 NVL **oder** 8× NVIDIA RTX Pro 6000 Blackwell Server Edition
- **CPU:** Intel Xeon 6 (XE7740) / AMD EPYC (XE7745), 64 Cores/Socket
- **RAM:** 2 TB (XE7740: 32× 64 GB) / 1,5 TB (XE7745: 24× 64 GB)
- **Backend-NIC:** 4× BlueField-3 Single-Port 400 GbE (B3140H)
- **Frontend-NIC:** 1× BlueField-3 Dual-Port 200 GbE (B3220)
- **ERA:** 2-8-5-200 ✅ NVIDIA-endorsed

### PowerEdge XE9680 (6U, 2-Socket)
- **GPU:** 8× NVIDIA H200 SXM
- **CPU:** 2× Intel Xeon Platinum 8562Y+ (32C/64T)
- **RAM:** 16× 128 GB = 2 TB
- **Backend-NIC:** 8× BlueField-3 Single-Port 400 GbE (B3140H)
- **Frontend-NIC:** 1× BlueField-3 Dual-Port 200 GbE (B3220)
- **ERA:** 2-8-9-400 ✅ NVIDIA-endorsed

### PowerEdge R770 / R7725 / R7715 (Inference only)
- **GPU:** 2× H200 NVL, RTX Pro 6000 oder L40S
- **Networking:** nur Frontend (100 GbE ConnectX-6 Dx), **kein Backend**
- **Kein ERA-Programm**, aber ERA-Netzwerkprinzipien angewandt

---

## NVIDIA Enterprise Reference Architecture (ERA)

Dell folgt NVIDIAs ERA – einem standardisierten Format für multi-node GPU-Deployments:

**C-G-N-B Notation:**
- **C** = CPU Sockets
- **G** = GPUs
- **N** = Netzwerk-Adapter (NICs)
- **B** = Ø East-West Bandwidth pro GPU (GbE)

| ERA Config | Dell Server |
|---|---|
| 2-8-9-400 | PowerEdge XE9680 |
| 2-8-5-200 | PowerEdge XE7740 / XE7745 |
| 2-8-9-800 (geplant) | XE9780 / XE9785 (upcoming) |

---

## Netzwerk-Architektur

### Physisch: Konvergiertes Fabric
- **2× Spectrum-4 SN5610** für alles: GPU-Traffic (Backend) + Storage/Management (Frontend)
- **1× SN2201** nur für OOB (iDRAC, DPU-Management)
- Kein separates Backend-Netzwerk für Inference-only Setups

### Traffic-Typen
| Traffic | Protokoll | Bandwidth |
|---|---|---|
| GPU East-West (Training) | RoCEv2 + PFC + Adaptive Routing | 400 GbE/Port |
| Storage + Frontend | EVPN-VXLAN | 200 GbE |
| Management (in-band) | Kubernetes API | 100 GbE |
| OOB (iDRAC) | 1 GbE | 1 GbE |

### Logisch: EVPN-VXLAN Fabric
- Nur 2 Switches → BGP-Underlay → EVPN als Control Plane
- ARP Suppression, Active-Active Multihoming
- VTEP auf den SN5610 Switches

---

## Software Stack (validierte Versionen)

| Komponente | Version |
|---|---|
| OS | Ubuntu 24.04 |
| NVIDIA AI Enterprise | 7.3 |
| Base Command Manager | 11.25.08 |
| Kubernetes | 1.34 |
| GPU Operator | 25.10.1 |
| Network Operator | 25.10.0 |
| Dell CSM Operator | 1.16 |

---

## Use Cases (unterstützt)

- **RAG** (Retrieval Augmented Generation)
- **AI Agents**
- **Code Assistants**
- **LLM Fine-Tuning & Pre-Training**
- **Scalable Inference** (single + multi-GPU)

Validiert mit: Llama 3, Phi-3, GPT-OSS, Gemma

---

## Run:ai – GPU Orchestrierung

Getestet und validiert auf Dell AI Platform:
- **GPU Slicing:** Fraktionale GPU-Zuweisung (10%, 35%, 50%)
- **Memory Swap:** 3 Modelle auf 1× H200 (Llama 3.1 8B + Gemma 2 9B + Phi-3.5 MoE)
- **Node Pools:** Dedizierte GPU-Pools pro Team/Projekt
- **Scheduler:** Quota, Preemption, Fairness über Projekte

---

## Presales-Relevanz

> **Kernbotschaft für Kunden:** Kein Raten, kein Risiko – validierte Architektur, NVIDIA-endorsed, sofort einsatzbereit.

**Stärken im Kundengespräch:**
- On-Prem → Datensouveränität, keine Cloud-Kosten
- Modular: von 1 Server bis multi-rack skalierbar
- Inference ohne Backend-Netzwerk → günstigerer Einstieg
- Kubernetes-nativ → Cloud-native Workloads ohne Cloud

**Typische Kundenfragen:**
- "Brauche ich immer das Backend-Netz?" → Nein, nur für Training/Fine-Tuning
- "Wie viele Modelle kann ich parallel laufen lassen?" → Mit Run:ai Memory Swap: mehrere auf 1 GPU
- "Was ist der kleinste Einstieg?" → 1× R770 + 2 GPUs für Inference

---

## Verwandte Dokumente

- [[Dell AI Factory with NVIDIA – Security Best Practices]]
- [[04 Ressourcen/Referenzarchitekturen/Referenzarchitekturen]]
