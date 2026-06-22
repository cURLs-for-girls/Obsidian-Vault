---
tags: [ressourcen, referenzarchitektur, nvidia, ai-factory, ai-infrastruktur]
status: aktiv
erstellt: 2026-06-14
hersteller: [NVIDIA]
quelle: "NVIDIA – offizielles Referenzarchitekturbild (customer-validated data center reference architectures)"
typ: vorlage
---

# NVIDIA Full Stack AI Factory – Übersicht

> [!important] Zentrales Referenzbild
> Dies ist das **offizielle NVIDIA-Architekturdiagramm** „NVIDIA Provides a Full Stack for AI Factories" – direkt von NVIDIA. Es ist die Grundlage aller OEM-Varianten (Dell, Cisco, HPE) und dient als **zentrales Referenzmodell** für alle Gespräche rund um AI Factories.

![[NVIDIA Full Stack AI Factory Architektur.png]]

---

## Kernaussage

**Inputs → Stack → Output:**

- 🔌 **Electricity** + 💾 **Data** als Rohmaterial unten
- ⬆ **Intelligence, Tokens and Business Outcomes** als Ergebnis oben
- NVIS* und/oder **NVIDIA Partner Services** flankieren den gesamten Stack (rechts)

NVIDIA liefert den **vollständigen Stack** – von der physischen Infrastruktur bis zur Software-Ebene – validiert und zertifiziert.

---

## Stack-Schichten (von unten nach oben)

### 🔵 Physische Fundamente

| Schicht | Inhalt |
|---|---|
| **Data Center Mechanical, Electrical & Plumbing** | Kühlsystem, Stromversorgung, physische Infrastruktur des Rechenzentrums |
| **NVIDIA-Certified Systems** | Server/Systeme, die NVIDIA-Zertifizierung tragen (OEM-Hardware von Dell, HPE, Cisco etc.) |

---

### 🟢 Hardware-Schicht (Compute / Network / Storage)

Drei gleichwertige Säulen:

| Säule | Komponenten |
|---|---|
| **Compute** | CPU · GPU · NVLink (GPU-zu-GPU-Interconnect für Scale-Up) |
| **Network** | InfiniBand · Ethernet (Scale-Out-Networking zwischen Nodes) |
| **Storage** | Data (Paralleles Hochleistungs-Storage für AI-Workloads) |

> [!tip] Warum NVLink + InfiniBand + Storage gleichwertig?
> In einer AI Factory müssen alle drei Domänen gleich schnell sein – ein Engpass in einer Säule limitiert den gesamten Durchsatz. Das ist die „Full Stack"-Logik von NVIDIA.

---

### 🟢 Software-Schicht (4 Ebenen, von unten nach oben)

| Software-Ebene | Funktion |
|---|---|
| **Infrastructure Management** | Verwaltung der physischen Ressourcen, Monitoring, Health |
| **AI Workload and GPU Orchestration** | Scheduling, Ressourcenzuweisung, Job-Management für AI-Workloads |
| **NVIDIA AI Enterprise** | Enterprise-AI-Softwarepaket (Inference-Stack, Fine-Tuning-Tools, MLOps) |
| **NVIDIA Omniverse** | Digitale Twins, Simulation, Industrial AI, 3D-Kollaboration |
| **NVIDIA Blueprints** | Vorvalidierte AI-Workflow-Templates (Agentic AI, RAG, Video-AI etc.) |

---

## Externe Services

**NVIS\* and/or NVIDIA Partner Services** – flankiert den gesamten Stack von außen:
- NVIS = NVIDIA Integration Services (professionelle Deployment-Services)
- Partner Services = CANCOM und andere autorisierte Partner können hier einspringen

---

## Warum dieses Bild wichtig ist

> [!note] Positionierung gegenüber Kunden
> Dieses Bild zeigt, dass NVIDIA **nicht nur GPUs** verkauft – sondern einen **vollständigen, validierten Stack** von der Stromversorgung bis zur KI-Applikationsschicht.
>
> OEM-Partner wie Dell, Cisco und HPE **setzen auf diesen Stack auf** – sie liefern die zertifizierte Hardware-Plattform, NVIDIA bringt den Software-Stack.

**Typische Gesprächspunkte:**
- „Dell AI Factory / Cisco AI Factory / HPE AI Computing – alles baut auf dieser NVIDIA-Architektur auf"
- „Wir helfen Ihnen, diesen Stack zu implementieren – von der Stromversorgung bis zum laufenden AI-Workload"
- „NVIDIA Blueprints = sofortige Use-Case-Bibliothek, kein Neuerfinden des Rades"

---

## Abgrenzung der Software-Komponenten

| Produkt | Zweck | Zielgruppe |
|---|---|---|
| **NVIDIA AI Enterprise** | MLOps, Inference, Fine-Tuning, Sicherheit | IT/ML-Teams im Unternehmen |
| **NVIDIA Omniverse** | 3D-Simulation, Digital Twins, Industrial AI | Engineering, Manufacturing |
| **NVIDIA Blueprints** | Ready-to-use AI-Workflow-Templates | Schneller Einstieg / PoC |

---

## Verwandte Notizen

- [[Referenzarchitekturen]] – Übersicht aller Herstellervarianten
- [[NVIDIA DGX BasePOD]] – NVIDIA Hardware Entry Point
- [[NVIDIA DGX SuperPOD GB200]] – NVIDIA AI Factory Scale
- [[Dell AI Factory with NVIDIA – Spectrum-X]] – Dell-OEM-Variante
- [[Cisco Secure AI Factory – AI PODs]] – Cisco-OEM-Variante
- [[NVIDIA Enterprise AI RA with HPE]] – HPE-OEM-Variante
- [[Herstellervergleich – Dell vs. Cisco vs. HPE]] – OEM-Vergleich

---

> [!todo] Bild hinterlegen
> Das originale NVIDIA-Diagramm `NVIDIA Full Stack AI Factory Architektur.png` in den Attachments-Ordner ablegen und oben einbetten.
