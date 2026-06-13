---
tags: [onenote, aivengers]
---

# Plaud Zsmfassung 1/2 Workshop Red Hat

🔴 Red Hat Input: Strategie, Plattform & Go-to-Market

🧱 Red Hat AI Stack – Vom Modell zum Betrieb

Containerisierung (z. B. via Red Hat Podman oder OpenShift)

Versionierung (z. B. mit Git & Model Registry)

Sicherheitsprüfungen (Scan der Container-Images, Policy Management)

Automatisierter Rollout in Dev/Prod (z. B. mit OpenShift Pipelines)

Trainiertes Modell = Artefakt→ Erst durch CI/CD Pipelines (z. B. mit Tekton oder ArgoCD) wird das Modell für den Produktivbetrieb nutzbar.→ Dazu gehört:

Verwaltung von KI-Modellen im Lifecycle

Integration in Unternehmensumgebungen (Multi-/Hybrid-Cloud, On-Prem)

Unterstützung von GPU-Nodes, inferencing, Fine-Tuning Workflows

Red Hat OpenShift AI als Plattform zur:

RHEL AI wurde als neue, leichtgewichtigere Einstiegsplattform positioniert, ideal für kleinere Projekte oder inferencing workloads mit weniger Anforderungen.

Red Hat positioniert sich als Plattformanbieter für den gesamten AI Lifecycle. Besonders hervorgehoben wurde:

Vollständige Kontrolle über Infrastruktur & Modellbetrieb

Skalierbarkeit über verschiedene Deployment-Modelle hinweg (on-prem, hybrid, multi-cloud)

Integration in DevOps-/MLOps-Workflows

Red Hat ermöglicht:

🧩 Red Hat & KI-Bundesverband: Strategische Öffnung

Positionierung als „Enablement Layer“ für hochspezialisierte AI-Firmen mit starker Fachlichkeit, aber wenig Infrastruktur- oder DevOps-Know-how

Automotive (z. B. Zulieferer mit embedded AI)

Legal (z. B. DSGVO-konforme Textklassifikation)

Health (z. B. digitale Diagnostik mit BfArM-Zulassung)

Insurance (z. B. Schaden-Reporting-Modelle)

Regionale AI-Champions sollen unterstützt werden, z. B. aus:

Red Hat bringt Plattform + DevOps-Fähigkeiten, Cancom bringt Infrastruktur + Services, der Partner bringt Fachwissen → gemeinsamer Kundennutzen

Red Hat ist offizieller Premiumpartner des KI-Bundesverbands (500 Mitglieder, größtenteils aus Deutschland/Österreich). Das Ziel ist:

One-/Two-Pager für Verband

Co-Workshops zu Open Source AI, On-Prem Inferenz, Industrial AI, Edge AI

Bereitstellung von Demo-Umgebungen (demo.redhat.com), Trainings (Partner Connect) und Partnerzugänge

Teilnahme an Arbeitskreisen (Souveränität, Data Resilience, AI Lifecycle Standards)

Geplante Maßnahmen:

🎤 Relevante Fragen & Diskussionen im Workshop

❓Nils Welz:

„Welche Bereiche betreut Red Hat neben der Infrastruktur im AI-Projekt?“

Ideenfindung & Use Case Priorisierung

MLOps & CI/CD

Skalierung & Governance

Monitoring, Auditing, Reproducibility

➡️ Antwort: Red Hat sieht sich im gesamten AI Lifecycle – insbesondere:

❓Eva Dölle:

„Welche Rolle spielt Red Hat im KI-Bundesverband konkret?“

Aktive Mitarbeit in Arbeitsgruppen (z. B. Open Source, Souveränität)

Zugang zu Early Insights & Position Papers

Red Hat bringt sich mit technischem Content ein (Modelle, Pipelining, Deployment)

Ziel: gemeinsam mit Partnern wie Cancom in den Verband hineinwirken (z. B. via Use Case Sharing, Workshops, technische Enablement-Angebote)

➡️ Antwort:

❓Diskussion im Raum:

„Sind das alles ITler oder auch Entscheider im KI-Bundesverband?“

Sehr durchmischt: von Tech-Startups über Legal-Experten bis hin zu Embedded Engineers

Viele Unternehmen besitzen hohe Fachlichkeit (z. B. Produktions-Know-how), aber keine eigene IT-Plattform

Zielgruppe sind Branchenexperten mit konkreten Use Cases, die OpenShift AI als Enabler brauchen

❓Frage zur Zielarchitektur:

„Kann Red Hat mit Nvidia AI Factory kombiniert werden?“

Ja, mittlerweile sind sowohl BasePod als auch SuperPod mit Red Hat Linux und OpenShift AI vollständig supported durch Nvidia DXG

Frühere Support-Hürden sind beseitigt (betrifft sowohl den Stack als auch die Software-Ebene)

Vorteil: Integration von Red Hat in bestehende NVIDIA-zertifizierte AI-Pods möglich

Self-paced Trainings, Zertifikate

Wichtig für Partnerstatus (Premier)

DRex-Punkte werden gesammelt (über Marco/Carlos beantragbar)

Partner Connect Portal:

RHEL AI

OpenShift AI

Ansible Automation Platform

Ready-to-use Sandbox-Umgebungen für:

Auch für Workshops mit Endkunden nutzbar

Demo.redhat.com:

Austausch mit Kunden & Partnern

Technische Deep-Dives & Networking

OpenShift Anwendertreffen:

Auch für Nicht-Partner (Developer Access)

Einstieg in Open Source KI Stack mit vorgefertigten Workspaces

Red Hat Entwicklerprogramm:

🧰 Enablement-Möglichkeiten von Red Hat (für Cancom & Kunden)

🧱 Infrastruktur-Perspektive (von Cancom vorgestellt)

Zwischen Modellentwicklung (AI Business Model Dev) und Infrastruktur

Stellt sicher, dass Modelle tatsächlich betreibbar sind

Ermöglicht Plattformbetrieb inkl. DevOps, Governance, Sicherheit

Red Hat wurde explizit im Stack zwischen folgenden Ebenen verortet:

Gemeinsames Angebot für KI-Bundesverband

Fokus auf Enablement & Partnerschaft

Keine Konkurrenz zum AI-Know-how der Mitglieder, sondern Plattformergänzung

One-/Two-Pager erstellen:

Open Source als Innovationstreiber in AI

AI on-prem: Strategien & Plattformen

Produktionsreife MLOps Pipelines

Wie man inferencing sicher & skalierbar betreibt

Workshop-Reihe mit KI-Bundesverband (Themenvorschläge von Red Hat):

Geschäftsführer des KI-Bundesverbands spricht über souveräne KI-Architekturen & Plattformstrategien

Möglichkeit zur gemeinsamen Darstellung (CANCOM + Red Hat)

Beitrag auf Red Hat Summit Connect (19.11.):

📣 Nächste Schritte (von Red Hat angeregt)

Data Preparation (z. B. via Jupyter, Data Science Pipelines)

Model Training & Tuning

Model Deployment (Serving)

Monitoring & Retraining

OpenShift AI = MLOps-Plattform, die alle Phasen des AI-Lifecycles unterstützt:

KServe (für Inferencing)

Tekton (für Pipelines)

ModelMesh (für mehrere parallele Modelle)

Ray (für Distributed Training)

Plattform basiert auf Kubernetes/OpenShift, ergänzt um Tools wie:

Trennung von Aufgaben: DevOps übernimmt Infrastruktur, DS/ML entwickelt Modelle

Zielgruppe: Data Scientists UND Platform Engineers

🧱 Red Hat OpenShift AI im Detail

Quarantäne von nicht validierten Modellen

Container-Scanning

Role-Based Access Control (RBAC)

Security-by-Design: Plattform ist von Grund auf abgesichert:

Model Registry: für versioniertes Ablegen geprüfter Modelle

Audit Trails und reproduzierbare Pipelines werden betont

🔐 Sicherheit & Governance in der Red Hat AI Plattform

Produzierendes Gewerbe: Qualitätssicherung via Vision AI

Finanzdienstleister: Risikoerkennung, Betrugserkennung

Healthcare: Edge AI für Diagnostikgeräte

Öffentlicher Sektor: On-Prem Inferenz und Open-Source-basierte Systeme wegen Souveränitätsanforderungen

🌍 Einsatzszenarien und Zielgruppen

MLflow, Jupyter, HuggingFace

Kubeflow-Komponenten

Operator-basiertes Deployment via OpenShift

Standard-Tools aus dem Open-Source-Kosmos:

Hohe Portabilität

Transparente Infrastruktur

Volle Kontrolle über Daten und Modelle

Unterschied zu z. B. SageMaker: kein proprietärer Lock-In, dafür:

📦 Red Hat AI Toolstack

❓Fragen & Rückmeldungen aus dem Cancom-Team

„Wie unterscheidet sich OpenShift AI von anderen Plattformen wie z. B. SageMaker?“

🔁 Antwort:

Kein Vendor Lock-In

Open Source & portabel

Transparente, reproduzierbare Workflows

Keine Abhängigkeit von Cloud-Ressourcen

❓Frage von Eva:

„Wie ist das Zusammenspiel mit Nvidia Triton oder vLLM?“

Triton kann eingebunden werden, wenn der Kunde explizit möchte

Red Hat empfiehlt KServe und ModelMesh als nativen Weg

vLLM ist derzeit nicht als Operator im Portfolio, aber es gibt Blueprints für eigene Deployments

❓Frage von Nils:

„Wie sieht der Plattformbetrieb konkret aus?“

Entkopplung von Data Science & Ops ist zentral

DS nutzt z. B. JupyterHub → Infrastruktur (GPU-Zuteilung, Container-Lifecycle) läuft über DevOps

KI-Workload kann skaliert und überwacht werden, ohne dass DS Zugriff auf Root-/Infra-Ebene braucht

„Wie wird GPU-Zuordnung gesteuert?“

Über Kubernetes Resource Requests & Limits

Dynamische Zuweisung von GPU-Ressourcen (z. B. für Jupyter Notebooks oder Serving)

Operatoren (wie NVIDIA GPU Operator) übernehmen das Management

❓Frage zum GPU-Einsatz:

Demo-Zugang zur Plattform: demo.redhat.com

Technische Blueprints für OpenShift AI Deployments

Gemeinsamer Use-Case-Workshop (z. B. Open-Source-Inferenz, On-Prem Vision KI)

Optional: Red Hat Developer Training für OpenShift AI

🧭 Mögliche nächste Schritte laut Red Hat
