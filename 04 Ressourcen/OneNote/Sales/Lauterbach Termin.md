---
tags: [onenote, aivengers]
---

# Lauterbach Termin

1. Kontext des Termins

Philipp (Lauterbach)

Ilhami (Cancom AI Team)

Eva (Cancom, KI-Development / Assistant-Team)

Gesprächsleitung durch Cancom (Infrastrukturberatung)

Teilnehmende:

Thema:

Hardware- und Infrastrukturberatung für KI-Inference-Workloads (LLM)

– Fokus: Workstation oder kompakter Server für lokale Inferenz mit RTX Pro 6000 GPU

Use Case: LLM-Inference (lokal & produktiv)

Budgetrahmen: bis ca. 20.000 € für eine kleinere Inferenz-Workstation oder einen Rack-Server

Eigene lokale GPU-Experimente (VLLM als Inference-Server)

Kein Kubernetes, keine Container-Infrastruktur

Aktuell Test-Umgebung mit Cloud-GPUs geplant (z. B. Datacrunch.io)

Aktueller Status:

2. Bedarf & Ziel des Kunden (Lauterbach)

Hauptanforderung:

→ „Eine Workstation oder ein kleiner Server mit RTX Pro 6000 wäre ideal – CPU-Leistung zweitrangig.“

3. Einstieg & Einordnung (Cancom)

Erklärung des Gartner AI Hype Cycles (Innovation → Peak → Disillusionment → Plateau).

AI Agents (am Hype-Peak)

Sovereign AI (stark wachsend)

Generative AI & Foundation Models bereits auf dem Weg ins Produktivitätsplateau.

Aktuelle Trendthemen:

Kommentar: Lauterbach befindet sich mit RAG-basierter Entwicklung genau in dieser Reifephase.

3.1 Gartner Hype Cycle (Einleitung)

4. Cancom AI-Portfolio & Vorgehensmodell

Oben: AI-Entwicklung (eigene Cancom-Dev-Teams, AI Discovery Workshop, individuelle Modellentwicklung)

Mitte: Bereitstellung & Integration (On-Prem, Cloud, Hybrid, Governance, Compliance)

Unten: Passive Infrastruktur (Rechenzentren, Kühlung, Verkabelung, Energie, Water-Cooling).

USP: Cancom bietet beides – Entwicklung und Bereitstellung – aus einer Hand.→ Konkurrenz kann meist nur eines davon.

4.1 Die „KI-Pyramide“

4.2 Die „AI Journey“

Drei Ausbaustufen:

Stufe

Beschreibung

Beispiel

1. Hardware (T-Shirt Sizes)

S, M, L-Servergrößen mit Basiskonfiguration

Dell 760 xa (4× GPU)

2. Bundles (Software + Virtualisierung)

Red Hat + NVIDIA AI Enterprise + Kubernetes-Stack

Data AI Bundle, Smart AI Bundle

3. Private Cloud AI (Managed Service)

Vollständig gemanagte, skalierbare KI-Umgebung im Cancom-Rechenzentrum (Hamburg)

Testsystem mit 4× L40 S GPUs verfügbar

Kunde interessiert sich stark für DGX Spark (NVIDIA).

HP ZGX Nano = DGX Spark mit anderem Gehäuse + besserem Thermikdesign.

Technisch nahezu identisch (Grace Blackwell 10 Chip, 128 GB Unified Memory, DGX OS Standard).

Unterschiede nur in SSD, Kühlung, optischem Design.

Limitierung: max. 2 Geräte stackbar → 200 B Parameter Inference / 70–100 B Fine-Tuning.

Diskussion über Unterschiede zu OEM-Varianten:

5. Produktfokus: DGX Spark / ZGX Nano

→ Empfehlung: DGX Spark oder ZGX Nano sind hervorragend für Development,

für Produktiv-Inference aber grenzwertig bei hoher Nutzerzahl.

6. Alternative: Workstation oder Rack-Server

Modell / Klasse

Small Server (unter 20 k €)

Basis-Server mit 1–2 GPUs, begrenzte Erweiterbarkeit.

Dell PowerEdge XE 740 XA

4× Dual-Width-GPUs (z. B. 4× L40 S oder Blackwell).

HGX-Blueprint

High-End-Cluster-Design (8× GPU) für Training / Scientific Computing.

Workstation mit RTX Pro 6000

