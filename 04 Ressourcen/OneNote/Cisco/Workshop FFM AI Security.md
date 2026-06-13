---
tags: [onenote, aivengers]
---

# Workshop FFM AI Security

Einleitung:

Cisco Agentcy von notebookLM zusammenfassen lassen

AI Canvas

MCP Server Vorstellung

Domain AI Agent erstmal für Cisco Portfolio, später 3rd Party

--------

Der Workshop wurde initiiert, weil Cancom laut interner Partneranalyse als einer der wenigen Cisco-Partner noch keine klar definierte AI-Strategie mit Cisco verfolgt.

Ziel des Treffens ist, gemeinsam eine enge Zusammenarbeit im Bereich AI und AI-Security aufzubauen – nicht nur ein Einzeltermin, sondern ein nachhaltiger Einstieg in gemeinsame Projekte.

Die Vorstellung erfolgt durch die Teilnehmer*innen aus verschiedenen Teams: Datacenter, Security, AI-Plattformen, Entwicklung.

Cisco bringt mit, dass Stefan Rehberg (lokaler AI-Defense-Spezialist) eine tiefergehende Vorstellung von Cisco AI Defense geben wird. Er gilt als zentrale Figur für AI-Security-Themen auf deutscher Ebene.

Es wird ein Miro-Board als gemeinsame Dokumentationsbasis genutzt, um Ergebnisse festzuhalten.

Cancom stellt intern dar, dass man bereits eine eigene AI-Business-Unit, AI Avengers und Plattform-Expertise aufgebaut hat, aber die Synergien mit Cisco bislang noch nicht systematisch genutzt wurden.

🔹 Einleitung – Ziel und Kontext des Workshops

Ziel ist es, eine konkrete AI-Security-Strategie gemeinsam mit Cisco zu entwickeln, die auch in Kundenprojekte mündet.

--------------------------

🏗️ AI Infrastructure Story – Cisco Strategie & Architektur

Cisco will AI-Infrastruktur nicht nur für Hyperscaler liefern, sondern „enterprise-ready“ machen – also skalierbar und adaptierbar für Mittelstand und Großunternehmen.

Bisherige Cisco-Stärken (Netzwerk, ASICs, Partnerschaften) sollen auf AI-Workloads übertragen werden.

🔹 Ausgangspunkt & Motivation

Unified Architecture:→ Gleiche Plattformen für klassische Workloads und AI→ Beispiel: Nexus Dashboard verwaltet ACI und EVPN Fabrics gemeinsam

Unified Operations:→ Gleiche Tools und Prozesse für Betrieb (z. B. Intersight, Nexus Dashboard)

Unified Solutions:→ AI-spezifische Lösungen wie AI Pods, aber auch offene Architekturen

🔹 Drei strategische Säulen:

AI Pods: skalierbare AI-Cluster mit Cisco Compute + Nvidia GPUs

MGX-Architektur: neue Generation von Servern (Cisco UCS 845A/885A) für 8–16 GPUs

DLC & Immersion Cooling: in Arbeit für große Server (z. B. für Jülich)

AI Edge Boxen („Unified Edge“): kleine Boxen mit modularem AI-, Netzwerk-, Security- oder Storage-Einschub

🔹 Produkte & Komponenten

Cisco ist einziger Hersteller, dessen Nexus-ASICs in Nvidia Referenzarchitektur aufgenommen wurden

InfiniBand wird toleriert, aber Cisco propagiert 400/800G Ethernet mit Adaptive Routing

🔹 Fabrics & Netzwerk

Enge Partnerschaft mit Nvidia: Cisco ist zentraler Bestandteil der AI Factory-Initiative (von Jensen Huang unterstützt)

AI Pods skalieren mit „Scale Units“ (z. B. 32/64/128 GPUs) – > Referenzdesigns analog Nvidia DGX

🔹 Plattform-Kopplung mit Nvidia:

Intersight: für Compute

Nexus Dashboard: für Netzwerk

Hyperfabric AI: neues Angebot für automatisiertes GPU-Cluster-Design (Skalierung, Verkabelung, Deployment)→ Aktuell nur Greenfield / nur mit Nexus 6000 kompatibel

🔹 Management & Automatisierung:

AI Pods 2.0 mit Training-Optionen (nicht nur Inferenz)

Energy Budget & Stromverbrauch: bis zu 13 kW pro Server→ Künftig wichtiges Differenzierungsmerkmal für DC-Design

🔹 Ausblick:

Cloud & ai update

Zeitalter KI - übersicht cisco

Aktuell: ai ready datacenter - künftig: ai factory / ai datacenter

3-teiliger ansatz: architektur, operations, lösungen

AI Pod war der Start (UCSx) - services / applikationen mitliefern war grundgedanke / Mint Services -> Inference use case ist der größte - training use case kaum vorhanden

Approach bild - stufig:

Architecture:

Nexus dashboard = zentrale plattform

Netzwerk Plattform

Nur spectrum X - nicht connect X

Asic

---------------------

MGX- Ableger C845A - Bladeserver? - C885 - welcher gpu formfaktor?

Einfacher die DPU zu entnehmen

B300 wird möglich sein

Codename avatar - enterprise AI Edge - inferencing lösung - kleine box - bis 5 einschübe - dpu für security workloads oder gpu für ai workloads

----------------------

Operations:

Nexus Dashboard mitgeliefert? Bei servern dabei? Extra lizensiert?

-----------------------

Solutions:

Hyperfabric ai

AI Pods

Cisco secureity:

Nvidia sofware

Platform SW

Cisco networking

Cisco compute

Partner storage

------------------------------------------

Unified Solutions 
Cisco Secure Al Factory with NVIDIA 
The blueprint to accelerate Al adoption for enterprises with 
an integrated Al infrastructure and software solution from 
Cisco, NVIDIA, and strategic partners 
Claco Security 
NVIDIA 
Software 
NVIDIA 
Application Security: 
NVIDIA. 
Al Enterprise 
NoMo 
NIMA 
Blueprints 
Cisco Al Defense 
Nexus & AI PODs 
Hyperfabric Al 
Cisco 
Cisco UCS® (CB85A MB, C845A MB) 
with NVIDIA Accelerated Computing 
Cisco UCS® (C805A MB) with 
Workload Security: 
Compute 
NVIDIA BlueField®-3 DPUD 
NVIDIA Accaleretod Computing 
Managed w/ Claco Interaight® 
NVIDIA BlueField®-3 DPUs 
Hypershield 
Isovalent 
Cisco 
Ciaco Nexus 9300 w/ Silicon One® 
Switches w/ NVIDIA Silicon 
Cisco 6000 w/ Sitoon One® 
Networking 
Infrastructure 
Managed w/ Cisco Nexus Dashboard 
Switches 
Security: 
Cisco 
Hybrid Mosh 
Firewall 
Partner 
VAST Data on Claco UCS. 
Storage 
NetApp | Pure Storage | VAST Data 
Secure Firewall 
Modular 
Vertically Integrated ...Unified Solutions 
Cisco Secure Al Factory with NVIDIA 
The blueprint to accelerate Al adoption for enterprises with 
an integrated Al infrastructure and software solution from 
Cisco, NVIDIA, and strategic partners 
Claco Security 
NVIDIA 
Software 
NVIDIA 
Application Security: 
NVIDIA. 
Al Enterprise 
NoMo 
NIMA 
Blueprints 
Cisco Al Defense 
Nexus & AI PODs 
Hyperfabric Al 
Cisco 
Cisco UCS® (CB85A MB, C845A MB) 
with NVIDIA Accelerated Computing 
Cisco UCS® (C805A MB) with 
Workload Security: 
Compute 
NVIDIA BlueField®-3 DPUD 
NVIDIA Accaleretod Computing 
Managed w/ Claco Interaight® 
NVIDIA BlueField®-3 DPUs 
Hypershield 
Isovalent 
Cisco 
Ciaco Nexus 9300 w/ Silicon One® 
Switches w/ NVIDIA Silicon 
Cisco 6000 w/ Sitoon One® 
Networking 
Infrastructure 
Managed w/ Cisco Nexus Dashboard 
Switches 
Security: 
Cisco 
Hybrid Mosh 
Firewall 
Partner 
VAST Data on Claco UCS. 
Storage 
NetApp | Pure Storage | VAST Data 
Secure Firewall 
Modular 
Vertically Integrated

Hyperfacbric ai = nur cisco

Nexus & AI Pods = auch andere Hersteller

AI Pod 2.0 stellt er heute vor

