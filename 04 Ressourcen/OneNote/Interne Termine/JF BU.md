---
tags: [onenote, aivengers]
---

# JF BU

1. AI Avatar / Maiborn-Wolf Kooperation

Kontext:

Ein Münchner Kunde möchte unbedingt einen AI-Avatar kaufen („wink mit Geld“). CANCOM prüft, ob dies über den Partner Maiborn-Wolf (MyBornWolf) realisierbar ist.

Maiborn-Wolf hat Erfahrung mit Digital Humans und Omniverse-basierten Avataren.

Der ursprüngliche NVIDIA Blueprint Avatar wurde von NVIDIA entfernt („Repo gelöscht“). Vincenzo prüft, ob dieser wieder verfügbar wird.

NVIDIA bringt Blueprint zurück → Nutzung möglich.

Blueprint bleibt weg → Einkauf einer externen Lösung (z. B. Maiborn-Wolf).

Zwei Optionen:

1. Entwicklung (Mimikerkennung, LibSync etc.) → Maiborn-Wolf

2. Infrastruktur (Workstation, Monitor, Stromversorgung) → CANCOM

3. Wissensaufbau & Integration (LLM, Backend, Rack) → CANCOM

Dreiteilung des Projekts:

Diskussion:

Sinan warnt: Wenn Maiborn-Wolf Fuß fasst, verliert CANCOM langfristig alle Entwicklungsthemen im Bereich Digital Human.

Risiko: Abhängigkeit von Maiborn-Wolf, da diese eigene Interessen verfolgen.

Bedenken:

Was liefern sie konkret? (reine Mimik-Engine, LLM-Integration, Komplettlösung inkl. Hardware?)

Welche Teile kann CANCOM selbst liefern, um eigenen Mehrwert zu behalten?

Montagstermin mit Maiborn-Wolf und Frank zur Klärung:

Alternative Anbieter prüfen, falls Abhängigkeit zu riskant.

Entscheidungspunkte:

Hintergrund:

Maiborn-Wolf ist gleichzeitig CANCOM-Kunde und Partner (bestehender Partnervertrag, Integration in SAP etc.), was Abrechnung und Start erleichtert.

Mehrere Kunden (u. a. Verkehrsverbund Stuttgart, Multivac, Audi Formel-1-Team) zeigen Interesse an einem Avatar-System für Showcases oder Bahnhofs-Infostationen.

CANCOM sieht es eher als Show-Use-Case, nicht als ROI-Produkt, aber als gutes „Flashy“ Marketingelement.

2. Hardware-Themen (Compute / FlexPod / DGX / Spark)

Aufbau einer verlässlichen On-Prem-GPU-Umgebung für Demos, Workshops und Kundenszenarien.

Sicherstellung, dass CANCOM intern auf GPU-Power zugreifen kann („nicht mehr nur rumspielen“).

Ziele:

Genehmigt von beiden Seiten.

NetApp Storage bereits geliefert, Cisco hatte kurzfristig Stopp → Ersatz durch größeres System.

Neues Setup: 2× H200 + 2–4 × RTX 6000 Pro BSE.

Cisco-System bleibt langfristig bei CANCOM, NetApp ggf. Rückgabe.

Offenes Bare-Metal-System, kein GUI-Layer (anders als PCAI).

Cisco + NetApp FlexPod:

Status:

Cisco erwartet Nutzung und Sichtbarkeit (Demos, Roadshows, Kunden-Leads).

Diskussion über mögliche NFR-Rabatte (NVIDIA RTX 6000 Pro BSE) für eigenes Lab.

Bedarf an dauerhaftem Compute-Node, um On-Prem Use Cases (z. B. RAG, Digital Human, Dell SPARC) intern aufzubauen.

Appell an Sinan: GPU-Kosten auf mehrere Kostenstellen verteilen (BU, Partnermanagement, Marketing).

Wichtige Punkte:

2024 = Experimentierphase;2025 / 26 = ernsthafte Aufbauphase.→ Ziel: „CANCOM muss On-Prem Profi werden, um On-Prem verkaufen zu können.“

Vision:

3. Dell Leipzig Sales-Event (20. November)

Ziel:

Auftritt von CANCOM beim Dell Sales Public Meeting in Leipzig (200+ Dell-Sales-Mitarbeiter).

Zeigen, was CANCOM mit Dell-Technologien umsetzt (nicht: Dell-Produkte erklären).

Fokus auf AI-Use-Cases, Dell AI Factory (vormals Pro Max) und SPARC-Systeme.

Zielgruppe: Non-technical Sales → einfache, visuelle Use-Cases.

Inhalt:

Zeigbare Demo auf SPARC (z. B. Cancom-Assistant oder Mini-Blueprint).

Beispielhafte Story: Kleine Gemeinde nutzt SPARC für lokalen KI-Chatbot → große Stadt (Köln) braucht Datacenter-Lösung → AI Factory.

Kein technisches Deployment zeigen, sondern „fertige Storys mit greifbarem Nutzen“.

Betonung auf Sizing-Kompetenz: „Mit CANCOM bezahlst du weniger, weil wir verstehen, wie LLM-Deployment wirklich läuft (Quantisierung, Mixture-of-Experts, etc.).“

Vorschläge:

Batu & Team sollen Use-Cases testen (nach Anlieferung SPARC).

Nächster Check-in: Freitag nächster Woche.

Eva hilft bei Marketing-Story („Mini-AI-Supercomputer“ als Begriff).

Follow-ups:

4. Watson X Orchestrate (IBM-Kooperation)

Letzter Call mit IBM war „nicht so geil“.

Sinan traf Monika (IBM-Account-Managerin exklusiv für CANCOM).

Ziel: Monika soll intern bei IBM Druck machen und Projekte anschieben, wenn CANCOM Input liefert.

IBM sucht klare Use-Cases – Plattform stark, aber Richtung unklar („geiles Produkt, aber keine Story“).

Parallele zu Microsoft Copilot+ PC: Hardware da, kein Use-Case.

IBM nutzt CANCOM, um durch gemeinsame Projekte Orientierung zu finden.

Analyse:

Eigenes Ziel: On-Prem AI-Lösungen entwickeln, die Watson X Orchestrate ggf. integrieren.

IBM will Kooperation 2025 ausbauen, hohe Präsenz, viele Besuche → CANCOM als Pilotpartner.

CANCOM-Strategie:

Fokus bleibt auf ROI-orientierter AI, nicht auf „schönen Demos“.

Kooperation nutzen, um eigene Use-Cases („Agents“) und On-Prem-Kompetenz weiterzuentwickeln.

Fazit:

Zugangsdaten werden geteilt; Batu testet intern.

MIC-Unterstützung auf Spark nicht vorhanden (Workaround prüfen).

DGX Spark Setup:

Kein akuter Diskussionspunkt, aber als Sales-Argument für On-Prem und Sovereign AI nutzbar.

Barto hat bereits Standard-Material vorbereitet („flankt mal rüber“).

EU AI Act / Compliance:

Teams (AI Solutions + Infrastructure) sollen enger zusammenarbeiten.

Fokus: Umsetzung, Doing, gemeinsame Story.

Ziel: Bis 1. Januar 2026 On-Prem-fähige AI-Use-Cases produktreif.

Allgemeiner Ton & Ausblick:

5. Sonstige Punkte

6. Zusammengefasst wichtigste Entscheidungen & To-Dos

Thema

Nächste Schritte

Verantwortlich

AI Avatar / Maiborn-Wolf

Montag Termin, Angebot/Architektur prüfen, Abhängigkeit bewerten

Frank, Eva, Daniel

Blueprint NVIDIA

Vincenzo + ggf. Flo Böttcher nach Re-Release fragen

Daniel, Batu

FlexPod / Cisco

Bestellung & Genehmigung finalisieren, später für Demos nutzen

Christian, Erik

SPARC Use Case

Demo + Story bis Dell Leipzig (20.11.)

Batu, Eva, Daniel

IBM Watson X

Follow-Up Mail mit strategischem Input

Christian, Sinan

GPU Lab

Finanzierung BU/Marketing/Partner splitten, Sinan überzeugen

Daniel, Sinan

EU AI Act

Material zentral bereitstellen (zur Verwendung in Ausschreibungen)

Barto
