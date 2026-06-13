---
tags: [onenote, aivengers]
---

# WS Düsseldorf

AI Lab

Benchmarks mit verschiedenene GPUs - immer 2 Stück - von A30 bis H200

880 hat er nicht

845 885 - Modelle die er anfordert

Demo Slide interessant -- Demolab Eric

Minecraft Prompting für Messe

"stickyness" erzeugen

Agentic service desk demo : mit n8n - workflow zeigen

Api call vs mcp - perplexity fragen

AI Pod Franky - Openshift AI - für unseren AI Pod nehmen - Infos von Petra holen

Use Case:

Next Gen RAG 2.0  - Bildschirm Shares / Screenshots - Multimodal - Storage - Video verarbeiten / auswerten / Trouble Shooting

AI Kiosk

HW: Edge device / konsole, die es verarbeitet ? Oder RZ-Lösung?

Rendering Videos mit alten GPUs

Biometrie Erkennung

Nativ mit handy funktion und auch ohne - nur eine webseite

SAAS Konzept - Zentrales Hosting mit mehreren Tenants

Schiffscontainer Use Case als Pitchdeck 3 Slides inkl. Preisindikation

Tigerteam mit Dustin, Anja, Maik,

AI Lab Vortrag Transkript:

Entstehung und Hintergrund

•	Team-Effort: Der Aufbau der Infrastruktur war eine Gemeinschaftsleistung (u.a. mit Daniel und Unterstützung der Business Unit).

•	Persönlicher Hintergrund: Der Sprecher kommt ursprünglich aus dem Netzwerk-Bereich (keine Vorerfahrung mit Compute oder AI/ML) und musste sich erst in die Thematik einarbeiten.

•	Ursprüngliches Setup:

•	Start mit zwei Servern.

•	Bestückt mit L4 und L40s GPUs (anfangs primär L4).

•	Backend Fabric: Für Multi-Node-Kommunikation bzw. RDMA-Austausch.

•	Frontend Fabric: Basierend auf ACI.

Aktuelle Technische Infrastruktur (“AI-Pod”)

•	Erweiterung: Das Setup wurde über die Zeit ausgebaut und modernisiert.

•	Aktuelle Hardware-Komponenten:

•	Integration von UCSX.

•	Einsatz von H100 GPUs (zwei Stück wurden kürzlich in einem X580 Server geliefert).

•	Planung für H200 Unterstützung.

•	Nutzung von verschiedenen GPU-Typen im Lab: L4, L40, H30, H100, H200.

•	Storage-Infrastruktur:

•	Ursprünglich Pure Storage.

•	Mittlerweile Wechsel auf NetApp (Integration in den “AI-Pod” mit OpenShift).

•	Einbindung von NetApp Storage mit UCSX.

•	Spezifische Konfigurationen:

•	Ein REG Server wurde als GPU-Workernode konfiguriert.

•	Fokus liegt auf der Demonstration von NVLink-Benchmarks (da Kunden wissen wollen, wie Hardware mit NVLink performt, was man rein rechnerisch schwer simulieren kann).

Kunden, Business und Nutzung (“Use Cases”)

•	Marktwirkung:

•	Große Deals wurden in den letzten Jahren gewonnen (global, nicht nur Deutschland).

•	Hohe Aufmerksamkeit (“Attention”) für das gebaute Setup.

•	Lab-Nutzung & POCs:

•	Das Lab wird intensiv genutzt, um Kunden-Use-Cases live zu testen (“Proof of Concept”).

•	Standortvorteil: POCs können direkt vor Ort (“in Central”) durchgeführt werden, Reisen nach London für “kleinere Geschichten” sind nicht nötig.

•	Investitionssicherheit: Kunden nutzen das Lab, um Fehlkäufe zu vermeiden (besonders bei teurer GPU-Hardware). Sie wollen validieren, ob ihre Anwendungen auf der spezifischen Hardware laufen.

•	Benchmarking von “Output Tokens” und Performance auf den Grafikkarten.

•	Zusammenarbeit mit Universitäten und Partnern.

•	Hardware-Verfügbarkeit:

•	Hardware wird oft pragmatisch beschafft (“vom LKW gefallen”, “Gabelstapler drüber gefahren” – metaphorisch für Restposten/Testgeräte).

•	Gewisse High-End-Modelle fehlen noch (z.B. B300, 885, 845 Server noch nicht verfügbar).

•	Infrastruktur-Limits:

•	Stromverbrauch ist ein Thema: Scherzhafte Anmerkung, dass beim Einbau weiterer 10 kW das Licht im Gebäude ausgehen könnte.

•	Pragmatismus: Es wird mit dem gearbeitet, was da ist (Bandbreite, verfügbare Server).

Herausforderungen und “Lab-Realität”

•	Rollenverteilung:

•	Abstimmung, wer welche Kunden anspricht (Private Sector vs. Public Sector).

•	Zusammenarbeit mit Kollegen wie Tobias, Marius (Zugriff auf Kunden) und Stefan (Systems Engineer).

•	Prozesse:

•	Diskussion über Feedback-Schleifen (z.B. mit Rainer Pichler).

•	Notwendigkeit, “kritische Situationen” regelmäßig abzustimmen.

•	“Reporter und Report”-Dynamik: Klärung, wer die Ansprache bestimmt.

•	Herausforderungen im Ablauf:

•	Es gab wohl Unklarheiten bezüglich der Agenda und des Verständnisses für die Inhalte (“Agenda… Verständnis ganz raus”).

•	Teilweise chaotische Abstimmungsprozesse oder “Late-Night”-Buchungen nach dem Urlaub.

Organisation und Team-Abstimmung (aus dem späteren Teil des Transkripts)
