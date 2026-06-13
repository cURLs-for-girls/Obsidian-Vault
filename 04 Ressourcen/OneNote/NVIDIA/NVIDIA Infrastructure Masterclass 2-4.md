---
tags: [onenote, aivengers]
---

# NVIDIA Infrastructure Masterclass 2/4

🎯 Ziel der Session:

Vertiefung in Netzwerkarchitektur, Digital Twins und optimierte AI-Fabriken mit Fokus auf Spectrum-X, NetQ, NVIDIA Air, Rail-Optimierung und BlueField-NICs. Ziel ist es, Netzwerke AI-ready zu machen.

🧵 Storyline & Ablauf

GPUs erreichen bis zu 400 Gbps pro Karte – herkömmliches Ethernet wird schnell zum Bottleneck.

NVIDIA zeigt mit Benchmarks (z. B. Nickel/Gather Completion auf Israel-1), dass Spectrum-X deterministisches Verhalten und bessere Bandbreite liefert als klassische Ethernet-Designs.

1. Netzwerke für AI: Warum Spectrum-X nötig ist

🧩 AI-Netzwerke & Spezialisierung

Switch: Spectrum-4 ASIC (64×800G Ports, 128×400G breakoutfähig)

NIC/DPU: BlueField-3 (läuft im NIC-Modus, NIC entscheidet über Routing & Tagging, z. B. für adaptive Routing Eligibility)

AI-spezifische Features: Adaptive Routing, RoCE-Klassen, AI-Traffic-Tagging direkt vom NIC

🛠️ Spectrum-X Plattform:

InfiniBand: Quantum-Plattform

Ethernet (für AI): Spectrum-X

Zwei getrennte Welten:

NICs unterstützen beides – Switches sind technologiegebunden

🔁 InfiniBand vs. Ethernet:

🔄 Digital Twin & Simulation

Netzwerk-Digital-Twin (Logik, Topologie, Kontrollebene – kein volles ASIC- oder GPU-Traffic-Emulating)

Einsatz: Konfigurationsvalidierung, Fehlervermeidung vor Rollout

GUI + Drag/Drop

Python SDK & API

Simulation von Topologien inkl. EVPN, Multitenancy, 2- und 3-Tier-Designs

Tools:

🧪 NVIDIA Air:

🌡️ Für Umgebungsdaten (Temperatur, Verbrauch): → Omniverse / AI Factory Twin

📊 Netzwerk-Monitoring mit NetQ & Grafana

Switch-Puffer, Tail Latency, All-to-All-Kollektive, Histogramme

Ursprünglich klassisches Monitoring – jetzt AI-fähig:

Export via OpenTelemetry, Integration in Grafana Dashboards

Geplant: ASIC-Emulation in Air, Release-Ziel: Ende 2025

🔍 NetQ mit AI-Fokus:

🧱 Reference Architecture & Automatisierung

Reference Architecture (RA): High-Level Design

Deployment Guide: Low-Level Detailkonfiguration

RCP Tool (Reference Configuration Playbook): Automatisiert komplette Fabric-Deployments anhand YAML/Config-Dateien → bis 250.000 GPUs

📐 Architekturunterlagen:

🧩 Rail-Optimiertes Netzwerkdesign

Vermeidung von Spine-Staus durch clevere Leaf-Verkabelung („Rail-Zonen“)

Ziel: Lokalisiertes Routing – Switch-Hops minimieren, Traffic lokal halten

Rail-Optimierung = bessere AI-Performance & geringere Latenz

Wird bewusst nicht in Tests genutzt – man testet Worst-Case, um später Best-Case stabil zu betreiben

⚙️ Motivation:

AI-Clouds brauchen deterministische Performance – auch bei 100 parallelen Jobs.

NIC & Fabric müssen garantieren, dass keine Tenant bevorzugt wird.

Konzept: „Job Isolation“ → gleiche Completion-Zeiten für gleiche Workloads.

🧠 Multi-Tenancy & Job-Isolation

🔬 Tools & Plattformen

Tool

Funktion

NVIDIA Air

Logischer Digital Twin (Netzwerksimulation & Validierung)

NetQ

Telemetrie-/Puffer-/Kollektiv-Monitoring, OpenTelemetry-Export

RCP Tool

Automatisierte Deployment-Toolchain

Cloud AI (Open Source)

Traffic Generator für LLMs & Kollektive (GPT, LLaMA, Nickel)

🛰️ Topologie-Empfehlungen

Größe

Empfehlung

≤ 8K GPUs

2-Tier (Spine-Leaf)

> 8K bis 500K

3-Tier (Spine – SuperSpine – Leaf) mit non-blocking Fabric

Deep Dive Dokumente:

Datasheet Spectrum-X: https://resources.nvidia.com/en-us-networking-ai/networking-ethernet-1

Spectrum-X Validated Solution Stack: https://docs.nvidia.com/networking/software/spectrumx-solution-stack/index.html?utm_source=chatgpt.com

Produkteseite Nvidia Air: https://www.nvidia.com/en-us/networking/ethernet-switching/air/?utm_source=chatgpt.com

Net Q User Guide: https://docs.nvidia.com/networking-ethernet-software/cumulus-netq/?utm_source=chatgpt.com
