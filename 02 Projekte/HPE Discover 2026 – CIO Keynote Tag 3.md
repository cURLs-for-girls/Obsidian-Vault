---
title: HPE Discover 2026 – CIO Keynote Tag 3 („The Path to an Agentic Enterprise")
tags:
  - konferenz
  - hpe
  - event
  - arbeit
  - keynote
created: 2026-06-17
status: aktiv
event: HPE Discover 2026
---

# HPE Discover 2026 – CIO Keynote Tag 3 🎤
## „The Path to an Agentic Enterprise" — Distributed Intelligence, Tokenomics, Operations

> [!abstract] 🃏 Key Takeaways – Kurzversion für Management
>
> **💰 Das neue Top-Narrativ: Tokenomics**
> AI in Produktion ist am Ende ein Kostenthema. Plakatives Beispiel: OpenAI braucht ca. **$13.000 pro Coding-Agent pro Monat** an Token-Kosten. HPEs Antwort: vom Token-Consumer zum Token-Producer werden — Inferenz on-prem statt teuer einkaufen.
>
> ---
>
> **🧠 Storage wird zu „aktivem Speicher" für AI**
> Alletra MP X10000 + KV Cache Offload + RDMA → laut HPE/CoreWeave **20x schnellere Time-to-First-Token** und **17x höhere Throughput**, ohne zusätzliche GPUs. X10000 wandert direkt in PCAI rein. Das ist das schärfste technische Argument der Keynote.
>
> ---
>
> **⚙️ Morpheus 9 als Control Plane für alles**
> Größtes Morpheus-Release der Geschichte. Spannt die Klammer über klassische Workloads UND AI. Morpheus Central als Single Operational View, integriertes SDN auf Juniper-Basis, Stretched Clustering. Migration-Programm: 1 Jahr VME + Zerto Live Migration kostenlos.
>
> ---
>
> **🤖 Zerto für Agentic AI ist jetzt real**
> Heute deutlich konkreter als Tag 2: Zerto trackt Agent-Aktionen in Echtzeit, rollt bei NVIDIA NeMo Guardrails + Open Shell Agenten auf einen sauberen Zustand zurück. Antwort auf „Agent löscht Daten, modifiziert Code, baut Mist".

> [!info] Speaker-Notiz
> Sprecherin der Session offiziell als „CIO Keynote" gelabelt — im Vorbereitungsplan auch als CTO General Session bezeichnet. Vortragstitel: **„The Path to an Agentic Enterprise"**. Konkrete Sprecherin im Transkript nicht eindeutig namentlich genannt (ggf. Fidelma Butler oder HPE CIO).

---

## 🎯 Das Framing der Keynote

> [!important] Der gedankliche Bogen
> 1. **Static Enterprise → Agentic Enterprise** — Systeme wechseln von „support decisions" zu „execute decisions"
> 2. **Distributed Intelligence braucht Closed-Loop-Operations** — observe, reason, act, validate
> 3. **Drei Säulen, damit das funktioniert:** Trusted Data Layer + Platform for the Agentic Era + Intelligence embedded in Operations

Roter Faden: AI ist keine Anwendung mehr, sondern Teil der täglichen Arbeit. Wer das in Produktion will, braucht Daten, Plattform und Betriebsmodell — und muss die Wirtschaftlichkeit im Griff haben.

---

## 🗂️ Säule 1 — Data Foundation

### HPE Data Fabric 8.2
- **Agent-aware Capabilities** — Agenten finden, verstehen und governen Enterprise-Daten besser
- **Enhanced & simplified Global Data Catalog**
- Jetzt auch als **Appliance** verfügbar (vereinfacht Deployment, schnellere Time-to-Value)
- Trusted Data Layer über Data Center, Cloud und Edge hinweg
- Identity Management und Governance direkt in der Fabric

→ **Botschaft:** Bevor Agenten handeln können, müssen Daten discoverable, governed, secured und überall verfügbar sein. Data Fabric ist die HPE-Antwort.

---

## 💰 Säule 1.5 — Tokenomics (das eigentlich neue Top-Thema)

### Die Zahlen, die im Raum hingen
- OpenAI verarbeitet laut öffentlichen Quellen **>600 Mrd. Tokens/Monat** für ~100 Coding-Agenten
- Das sind ca. **$13.000 pro Agent pro Monat**
- AI Economics = Infrastructure Economics: Utilization, Efficiency, Scale

### HPE-eigene Beweisführung: „Mindstorm"
- Interne AI-first Support-Plattform für Storage und Service-Telemetrie
- Auf **PCAI + GreenLake Intelligence** gebaut, läuft on-prem
- **30x niedrigere Kosten** vs. externe Inference-Services
- **~$100k/Monat Ersparnis**
- O-Ton: *„We stopped being consumers of AI and became producers of intelligence."*

### Die Wette
**Vom Token-Consumer zum Token-Producer.** AMD CIO Hasmark Ranjan hat das später im Kundeninterview präzise auf den Punkt gebracht (siehe unten).

---

## 🧠 Säule 2 — Infrastructure: KV Cache als Storage-Game-Changer

### Storage als „active memory for AI"
| Detail | Wert |
|---|---|
| Produkt | **HPE Alletra Storage MP X10000** |
| Mechanik | KV Cache Offload jenseits GPU-Speicher, via **RDMA** |
| Validiert von | **CoreWeave** |
| Ergebnis | **20x schnellere Time-to-First-Token, 17x höhere Throughput** |
| Wie | Nicht mehr GPUs — bestehende GPUs produktiver halten |
| Integration | X10000 wird **direkt in PCAI** integriert |

→ **Botschaft:** Storage ist keine passive Schicht mehr. KV Cache Offload ist der konkrete Mechanismus, mit dem HPE die Inferenz-Wirtschaftlichkeit hochzieht.

---

## 🏗️ Private Cloud Portfolio — sauberes Rebranding

| Alt | Neu | Zielgruppe |
|---|---|---|
| HPE SimpliVity | **PC1000** | Remote / Distributed Locations |
| HPE PCPE | **PC3000** | Modern Workloads — neu: auch **air-gapped** |
| (neu) | **PC7000** | Mission Critical & Regulated, **DoD IL4 compliant** |
| HPE Private Cloud AI | **PCAI** | bis **256 GPUs**, **NVIDIA Vera Rubin** upcoming |

> Gemeinsame Control Plane für alle: **HPE Morpheus** (common control plane, common operating model, governance framework von Edge bis AI)

### PCAI-Update wird heute weiter geschärft
- **NVIDIA Open Shell + NeMo Cloud** als Governance- und Security-Layer
- **HPE AI Essentials** als Workbench für Modelle (eingebettet)
- Secure Agent Operations
- Demo-Use-Case: Loan Renewal Memo in einer Bank (Risk Agent + Human Approval Workflow + Audit Log)

---

## ⚙️ Säule 3 — Operations: HPE CloudOps Suite

> Drei Komponenten als Klammer:
> - **Morpheus** → Runtime Orchestration & Automation
> - **OpsRamp** → Observability & Operations
> - **Zerto** → Resilience & Recovery

### HPE Morpheus 9 — größtes Release der Produktgeschichte
| Capability | Was es bedeutet |
|---|---|
| **Morpheus Central** | Single Operational View über GreenLake — federated Multi-Site-Management |
| **Integriertes SDN auf Juniper-Basis** | Policy, Security, Microsegmentation direkt in der Plattform |
| **Stretched Clustering** | Resilience über Sites hinweg für kritische Workloads |
| **Common Operating Model** | Klassische Workloads (VMware, Red Hat, VME) UND AI-Workloads unter einer Logik |
| **Coming soon:** | Air-gapped On-Prem Deployment |

→ **Botschaft:** Morpheus 9 wird zum **echten Enterprise Control Plane** — die Brücke zwischen traditionellem RZ und AI Factory.

### OpsRamp für AI Factories
- **Token Consumption** sichtbar pro Service/Application
- **KV-Cache-Visibility** auf Modell-Ebene
- Korrelation Modell-Verhalten ↔ Infrastruktur (GPU, Storage, Network)
- **Interactive Topology Maps** über die AI Factory
- Symptom → Root Cause across Layers

### Zerto für Agentic AI — heute deutlich greifbarer
- Erweiterung auf **NVIDIA NeMo + Open Shell Agenten-Umgebungen**
- Trackt **jede Änderung in Echtzeit**, die ein Agent ausführt
- Rollback auf den letzten **clean known-good state**
- Antwort auf den heißesten Risk: *„Agent modifiziert Code, löscht Daten, baut Mist"*

---

## 💼 VME, Citrix & Migrations-Move

### HPE VM Essentials — Momentum
- **2.000+ Kunden, >1 Mio. Cores** deployed
- Bis zu **90% niedrigere Lizenzkosten** vs. traditionelle Per-Core-Modelle
- **75+ ISV-Partner** im Ökosystem

### Neue Partnership: Citrix
- **Citrix DaaS** + **Citrix Virtual Apps & Desktops** integrieren in GreenLake + VME
- Liefert Digital Workspaces mit Cloud-Like-Operations im selbst gewählten Deployment

### Morpheus Platform Migration Program
- **Erstes Jahr VME Essentials kostenlos**
- **Plus kostenlose Zerto Live Migration**
- Löst die „Double-Bubble" beim Plattformwechsel

---

## 🧠 HPE GreenLake Intelligence Agentic Mesh

### Das Konzept
- **Centralized Agent Registry** → Identity, Governance, Policy für jeden Agent (wie für IT-Mitarbeiter)
- **Planning Service / Planning Agent** → entscheidet, welche Spezial-Agenten welche Tasks übernehmen
- **Shared Context** zwischen Agenten — nicht mehr in Domain-Silos gefangen

### Drei neue Copilots
| Copilot | Zweck |
|---|---|
| **Compute Copilot** | Server-Operations intelligenter |
| **Morpheus Orchestration Copilot** | Infrastructure-Automation per Natural Language |
| **OpsRamp Observability Copilot** | Issue-Investigation und Resolution beschleunigen |

### Neue Partnership: ServiceNow
- **GreenLake Intelligence ↔ ServiceNow autonomous AI workforce**
- Infrastructure Insight → autonome Service Delivery
- Eine Brücke von HPE-Telemetrie zu ITSM-Automation

---

## 🎤 Kundenstimmen

### Hasmark Ranjan — CIO AMD
> Die markanteste Aussage der ganzen Keynote:

**„The IT journey will be from being a token consumer today to a token producer inside our data center."**

Konkreter Move bei AMD:
- AMD Epyc-Server + **MI350 PCIe-Karte**
- Misskonzept ausgeräumt: *„Du brauchst NICHT für jeden AI-Workflow eine GPU"* — AMD läuft viele AI-Workloads auf CPU
- Rechenbeispiel zur Token-Economy: $200/Woche/Mitarbeiter × 50 Wochen × 40.000 MA = **$400 Mio/Jahr Token-Spend** bei einem Mittelständler. Bei 70.000 MA: **$700 Mio.** → diese Kosten gab es vor 2 Jahren noch gar nicht
- Botschaft: „Hardware ist zurück — und Hardware-Operatoren auch."

### Sama Bilbao — CIO Point32Health (Healthcare, Boston)
- **ORBIE Award Winner** for CIO of the Year (Healthcare Greater Boston)
- GreenLake-Transition in nur **18 Monaten**
- 4 Prioritäten für AI in Healthcare:
  1. Governance + Responsible Use of AI
  2. Reusable AI Platform
  3. Operating Model & Change Management
  4. Workforce Strategy
- *„Trust ist non-negotiable in Healthcare."*

---

## 💬 Starke Zitate aus der Keynote

> „We stopped being consumers of AI and became producers of intelligence." *(HPE Mindstorm Story)*

> „AI economics looks a lot like infrastructure economics. It comes down to utilization, efficiency and scale."

> „Storage becomes active memory for AI."

> „The IT journey will be from being a token consumer to a token producer." *(Hasmark Ranjan, CIO AMD)*

> „This was not a storage demo — this was a glimpse of AI economics in action." *(zu KV Cache Demo)*

> „Hardware is back — and so are the hardware operators." *(Hasmark Ranjan)*

---

## 🧠 Meine Beobachtungen

> [!note] Persönlicher Eindruck der Session
> - Diese Session war die **substanzreichste der drei Tage**. Wer nur Antonios Tag-2-Keynote hört, kriegt die wirklich neue Story (Tokenomics) gar nicht mit.
> - **Tokenomics** ist HPEs neuer Verkaufshebel, nicht mehr Speeds & Feeds. Sehr clever positioniert.
> - **KV Cache + X10000** ist das stärkste technische Argument — mit echten Zahlen (20x/17x), nicht nur Marketing.
> - **Morpheus 9** ist endlich auf einem Niveau, wo es als wirklicher Enterprise Control Plane gelten kann — vorher war das ein Versprechen.
> - **Customer Stories** waren glaubwürdig. AMD CIO als wandelnde Werbetafel für die Token-Producer-These — das funktioniert.
> - **Drei Copilots** wirken vorbereitet, aber wenig differenzierend — jeder Vendor hat „Copilots".

### Offene Fragen für mich
- Wie groß muss ein PCAI-Deployment sein, damit sich der „Token Producer"-Case wirklich rechnet? Break-Even-Punkt?
- KV-Cache-Offload via X10000: für welche Modellgrößen / Context-Längen wird das relevant? Reicht das auch für kleinere Enterprise-Use-Cases oder ist das ein Hyperscaler-Argument?
- Zerto für Agentic: Wie funktioniert das technisch bei reinen Software-Aktionen (API-Calls, externe Systeme)?

---

## 🔗 Verbindung zu Tag 1 + Tag 2

| Thema | Tag 1 (Partner) | Tag 2 (Neri) | Tag 3 (CIO) |
|---|---|---|---|
| **PCAI** | als Weg zur Agentic Enterprise positioniert | NeMo Guardrails, Three-Tier Identity, Sovereign-Varianten | um Tokenomics + KV Cache erweitert; X10000 fest integriert |
| **Operations** | nicht thematisiert | nur am Rand (GreenLake Intelligence) | **Headline:** Morpheus 9, OpsRamp, Zerto, Agentic Mesh |
| **Storage** | Leerstelle | Alletra X10000 + MCP angerissen | **Konkretisiert** mit KV Cache + CoreWeave-Zahlen |
| **Wirtschaftlichkeit** | Partner-Margen, 99-Offer | nicht direkt | **Tokenomics als Top-Thema** — $13k/Agent, $400 Mio Token-Spend |
| **VME/Morpheus** | Channel-First, 3 Jahre kostenlos | nicht thematisiert | Morpheus 9 + Citrix + Migration Program |
| **Zerto** | Channel-First | „for Agentic AI" angerissen | **konkretisiert** für NeMo + Open Shell |

**Beobachtung:** Tag 1 war Vertrieb. Tag 2 war Hardware-Story. Tag 3 war **Operations + Ökonomie** — und damit die Klammer, die die Gesamtstrategie schließt.

---

## 📌 Action Items / Follow-ups Tag 3

- [ ] **Tokenomics-Pitch** für Kundengespräche vorbereiten — Rechenbeispiel mit Mitarbeiterzahl × Wochen × Token-Spend (siehe AMD CIO-Story)
- [ ] **Alletra X10000 KV Cache Offload** technisch tiefer einarbeiten — wann lohnt es sich, ab welcher Modellgröße?
- [ ] **Morpheus 9 Demo** organisieren — Morpheus Central + SDN-Integration anschauen
- [ ] **Mindstorm-Case** als interne Reference Story aufnehmen (30x Cost Reduction)
- [ ] **Zerto für Agentic AI** — Verfügbarkeit + Lizenzierung klären
- [ ] **PC1000/3000/7000 Rebranding** in Kundenmaterial nachziehen
- [ ] **ServiceNow Partnership** — was bedeutet das für unsere ServiceNow-Kunden?
- [ ] **HPE Data Fabric 8.2 Appliance** — Spec und Pricing aufnehmen
- [ ] LinkedIn-Post mit angepasstem Punkt 3 finalisieren (Tokenomics + Morpheus 9 eingearbeitet)

---

## 🗂️ Quellen

- Transcript: `07 Anhänge/Transkripte/CIO_Keynote_Discover_2026-06-17_09_03_08-transcript.txt`
- Eigene Notizen aus der Session
- Verbindung zu:
  - [[HPE Discover 2026]] (Tag 1 — Partner Keynote)
  - [[HPE Discover 2026 – Keynote Tag 2 Antonio Neri]] (Tag 2 — Main Keynote)
  - [[HPE Discover 2026 – Vorbereitung]] (Sessions & Termine)
