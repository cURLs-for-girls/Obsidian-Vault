---
tags: [ressourcen, referenzarchitektur, ai-infrastruktur]
status: aktiv
erstellt: 2026-05-21
hersteller: [NVIDIA, Dell Technologies, Cisco, HPE]
---

# Referenzarchitekturen

Sammlung, Analyse und Verständnis von Referenzarchitekturen unserer strategischen Hersteller.

## Ziel

Referenzarchitekturen systematisch erfassen, vergleichen und als Grundlage für Kundengespräche und Presales nutzen.

## → Herstellervergleich

[[Herstellervergleich – Dell vs. Cisco vs. HPE]] – Alle Unterschiede auf einen Blick.

## Zentrales Referenzbild

[[NVIDIA Full Stack AI Factory – Übersicht]] – Das offizielle NVIDIA-Diagramm „Full Stack for AI Factories" als Vorlage und Grundlage aller OEM-Varianten.

## Hersteller

- **NVIDIA** – DGX-Reference Architectures (BasePOD, SuperPOD) – das "Original", auf das die OEM-Versionen aufsetzen
- **Dell Technologies** – Vertikal integriert (PowerEdge + PowerScale + Spectrum-X), volle Lifecycle-Abdeckung
- **Cisco** – Networking/Security-first (Nexus + Intersight SaaS + Hypershield), CVD-basiert
- **HPE** – Entry-Level Inference/Fine-Tuning (ProLiant + RTX PRO 6000), modular

## Architekturübersicht

| Hersteller | Architektur | Anwendungsfall | Notiz |
| ---------- | ----------- | -------------- | ----- |
| NVIDIA | **Full Stack AI Factory** (Referenzvorlage) | Zentrales Architekturmodell – Grundlage aller OEM-Varianten | [[NVIDIA Full Stack AI Factory – Übersicht]] |
| NVIDIA | DGX BasePOD (B200 / H200 / H100) | Enterprise AI Entry, 2–8 DGX-Nodes | [[NVIDIA DGX BasePOD]] |
| NVIDIA | DGX SuperPOD (GB200 NVL72) | AI-Factory, Rack-Scale Training bis 9.216 GPUs | [[NVIDIA DGX SuperPOD GB200]] |
| Dell + NVIDIA | AI Factory with NVIDIA – Spectrum-X | Training, Fine-Tuning, Inference (On-Prem) | [[Dell AI Factory with NVIDIA – Spectrum-X]] |
| Dell + NVIDIA | AI Factory – Security Best Practices | Security für AI-Infrastruktur | [[Dell AI Factory with NVIDIA – Security Best Practices]] |
| Cisco + NVIDIA | Secure AI Factory – AI PODs | Training, Fine-Tuning, Inference, Edge | [[Cisco Secure AI Factory – AI PODs]] |
| HPE + NVIDIA | Enterprise AI Reference Architecture | Inference, Fine-Tuning, HPC (On-Prem) | [[NVIDIA Enterprise AI RA with HPE]] |
