---
tags: [ressourcen, referenzarchitektur, cisco, nvidia, ai-infrastruktur, gpu, networking, security]
status: aktiv
erstellt: 2026-05-22
hersteller: [Cisco, NVIDIA]
quelle: "C45-5272351-00 – August 2025"
---

# Cisco Secure AI Factory – AI PODs

> Pre-validierte, full-stack AI-Infrastruktur für den gesamten AI Lifecycle – von Training über Fine-Tuning bis Inferencing. Ciscos Stärke: eigenes Netzwerk, SaaS-Management und eine einzigartige Security-Story.

📎 [[Cisco Secure AI Factory - AI Pods.pdf]]

---

## Worum geht es?

Cisco positioniert sich mit den **AI PODs** als Komplettlösung für Enterprise AI – ausgehend vom Cisco eigenen Netzwerk- und Security-Portfolio, ergänzt durch NVIDIA GPUs. Die AI PODs sind **CVD-basiert** (Cisco Validated Designs – 20+ Jahre Erfahrung) und decken den **vollständigen AI Lifecycle** ab.

**Besonderheit:** Cisco ist der einzige OEM, der ein **eigenes Switching-Portfolio** (Nexus 9000) mit einem **eigenen SaaS-Management** (Intersight) kombiniert – und dazu eine **dedizierte AI Security Suite** mitliefert.

---

## Kernkomponenten auf einen Blick

| Schicht | Komponente |
|---|---|
| **Compute – PCIe** | Cisco UCS C845A M8 |
| **Compute – HGX/OAM** | Cisco UCS C885A M8 |
| **GPU** | NVIDIA H100/H200 HGX oder RTX PRO 6000 Blackwell Server Edition |
| **Networking** | Cisco Nexus 9000 Switches |
| **Management** | Cisco Intersight (SaaS!) |
| **Orchestrierung** | Red Hat OpenShift |
| **AI Software** | NVIDIA AI Enterprise |
| **Automation** | Ansible + Terraform |
| **Observability** | Splunk (optional) |
| **Security** | Cisco Hypershield + Cisco AI Defense |
| **Storage** | NetApp, Pure Storage oder VAST Data (Partner-Ecosystem) |

---

## Die zwei UCS-Server-Varianten

### UCS C845A M8 – PCIe GPU-Server
- **GPU:** PCIe-basiert (RTX PRO 6000, L40S etc.)
- **Einsatz:** Inference, kleinere Fine-Tuning Workloads
- **NVIDIA ERA:** 2-8-9-400 (adapted to 2-8-10-400)

### UCS C885A M8 – HGX/OAM Server
- **GPU:** NVIDIA H100/H200 HGX (NVLink, SXM) → Training-fähig
- **NVIDIA ERA:** 2-8-9-400 (adapted to 2-8-10-400)
- **Min/Max Size:** 4–128 Nodes

> [!info] NVIDIA ERA-Endorsement
> Beide Server-Typen sind von NVIDIA endorsed (Infrastructure + Spectrum-X + Networking Logical Architecture). Cisco ist damit neben Dell einer der wenigen mit vollständigem Triple-Endorsement.

---

## AI Lifecycle Coverage

Cisco AI PODs decken alle drei Phasen ab – in einer einheitlichen Plattform:

```
Training → Fine-Tuning / RAG → Inferencing
```

| Phase | Details |
|---|---|
| **Training** | On-Premises, HGX-Server (C885A), große Modelle (LLMs, DNN) |
| **Fine-Tuning & RAG** | Modellanpassung, Retrieval Augmented Generation |
| **Inferencing** | Data-Center-Scale oder Edge-Deployments |

---

## Netzwerk – Das Cisco-Differenzierungsmerkmal

Während Dell und HPE auf **NVIDIA Spectrum-X** setzen, bringt Cisco **seine eigenen Nexus 9000 Switches** mit:

- **Cisco Nexus 9000** als zentrales Fabric (Frontend + Backend)
- **SmartSwitch** für Demarcation und Segmentation
- Kein Fremd-Switching – vollständige Cisco-Kontrolle über das Netzwerk
- **Intersight** managed auch das Netzwerk (einheitlicher Pane of Glass)

