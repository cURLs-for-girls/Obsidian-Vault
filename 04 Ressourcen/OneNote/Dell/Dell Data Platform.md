---
tags: [onenote, aivengers]
---

# Dell Data Platform

Technische Zusammenfassung: Dell AI Storage Strategie

1. Einordnung der Gesamtstrategie

Dell positioniert das Thema AI Storage nicht als isolierte Speicherfrage, sondern als Teil einer umfassenden AI Factory und AI Data Platform.

Die Grundlogik:

AI Factory = Compute, GPU, Netzwerk und Infrastruktur für AI-Ausführung

AI Data Platform = Datenaufbereitung, Datenzugriff, Datenmanagement und Analytics

Storage Engines = die eigentlichen Speicherplattformen für File, Object und High Performance

Data Engines = Werkzeuge für Datenaufbereitung, ETL, Search, Vektorverarbeitung und Orchestrierung

Die Slides zeigen dieses Modell sehr deutlich:

PowerScale sitzt im Kern der Dell AI Data Platform, die wiederum in die Dell AI Factory eingebettet ist. Rund um diese Plattform verortet Dell Themen wie NVIDIA NIMs, NeMo, NVIDIA AI Enterprise, Run:AI, AI-Q, cuDF, cuVS, GPU Direct, RDMA, KV Cache und Blueprints.

Die strategische Aussage von Dell lautet damit:

AI-Storage ist nicht nur Kapazität, sondern ein performancekritischer Bestandteil der gesamten AI-Datenpipeline.

2. Dells Sicht auf das AI-Datenproblem

Training

Inferencing

Dell beschreibt AI als ein Datenproblem mit zwei dominanten Workload-Klassen:

Dabei betont der Sprecher, dass im Enterprise-Umfeld 90–95 % der Workloads Inferencing sind, während große Cloud- und Foundation-Model-Anbieter stärker in Richtung Training gehen.

Datensammlung

Datenfilterung

Formatierung

Kuratierung

Sicherung

Transformation

Bereitstellung als kuratierter Datensatz

Der entscheidende Punkt ist laut Dell aber nicht nur Training vs. Inference, sondern die Datenvorbereitung davor:

Data Collection

Pre-Processing & Data Management

Data Transfer to HPS/PFS

Inference

Die Slide “Characteristics of a Data Lake and High-Performance Storage” illustriert genau diesen Ablauf:

Dazu trennt Dell zwei Speicherzonen:

Data Lake

hohe Kapazität

Data Curation

Data Reduction

Ransomware Detection

langfristige, sichere Datenhaltung

Für:

S3

NFS

Typische Protokolle:

High Performance Storage

hohe Read-/Write-Bandbreite

hohe IOPS

niedrige Latenz

gemischte I/O-Workloads

GPU-nahe Datenversorgung

Das ist architektonisch wichtig:

Dell empfiehlt nicht, alle AI-Daten sofort auf teuerstem Flash abzulegen, sondern zwischen Datenvorbereitung und GPU-naher Hochleistungsphase zu differenzieren.

3. Portfolio-Rollen: PowerScale, ObjectScale, Lightning

Eine der wichtigsten Aussagen der Folien ist die klare Rollentrennung im Dell-Portfolio:

PowerScale

Scale-out, multiprotocol file platform

optimiert für AI-Pipelines

NCP-zertifizierte Performance

GPU Direct & RDMA Support

SSD und HDD in einem Namespace kombinierbar

multi-tier, multi-site, multi-tenant

Laut Slide:

Dell sagt dazu explizit:

PowerScale ist für 95 % der heutigen AI-Use-Cases geeignet.

Enterprise-AI

unstrukturierte Daten

File-basierte Datenlandschaften

klassische Unternehmensumgebungen mit NFS/SMB-Herkunft

GPU-gestützte Inference und viele Trainingsszenarien

Technisch ist PowerScale Dells primäre Antwort auf:

ObjectScale

Enterprise S3 Object Storage

optimiert für AI und cloud-native Workloads

hoher Durchsatz

RDMA Support

software-defined

All-Flash oder Ultra-Dense HDD

extreme Skalierung bis Exabyte-Level über globalen Namespace

Dell sagt auch hier:

ObjectScale ist für 95 % der heutigen AI-Use-Cases geeignet.

cloud-nahe AI-Architekturen

moderne Datapipelines

multimodale Daten

große Objektmengen

Neo-Clouds und tier-2 CSPs

S3-native AI-Workflows

ObjectScale adressiert vor allem:

sehr performant

gut für multimodale Daten

gut für Checkpointing

gut für moderne Trainings- und Inference-Frameworks

Im Transkript wird sehr deutlich, dass Dell einen massiven Shift hin zu Object Storage sieht. Früher war Object „cheap and deep“. Heute beschreibt Dell Object für AI als:

Der Sprecher nennt eine sehr markante Größenordnung:

Bei den führenden Neo-Clouds erwartet Dell 26 Exabyte Object-Storage-Kapazität im AI-Umfeld.

Lightning / Parallel File

extrem performantes Filesystem

Zielrichtung: Tier-2 CSPs

nicht für die meisten Unternehmen gedacht

Ergänzung zu PowerScale und ObjectScale

16k GPUs und/oder >4 TB/s Durchsatz

Im Transkript wird das als Dells eigenes Parallel-File-System beschrieben, ursprünglich unter Project Viking, in den Slides als Lightning / Lightning FS.

relevant für sehr große GPU-Farmen

relevant für extrem kleine Datensätze mit sehr hoher Performanceanforderung

relevant für hochreife, scheduler-getriebene Umgebungen

nicht das Standardprodukt für typische Enterprise-AI

Dell grenzt Lightning klar ein:

Die klare Botschaft lautet:

95 % der Enterprise-Kunden brauchen kein Parallel File System.

4. Warum Dell File und Object bewusst getrennt hält

Ein zentrales Architekturargument im Vortrag ist, dass Dell File und Object bewusst nicht künstlich zu einem „Alles-in-einem“-Narrativ vermischt.

Der Sprecher grenzt sich hier direkt von Wettbewerbern ab, die behaupten, ein Produkt könne Block, File und Object gleichermaßen ideal abdecken.

Dells Argumentation:

File ist nicht gleich Object

Auch wenn ein File-System S3-APIs anbietet, wird es dadurch noch kein echtes Object Storage.

flacher Namespace

Key-Value-Modell

neue Objekte statt File-Rewrite

Versionierung

extreme horizontale Skalierung

große Node-Zahlen

Geo-Verteilung

Dell nennt für echtes Object Storage unter anderem:

PowerScale kann zwar S3 sprechen, ist aber aus Dells Sicht kein vollwertiger Ersatz für echtes Object Storage.

Skalierungsargument

tausenden Nodes

über mehrere Standorte verteilt

Größenordnung bis in den Exabyte-Bereich

Dell nennt ein Beispiel für ObjectScale mit:

Locking

Cache Coherency

globalem Namespace-Overheadfür wesentlich schwieriger.

Diese Art von Skalierung hält Dell mit klassischem POSIX-File wegen

PowerScale bleibt das starke File-System

ObjectScale bleibt das starke Object-System

Lightning ergänzt für die Extremzone

Fazit:

Das ist aus architektonischer Sicht konsistent.

5. Data Engines und Data-Orchestrierung

Ein weiterer wichtiger Teil der Strategie ist der Übergang von Dell vom reinen Infrastruktur-Anbieter hin zu einer Daten- und Pipeline-Plattform.

Federated Query

ETL

Search

Vector Search

Elasticsearch-basierte Komponenten

Spark-Integration

zusätzliche Orchestrierung über eine akquirierte Low-Code-/No-Code-Plattform

Im Transkript beschreibt Dell die Data Platform als Kombination aus:

Die Transkription des Firmennamens ist stellenweise verrauscht; im Vortrag wird eine kürzlich akquirierte Plattform beschrieben, die Dell als Low-Code/No-Code Data Orchestration für AI-Pipelines positioniert.

visuelle Pipeline-Erstellung

Human-in-the-Loop

MLOps-nahe Steuerung

Modellbibliothek

Trigger-basierte Verarbeitung

Events bei neuen Objekten

RAG-Pipeline-Automatisierung

Embedding-Erzeugung

Aktualisierung von Vektordatenbanken

produktionsnahe Workflow-Definition

Die Funktionen dieser Plattform laut Vortrag:

Das Ziel ist klar:

Enterprise-Kunden sollen AI-Datenpipelines bauen können, ohne jedes Mal ein hochspezialisiertes Data-Engineering-Team aufbauen zu müssen.

6. S3 Tables und In-Place Queries auf ObjectScale

Eine der beigefügten Slides hebt ein spezielles Thema hervor:

S3 Tables for High-Speed, Direct In-Place Queries

S3 Table APIs

Iceberg Catalog APIs

Dell zeigt hier eine Architektur, in der auf ObjectScale innerhalb des S3 Buckets direkt Tabellen gespeichert werden. Unterstützt werden:

Die Slide nennt folgende Merkmale:

katalog-föderiertes Tabellensystem

Seamless Scalability

Spark

Trino

Flink

Starburst

Integration mit Engines wie:

Integration with AI platforms

Tabellen direkt in ObjectScale

keine externe Umkopierung nötig

strukturierte Daten direkt im S3-Bucket abfragbar

Native Table Storage

IAM-gestützte Rechteverwaltung für S3 Tables

Enhanced Security with IAM

Das ist strategisch sehr relevant, weil Dell damit versucht, Object Storage nicht nur als Ablage, sondern als aktive Datenplattform für Analytics und AI zu positionieren.

7. Medienstrategie: HDD für Data Prep, Flash für GPU-Phase

Ein zentraler technischer Punkt im Vortrag ist die differenzierte Speicherkostenstrategie.

Dell argumentiert:

HDD kann sinnvoll sein

iterativer Prozess

weniger performancekritisch

große Datenmengen

Kosten spielen starke Rolle

Für Datenvorbereitung / Preprocessing:

Flash wird kritisch

Ziel: GPUs maximal auslasten

hohe Bandbreite und geringe Latenz notwendig

Für Training / Inference:

früher ca. 5:1

aktuell ca. 10:1

laut Dell-Prognose bis Jahresende eventuell 20:1

Der Sprecher betont ausdrücklich die wachsende Kostendifferenz zwischen HDD und Flash:

Data Lake / Prep günstig und groß

Hot Data / GPU-Zone schnell und flashbasiert

Damit empfiehlt Dell keine pauschale „All-Flash-überall“-Strategie, sondern eine stufenweise Datenarchitektur:

8. Exascale: Ein Hardware-Framework, drei Storage-Personas

Ein strategisch besonders wichtiger Punkt ist Exascale.

Lightning

Dell beschreibt Exascale als ein gemeinsames Server-Framework, auf dem unterschiedliche Storage-Personas laufen können:

ein gemeinsames Hardware-Template

flexible Zuweisung per Lizenz

Umwidmung der Server bei geänderten Anforderungen

perspektivisch zentral provisionierbar

Die Idee:

Beispiel im Vortrag:

40 PowerScale

25 ObjectScale

Rest Lightning

Wenn ein Kunde 100 Exascale-Server kauft, könnten diese heute z. B. verteilt werden auf:

Und später anders.

Das ist Dells Versuch, die bisher getrennten Produktwelten operativ auf einer gemeinsamen Hardwareplattform zu konsolidieren.

Investitionsschutz

höhere Flexibilität

einfacheres Lifecycle-Management

bessere Reaktionsfähigkeit bei unsicheren AI-Workload-Anforderungen

Strategische Bedeutung

Dell will diese Provisionierung perspektivisch stärker über eine Managementschicht automatisieren.

9. Performance- und Effizienzargumentation

Die Folien nutzen sehr stark das Thema Effizienz pro Rack, Switch und Watt.

80 % weniger Rack Space

8x fewer switches

72 % less energy use

Die Slide “Do More with Less: PowerScale’s Performance Advantage” vergleicht Dell PowerScale mit einer NVIDIA-zertifizierten Referenzarchitektur und zeigt folgende Dell-Aussagen:

In den Charts werden Pure Storage und VAST Data gegenüber PowerScale verglichen.

Zusätzlich formuliert Dell unten auf der Slide:

VAST: ~1,8x mehr Rack Space

Pure: fast 5x mehr Rack Space

PowerScale: More Efficient

VAST: 28 Switches

Pure: 32 Switches

PowerScale: 4 Switches

PowerScale: Better Costs

41 % weniger als VAST

72 % weniger als Pure

PowerScale: Lower Power Consumption

Wichtig ist dabei:

Diese Aussagen sind Dells Benchmark- und Architekturinterpretation auf Basis standardisierter NVIDIA/NCP-Tests und nicht neutrale Drittmarktanalyse.

Dennoch ist die Stoßrichtung klar:

Performance pro Watt

Performance pro Rack Unit

Performance pro Dollar

geringere Netzwerkkomplexität

Dell will nicht nur auf Rohperformance argumentieren, sondern auf:

10. NVIDIA NCP und die Bedeutung standardisierter Benchmarks

Ein großer Punkt im Transkript ist die Bedeutung der NVIDIA Cloud Partner / NCP-Zertifizierung.

Dell bewertet NCP als wichtig, weil damit alle Anbieter auf denselben Benchmark-Rahmen gesetzt werden.

Das ist aus Dells Sicht relevant, weil damit nicht nur Marketing-Aussagen, sondern standardisierte Vergleichswerte entstehen.

Der Sprecher sagt sinngemäß:

wie viele Storage-Nodes erforderlich sind

wie viel Energie benötigt wird

wie viel Rack Space benötigt wird

Alle Hersteller müssen für denselben GPU-Maßstab zeigen:

Auf Basis dieser Benchmarks leitet Dell dann die Vorteile gegen Pure und VAST ab.

Die zentrale Botschaft:

Nicht nur Peak-Performance zählt, sondern die Gesamtinfrastrukturkosten zur Erreichung dieser Performance.

11. Warum Dell kein Parallel Filesystem für die Masse empfiehlt

Der Vortrag relativiert den Bedarf an Parallel File sehr deutlich.

Dell sagt:

1 GB/s pro GPU

1–2 TB Kapazität pro GPUargumentiert habe.

Viele Kunden haben historisch Lustre oder ähnliche Architekturen gekauft, weil NVIDIA früher grob mit

eher 1 GB/s für 6 GPUs

eher 4–5 TB Kapazität pro GPU

Dell beobachtet in der Praxis aber andere Werte:

weniger Performancebedarf pro GPU als ursprünglich angenommen

mehr Kapazitätsbedarf pro GPU

dadurch sinkt der Zwang zum komplexen Parallel-File-Ansatz

Das verändert die Architektur fundamental:

Folgerung von Dell:

Viele Kunden haben High-Performance-Parallel-Architekturen überdimensioniert.

Scale-out NAS

Scale-out Object

Deshalb versucht Dell, möglichst viel Performance direkt in

hineinzubringen, damit Training und Inference für viele Umgebungen ohne Parallel File möglich werden.

12. Technische Performance-Roadmap

Im Vortrag werden mehrere technische Hebel genannt, mit denen Dell File- und Object-Performance weiter steigern will:

PCIe Gen4 / Gen5 / später Gen6

pNFS

NFS over RDMA

Demand Steering

Hashing über kleine Datenblöcke

bessere Verteilung kleiner I/Os

Wegfall proprietärer Client-Treiber

Linux-Kernel-nahe Integration

Für PowerScale

Dell beschreibt pNFS als wichtigen Schritt, um PowerScale in Richtung eines fast parallel-file-system-artigen Verhaltens zu bringen, ohne die volle Komplexität klassischer Parallel-Filesysteme zu übernehmen.

software-defined, Flash und HDD

heutige Performance laut Vortrag bis ca. 40 GB/s Reads

mit nächster Generation und SP/RDMA Zielbereich etwa 50–60 GB/s

S3-native Beschleunigung

geringere CPU-Last auf Client-Seite

Vorbereitung auf S3 Vector und S3 Tables

Für ObjectScale

Extremleistung in Bereichen, die für sehr große GPU-Cluster gedacht sind

im Vortrag genannt: ca. 150 GB/s pro Rack Unit

Für Lightning FS

Dell nutzt diese Werte, um Lightning als Spezialwerkzeug zu positionieren, nicht als Standardplattform.

13. Cyber Resilience und Security als Teil der AI-Data-Plattform

Dell integriert Cyber Resilience ausdrücklich in die AI-Storage-Strategie.

Datensätze dürfen nicht manipuliert werden

AI-Workloads sind anfällig für kompromittierte Datenquellen

Benutzerverhalten und Anomalien müssen analysiert werden

Air-Gap- und Vault-Konzepte gewinnen auch für File-Plattformen an Bedeutung

Im Vortrag wird betont:

AI-Daten sind nur dann wertvoll, wenn sie vertrauenswürdig, unverändert und nachvollziehbar sind.

Ransomware Detectionauftauchen.

Das passt zur Data-Lake-Slide, auf der bei der langen Retention explizit Themen wie

14. Markt- und Go-to-Market-Aussagen

Der Sprecher differenziert den Markt recht klar:

werden häufig Cloud-basierte AI-Dienste konsumieren

lokale große AI-Infrastrukturen eher seltener

Midmarket und kleinere Kunden

Oberes Enterprise-Segment

Datensouveränität

Datenschutz

proprietärem Code

regulierten Branchen

niedriger Latenz

Kontrolle über Modelle und Daten

On-Prem-AI bleibt relevant wegen:

Ein sehr praxisnahes Beispiel im Vortrag:

Ein Unternehmen will Code Assistants lokal betreiben, ohne Quellcode an externe Cloud-Modelle zu senden.

Dafür reichen laut Sprecher oft schon relativ kleine lokale GPU-Umgebungen.

Diese Argumentation ist für den europäischen Markt besonders anschlussfähig.

Gesamtbewertung der Dell AI Storage Strategie

Dell verfolgt eine mehrschichtige, technisch schlüssige AI-Storage-Strategie, die auf vier Prinzipien aufbaut:

1. Keine One-Size-Fits-All-Antwort

File

Object

Extreme High Performance

Dell unterscheidet sauber zwischen:

Das ist architektonisch sinnvoll.

2. Storage wird als aktiver Teil der AI-Datenpipeline verstanden

Data Orchestration

Vektorprozesse

Tabellen auf S3

Data Preparation

Nicht nur Datenhaltung, sondern:

stehen im Fokus.

3. Effizienz zählt mehr als reine Peak-Performance

Leistung pro Watt

Leistung pro Rack

Leistung pro Port

Gesamtbetriebskosten

Dell argumentiert stark über:

4. Operative Flexibilität wird zum Produktmerkmal

Mit Exascale versucht Dell, File/Object/Parallel File auf einer gemeinsamen Plattform zu operationalisieren.

Wichtigste Kernaussagen in komprimierter Form

PowerScale ist Dells primäre Enterprise-AI-Storage-Plattform für unstrukturierte Daten und soll laut Dell rund 95 % der AI-Use-Cases abdecken.

ObjectScale ist die strategische Antwort auf S3-native, cloud-nahe und multimodale AI-Workloads und gewinnt massiv an Bedeutung.

Lightning / Project Viking adressiert nur die Extremfälle mit sehr großen GPU-Farmen und maximaler Performanceanforderung.

Dell sieht die AI-Datenarchitektur als Kombination aus Data Lake + High Performance Storage, nicht als reines All-Flash-Modell.

Die Einführung von Exascale zeigt, dass Dell langfristig Storage stärker als softwaredefinierte Persona auf gemeinsamer Hardware denkt.

Die Folien unterstreichen zusätzlich Dells Differenzierung über Effizienz, insbesondere gegenüber Pure und VAST, wobei diese Vergleichswerte klar als Dell-Positionierung zu lesen sind.
