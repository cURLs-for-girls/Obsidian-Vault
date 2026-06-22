---
title: HPE Discover 2026 – Keynote Tag 2 (Antonio Neri)
tags:
  - konferenz
  - hpe
  - event
  - arbeit
  - keynote
created: 2026-06-16
status: aktiv
event: HPE Discover 2026
---

# HPE Discover 2026 – Keynote Tag 2 🎤
## Antonio Neri – „Architect Deliberately"

> [!abstract] 🃏 Key Takeaways – Kurzversion für Management
>
> **🏗️ Die zwei Säulen der HPE-Story**
> Antonio Neri rahmt HPEs AI-Strategie heute klar um **zwei Säulen**: Self-Driving Network als Fundament + Agentic Enterprise auf Basis der HPE AI Factory / Private Cloud AI. HPE will sich damit von reinen AI-Networking-Spezialisten differenzieren — über den Full-Stack.
>
> ---
>
> **🌐 Networking (Säule 1)**
> Juniper-Integration zahlt sich ein: Scale-Up (QFX 5250 für AMD Instinct), Scale-Out (QFX), Scale-Across (PTX 1000) + SRX-Firewall + AI Grid mit NVIDIA. Aruba kommt unter Mist, Marvis Actions kommt in Central. Netzwerk als erste Security- und Observability-Schicht.
>
> ---
>
> **🤖 Agentic Enterprise (Säule 2)**
> PCAI heißt jetzt offiziell „HPE AI Factory". Drei Varianten: Enterprise, Service Provider, Sovereign. Governance bekommt Zähne: NeMo Guardrails, Three-Tier Identity Model, Zerto-Rollback für Agenten. Alletra MP X10000 spricht nativ MCP — das ist der Storage-Layer für RAG/Agentic Workloads.
>
> ---
>
> **🎯 Die drei offiziellen Closing-Takeaways von Neri**
> 1. **Architect deliberately** – Entscheidungen heute bestimmen den Erfolg morgen
> 2. **Start with the network** – Netz als Fundament jeder AI- und Cloud-Lösung
> 3. **Choose HPE as partner** – Full-Stack-Ansatz als Differenzierung

---

## 🔑 Die zwei Hauptsäulen der Keynote

> [!important] Neris dramaturgischer Rahmen
> Antonio Neri positioniert HPE explizit gegen reine AI-Networking-Spezialisten. Die Botschaft: AI-Erfolg hängt nicht nur am Netz, sondern an der **Verbindung** aus Netz, Compute, Storage, Security und Governance — und genau dort sitzt HPE.

### Säule 1 — Self-Driving Network als AI-Fundament
*„Architecting for AI starts with your network. The performance of your entire architecture depends on it. Every byte, every token, every decision — all processed through the network."*

### Säule 2 — Agentic Enterprise auf Basis der HPE AI Factory
*„Soon, IT will be responsible for thousands of agents that are part of your enterprise workforce, operating across every function."*

---

## 🌐 SÄULE 1 — Networking Announcements

### Scale-Up: Innerhalb des Racks
| Announcement | Details |
|---|---|
| **HPE Juniper QFX 5250 Scale-Up Switch** | Industry-first, **purpose-built für AMD Instinct GPUs** — 72 GPUs in eine Fabric, **260 TB/s** aggregate Scale-Up-Bandwidth |
| Architektur | Open Ethernet Fabric (nicht proprietär), SONiC OS Support, End-to-End AI-Automatisierung |

### Scale-Out: Zwischen den Racks im AI-Cluster
| Announcement | Details |
|---|---|
| **HPE Juniper QFX 5240** | Welthöchste Performance, 100% Ultra-Ethernet Transport Fabric Switch, powered by Junos OS |
| Zweck | Skalierung über Hunderte/Tausende GPUs — entscheidet, ob ein Modell in 90 oder 50 Tagen trainiert ist |

### Scale-Across: Zwischen Data Centern (DCI)
| Announcement | Details |
|---|---|
| **HPE Juniper PTX 1000 Series** | Ultra-dichte Routing-Plattform für AI-Parks, **800G Routing**, CRN+ für heterogene Optik |
| **HPE Networking SRX 4700 Firewall** | **Quantum-safe**, bis zu **1,4 Tbps** Security Performance in 1 RU |

### Edge & Inference
| Announcement | Details |
|---|---|
| **HPE Juniper QFX 5140 Inference Switch** | Neu — bis zu **16 TB/s** Switching-Kapazität, AI-optimiertes Load Balancing |
| **Juniper MX 301** | Edge On-Ramp Router, 6. Gen Trio Silicon, bringt Inference näher an Daten/Entscheidungen |

### AI Grid mit NVIDIA
- **HPE AI Grid** (ursprünglich auf NVIDIA GTC im März angekündigt, hier erweitert)
- Kombiniert NVIDIA Accelerated Computing + AI Networking (**Spectrum-X, ConnectX, BlueField**) mit HPE Compute
- Zielgruppe: **Service Provider**, Neo Clouds, hyperskaliernde AI-Services
- Use Cases: Conversational Agents, interaktive Medien, hyper-personalisierte Erlebnisse (Hospitality, Healthcare, Retail)

### Aruba / Campus & Branch — zwei wichtige Cross-Portfolio-Moves
| Announcement | Details |
|---|---|
| **Aruba CX Switches in HPE Mist** | AI-native Operations, schneller als bisher, Augmented Operations für Campus & Branch |
| **Marvis Actions kommt in HPE Aruba Central** | Erstes Network Assistant der Industrie mit **Conversational AI fürs Netz** — von reactive zu self-driving |

→ **Bedeutung:** Mist + Aruba werden mit einer gemeinsamen Data-Science-Engine versorgt. Niemand bleibt auf der Strecke beim Weg zu self-driving — egal welches Deployment-Modell der Kunde fährt.

---

## 🤖 SÄULE 2 — Agentic Enterprise & HPE AI Factory

### Rebranding & Architektur
- **HPE AI Factory = neuer Sammelbegriff** für die End-to-End-AI-Infrastruktur
- Drei Varianten:
  - **AI Factory für Enterprise** = Private Cloud AI (PCAI) — Turnkey, secure, in-network
  - **AI Factory Scale** = Model Builder, Service Provider, Neo Clouds (multi-tenant)
  - **AI Factory for Sovereigns** = Defense-Grade Security, Federal Compliance, validierte Encryption, lokale Data Residency

### PCAI-Update — neue Capabilities
| Capability | Details |
|---|---|
| **Agentic Open Source Registration** | Register Agents aus *jedem* Framework, Run mit Security Controls — Zero Code Changes am Workflow |
| **Three-Tier Identity Model** | 1) Verify User, 2) Cover Agent, 3) Human Approval für sensitive Aktionen |
| **NVIDIA NeMo Guardrails + Open Shell** | Moderne Networking Runtime für Private AI Agents, Policy Enforcement direkt im Agent-Runtime, jeder Agent in isoliertem Environment mit Guardrails für Datenzugriff & Aktionen |
| **Open-Source Reference Stack + Blueprints** | Für Corporate Agent Workflows |
| **Zerto for Agentic AI** | **Rollback auf sauberen Zustand**, wenn ein Agent Mist baut — Downtime reduzieren, Business protect |
| **Unified Gateway** | Eine API für Frontier- und Open-Source-Modelle, zentralisierte Credentials, Budgets, Policies |
| **Scale auf 256 GPUs** | Multi-Node Inference, neue Konfigurationen, **DL384 Gen4 mit NVIDIA Vera Rubin** für Inference |
| **Shared KV Cache** | Reduziert Recompute, signifikante Cost-Benefits Time-to-First-Token |

> [!warning] ⚠️ Bitte gegenchecken
> Der Server wird im Transkript mal als **DL384** (Vera Rubin), mal als **DL394** (Blackwell-Generation) genannt. In Evas Foto-Notiz steht DL384. Vor Verwendung im Post: Modellbezeichnung verifizieren.

### Storage als Data Foundation für Agenten
- **Alletra MP X10000** wird zur Storage-Schicht für PCAI
- **Native MCP-Unterstützung** + Real-Time Metadata Enrichment
- Agents und Apps holen sich Kontext und Daten schneller — strukturiert UND unstrukturiert
- Versprochene Beschleunigung: **7–12 Monate schnellere Time-to-Value** vs. Eigenbau
- Außerdem: X1000 jetzt mit nativem File- und Object-Storage aus einer Architektur, erstes Object Storage validiert mit NVMe Certified Storage

### Security & Trust
- **Confidential Computing wird Standard** über das ganze HPE-AI-Portfolio (mit NVIDIA Confidential Computing)
- Workloads laufen in Trusted Execution Environments — Hardware-protected Layer
- Silicon Root of Trust + Zero Trust + Cyber Resilience Vault als Recovery-Layer

### Unleash AI Ecosystem
- Mehr als **60 Partner**, Hunderte Use Cases
- Beispiele: St. Jude Children's Research Hospital, Dallas Cowboys, Ryder Cup

---

## 🔮 Blick in die Zukunft — HPE Labs

### Quantum
- **Quantum Scaling Alliance** (bereits laufend, hier erweitert)
- **Hybrid Quantum Alliance** — neue erweiterte Industrie-Kollaboration, **Rigetti** explizit als Partner genannt
- Vision: Quantum + HPC + AI als konvergierter Stack, Quantum „aus dem Labor in die Realität"
- Sichtbar in Vegas: Quantum Chandelier auf der Showfloor neben dem Original HP One

### Energy / Power als systemische Herausforderung
- US: ~19 GW Power-Gap bis 2050 (~60 Mio. Haushalte)
- Datacenter sollen bis 2030 ~50% der US-Stromnachfrage ausmachen
- Customer-Story: **Siemens Energy** — baut die Energy-Infrastruktur für das AI-Zeitalter, nutzt HPE AI Foundation für eigene Transformation

### Self-Improving AI Systems
- HPE Labs forscht an AI, die AI optimiert
- GreenLake Intelligence: prediktive Storage-Placement, lernt Workload-Patterns
- Energy- & Water-Reduction über AI ohne Performance-Verlust

---

## 🎯 Neris drei Closing-Takeaways (im Original)

1. **Architect deliberately** — *„The choices you make today will determine your success tomorrow."*
2. **Start with the network** — *„Make your network the core foundation of your AI and cloud solutions."*
3. **Choose HPE as partner** — *„Full stack to help you build your experiences."*

---

## 🧠 Meine Beobachtungen vor Ort

> [!note] Persönliche Notizen während der Keynote
> - **Hauptbotschaft sortiert sich um 2 Säulen** (Network + Agentic Enterprise) — sauber strukturiert, deutlich klarer als gestern
> - **DL384 vs. Rubin / MP X10000** waren die optisch dominanten Server-/Storage-Highlights
> - **Liquid-Cooled Switch** wurde gezeigt — Frage: **für welche Zielgruppe?** Hyperscaler & Neo Clouds vermutlich, aber Enterprise-Relevanz unklar
> - **Mehr Produkt- als Lösungsdenke** — viele einzelne Announcements, weniger ein zusammenhängendes „Wenn-du-X-willst-bekommst-du-Y-von-HPE"
> - **AI Grid mit NVIDIA** als Service-Provider-Story sauber positioniert
> - **NeMo Guardrails / Open Shell** als Highlight des Agentic-Teils
> - **Confidential Computing** stärker betont als erwartet — wird Standard, nicht Add-on
> - **Hybrid Quantum Alliance mit Rigetti** als ernstzunehmender Future-Move