> [!tip] Für Cisco-Bestandskunden
> Wer schon Nexus-Infrastruktur hat, kann die AI-Erweiterung nahtlos in die bestehende Netzwerkumgebung integrieren – kein Vendor-Wechsel beim Switching.

---

## Security – Ciscos einzigartiges Alleinstellungsmerkmal

Kein anderer OEM in diesem Vergleich bietet eine so tiefe Security-Integration:

| Komponente | Funktion |
|---|---|
| **Cisco Hypershield** | Distributed Security im Netzwerk, Microsegmentierung auf GPU-Server-Ebene |
| **Cisco AI Defense** | Schutz für AI-Workloads (Model Security, Prompt Injection Detection, Data Leakage Prevention) |

→ **Datensouveränität + Compliance** sind mit Cisco am einfachsten nachweisbar.
→ Ideal für Kunden mit hohen Compliance-Anforderungen (Finance, Public Sector, Healthcare).

---

## Management – Intersight als SaaS-Vorteil

| Aspekt | Cisco Intersight | Vergleich |
|---|---|---|
| **Art** | SaaS (Cloud-managed) | Dell: BCM on-prem; HPE: lokales Management |
| **Scope** | Server + Netzwerk (Nexus) in einem Portal | Andere: Compute-only Management |
| **Automatisierung** | Ansible + Terraform integriert | Standard-Ansible ebenfalls bei Dell |
| **Observability** | Splunk-Integration | Proprietary bei anderen OEMs |

---

## Software Stack

| Komponente | Produkt |
|---|---|
| **Container Platform** | Red Hat OpenShift (Kubernetes-basiert, enterprise-grade) |
| **AI Software** | NVIDIA AI Enterprise |
| **AI Frameworks** | PyTorch, TensorFlow |
| **Management** | Cisco Intersight |
| **Automation** | Ansible, Terraform |
| **Observability** | Splunk (Intersight Observability Cloud + OpenTelemetry) |

> [!note] OpenShift statt upstream Kubernetes
> Cisco setzt auf Red Hat OpenShift statt upstream Kubernetes (wie Dell). OpenShift ist enterprise-hardened, bringt eigene Security-Policies und RBAC – aber auch mehr Complexity und Lizenzkosten.

---

## Skalierung & Performance-Claims

Laut Cisco Dokumentation:
- **50% schnelleres Deployment** durch Pre-Validierung und CVDs + Intersight
- **30% schnelleres Training** durch NVIDIA GPUs + Cisco High-Performance Networking
- **Lineare Skalierbarkeit** – benchmark-getestet mit realen Modell-Simulationen

---

## Use Cases

- **Inference** (Data Center + Edge)
- **Model Fine-Tuning & RAG**
- **On-Premises LLM Training**
- **Edge AI Deployments** (niedrige Latenz, zeitkritische Anwendungen)

---

## Presales-Relevanz

> **Kernbotschaft:** Cisco AI PODs – das einzige Full-Stack-Angebot mit eigenem Netzwerk, SaaS-Management und dedizierter AI Security.

**Stärken im Kundengespräch:**
- **Cisco-Bestandskunden:** Kein Switching-Hersteller-Wechsel → natürliche Erweiterung
- **Security-fokussierte Kunden:** Hypershield + AI Defense → kein anderer OEM hat das
- **Operations-Fokus:** Intersight SaaS → weniger Ops-Overhead als on-prem Management
- **Vollständiger Lifecycle:** Training bis Edge in einer validierten Plattform

**Typische Kundensituation:**
- Kunde mit Cisco-Netz und hohen Compliance-Anforderungen → Cisco AI PODs erste Wahl
- Öffentlicher Sektor / Finance → AI Defense als Dealmaker
- Einstieg in AI ohne eigenes AI-Ops-Team → Intersight SaaS nimmt Komplexität raus

**Abgrenzung:**
- vs. Dell: Dell hat tiefere Storage-Integration (PowerScale) + Run:ai für GPU-Scheduling; Cisco gewinnt bei Security + Netzwerk
- vs. HPE: HPE ist Entry-Level (PCIe-only für diese RA); Cisco unterstützt auch HGX + Training

---

## Verwandte Dokumente

- [[Dell AI Factory with NVIDIA – Spectrum-X]]
- [[NVIDIA Enterprise AI RA with HPE]]
- [[04 Ressourcen/Referenzarchitekturen/Referenzarchitekturen]]
