---
tags: [ressourcen, referenzarchitektur, hpe, nvidia, ai-infrastruktur, gpu]
status: aktiv
erstellt: 2026-05-21
hersteller: [HPE, NVIDIA]
quelle: "a00157780ENW – 2026"
---

# NVIDIA Enterprise AI Reference Architecture with HPE

> Gemeinsam validierte Architektur: HPE ProLiant Compute + NVIDIA RTX PRO 6000 Blackwell – flexibler, skalierbarer Einstieg in Data-Center-AI

📎 [[a00157780enw_nvidia_enterprise_ai_ra_hpe.pdf]]

---

## Worum geht es?

HPE und NVIDIA liefern eine **gemeinsam validierte Referenzarchitektur** für Enterprise AI – zertifiziert für 4 bis 32 Nodes (1–8 Scalable Units). Herzstück ist der **HPE ProLiant DL380a Gen12** mit NVIDIA RTX PRO 6000 Blackwell GPUs.

**Positionierung:** Einstieg in Data-Center-AI – performant, kosteneffizient, skalierbar. Kein NVLink/SXM – PCIe-basiert → bewusst als **Enterprise Entry Point** konzipiert.

Portfolio-Name: **"NVIDIA AI Computing by HPE"**

---

## Kernkomponenten auf einen Blick

| Schicht | Komponente |
|---|---|
| **Compute** | HPE ProLiant DL380a Gen12 |
| **GPU** | bis 8× NVIDIA RTX PRO 6000 Blackwell Server Edition (PCIe) |
| **Networking** | NVIDIA Spectrum-X (Spectrum-4) + ConnectX-7 SuperNICs/DPUs |
| **Netzwerk-Topologie** | Rail-optimized Architecture |
| **AI Software** | NVIDIA AI Enterprise (inkl. CUDA, Magnum IO) |
| **Storage** | HPE Portfolio (nicht spezifiziert im Brochure-Dokument) |

---

## Scalable Unit (SU) – Modell

Basis-Baustein: **1 SU = 4× DL380a Gen12 = 32× RTX PRO 6000 GPUs**

| Scalable Units | Server | Gesamt-GPUs |
|---|---|---|
| 1 SU (Minimum) | 4 | 32 |
| 2 SU | 8 | 64 |
| 4 SU | 16 | 128 |
| 6 SU | 24 | 192 |
| 8 SU (Maximum, vollständig zertifiziert) | 32 | 256 |

→ Einstieg mit 1 SU, Erweiterung bis 8 SU ohne Redesign.

---

## GPU im Detail: RTX PRO 6000 Blackwell Server Edition

- **Interface:** PCIe (kein NVLink/SXM)
- **Pro Server:** bis zu 8 GPUs
- **Geeignet für:** Inference bis 70B Parameter, Fine-Tuning < 70B, Hybrid AI, HPC (Single Precision), Visual Computing, Engineering Simulation
- **Nicht geeignet für:** Large-Scale Pre-Training mit sehr großen Modellen (dafür → H200 SXM / GB200)

---

## Netzwerk

- **Switches:** NVIDIA Spectrum-4
- **Server-seitig:** ConnectX-7 SuperNICs und DPUs
- **Topologie:** Rail-optimized Network Layout
- Flexible Rack-Layouts unterstützt

---

## Software Stack

| Komponente | Details |
|---|---|
| **NVIDIA AI Enterprise** | Subscription-basiert – Management, Orchestrierung, Inference |
| **NVIDIA CUDA** | GPU-Compute-Framework |
| **NVIDIA Magnum IO** | Storage/IO-Beschleunigung |

> Hinweis: Dieses Dokument ist ein Brochure-Level RA – keine validierten Versionstabellen enthalten. Für Detailtiefe (BOM, Port-Diagramme, Software-Versionen) das begleitende Technical Design Guide anfordern.

---

## Support-Modell

| Bereich | Verantwortlich |
|---|---|
| **Hardware** | HPE |
| **AI Software** | NVIDIA AI Enterprise Subscription |

Klare Trennung → kein Ping-Pong zwischen Herstellern im Support-Fall.

---

## Use Cases

- **AI Inference** (Copilots, Assistants, Agentic AI – bis 70B Parameter)
- **AI Fine-Tuning** (< 70B Parameter)
- **Hybrid AI**
- **HPC (Single Precision)**
- **Data Analytics**
- **Visual Computing / Engineering Simulation**

**Ziel-Branchen:** Healthcare & Life Sciences, Finance, Manufacturing, Retail

---

## Presales-Relevanz

> **Kernbotschaft:** Gemeinsam validiert, sofort deploybar – HPE + NVIDIA als verlässlicher Doppelpack.

**Stärken im Kundengespräch:**
- PCIe statt NVLink → günstigerer Einstieg, trotzdem enterprise-ready
- Modular: 1 SU als Pilot, skaliert bis 8 SU ohne Redesign
- Klares Support-Modell: Hardware (HPE) + Software (NVIDIA) – kein Graubereich
- Zertifiziert, nicht nur "kompatibel"

**Typische Kundensituation:**
- Kunde hat HPE-Bestandsumgebung → nahtlose Erweiterung
- Budget-sensitives Projekt → RTX PRO 6000 als Alternative zu H200
- Inference/Fine-Tuning Fokus (kein Pre-Training von Grund auf)

**Abgrenzung zu Dell:**
- Dell AI Factory: H200 NVL / H200 SXM + NVLink → Training-fokussiert, höherer Invest
- HPE RA: RTX PRO 6000 Blackwell PCIe → Inference/Fine-Tuning, günstigerer Einstieg

---

## Verwandte Dokumente

- [[Dell AI Factory with NVIDIA – Spectrum-X]]
- [[Dell AI Factory with NVIDIA – Security Best Practices]]
- [[04 Ressourcen/Referenzarchitekturen/Referenzarchitekturen]]
