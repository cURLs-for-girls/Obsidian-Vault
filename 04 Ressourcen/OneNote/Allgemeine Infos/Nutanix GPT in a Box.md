---
tags: [onenote, aivengers]
---

# Nutanix GPT in a Box

GPT-in-a-Box 2.0 integriert NVIDIA NIM (Inference-Microservices) und läuft auf dem Nutanix Cloud Platform Stack (AOS/AHV, NKP, NUS, Enterprise AI). Ziel: schnell Modelle bereitstellen, austauschen und betreiben. nutanix.com+1

GPU-Seite: 2.0 wurde mit L40S und H100 adressiert; Nutanix ist inzwischen in NVIDIAs Blackwell Enterprise-Validated Design aufgenommen – also Blackwell-bereit (Agentic-AI/AI-Factory Fokus). nutanix.com+1

NVIDIA AI Enterprise (NVAIE) ist die empfohlene Softwareschicht (inkl. NIM). Aktuell ist NVAIE 6.0 der jüngste Infra-Release-Zweig. Nutanix AHV ist als Hypervisor-Ziel validiert. NVIDIA Docsnutanix.com

Daten/Storage: Nutanix Unified Storage ist als NVIDIA-Certified Storage gelistet, unterstützt GPU Direct Storage und zielt auf Agentic-/RAG-Workflows. nutanix.com

Netz & DPU: Referenzdesigns heben Spectrum-X Ethernet und BlueField-3 DPUs hervor (niedrige Latenz, isolierbare Datenpfade). nutanix.com

RTX PRO 6000 Blackwell (Server Edition) – bis 8 GPUs/Server, Validated Design „Enterprise AI Factory“. NVIDIA Newsroom

HGX B200 – 8-GPU Server für großskalige Inferenz/Training in AI-Fabriken (AI Factory Whitepaper)

Blackwell Optionen:

Was ist heute „drin“ (Stand 2025)

Drei passende Referenz-Konfigurationen

Cluster: 3 Nutanix HCI-Nodes (NX oder OEM, AHV).

GPU: 1–2× NVIDIA L40S pro Node.

CPU/RAM: 2× Xeon/EPYC, 512 GB RAM pro Node.

Storage: NVMe lokal plus Nutanix Unified Storage (Files/Objects) mit GDS-Pfad für Modelle/Embeddings.

Netz: 25–100 GbE; optional BlueField-3 für Mikrosegmentierung.

Software: NVAIE 6.0 inkl. NIM, Nutanix Enterprise AI, NKP.

Use-Case: Private RAG, Chatbots, Fachsuche, moderate Fine-Tuning. nutanix.com+1NVIDIA Docs

S – RAG/Inferenz „Start smart“ (Edge/PoC bis kleine Produktion)

Cluster: 4–6 Nodes.

GPU: 2× H100 oder H200 pro Node (PCIe), je nach OEM-Verfügbarkeit.

RAM: 768 GB–1 TB pro Node.

Storage: NUS als performante File/Object-Tier für Trainingsdaten, GDS aktiv.

Netz: 100–200 Gb Ethernet; ConnectX-7/8; bei strikten Latenzanforderungen Spectrum-X.

Software: NVAIE 6.0 (NIM/NeMo), Nutanix Enterprise AI.

Use-Case: Mehrsprachige Assistenten, Bild+Text, periodisches SFT/LoRA. nutanix.comNVIDIA Docs

M – Production RAG, multimodal, stärkeres Fine-Tuning

Cluster: 4–8 GPU-Server nach NVIDIA Enterprise AI Factory Design.

Option A (Inferenz/Agenten): RTX PRO 6000 Blackwell Server, bis 8 GPUs/Host.

Option B (Training+Inferenz): HGX B200 8-GPU Nodes.

Netz: 200–400 Gb Spectrum-X Fabric, BlueField-3 Data-Plane Offload.

Storage: NUS als NVIDIA-Certified Storage, GPU Direct Storage.

Software: NVAIE 6.0, NIM, NeMo, Nutanix Enterprise AI, NKP.

Use-Case: Hochparallele Agenten-Workflows, größere Kontexte, beschleunigte Inferenz und selektives Training/Fine-Tuning. NVIDIA NewsroomNVIDIA Docsnutanix.com

L – Blackwell „AI-Factory“ (skalierte Agenten, große Modelle)

Modellbetrieb via NIM (stabile APIs, Austauschbarkeit): Pflicht für schnelle Time-to-Prod. nutanix.com

Datenpfad: Plane NUS + GDS, um GPU-Wartezeiten zu vermeiden. nutanix.com

Netzwerk: Für >1 GPU-Server und latenzkritische Pipelines auf Spectrum-X/BlueField-3 setzen. nutanix.com

Blackwell-Readiness: Wenn 2025/26 Skalierung absehbar, direkt Enterprise AI Factory Design berücksichtigen (RTX PRO Blackwell oder HGX B200). NVIDIA NewsroomNVIDIA Docs

Hypervisor/Stack: AHV + NVAIE 6.0 ist ein validierter, schlanker Pfad. NVIDIA Docsnutanix.com

Entscheidungsleitfaden (kurz)

Fragen:

B200 ? https://www.nutanix.com/blog/gpt-in-a-box-2-is-here "L40S" "H100" - gerade am Zertifizieren der HPE Server für Blackwell

Skalierung von S auf M?

AI Enterpsie muss separat gekauft werden - also b200 mit ai enterprise

----------------------------------------------------------------------

Sizing Nutanix:
