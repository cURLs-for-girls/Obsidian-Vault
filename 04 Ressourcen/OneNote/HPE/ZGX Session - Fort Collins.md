---
tags: [onenote, aivengers]
---

# ZGX Session - Fort Collins

Vergleich: HP ZGX Toolkit vs. NVIDIA DGX Spark 
Feature 
HP ZGX Nano + Toolkit 
NVIDIA DGX Spark 
Hardware 
Grace Blackwell, 128 GB RAM 
Grace Blackwell, bis zu 128 GB 
RAM 
Betriebssystem 
NVIDIA DGX OS (Ubuntu Basis), 
NVIDIA DGX OS (Ubuntu Basis) 
eigenes Toolkit, Al Studio- 
Integration 
Spezielle Tools 
Eigenes Visual Studio Code 
Standard NVIDIA SW-Stack, 
Plugin („ZGX Toolkit“), 
ohne HP-spezifische Tool- 
Integration mit HP Al Studio, 
Optimierungen 
vereinfachte Verwaltung, 
Geräteerkennung, Export/ 
Deployment-Tools 
Nutzungskonzept 
Koppelung mit Windows-, 
Fokus auf lokale Al-/Edge- 
Linux- oder Mac-Client, 
Workloads, weniger bei 
unkompliziertes Edge/On- 
Integration/Schnittstellen 
Prem-Einsatz, gezielt für lokale, 
vertrauliche Workflows 
Zielgruppe 
Entwickler, Unternehmen mit 
Entwickler, Al-Startups, 
Bedarf an Usability, Integration 
technische Teams 
und Management ...Vergleich: HP ZGX Toolkit vs. NVIDIA DGX Spark 
Feature 
HP ZGX Nano + Toolkit 
NVIDIA DGX Spark 
Hardware 
Grace Blackwell, 128 GB RAM 
Grace Blackwell, bis zu 128 GB 
RAM 
Betriebssystem 
NVIDIA DGX OS (Ubuntu Basis), 
NVIDIA DGX OS (Ubuntu Basis) 
eigenes Toolkit, Al Studio- 
Integration 
Spezielle Tools 
Eigenes Visual Studio Code 
Standard NVIDIA SW-Stack, 
Plugin („ZGX Toolkit“), 
ohne HP-spezifische Tool- 
Integration mit HP Al Studio, 
Optimierungen 
vereinfachte Verwaltung, 
Geräteerkennung, Export/ 
Deployment-Tools 
Nutzungskonzept 
Koppelung mit Windows-, 
Fokus auf lokale Al-/Edge- 
Linux- oder Mac-Client, 
Workloads, weniger bei 
unkompliziertes Edge/On- 
Integration/Schnittstellen 
Prem-Einsatz, gezielt für lokale, 
vertrauliche Workflows 
Zielgruppe 
Entwickler, Unternehmen mit 
Entwickler, Al-Startups, 
Bedarf an Usability, Integration 
technische Teams 
und Management

Thermal Design bei ZGX im Vergleich zur DGX Spark optimiert - läuft nicht so schnell warm wie Spark

OS ist DGX OS - das highlighten sie aber nicht

Haben zusätzlich zur Spark noch eigenes Toolkit mit VS Code usw. - Unterschied

Sprecher: Curtis Burkhalter, AI Solutions Product Manager bei HP

Thema: Lokale KI-Entwicklung ohne Trade-offs – ZGX Nano & ANL

Ziel: HPs Strategie vorstellen, KI-Entwicklung on-device statt in der Cloud zu ermöglichen – also hohe Performance zu kalkulierbaren Kosten.

1. Kontext & Ziel der Session

2. Problemstellung: Cloud vs. Lokal

Bereich

Herausforderung

Lokal (Laptop/Workstation)

Zu wenig Compute-Power → unterdimensioniert für Training/Fine-Tuning größerer Modelle.

Cloud (Azure, AWS, GCP)

Hohe laufende Kosten → „Kosten-Spirale“; oft unkontrollierbare Abrechnungen.

Ziel von HP ZGX Nano

Lokale KI-Entwicklung leistungsfähig und kosteneffizient – ohne Kompromisse.

Performance Capabilities – Was lässt sich lokal ausführen?

Cost Analysis – Vergleich reale Cloud- vs. Gerätekosten.

Technische Architektur – Hardware-Design & Skalierung.

Real World Use Cases – Einsatzszenarien aus HP & Kundenpraxis.

Developer Support – ZGX Toolkit (VS Code-Integration).

3. Inhalt & Agenda der Präsentation

Fine-Tuning: bis zu 70 Mrd. Parameter-Modelle (z. B. Meta LLaMA 2/3-Größenordnung).

Inference: bis 200 Mrd. Parameter, aber max. 1–2 gleichzeitige Nutzer → Entwicklungsgerät, kein Produktionsserver.

Zielgruppe: KI-Entwickler für Prototyping, Experimente, lokale Tests.

4. Leistung & Anwendungsgrenzen

5. Kostenvergleich (Cloud vs. ZGX)

Beispiel

Beschreibung

Kosten

HP interner Use Case

AI Sales Assistant (Chatbot für HP Vertrieb)

7 000 USD Cloudkosten (Azure)

Großkunde ZGX Early Interest

AI-App-Entwicklung

35 000 USD pro Monat Cloudcredits

ZGX Nano

Hardware abhängig von Konfiguration

3 000–4 000 USD einmalig

→ Rechnet sich bei HP-Beispiel bereits nach < 2 Monaten.

→ Keine Cloud-Credits bei jedem Hyperparameter-Test → fixe Kosten statt laufender Verbrauch.

6. Technische Architektur

Komponente

Spezifikation / Besonderheit

GPU

NVIDIA Grace Blackwell GB10 (6 000+ CUDA Cores)

CPU

ARM-basiert

Unified Memory

128 GB CPU+GPU gemeinsam – selten bei lokalen Systemen

Performance

bis 1 PetaOPS („petapop“)

Skalierung

Zwei ZGX-Einheiten per QSFD-Port koppelbar → Doppelung der Parametergrenzen (140 M FT / 400 M Inf)

Kabel

separat (~ 100 USD), auch über Amazon

Größe

ca. 15 × 15 × 5 cm („6×6×2 inches“) – sehr kompakt

Lautstärke & Thermik

nahezu lautlos, keine Drosselung nach Wochenbetrieb

Kühlung

horizontales Airflow-Design → keine Überhitzung wie beim NVIDIA DGX Spark (Bodenabwärme)

7. Vergleich mit DGX Spark / Wettbewerb

Aspekt

HP ZGX Nano

NVIDIA DGX Spark / andere OEMs

Horizontaler Airflow, Refrigeration-Prinzip → stabil unter Last

Thermikprobleme durch Bodenabwärme

Toolkit

Open-Source VS Code Extension → einfache Einrichtung

Proprietäre NVIDIA AI Stack

Kostenmodell

Einmalige Hardwarekosten

DGX Cloud: ~ 4 500 USD/Jahr pro GPU

Positionierung

Lokale KI Entwicklung („Hybrid AI“)

Cloud-gebunden („DGX Cloud first“)

8. Reale Use Cases & Kundenzielgruppen

Partner: Mayo Clinic

Anwendung: „Ambient Listening“ in Patientenzimmern → LLM transkribiert & fasst Gespräche zusammen, inkl. autom. Pharma-Orders.

Mehrwert: Datenschutz + Zeitersparnis für Ärzte.

8.1 Gesundheitswesen

Ziel: AI-Labs an Universitäten (10–20 ZGX Einheiten → 2–3 Studierende pro Gerät).

Vorteil: Kein Cloud-Credit-Verbrauch, kosteneffiziente AI-Lehre.

Anwendungsfelder: KI-Curricula, Genomics, HPC Training.

8.2 Bildung

Predictive Maintenance: Visuelle Inspektion via Kameras → LLM erkennt Anomalien vor Ausfall.

Beispiele: Automotive, Produktion, Pipeline-Überwachung.

8.3 Industrie & Fertigung

Cal State Pension Fund, City of Detroit, Raytheon, Chinega Professional Services

Motivation: on-prem AI, Compliance, Budgetrestriktionen.

Resultat: hohes Interesse an ZGX für lokales Training & Prototyping.

8.4 Öffentlicher Sektor

Ziel: KI-Setup in Minuten statt Stunden/Tagen.

Automatische SSH-Verbindung zwischen Laptop & ZGX

Auto-Auth via Key-Pair-Generierung

One-Click-Install von Open-Source-Tools (Ollama, Podman, UI, ComfyUI etc.)

Funktion:

Kompatibilität: Win / Mac / Linux

Philosophie: Open Source statt proprietärer Stacks.

Ergebnis: „Frictionless Development“ – sofort startklar.

9. ZGX Toolkit (VS Code Extension)

Keine Thermikprobleme

Offenes Ökosystem statt Vendor-Lock-In

Schnellere Einrichtung durch Toolkit

„Enterprise ready“ mit 128 GB Unified Memory & Skalierung

Differenzierung HP vs. andere OEMs:

Größere Geräte (GB300, rackable Version) für On-Prem Inference-Cluster geplant.

Benchmarks & ISV Validierungen in Arbeit.

Ausblick:

10. Markt- & Wettbewerbspositionierung

Gerätepreis: 3 000–4 000 USD

Kabel: ~ 100 USD optional

Garantie: 1 Jahr voller Austausch (Option auf 2 Jahre).

11. Preise & Garantie

12. Diskussions- & Publikumsbeiträge

Thema

Kernaussagen

Token-Kosten (API-Preise)

Preise für Cloud-Modelle werden steigen → lokale Infrastruktur wird wirtschaftlicher.

Agentic AI & Zukunft

Mehr autonome Agenten → Cloud-Tokens & Kosten explodieren → lokale AI wird notwendig.

Sicherheits-Argument

On-Prem = Datensouveränität → relevant für CIOs & KMU.

Universitäten & Robotik

Bedarf an leistungsstarken lokalen Systemen für Forschung & Lehre.

x86 Kompatibilität

ARM-Architektur muss bei Legacy-Apps beachtet werden.

ISV-Validation

Noch nicht vorhanden, aber wird empfohlen.

Kühlung & Lüfterdesign

Bessere Thermik durch HP-Workstation-Erfahrung; andere OEMs haben Firmware-Probleme.

Einstieg in AI-Architekturen für Entwickler und Klein-Teams.

Einstiegsprodukt („Gateway Device“)

Für größere Workloads: Rack-Systeme (z. B. DL380 + RTX 6000, später GB300 Cluster).

Nächster Schritt („Next Sale“)

Ergänzung zu Cloud / Rechenzentrum → lokale Entwicklung, Cloud als Skalierung.

Rolle im Hybrid-AI-Modell

13. Strategische Positionierung im Portfolio

Lokales AI Development jetzt möglich:Fine-Tuning 70 B / Inference 200 B Parameter.

Ökonomisch sinnvoll:3–4 k USD Hardware statt > 30 k USD Cloudcredits p. Monat.

Enterprise-ready Specs:NVIDIA GB10, 128 GB Unified Memory, ARM CPU.

Privacy by Design:Daten bleiben am Entstehungsort (on-device).

Frictionless Setup:ZGX Toolkit → minuten­schneller Start.

Open-Source Mindset:Keine Abhängigkeit von proprietären Stacks oder Lizenzen.

14. Key Takeaways (laut Curtis Burkhalter)

🔹 Technische Fragen

Frage 1: Wie verbindet man zwei ZGX-Geräte miteinander, um die Leistung zu verdoppeln?

Antwort: Über einen QSFD-Port auf der Rückseite. Ein spezielles Kabel (~100 USD, separat erhältlich) verbindet beide Geräte. Danach arbeiten sie als ein logisches System, ohne manuelles Netzwerkkonfigurations-Chaos. Ein Config-File automatisiert die Kopplung.

Frage 2: Wie sieht der Upgrade-Pfad aus? Wird es größere Modelle geben (z. B. für Inference oder Modularität)?

Ja, geplant ist ein größeres „GB300“-Gerät mit mehreren GPUs.

Ziel: on-prem Inference-Cluster (rack-fähig).

HP will lokale Skalierung ermöglichen (nicht wie NVIDIA, die Kunden in DGX-Cloud drängen).

NVIDIA verlangt z. B. ~4 500 USD / Jahr pro GPU im DGX-Cloud-Modell – HP will stattdessen On-Prem-Alternative bieten.

Antwort:

Frage 3: Was ist das ZGX Toolkit? Ist es von NVIDIA?

Es enthält nur Open-Source-Tools (Ollama, Podman, ComfyUI, etc.).

Ist ein VS Code Extension, kostenlos, plattformunabhängig (Win/Mac/Linux).

Enthält kein NVIDIA-Toolkit und keine proprietären Lizenzkomponenten.

Nein, komplett von HP entwickelt.

Frage 4: Wie unterscheidet sich HP ZGX von anderen OEMs (Dell, Lenovo, NVIDIA DGX Spark)?

ZGX Toolkit = Open-Source-Stack, sofort nutzbar.

Bessere Thermik: kein Überhitzen, da HP horizontale Luftführung nutzt.

Keine Cloudbindung: andere OEMs pushen Nutzer in DGX Cloud oder Datacenter.

Benchmarks & Erfahrungswerte: HP-Geräte zeigen stabile Dauerleistung ohne Drosselung.

🔹 Zielgruppen- & Einsatzfragen

Frage 5: Welche Kundengruppen soll HP mit ZGX Nano ansprechen?

Entwickler & Data Scientists, die lokal trainieren & fine-tunen.

Öffentlicher Sektor: z. B. Detroit CIO, Raytheon (Defense), wegen Datenschutz & Budgets.

Bildung: AI-Labs, Forschung, Genomics – „10–20 Einheiten = 1 AI-Lab“.

Industrie: Predictive Maintenance, Visual Inspection, Drohnen-Monitoring (Utilities, Construction).

Frage 6: Wie gut eignet sich das Gerät für Inference-Workloads?

Nicht primär dafür gebaut, aber fähig.

Unterstützt Modelle bis ~35–40 B Parameter für performante Inference.

Bei Bedarf: Distillation oder Quantisierung eines 70 B-Modells → kleine, effiziente Varianten lokal nutzbar.

Concurrent User Limit: ca. 1–2 gleichzeitig → Dev-Use, kein Multi-Tenant-Server.

Frage 7: Wenn man z. B. ein Defekterkennungssystem (z. B. visuelle Inspektion) bauen will – lieber lokal oder im Datacenter entwickeln?

Kleine Modelle mit Echtzeitanforderungen → lokal auf ZGX.

Hohe Parallelität / große Modelle → Datacenter-System (z. B. DL380 mit RTX 6000).HP liefert Benchmarks, um das optimal abzugrenzen.

Kommt auf Modellgröße, Latenz und Anzahl paralleler Feeds an.

Frage 8: Wie sieht der nächste logische Hardware-Schritt nach ZGX Nano aus?

Bei wachsender Nutzung → größere Systeme (ML/AI-Workstations, Rackserver).

Beispiel: DL380 + RTX 6000 oder künftige GB300-Cluster.

Für Entwickler bleibt ZGX Nano aber das „Gateway Device“ – Einstieg in lokale AI.

🔹 Markt- & Preisfragen

Frage 9: Wie steht der Preis von On-Prem-Geräten im Vergleich zu Cloud-APIs (z. B. GPT-Tokens)?

API-Preise werden steigen (siehe OpenAI, Claude, Microsoft → Limits & Preiserhöhungen).

Viele Anbieter verbrennen aktuell Geld → späterer Preisanstieg sicher.

Vorteil On-Prem: Fixkosten, Preiskontrolle, Datenschutz, Unabhängigkeit.

Fazit: Lokale AI = wirtschaftlich nachhaltiger.

Frage 10: Welche Argumente kann man Kunden nennen, um On-Prem zu verkaufen?

Datensicherheit / Compliance (besonders bei Behörden & KMU).

Kostentransparenz & Fixpreise statt Cloud-Volatilität.

Unabhängigkeit von API-Anbietern & Marktbewegungen.

Energie-Effizienz & Performance-Zuwachs durch neue Hardwaregenerationen.

Agentic AI-Trend: mehr autonome Agenten → Tokenkosten in Cloud explodieren → lokal rechnen lohnt.

Antwort (Curtis + Publikum):

🔹 Kompatibilität / ISV / Sonstiges

Frage 11: Plant HP ISV-Validierungen (Software-Zertifizierungen)?

Noch nicht umgesetzt, aber Empfehlung aus dem Publikum → HP prüft das.

Frage 12: Wie wirkt sich ARM-Architektur auf bestehende x86-Software aus?

Einige Kunden (v. a. Enterprise) müssen ihre Apps portieren oder anpassen.

HP spricht bereits mit großen E-Commerce-Anbietern über ARM-Migration.

Wichtig: Kunden frühzeitig darauf hinweisen.

Frage 13: Hat das Gerät eine Status-LED?

Frühe Prototypen: nein → mehrere Nutzer dachten, das Gerät sei aus („whisper quiet“).

Seriengeräte sollen ggf. LED enthalten, aber kein kaufentscheidender Punkt.

Antwort (mit Humor):

Frage 14: Wie positioniert sich ZGX Nano an Universitäten?

Sehr attraktive Preispunkte → AI-Lab-Baukasten.

Einsatz in Lehre (Medizin, Genomics, Robotik).

Vorteile: keine Cloud-Wartezeiten, lokale Datenhaltung, proprietäre Forschung bleibt intern.

Frage 15: Wie löst HP das Thema Kühlung und Lautstärke?

Horizontaler Airflow über Kühlrippen, kein Boden-Airflow wie bei DGX.

Workstation-Erfahrung von HP genutzt (optimierte Lüftersteuerung).

Andere OEMs (Asus, Dell) hatten Firmware- & Thermikprobleme → HP kann von deren Fehlern profitieren.

✅ Gesamtfazit der Q&A-Runde:

Entwickeln, Fine-Tunen & Klein-Inference lokal → Cloud-Kosten vermeiden.

Besseres Thermikdesign, Open-Source-Toolkit, klare Upgrade-Roadmap.

Hauptargumente für Kunden: Kostenkontrolle, Datenschutz, Unabhängigkeit, Zukunftssicherheit (Agentic AI).

HP positioniert den ZGX Nano als kompaktes, leises, offenes „Gateway“ für lokale AI-Entwicklung:
