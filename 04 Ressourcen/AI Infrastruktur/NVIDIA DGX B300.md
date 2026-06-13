---
tags:
  - nvidia
  - dgx
  - aifactory
  - referenzdesign
  - ai-infrastruktur
status: aktiv
erstellt: 2026-05-19
hersteller:
  - NVIDIA
quelle: https://docs.nvidia.com/dgx/dgxb300-user-guide/introduction-to-dgxb300.html
---

# NVIDIA DGX B300

Offizielle NVIDIA-Dokumentation: [DGX B300 User Guide](https://docs.nvidia.com/dgx/dgxb300-user-guide/introduction-to-dgxb300.html)

## Übersicht

Flaggschiff-AI-Server von NVIDIA auf Basis der **Blackwell Ultra** Architektur. Primär für AI Training und Inferenz-Workloads ausgelegt.

## Technische Spezifikationen

### Compute
| Komponente | Details |
|---|---|
| GPUs | 8× NVIDIA B300 Blackwell Ultra |
| GPU-Speicher gesamt | 8 × 288 GB = **2,3 TB** |
| CPUs | 2× Intel Xeon Platinum 6776P |
| Systemspeicher (RAM) | 2 TB (konfigurierbar bis 4 TB) |

### Storage (intern)
| Komponente | Details |
|---|---|
| NVMe Cache-Laufwerke | **8× E1.S 3,84 TB NVMe** (Self-Encrypting) = **30,72 TB** gesamt |
| Boot-Speicher | 2× 1,92 TB M.2 NVMe |

> Die 30 TB interner NVMe dienen als **Hot Tier** für Vektorindizes, KV-Cache-Offloading und aktive Modellgewichte.

### Netzwerk
| Interface | Geschwindigkeit | Zweck |
|---|---|---|
| 8× OSFP (ConnectX-8) | **800 Gb/s** InfiniBand / Ethernet | GPU-zu-GPU, Compute-Fabric |
| 2× BlueField-3 DPU | **400 Gb/s** InfiniBand / Ethernet | Storage & Management |
| On-Board Management | 1 GbE RJ-45 | BMC / IPMI |

### Formfaktor & Strom
| Eigenschaft | Wert |
|---|---|
| Rack-Einheiten | 10 RU |
| Leistungsaufnahme | 14,5 kW |
| Stromversorgung | 12× 3,2 kW (N+N redundant) |

## Leistung

| Metrik | Wert |
|---|---|
| Training (FP8) | **72 PFLOPS** |
| Inferenz (FP4) | **144 PFLOPS** |

## Storage-Einordnung

- **Interner NVMe (30 TB)** → Hot Tier: Vektordatenbank, KV-Cache, aktive Modellgewichte
- **Externer NAS (PowerScale)** → Warm Tier: Trainingsdaten, Dokumentenbasis, ältere Modellversionen
- **Object Storage (fehlt in RZ Aschheim)** → Cold Tier: Archive, Rohdaten, Logs

## Netzwerk-Hinweis für RZ Aschheim

Die BlueField-3 DPUs haben **400 Gb/s** Kapazität für Storage-Anbindung. Die eingesetzten Dell S4112F-ON Switches bieten max. **25 GbE** pro Port → die Netzwerkanbindung ist ein potenzieller Bottleneck (Faktor ~16 Unterauslastung).

## Verwandte Notizen

- [[03 Bereiche/Arbeit/Demolab München/Demolab München]]
- [[04 Ressourcen/AI Infrastruktur/AI Infrastruktur]]
- [[04 Ressourcen/AI Storage/AI Storage]]