### Offene Frage für den eigenen Post
> [!question] Kernfrage für die LinkedIn-Stellungnahme
> **Wie verbindet Neri die zwei Säulen wirklich zu einem Gesamtkonzept?**
> → Verbindung über die AI Factory als Klammer? Oder bleiben Network und Agentic Enterprise zwei parallele Erzählstränge?
> → Und: Inwiefern fährt HPE damit eine *andere* Strategie als reine AI-Networking-Spezialisten (Cisco, Arista)?

---

## 🔗 Verbindung zur Keynote Tag 1 (Partner Keynote, 15.06.)

Antonio hat gestern in seinem Partner-Interview die Dramaturgie schon angekündigt — heute hat er sie inhaltlich gefüllt:

| Gestern (Partner Keynote) | Heute (Main Keynote) |
|---|---|
| Antonio: *„chapter one will be all about networking"* | Säule 1 vollumfänglich geliefert: Juniper Scale-Up/Out/Across + Aruba+Mist |
| Antonio: *„chapter two how we enable enterprises to become an agentic enterprise"* | Säule 2 mit PCAI-Update, NeMo, Zerto, Three-Tier Identity konkretisiert |
| Fidelma: *„Pfad zur agentic AI infrastructure — Data Foundation, Identity, Governance"* | Mit Alletra MP X10000 + MCP + Three-Tier Identity Model umgesetzt |
| Neil: *DL394 mit NVIDIA Blackwell als neues AI-Server-Angebot* | Eingeordnet in PCAI-Inference-Architektur (Verifizierung Modellbezeichnung nötig) |
| Phil: *PCAI + Services + GreenLake = Weg zur Agentic Enterprise* | Wird heute zur offiziellen **HPE AI Factory** mit drei Varianten |
| Rami: *Networking als Fundament der AI-Ära* | Mit Hardware unterlegt: QFX, PTX, SRX, MX + AI Grid |

**Roter Faden:** Strategie konsistent. Tag 1 = Partner-Enablement & Kommerz. Tag 2 = Technologie-Substanz für genau diese Strategie. Wer beide Keynotes hört, sieht: HPE versucht, **Sales-Programm und Technologie-Roadmap parallel zu schließen**.

---

## 💬 Starke Zitate aus der Keynote (für den Post)

> „Architecting for AI starts with your network. The performance of your entire architecture depends on it."

> „If the foundation is not robust, nothing else holds."

> „The self-driving network is a quiet network because it just works."

> „Soon, IT will be responsible for thousands of agents that are part of your enterprise workforce, operating across every function."

> „Generative AI demands a new set of enterprise requirements: agents need to be secure and governed with clear guardrails on what they can do, what systems they can act for, and what data they can access."

---

## 📌 Action Items / Follow-ups Tag 2

- [ ] **Modellbezeichnung DL384 vs. DL394** klären (Foto und Materialien gegenchecken)
- [ ] **Liquid-Cooled Switch** — Zielgruppe und Use Case in Spotlight-Session klären
- [ ] **Alletra MP X10000 + MCP** — technischer Deep-Dive recherchieren (Demo am Booth?)
- [ ] **HPE AI Factory** als neue Sammelbenennung in internes Kundenmaterial übernehmen
- [ ] **NeMo Guardrails + Open Shell** — was steckt wirklich dahinter, NVIDIA-Hintergrund recherchieren
- [ ] **Zerto for Agentic AI** — Verfügbarkeitsdatum + Lizenz-Modell klären
- [ ] **Hybrid Quantum Alliance / Rigetti** — Briefing für Strategie-Diskussion intern
- [ ] LinkedIn-Post finalisieren aus dieser Datei + Tag-1-Datei (gemeinsam)

---

## 🗂️ Quellen

- Transcript: `07 Anhänge/Transkripte/Keynote_HPE_Discover_2026-06-16_09_02_18-transcript.txt`
- Eigene Notizen während der Keynote
- Verbindung zu: [[HPE Discover 2026]] (Tag-1-Datei mit Partner Keynote)
- Vorbereitung: [[HPE Discover 2026 – Vorbereitung]]
