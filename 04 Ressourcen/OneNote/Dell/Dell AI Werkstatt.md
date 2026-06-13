---
tags: [onenote, aivengers]
---

# Dell AI Werkstatt

1. Workshop: KI für Partner – Use Cases und technische Implementierung

•	Sprecher 1 (Experte für unstrukturierte Daten / Dell): Treibt das Thema PowerScale und Object Storage im KI-Kontext.

•	Sprecher 2 (Monika Hartwiga): Zuständig für die Distribution im Bereich Service.

•	Moderator/Co-Speaker (Kai): Führt mit durch den Workshop.

•	Workshop-Teilnehmer (Partner): Stellen Zwischenfragen und diskutieren Use Cases.

Erkannte Sprecher:

•	Einleitung und organisatorischer Rahmen:

•	Moderator & Sprecher 1 eröffnen die Session und zeigen sich erfreut über die hohe Teilnehmerzahl (57 Anmeldungen, ursprünglich waren 30 Plätze geplant). Es wird angestrebt, solche Austauschformate für Partner regelmäßig (mindestens quartalsweise) anzubieten.

•	Sprecher 1 stellt sich vor: Er ist bei Dell für unstrukturierte Daten zuständig. Da unstrukturierte Daten die Basis für KI bilden (z. B. via PowerScale und Object Storage), ist sein Ziel, die Partner in diesem Bereich fit zu machen – egal ob sie ganz am Anfang stehen oder bereits KI-Projekte umsetzen.

•	Herausforderungen der Partner:

•	Viele Partner stehen vor dem Problem: „Ich würde gerne mit KI starten, weiß aber nicht, ob ich die richtigen Tools habe und wie ich das Thema organisieren soll.“ Der Workshop soll genau hier ansetzen und das breite Spektrum der Partner abholen.

•	Konkrete KI Use Cases:

•	Sprecher 1 & Teilnehmer diskutieren verschiedene Anwendungsfälle aus der Praxis. Ein großes Thema ist das Personalwesen (HR): KI kann hier beim Scannen von Lebensläufen helfen, Bewerbungsgespräche vorbereiten und passende Fragen generieren.

•	Es wird betont, wie wichtig es ist, Unternehmensinformationen zunächst zentral zu verwalten und zusammenzubringen, damit KI-Tools (wie z. B. Copilot) effektiv darauf zugreifen können.

•	Technische Implementierung und Architektur:

•	Die Diskussion dreht sich um die technische Bereitstellung. Es wird über Container-Technologien debattiert. Ein Sprecher merkt kritisch an, dass er sich mit Containern noch nicht ganz wohlfühlt, räumt aber ein, dass man das System im Container nur einmal richtig konfigurieren müsse.

•	Unternehmensumgebungen vs. Cloud: Für den ernsthaften Einsatz im Enterprise-Bereich werden lokale (On-Premise) Lösungen diskutiert, da hier die Kontrolle über die Daten besser gewährleistet ist.

•	Datenschutz und Security:

•	Ein intensiver Austausch entsteht rund um das Thema sensible Daten. Es wird das Beispiel von Ausweis- und Reisepass-Scans genannt. Sprecher 1 warnt eindringlich vor den Risiken von Identitätsdiebstahl, wenn solche Datasets ungesichert in KI-Modelle eingespeist werden.

•	Die Teilnehmer diskutieren nachvollziehbare Datenwege und den Schutz vor unkontrolliertem Datenabfluss.

Zusammenfassung des Verlaufs:

2. Workshop: Dell AI Factory – Infrastruktur-Stacks vom Experiment bis Produktion

•	Sprecher 1 (Herr Kurz): KI-Infrastruktur-Experte für Dell in Europa (DACH, Frankreich, Spanien).

•	Workshop-Teilnehmer (Partner/Kunden): Stellen spezifische Fragen zu Hardware-Sizing und Business Cases.

•	Einleitung und Zielsetzung:

•	Herr Kurz stellt sich vor. Er betreut technologische Aspekte von KI-Projekten quer durch Europa. Sein Ziel für den Workshop ist es, offizielles Feedback aus der Dell-Produktgruppe weiterzugeben und intensiv mit den Partnern zu diskutieren, was sie aktuell auf dem Markt umtreibt, um gemeinsam bessere Geschäfte zu machen.

•	Hardware, GPUs und Lieferfähigkeiten:

•	Ein großes Thema ist die Hardware-Ausstattung, speziell Grafikkarten (GPUs). Herr Kurz weist auf die verwirrende Namensgebung hin (z. B. bei der RTX 6000 vs. RTX Pro Modellen). Er warnt davor, falsche Schlüsse aus den Bezeichnungen zu ziehen.

•	Es wird diskutiert, welche Server-GPU-Kombinationen aktuell sowohl von der Lieferfähigkeit als auch vom kaufmännischen Aspekt her am sinnvollsten sind.

•	Sizing und Anwendungsfälle (Use Cases):

•	Ein Teilnehmer gibt offen zu, dass er neu im Thema ist und fragt nach einer Größenordnung: “Was bedeutet viel oder wenig GPU-Leistung? Braucht man das für Mustererkennung in der Produktion (z.B. Fehler aussortieren) oder für große Sprachmodelle (LLMs)?”

•	Herr Kurz erklärt, dass dies stark vom Anwendungsfall (“It depends”) abhängt, gibt aber konkrete Beispiele. Er erläutert, wie man GPUs partitionieren und Workloads gezielt zuweisen kann, um Ressourcen effizient an Kunden zur Verfügung zu stellen (AI Data Platform).

•	Software-Stack und Automatisierung:

•	Neben der Hardware wird der Software-Stack beleuchtet. Herr Kurz erwähnt die Software im HGMP und die Dell Automation Plattform, mit der Systeme perspektivisch besser ausgerollt werden können. Konfigurationsmanagement und Plattform-Tools spielen eine Schlüsselrolle, um aus der Experimentierphase in die Produktion zu kommen.

•	Business Case vs. ROI (Return on Investment):

•	Gegen Ende entsteht eine Diskussion über die Wirtschaftlichkeit. Herr Kurz betont: Man muss zuerst den Use Case und den Business Case verstehen, bevor man den reinen ROI berechnet. Wenn der Business Case klar ist, folgen Automatisierungsschritte wie z. B. die automatische Benennung von Ressourcen und automatisierte Abrechnungssysteme (Invoicing) für die Kunden fast von allein.

Use Case: KI in der Getränkeherstellung / Brauerei

•	Sprecher 1 (Experte für KI-Use Cases / Dell): Stellt den anonymisierten Praxis-Case vor und erläutert die technischen Lösungsansätze.

•	Workshop-Teilnehmer (Partner): Fragt nach technischen Details zur Aufteilung zwischen Cloud (Azure) und lokaler Edge-Hardware.

•	Fehlender Datenfluss: Produktionsdaten konnten nicht genutzt werden, um Vorhersagen für das Warenbestandssystem zu treffen.

•	Qualität und Archivierung: Es gab keine langfristige Datenspeicherung. Vergangene Qualitätsdaten konnten nicht rückwirkend für Entscheidungen herangezogen werden.

•	Komplexer Lebenszyklus: Eine Glasflasche wird im Schnitt 50-mal wiederbefüllt (Lebensdauer ca. 7 Jahre). Die Qualitätskontrolle beim Leergut (Beschädigungen erkennen, korrekte Reinigung sicherstellen) ist für eine Brauerei essenziell, da schlecht gereinigte Flaschen das Bier verderben und zu Reklamationen führen.

Ausgangssituation und Herausforderungen:Der Kunde (eine Brauerei) stand vor der Herausforderung, dass IT- (Information Technology) und OT-Bereich (Operational Technology in der Produktion) strikt getrennt waren.

Zielsetzung:Der Wunsch des Kunden war eine zentrale Datenplattform (im Sinne von Industrie 4.0), die alle Daten sammelt, automatische Reports erstellt, Produktionsprozesse analysiert und frühzeitig Fehler in der Anlage erkennt.

1.	Smarte Leerguthaltung & Umschlagshäufigkeit: Überwachung, wie lange leere Bierkästen in der Halle stehen. Leergut bringt kein Geld, weshalb das Lager weder überfüllt noch komplett leer stehen darf.

2.	Überwachung des Reinigungsprozesses: KI-gestützte Qualitätssicherung bei der Flaschenreinigung, um qualitätsmindernde Ware (schlechtes Bier) zu verhindern.

3.	Antizipierendes Leergutmanagement: Vorhersage der Leergut-Rückläufe durch Logistiker basierend auf saisonalen Wellen (z. B. Sommer, Biergartenzeit, Grillzeit, Fußball-WM).

4.	Asset Management & Reporting: Ganzheitliches Monitoring, Analyse und Qualitätssicherung über den gesamten Produktionsprozess.

Die Lösung (Ergebnis eines 2-Tages-Workshops):Um schnell starten zu können, wurden vier konkrete KI- und Digitalisierungs-Use-Cases definiert und umgesetzt:

•	Ergebnis: Nach einem halben Jahr hatte die Brauerei einen voll digitalisierten Produktionsprozess.

•	Infrastruktur: Um das Projekt schnell umzusetzen, wurde zunächst auf eine Microsoft Azure Plattform gesetzt. Die Daten werden dabei an der sogenannten „Edge“ (z. B. über Dell Hardware direkt in der Produktionshalle) gesammelt und zur Auswertung in die Cloud (Azure Marketplace Services) gezogen.

•	Sprecher 1 betont, dass ein solcher Case skalierbar ist und enormes Potenzial für Partner im Bereich Beratung und Umsetzung für den Mittelstand bietet – egal ob für kleine Brauereien oder Großkonzerne wie Coca-Cola.

Technische Umsetzung & Ergebnis:

2. Use Case: KI-Wissensassistenten und Chatbots für Mitarbeiter und Kunden

•	Sprecher 1 (Experte für KI-Use Cases / Dell): Stellt den Use Case vor und erklärt die Konzepte (RAG, Agenten).

•	Sprecher 2 (Vermutlich Presales/Consulting-Experte): Ergänzt die Diskussion zur Frage, welches Know-how ein Berater beim Kunden mitbringen muss.

•	Workshop-Teilnehmer (Partner): Stellen Fragen zur praktischen Umsetzung und den benötigten Skills der Berater.

•	Für Mitarbeiter: Es kostet viel Zeit, interne Informationen, Dokumente, Produktspezifikationen oder Leitfäden (z. B. für Vertrieb und Presales) zusammenzusuchen.

•	Für Kunden: Der Kundensupport ist oft überlastet mit repetitiven Standardfragen (z. B. “Wo ist meine Bestellung?” oder Fragen zur Lieferverfügbarkeit).

Ausgangssituation und Herausforderungen:In kleinen bis mittelgroßen Firmen schlummert wertvolles Wissen oft nur in den Köpfen einzelner Mitarbeiter. Es fehlt eine zentrale, einfach durchsuchbare Wissensdatenbank.

1.	Stufe 1: Retrieval-Augmented Generation (RAG):Anstatt nur ein allgemeines Sprachmodell (LLM) zu befragen, greift die KI auf zusätzliche, überprüfte Quellen zurück. Das können interne Vektordatenbanken (für Datensouveränität) oder spezifische externe Dokumente sein. So erhält der Nutzer wahrheitsgemäße, auf den Unternehmensdaten basierende Antworten.

•	Praxisbeispiel von Dell: Dell nutzt intern seit einem Jahr einen sogenannten „Sales Chat“. Statt viele verschiedene Tools nach Whitepapern und Produktinfos zu durchsuchen, gibt es nun einen zentralen Chatbot, der den Vertrieb komplett unterstützt – etwa bei der Vorbereitung auf Kunden-Meetings.

2.	Stufe 2: Agentic RAG / Systemintegration:Im nächsten Schritt kann der Chatbot tief in die Unternehmenssysteme (ERP, CRM, Warenwirtschaft) integriert werden.

•	Sogenannte Agenten und Workflow-Managements übernehmen dann komplexe Aufgaben: Sie können Bestellstatus abfragen, Rechnungsdokumente bereitstellen oder konkrete Aktionen im System auslösen.

Die Lösung: Wissensbasierte Chatbots und RAGAls idealer „Quick Win“ (schnell umsetzbarer Erfolg) wird die Einführung von KI-gestützten Assistenten vorgestellt. Diese lassen sich oft in wenigen Tagen ohne massive Systemintegration bereitstellen.

•	Effizienz: Typische Standardfragen der Kunden (etwa 80% des Aufkommens, ähnlich wie bei Amazon-Chatbots) werden sofort vom Bot gelöst.

•	Entlastung: Mitarbeiter im Support werden von Routinefragen befreit und können sich um komplexere Fälle kümmern (Übergabe an den Menschen, falls der Bot nicht ausreicht).

•	Datenschutz: Durch lokal gehostete Lösungen (abgesteckter Bereich) behält das Unternehmen die volle Datensouveränität und macht sich nicht zwingend von großen Public-Cloud-Anbietern (wie Microsoft Copilot) abhängig.

Nutzen & Resultate:

Diskussion zur Beratung (Consulting-Aspekt):Abschließend diskutieren die Partner, welches Skillset (Fähigkeiten) man braucht, um Kunden dabei zu beraten. Die Experten betonen: „Es kommt auf den Kunden an.“ Hat der Kunde bereits eigene Data Scientists, reicht oft eine Infrastrukturberatung. Fehlt dem Kunden das Know-how komplett, müssen Prozess-, Software- und Unternehmensberater aus dem Partner-Ökosystem gemeinsam die Lösung bauen.
