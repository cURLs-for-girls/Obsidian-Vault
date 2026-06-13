---
tags: [onenote, aivengers]
---

# NVIDIA Infrastructure Masterclass 1/4

🎯 Ziel der Session:

Vermittlung des aktuellen Stands und der Strategie von NVIDIA im Bereich Rechenzentrum-Infrastruktur – von der GPU-Architektur bis zur AI Factory

🧵 Storyline & Ablauf

1. Einführung in das GPU-Zeitalter der AI

Die Session startet mit einem Rückblick auf die Entwicklung von KI-Modellen – von Pre-Training (Foundation Models) über Post-Training (Quantisierung, Pruning, Fine-Tuning) bis zu Test-Time Reasoning.

→ These: Rechenzeit ist der neue Wertfaktor – wer seinem Modell mehr Zeit lässt (Reasoning), bekommt bessere Ergebnisse.

2. Blackwell & NVL72: KI auf Supercomputing-Niveau für jeden

20 PFLOPS AI-Leistung (vergleichbar mit früheren Supercomputern mit 19.000 Knoten).

NVL72 ist das erste Rack, das ein Modell mit 1,8 bis 27 Billionen Parametern in einem einzigen System abbilden kann.

Er stellt die neue Blackwell-GPU vor:

🧠 Kontext: Warum so große Racks? → Weil neue Modelle (z. B. GPT-4) auf Mixture of Experts (MoE) setzen.

🧩 Mixture of Experts (MoE) – Kontext & Technik

Kontext:

GPT-4, Mistral etc. nutzen MoE, da Foundation Models zu groß für "normale" Infrastrukturen geworden sind.

Früher: Jeder Prompt aktiviert das ganze Modell (z. B. LLaMA 65B).

Jetzt: Nur ein Teil (Experten) wird aktiviert → weniger Ressourcen pro Anfrage, mehr parallele Anfragen möglich.

Routing entscheidet, welche "Experten" pro Anfrage benötigt werden (z. B. Code, Grammatik).

Antwort wird zusammengeführt.

Erfordert hohe interne Bandbreite → NVLink statt Ethernet → daher: NVL72.

Technik:

⚡ DYNAMO – Disaggregiertes Inferenz-Serving

Ziel:

Reasoning-Modelle effizient in Echtzeit bereitstellen – bei bis zu Milliarden Anfragen täglich.

Pre-Fill: Matrix-lastig, gut parallelisierbar.

Decode: sequentiell, speicherbandbreiten-limitiert.

Problem:

Trennung von Pre-Fill & Decode auf unterschiedliche GPUs

GPU Planner überwacht Auslastung & weist Ressourcen dynamisch zu→ -70 % Time-to-First-Token, 2× mehr Anfragen/s, bei NVL72 bis zu 30× mehr Durchsatz

Lösung:

💻 Hardware-Portfolio & Positionierung

GPU

Zweck

Besonderheit

Blackwell (B200 / Ultra)

Pretraining, Reasoning, LLM

288 GB HBM3e, FP4/FP6, NVL72-ready

H200 NVL (PCIe)

Inferenz, Finetuning, kleinere LLMs

NVLink via Bridges (2/4 GPU-Konfigs)

RTX Pro 6000 Server

Universelle GPU

96 GB, MIG, vGPU, auch für Grafik

L4

Edge-Inferenz

Single Slot, 75W, kein externer Strom nötig

🧠 MIG-Feature-Highlight (Blackwell RTX 6000):

Mit MIG kann die GPU hardwarebasiert partitioniert werden (z. B. für mehrere parallele AI- oder Grafik-Workloads).

→ Keine VWS-Lizenz nötig, predictables Latency, Multi-Tenancy-ready.

🏭 AI Factory & Reference Architecture

DGX Cloud (as-a-Service)

DGX AI Factory (on-prem, z. B. SuperPod)

Flexible OEM/ODM-Factories (offene Architekturen)

NVIDIA fasst Systemlösungen als AI Factories zusammen:

Compute (GPUs wie Blackwell)

Networking (Spectrum-X, InfiniBand)

Storage (kuratierte Daten entscheidend!)

Software (NIMs, Blueprints, AI Enterprise, Run:AI, Mission Control)

4 Säulen:

Mit konkreter BOM (CPUs, GPUs, NICs)

Beispiele: 2 CPUs, 8× H200 NVL, 5 NICs

Auch für kleinere Modelle wie L40S verfügbar

📐 Reference Architectures:

2025/26: Rubin-Architektur mit HBM4

2027: Kyber-Rack mit 576 Rubin-GPUs (!)

Netzwerk: NV-Link mit 3.6 TB/s, Spectrum-X/CX9 mit 1.6 TB/s

Software/Cloud: Ausbau von weiteren NIMs & reasoningfähigen Blueprints

🔭 Roadmap Ausblick

Deep Dive Dokumente:

Blackwell Datasheet insgesamt: https://nvdam.widen.net/s/wwnsxrhm2w/blackwell-datasheet-3384703

GB200 NVL72 Docs: https://docs.nvidia.com/multi-node-nvlink-systems/index.html?utm_source=chatgpt.com

Blog zu MoE: https://developer.nvidia.com/blog/applying-mixture-of-experts-in-llm-architectures/?utm_source=chatgpt.com

Dynamo Docs: https://docs.nvidia.com/dynamo/latest/index.html

Multi Node NVLink Docs: https://docs.nvidia.com/multi-node-nvlink-systems/mnnvl-user-guide/overview.html?utm_source=chatgpt.com

MIG User Guide: https://docs.nvidia.com/datacenter/tesla/mig-user-guide/index.html?utm_source=chatgpt.com