Cisco AI PODs 
A scalable architecture, built to support any Al workload simply & efficiently 
Training 
Optimization 
Inferencing 
Cisco AI PODs 
EXTEND TO 
Deploy Al with confidence 
ADVANCED 
Cisco CVD, NVIDIA ERA 
INCLUDED 
CISCOO 
AUTOMATION 
AI SOFTWARE 
Fully supportod stack 
SECURITY 
OPERATIONS 
Including Cisco and 3ª 
Al Defense 
Hypershield 
A 
party components 
Firewall/Nexos® SmartSwitch 
Cisco CX 
Success Track 
KUBERNETES 
Red Hat 
Qubuntu 
OpenShift 
OBSERVABILITY 
Orderable, use case 
Observability Cleod 
ACCELERATED COMPUTE 
CISCO 
UCS® 
driven Al-ready 
Infrastructure stacks 
Open telemetry extensions 
HIGH-PERFORMANCE 
Customer Experience 
Inferencing. 
NETWORKING 
Optimization. 
CX Caco 
Training. 
WORKLOAD MANAGEMENT & OPE 
IXTEND TO 
Incremental, atomic-level 
-or- fabric-based 
splunks 
STORAGE PLATFORM 
0 
ECOSYSTEM 
VAST 
NUTANIX 
HITACHI 
cluster scale 
MSOVALENT ...Cisco AI PODs 
A scalable architecture, built to support any Al workload simply & efficiently 
Training 
Optimization 
Inferencing 
Cisco AI PODs 
EXTEND TO 
Deploy Al with confidence 
ADVANCED 
Cisco CVD, NVIDIA ERA 
INCLUDED 
CISCOO 
AUTOMATION 
AI SOFTWARE 
Fully supportod stack 
SECURITY 
OPERATIONS 
Including Cisco and 3ª 
Al Defense 
Hypershield 
A 
party components 
Firewall/Nexos® SmartSwitch 
Cisco CX 
Success Track 
KUBERNETES 
Red Hat 
Qubuntu 
OpenShift 
OBSERVABILITY 
Orderable, use case 
Observability Cleod 
ACCELERATED COMPUTE 
CISCO 
UCS® 
driven Al-ready 
Infrastructure stacks 
Open telemetry extensions 
HIGH-PERFORMANCE 
Customer Experience 
Inferencing. 
NETWORKING 
Optimization. 
CX Caco 
Training. 
WORKLOAD MANAGEMENT & OPE 
IXTEND TO 
Incremental, atomic-level 
-or- fabric-based 
splunks 
STORAGE PLATFORM 
0 
ECOSYSTEM 
VAST 
NUTANIX 
HITACHI 
cluster scale 
MSOVALENT

= HGX Blueprint

----------------------------------------

🔐 Cisco AI Defense & Hybrid Mesh Firewall – Fokus auf Sicherheit in AI-Anwendungen

AI Defense will Unternehmen dabei helfen, KI-Anwendungen sicher, regelkonform und reputationsschonend zu betreiben.

Cisco sieht AI-Modelle wie „Kinder“: Sie müssen erzogen, validiert und kontinuierlich überwacht werden.

Es geht nicht nur um Schutz von Infrastruktur, sondern speziell um Modellschutz, Prompt-Validierung und Output-Kontrolle.

🔹 Ziel & Motivation

Prompt Injection

Halluzinationen / falsche Ausgaben

Reputationsschäden durch toxische Antworten

Datenabfluss / Datenschutzprobleme (PII)

Compliance-Verletzungen

🔹 Typische Risiken

Red Teaming & Penetrationstests auf LLMs: Cisco hat eine eigene Engine zur systematischen Testung von Modellen („Tree of Attack by Prompting“)

Guardrails: Regeln zur Eingrenzung von Eingaben und Ausgaben

Prompt & Response Inspection: Inhaltliche Prüfung durch Decryption & Analyse im Proxy

Bewertung über Matrix: Welche Prompts schlagen durch, welche nicht?

🔹 Vorgehen & Technologie

Secure Access (SSE/Proxy) als zentraler Kontrollpunkt→ Prompt/Response wird entschlüsselt und bewertet (DSGVO-konform, gehostet in Frankfurt)

Secure Access (Cloud Proxy)

Next Gen Firewall (On-Prem)

HyperShield / eBPF (Zukunftsausblick)

Kombination aus:

Ziel: Verteilte, policy-gesteuerte Absicherung auf allen Ebenen (Cloud, Edge, DC)

Hybrid Mesh Firewall:

Prompt/Response Enforcement lokal in Firewalls (Docker-basiert)

Volle On-Prem-Version von AI Defense in Entwicklung (für Sovereign Clouds)

HyperShield-Anbindung noch nicht produktiv

Roadmap:

🔹 Enforcement & Architektur

Cisco warnt vor „illusionärer Sicherheit“ in Hyperscaler-Modellen: Features wie Prompt Filtering oft nicht zuverlässig aktivierbar (z. B. in Azure)

Unternehmen fordern zunehmend Souveränität, Kontrolle, Exit-Strategien

Einbindung von AI Defense in CI/CD-Pipelines geplant (Validierung als Teil des Deployments)

🔹 Diskussionen & Erfahrungen

Hyperfabric AI = PCAI von Cisco

Erstellt automatisch Pläne anhand der Anforderungen von GPU/DPU

Nexus 6000

AI Defense

Hybrid mesh FW

Anwendung - daten - infra - 3 ebenen wo angegriffen werden kann

Thema guardrails highlighten

Tree of attack of pruning: demo durch FW laufen lassen und auf risiken hinweisen - also hybrid mesh FW auswertung als Basis nutzen - so kann man verschiedene Modelle validieren - ist so im EU AI Act gefordert dies immer qwieder zu tun

Sovereign cloud ai lösung gegplant - highlighten in der zsmfassung

Fragen zum schluss highlighten