Günstigere, kompaktere Lösung (unter 20 k € möglich).

→ Empfehlung für Lauterbach: kleiner Dell-Server oder RTX Pro 6000 Workstation.

Red Hat Enterprise Linux for AI

2× L40 S GPUs

Preislich unterhalb großer Rechenzentrums-Cluster

Data AI Bundle

Red Hat OpenShift AI + NVIDIA AI Enterprise

Lizenzierung pro GPU

Kubernetes-Plattform integriert

Smart AI Bundle

Control Plane ×3 + Worker Node mit 4× L40 S

Frei nutzbar für Tests (Teststellung kurzfristig verfügbar)

Zugangsdaten & Management über Cancom Team (Ilhami)

Private Cloud AI (Hamburg)

7. Software-Stacks / Bundles (Beispiele)

→ Philipp soll kurzfristig Testzugang erhalten, um eigenen Chatbot oder RAG-System dort zu deployen.

Keine Kubernetes-Umgebung: VLLM läuft lokal ausreichend.

GPU entscheidend, nicht CPU.

RTX Pro 6000 präferiert.

OEM-Präferenz: noch offen – Dell oder HPE möglich (abhängig vom Angebot).

Cancom-Fragenkatalog für Sizing vorgestellt → Kunde trägt Parameter & Wunsch-GPU ein.

8. Technische Details / Präferenzen

Früher schon bei Lauterbach vorgestellt (Ende 2023 / Anfang 2024).

Nicht weiterverfolgt → nun erneut erwähnt.

Status: enterprise-ready, on-prem integrierbar, schnell ausrollbar.

Modelle kennen firmeninterne Skriptsprache und spezifische Tools.

Interne Lösungen bieten mehr Flexibilität.

Lauterbach will jedoch eigene interne Entwicklung fortführen:

Cancom bietet trotzdem Unterstützung bei Finetuning oder Integration („gegen Einwurf von Münzen“).

9. Cancom Assistant (Follow-Up)

Philipp fragt nach Workshops zum Thema „EU Policy für AI“.

Cancom bietet keinen eigenständigen Workshop,aber Projektbegleitung mit DSGVO- und EU AI Act-Prüfung bei Entwicklungsprojekten.→ Bestandteil der „Veredelungsdienstleistung“.

10. Compliance / EU AI Act

Präsentation + QR-Codes an Philipp senden.

Zugang zur Private Cloud AI in Hamburg vorbereiten (Testslot frei nächste Woche).

Nach Erhalt des ausgefüllten Sizing-Fragebogens → Angebot für Workstation/Server mit RTX Pro 6000 erstellen.

Cancom

Fragenkatalog ausfüllen (GPU, OEM, Budget, Ziel-Use Case).

ggf. Teststellung nutzen (Deployment eigener LLM-Inference).

Danach Entscheidung über Kauf oder weiteres Cloud-Testing.

Parallel Cloud-GPU-Tests über Datacrunch.io (aktuell keine Verfügbarkeit – Preise dynamisch hoch).

Lauterbach / Philipp

11. Nächste Schritte (vereinbart)

12. Wrap-Up

Lauterbachs Fokus: Lokale AI-Inference, möglichst RTX Pro 6000 Workstation unter 20 k €.

Cancoms Ziel: Darstellung des gesamten AI-Infrastrukturportfolios (von DGX Spark bis Private Cloud AI).

Gemeinsame Basis: Technisches Sizing und Test im Hamburger Cancom Cluster.

Inhaltlich

Beiderseitiges Interesse an Test & Proof of Concept.

Kein sofortiger Kaufentscheid, aber Ausrichtung auf Workstation/Server-Setup.

Cancom liefert → Präsentation & Testzugang.

Lauterbach → Sizing-Fragebogen + Cloudtests.

Ergebnis

Bewertung

Kundenbedarf klar identifiziert.

Hardware-/Cloud-Pfad definiert.

Folgetermin (Angebot + Testzugang) geplant.

→ Termin diente als technischer Deep Dive & Qualifizierungsgespräch:

Lauterbach testet aktuell Cloud-GPUs (Datacrunch), erhält von Cancom Zugang zur Private Cloud AI (Hamburg) und ein Angebot für eine RTX Pro 6000-Workstation.

Ziel: Vergleich von Performance und Wirtschaftlichkeit, bevor eine lokale Kaufentscheidung getroffen wird.

Zusammengefasst:
