---
tags: [onenote, aivengers]
---

# Dell AI Data Summit Madrid

NVIDIA KeynoteDer Vortrag bei der NVIDIA-Dell-Konferenz 2025 präsentierte umfassend die aktuelle und zukünftige Entwicklung im Bereich Künstliche Intelligenz (KI) und deren Umsetzung in sogenannten AI Factories. Es wurde betont, wie rasant sich die KI-Technologien entwickeln, insbesondere durch die Zusammenarbeit von Dell und NVIDIA, die gemeinsam Hardware und Softwarelösungen für Unternehmen anbieten, um KI-Anwendungen maßgeblich zu beschleunigen. Der Wandel von herkömmlichen Rechenzentren hin zu KI-Fabriken wurde als essenziell dargestellt, die nicht nur Rechenleistung (Compute), sondern auch Speicher, Netzwerktechnik und Software orchestriert nutzen.

Die präsentierte Roadmap zeigt Fortschritte bei leistungsfähigen GPUs wie Blackwell und Oberon, die speziell für KI-Anwendungen, etwa Training großer Sprachmodelle und Reasoning-AI, optimiert sind. Dabei hebt der Sprecher hervor, dass KI nicht nur ein Problem von Compute oder Storage sei, sondern eine umfassende Datenzentrumslösung erfordere, wo alle Komponenten zusammenwirken. Dell stellt Hardware-Lösungen bereit, die von kleinen Entwicklerboxen (z.B. für Proof of Concept) bis zu großen AI-Servern mit tausenden GPUs reichen, um verschiedenste Unternehmensbedarfe abzudecken.

Der Vortrag betonte auch die Bedeutung von generativer KI, reasoning und agentischer KI, die zunehmend komplexe Aufgaben und Arbeitsprozesse unterstützen. Die Technologie ermöglicht nicht nur die Verarbeitung großer Datenmengen, sondern auch kontextbewusstes, schlussfolgerndes Denken (zum Beispiel Sitzordnungen berücksichtigen persönliche Beziehungen). Zudem wurde das Thema RAG (retrieved augmented generation) vorgestellt, das KI-Systeme mit aktuellen, relevanten Daten z.B. aus Firmendatenbanken ergänzt, um präzise Antworten zu liefern.

Der Sprecher unterstrich zudem die Wichtigkeit von optimierten KI-Datenplattformen, die Daten governancen, Sicherheit und Aktualisierung gewährleisten, um eine verlässliche KI-Entwicklung zu unterstützen. Die strategische Partnerschaft zwischen Dell und NVIDIA wird als Schlüssel gesehen, da Dell eine breite Produktpalette von Laptops über Server bis Cloud-Lösungen anbietet und somit End-to-End KI-Infrastrukturen ermöglicht.

Abschließend wurde ein Aufruf formuliert, dass Unternehmen und Entwickler jetzt den Weg zu KI-Anwendungen beschreiten sollten, mit ersten Einstiegslösungen arbeiten und die Chancen der KI für Umsatzsteigerungen und Effizienzgewinne nutzen. Die vorgestellten Technologien und Anwendungen spiegeln den rasanten Fortschritt und die vielfältigen Einsatzmöglichkeiten von KI in der Industrie wider, von der Forschung bis zur Fabrikautomation und Kundenservice.

Diese Zusammenfassung fasst den Vortrag zusammen, ohne ein spezielles Thema hervorzuheben, sondern gibt einen Überblick über das breite Spektrum der Inhalte, die den aktuellen Stand und die Zukunft der KI-Landschaft mit Dell und NVIDIA als Partner umfassen.

DDAE Keynote

Der Vortrag betont, dass Organisationen das enorme Potenzial ihrer gesammelten (oft unstrukturierten) Daten erkannt haben, die allerdings oft siloartig und schwer auswertbar vorliegen. Vor allem bei unstrukturierten Daten wie Bildern, PDFs oder Videos fehlt die Möglichkeit, direkt nach Informationen darin zu suchen. Ein wichtiger Schritt zur Wertschöpfung ist daher die Umwandlung dieser Rohdaten in semistrukturierte Daten – etwa indem ein Large Language Model (LLM) aus Bildern beschreibende Key-Value-Paare erzeugt, die anschließend besser durchsuchbar und analysierbar sind.

Daten­silos und deren Herausforderungen

Ein großes Hindernis bei der Wertschöpfung aus Daten sind Datensilos, also voneinander getrennte Speicherorte mit wenig oder keiner Verbindung zueinander, sei es aus technischen, organisatorischen oder regulatorischen Gründen (Beispiel: getrennte Produktions- und Kundendaten im Unternehmen). Das Zusammenführen der Daten scheitert oft daran, dass Daten aus Datenschutzgründen nicht zentral gespeichert werden dürfen oder technisch nicht zusammengeführt werden können.

Von der „Single Source of Truth“ zum „Single Point of Access“

Früher war die klassische Lösung, alle Daten auf eine zentrale Plattform zu verschieben („Single Source of Truth“). Diese Herangehensweise ist heute nicht mehr praktikabel, weil Datenmengen und -quellen zu groß und zu divers sind. Stattdessen wird der Ansatz des „Single Point of Access“ propagiert: Die Daten verbleiben in den jeweiligen Silos, werden aber über eine zentrale Instanz zugänglich und auswertbar gemacht.

Die Funktionsweise des Dell Data Analytics Engine (DDAE)

Die Dell Data Analytics Engine (DDAE) bildet das Herzstück dieses Ansatzes. Sie funktioniert als SQL-Engine, die über sogenannte „Connectoren“ mit unterschiedlichen (teils strukturierten, teils unstrukturierten) Datenquellen kommuniziert. Connectoren erlauben, verschiedenste Quellen wie SQL-Datenbanken, proprietäre oder selbst entwickelte Systeme anzubinden. DDAE ermöglicht so sogenannte „federated queries“, das heißt: Ein SQL-Befehl kann sich parallel auf mehrere Silos unterschiedlicher Formate beziehen („Data Mesh“).

•	Unstrukturierte Daten: Bilder, Videos, PDFs etc. werden durch KI-gestützte Prozesse in semistrukturierte, query-fähige Key-Value-Paare konvertiert.

•	Semistrukturierte Daten: Diese Daten können als Key-Value-Paare oder Tabellen in query-fähige Formate überführt werden.

•	Storage & Caching: Für performante Analysen wird auf sogenannte „materialized views“ zurückgegriffen – gecachte Datenansichten, gespeichert im Open-Source-Format (Apache Iceberg auf Apache Parquet). So bleibt die Plattform offen und verhindert Vendor-Lock-ins.

Datenformate und -speicherung

Sicherheit, Governance & Data Products

DDAE ermöglicht eine granulare Steuerung von Zugriffsrechten, Filterung und Maskierung sensibler Daten, um den Datenschutz (z.B. nach DSGVO) zu gewährleisten. Data Products sind vordefinierte, abgesicherte Datenansichten, die gezielt für einzelne Rollen oder Teams freigegeben werden können, ohne dass die Kontrolle über die Originaldaten verloren geht.

•	Open Source Kern: Die technische Grundlage bilden Open-Source-Lösungen wie Trino (für SQL) und Apache Spark (für Streaming, unstrukturierte Daten und GPU-Beschleunigung).

•	Enterprise Stack: Für den Unternehmenseinsatz erfolgt eine Absicherung und Integration über Partnerlösungen wie Starburst und ein durch Dell validiertes Komplettpaket.

•	Schneller Wertgewinn: Durch die vorkonfigurierte Plattform kann die Zeit von der Installation bis zur Wertschöpfung drastisch verkürzt werden.

Technische Basis und Erweiterbarkeit

Typische Anwendungsfälle

Branchenbeispiele umfassen medizinische Bilddaten, Finanzdaten mit strengen Datenschutzauflagen und Infrastrukturdaten aus verteilten Sensoren. Immer geht es darum, Silos nicht zwanghaft aufzulösen, sondern durch eine clevere Vernetzung und Abstraktionsschicht deren Wert dennoch nutzbar zu machen.

Zusammenfassung:

Die Dell Data Analytics Engine (DDAE) vernetzt verschiedenste strukturierte, semistrukturierte und unstrukturierte Datenquellen, ohne dass eine zentrale Speicherung nötig ist. Über offene Standards (z.B. Apache Iceberg, Parquet) und moderne Connector-Technologien ermöglicht sie einheitlichen, sicheren Zugriff sowie die effiziente Wertschöpfung aus bestehenden Datensilos. Prüfbare Data Products und granulare Governance runden die Lösung ab.

Simplified Block Architecture for Al 
End User 
Software 
- 
layer 
-- 
- 
Al 
Marion 
Platform 
layer 
--- ...Simplified Block Architecture for Al 
End User 
Software 
- 
layer 
-- 
- 
Al 
Marion 
Platform 
layer 
---

3 Layer 
#De 
approach 
· How will you manage Your Infrastructure 
Loadbalancer, Networking, Server, Stora 
Infrastructure 
· What is the OS / K8S Strategy ? 
Kubernetes & 
. How will you manage Resource pools 
Management 
Al Software 
· What End-User Software will be used 
DELL ...3 Layer 
#De 
approach 
· How will you manage Your Infrastructure 
Loadbalancer, Networking, Server, Stora 
Infrastructure 
· What is the OS / K8S Strategy ? 
Kubernetes & 
. How will you manage Resource pools 
Management 
Al Software 
· What End-User Software will be used 
DELL

Unicrential: 
Detween ... and GPU UJI VIC 
gies 
M 
Al as-a-service 
AI RIEBOTH 
· Al Platform vary in capabilities, but mainly handlo: 
Orchical interlaoo 
Single or Mit-lenancy 
Model Testing / Vistasion 
Conuenption Materirm 
Monitoring & OLsontisly 
IT Infrastructure (Kubernetes /VM / OS] 
Interprekdon / Explainabaly 
OPU Partsoning / Practicing / Scheduina 
Toum Managenwell 
Data Labeling 
Orchestration 
Synilistic Data 
Machine Learning . Security 
Dela Verstoring und Management 
Dochboard 
Exploratory Data Analysis (COA) 
ANDDAL 
Feature Stores 
Foundation Make's 
Coda Manaymert 
YouDIDB 
Modal Development 
Agent Framework 
Hyperparameter Tunity 
Experiment Tracking & Metsdata Store 
LLOPS 
Mawiel Repository / Roglossy 
Al Davon Acrisalona 
Model InteroADe 
Alignment Toola 
Agente Tooin 
Third party Took / FIETSNEVES ...Unicrential: 
Detween ... and GPU UJI VIC 
gies 
M 
Al as-a-service 
AI RIEBOTH 
· Al Platform vary in capabilities, but mainly handlo: 
Orchical interlaoo 
Single or Mit-lenancy 
Model Testing / Vistasion 
Conuenption Materirm 
Monitoring & OLsontisly 
IT Infrastructure (Kubernetes /VM / OS] 
Interprekdon / Explainabaly 
OPU Partsoning / Practicing / Scheduina 
Toum Managenwell 
Data Labeling 
Orchestration 
Synilistic Data 
Machine Learning . Security 
Dela Verstoring und Management 
Dochboard 
Exploratory Data Analysis (COA) 
ANDDAL 
Feature Stores 
Foundation Make's 
Coda Manaymert 
YouDIDB 
Modal Development 
Agent Framework 
Hyperparameter Tunity 
Experiment Tracking & Metsdata Store 
LLOPS 
Mawiel Repository / Roglossy 
Al Davon Acrisalona 
Model InteroADe 
Alignment Toola 
Agente Tooin 
Third party Took / FIETSNEVES

Unicrential :. “ 
Detweerl ... and GPU SCI V 
Al as-a-service 
· Al Platform vary in capabilities, but mainly handle: 
Tenant Na 
Graphical intalaca 
Single or Muti-tenanoy 
Model Tostr / Validation 
Consumption Metwring 
Mondodina / Observabay 
IT kirastructure (Kubemalus / VM / 02) 
GPU Partioning / Fractioning / Echaduing 
Orchestraten 
Data LabsTra 
Synthese Data 
Machine Learning + Escurity 
Data Versiering and Management 
Exploratory Data Arotrois (EDA) 
ALASARL 
. 
Foundation Blodels 
. 
Feature &loros 
VectorOB 
Aie Management 
. 
Aocet Framework 
Nudeove 
Hyperparameter Tuning 
Experiment Trading & Listadeia Bloke 
. 
Model Repository / Registry 
AJ Driven Appleations 
Model Inference 
ARTment Tools 
Model Deploy wark 
Agente Tools 
Quota / Autoscaling / Policies 
. 
That-party Took / Frameszaros 
DELL Technologies 
PARTNER PRODRAMA ...Unicrential :. “ 
Detweerl ... and GPU SCI V 
Al as-a-service 
· Al Platform vary in capabilities, but mainly handle: 
Tenant Na 
Graphical intalaca 
Single or Muti-tenanoy 
Model Tostr / Validation 
Consumption Metwring 
Mondodina / Observabay 
IT kirastructure (Kubemalus / VM / 02) 
GPU Partioning / Fractioning / Echaduing 
Orchestraten 
Data LabsTra 
Synthese Data 
Machine Learning + Escurity 
Data Versiering and Management 
Exploratory Data Arotrois (EDA) 
ALASARL 
. 
Foundation Blodels 
. 
Feature &loros 
VectorOB 
Aie Management 
. 
Aocet Framework 
Nudeove 
Hyperparameter Tuning 
Experiment Trading & Listadeia Bloke 
. 
Model Repository / Registry 
AJ Driven Appleations 
Model Inference 
ARTment Tools 
Model Deploy wark 
Agente Tools 
Quota / Autoscaling / Policies 
. 
That-party Took / Frameszaros 
DELL Technologies 
PARTNER PRODRAMA

Dnicrential., 
Detween ... and GPU SSA 
Al as-a-service 
Tenant 
· Al Platform vary in capabilities, but mainly handle: 
. 
Graphical Interlasa 
Modal Texting / Validadon 
. 
Conmanplan Maturing 
Monitoring / Observability 
IT NESEstructura (Kul-notes / VM / 09) 
GFU Partitioning / Fiedlering / Scheduling 
Toom Management 
Synthetic Dam 
Mochine Lowtrăng + Esaurily 
Daha Verdoning and Management 
Dashboards 
CHRAwalory Data Analysis (EDA) 
AURONSL 
. 
Foundsson Models 
Starea 
VediorDi 
Agent Fromestark 
Tatar Tuning 
LINDOS 
welding & LAvaiALA Shone 
wy ! Registry 
Al Drivon Applicatizes 
Agentic Tocks 
nent 
bis / Franeworban 
Quota / Autoscaling / Policies 
D 
logies ...Dnicrential., 
Detween ... and GPU SSA 
Al as-a-service 
Tenant 
· Al Platform vary in capabilities, but mainly handle: 
. 
Graphical Interlasa 
Modal Texting / Validadon 
. 
Conmanplan Maturing 
Monitoring / Observability 
IT NESEstructura (Kul-notes / VM / 09) 
GFU Partitioning / Fiedlering / Scheduling 
Toom Management 
Synthetic Dam 
Mochine Lowtrăng + Esaurily 
Daha Verdoning and Management 
Dashboards 
CHRAwalory Data Analysis (EDA) 
AURONSL 
. 
Foundsson Models 
Starea 
VediorDi 
Agent Fromestark 
Tatar Tuning 
LINDOS 
welding & LAvaiALA Shone 
wy ! Registry 
Al Drivon Applicatizes 
Agentic Tocks 
nent 
bis / Franeworban 
Quota / Autoscaling / Policies 
D 
logies

Differentiating between Al and GPU services 
Al as-a-service ...Differentiating between Al and GPU services 
Al as-a-service

Differentiating between Al and GPU services 
GPU as-a-servico ...Differentiating between Al and GPU services 
GPU as-a-servico

DELLTechnologies 
NVIDIA 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
ACCELERATING AI OUTCOMES 
Powering a new class of enterprise infrastructure 
Walter G. Leverett, Global OEM Channel Leader, wleverett 
.com 
http://www.linkedin.com/walterlevere 
D& Technologies 
October 7, 2025 ...DELLTechnologies 
NVIDIA 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
ACCELERATING AI OUTCOMES 
Powering a new class of enterprise infrastructure 
Walter G. Leverett, Global OEM Channel Leader, wleverett 
.com 
http://www.linkedin.com/walterlevere 
D& Technologies 
October 7, 2025

DELLTechnologies 
NVIDIA Data Center Roadmap 
VIDIA Data 
One-Year Rhythm | Full-Stack | One Architecture | CUDA Everywhere 
admap 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Rubin 
Feynmar 
COMPUTE 
Aubin 
Forman 
HAM 
Grace CPU 
Vert COU 
th Gen NV 
th Gen NVSwit 
ZT. CPO 
18000 
pectrum? 
SESTEM 
DELLTechnologies 
2025 ...DELLTechnologies 
NVIDIA Data Center Roadmap 
VIDIA Data 
One-Year Rhythm | Full-Stack | One Architecture | CUDA Everywhere 
admap 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Rubin 
Feynmar 
COMPUTE 
Aubin 
Forman 
HAM 
Grace CPU 
Vert COU 
th Gen NV 
th Gen NVSwit 
ZT. CPO 
18000 
pectrum? 
SESTEM 
DELLTechnologies 
2025

NVIDIA Data Center Roadmap 
One-Year Rhythm | Full-Stack | One Architecture | CUDA Everywhere 
#DellAIDataP 
Blackwell 
Rubin 
Feynman 
COMPUTE 
Blackwell 
IS HAM3A 
Rubin 
tubin Ultra 
S HOM 
Sa HALAAS 
era CPU 
SCALELIPI 
th Gen Ny switc 
7th Gen Nyswite 
th Gen NVSwitch 
NYL-NOR 
NETWORKING 
(SCALL-OU)) 
89 
SIT 
Spectrum 
Spectrum7 
Cx10 
102T. CPD 
Oberon 
SYSTEM 
NVLZW8 
DELLTechnol 
2025 ...NVIDIA Data Center Roadmap 
One-Year Rhythm | Full-Stack | One Architecture | CUDA Everywhere 
#DellAIDataP 
Blackwell 
Rubin 
Feynman 
COMPUTE 
Blackwell 
IS HAM3A 
Rubin 
tubin Ultra 
S HOM 
Sa HALAAS 
era CPU 
SCALELIPI 
th Gen Ny switc 
7th Gen Nyswite 
th Gen NVSwitch 
NYL-NOR 
NETWORKING 
(SCALL-OU)) 
89 
SIT 
Spectrum 
Spectrum7 
Cx10 
102T. CPD 
Oberon 
SYSTEM 
NVLZW8 
DELLTechnol 
2025

DGX Spark - Target Users 
#DellAID 
Al Developers 
Researchers 
Data Scientists 
Enthusiasts 
Students 
</> 
Enterprise Developers 
Researchers / HER 
Inception / Startups 
Enthusiasts 
Students 
Does software AI/DS 
Attending secondary education 
Professional Al/DS software 
Al/DS Researchers, grad- 
Professional Al/DS software 
development/ research 
focused on Al /DS research and 
Description 
developers 
students, professors 
developers 
outside of their job; passionate 
about learning new 
software development 
ulum 
technologies and skills 
curriculum 
Pain Points (system 
purchase) 
IT procurement process/policies 
Purchasing contracts 
Price/Prefer NET 30 
Availability 
Price/Availability 
Budget (how much do 
Business case dependent / low 
price purchases avoid 
Business case dependent. Price 
Business case dependent 
sensitive in early stages 
$3-$5K 
<$3000 
they spend on system 
bid/budget process 
Buying preference (how 
Partners & Online 
Partners & Online 
Partners & Online 
Online 
Online & Retail 
do they buy) 
DELLTechno ...DGX Spark - Target Users 
#DellAID 
Al Developers 
Researchers 
Data Scientists 
Enthusiasts 
Students 
</> 
Enterprise Developers 
Researchers / HER 
Inception / Startups 
Enthusiasts 
Students 
Does software AI/DS 
Attending secondary education 
Professional Al/DS software 
Al/DS Researchers, grad- 
Professional Al/DS software 
development/ research 
focused on Al /DS research and 
Description 
developers 
students, professors 
developers 
outside of their job; passionate 
about learning new 
software development 
ulum 
technologies and skills 
curriculum 
Pain Points (system 
purchase) 
IT procurement process/policies 
Purchasing contracts 
Price/Prefer NET 30 
Availability 
Price/Availability 
Budget (how much do 
Business case dependent / low 
price purchases avoid 
Business case dependent. Price 
Business case dependent 
sensitive in early stages 
$3-$5K 
<$3000 
they spend on system 
bid/budget process 
Buying preference (how 
Partners & Online 
Partners & Online 
Partners & Online 
Online 
Online & Retail 
do they buy) 
DELLTechno

DELLTechnologies 
NVIDIA AI Developer Systems 
PARTNER PROGRAM 
Largest Al Model Size - FP41 
Really large 
#DellAIDataPlatformSummit 
DGX Station 
600B 
405B 
forkstatio 
(384GB) 
x DGY Shark 
(200GB) 
200B 
DGX Sparl 
110000 
153B 
1x GPU 
Jorkstatio 
51B 
(96GB) 
DELLTechnologies 
Lx GPU PC ...DELLTechnologies 
NVIDIA AI Developer Systems 
PARTNER PROGRAM 
Largest Al Model Size - FP41 
Really large 
#DellAIDataPlatformSummit 
DGX Station 
600B 
405B 
forkstatio 
(384GB) 
x DGY Shark 
(200GB) 
200B 
DGX Sparl 
110000 
153B 
1x GPU 
Jorkstatio 
51B 
(96GB) 
DELLTechnologies 
Lx GPU PC

NVIDIA AI Developer Systems 
Largest Al Model Size - FP41 
#De 
Really large 
DGX Station 
84GB) 
600B 
405B 
4x GPU 
Workstation 
(384GB) 
2x DGX Spark 2 
(200GB) 
200E 
DGX Spark 2 
(100GB) 
153B 
1x GPU 
Workstation 
51B 
(96GB) 
DELLTechn 
1x GPU PC 
32GB) ...NVIDIA AI Developer Systems 
Largest Al Model Size - FP41 
#De 
Really large 
DGX Station 
84GB) 
600B 
405B 
4x GPU 
Workstation 
(384GB) 
2x DGX Spark 2 
(200GB) 
200E 
DGX Spark 2 
(100GB) 
153B 
1x GPU 
Workstation 
51B 
(96GB) 
DELLTechn 
1x GPU PC 
32GB)

By 2029, the top 25% of large-cap enterprises that master 
Al factories will control over 75% of their respective 
markets, creating Al-driven oligopolies. 
By 2029, 70% of large enterprises failing to effectively 
utilize Al factories will cease to exist. 
- Gartner®, Innovation Insight for GenAl Infrastructure 
DELLTech 
NVIDIA CONFIDENTIAL DO NOT DISTRIBUTE ...By 2029, the top 25% of large-cap enterprises that master 
Al factories will control over 75% of their respective 
markets, creating Al-driven oligopolies. 
By 2029, 70% of large enterprises failing to effectively 
utilize Al factories will cease to exist. 
- Gartner®, Innovation Insight for GenAl Infrastructure 
DELLTech 
NVIDIA CONFIDENTIAL DO NOT DISTRIBUTE

Al Data Platform Complements Al Factory 
All storage is accelerated, and every Al Factory has an Al Data Platform 
#DellAIData 
Leaf Switches 
Al Data Platform 
Compute Clients 
Leaf 
witche 
Spine 
Leaf 
Switches 
--- 
--- 
Benefits: 
Central & secure Al-ready data 
GPUs sized for data velocity 
E-W 
Fabri 
Reduced data sprawl 
Al Factory 
DELLTechno ...Al Data Platform Complements Al Factory 
All storage is accelerated, and every Al Factory has an Al Data Platform 
#DellAIData 
Leaf Switches 
Al Data Platform 
Compute Clients 
Leaf 
witche 
Spine 
Leaf 
Switches 
--- 
--- 
Benefits: 
Central & secure Al-ready data 
GPUs sized for data velocity 
E-W 
Fabri 
Reduced data sprawl 
Al Factory 
DELLTechno

What „Use Case bullders expect“ 
Al Universe 
-- ...What „Use Case bullders expect“ 
Al Universe 
--

What „Use Case bullders expect“ 
Al Universe ...What „Use Case bullders expect“ 
Al Universe

· Start with the Data Platform 
in Understand what Extrstro the Data Ochentos on Using 
Al Platform 
-- And may ving, Crout Benboost today - wil của paciente Inin InDerper, 
Design 
- Neer much Didla Lo It very cuss to tware to saxo Duka Plnotes 
Steps 
- Wel they connect la astrmel Bourcon ? 
- Discuss tho Data Science Environment 
- Understand what Tools the Data Scheseines pro Using 
. Discuss the Model Hub 
Foura lo an the 
· Discuss tho Model Serving Platform ...· Start with the Data Platform 
in Understand what Extrstro the Data Ochentos on Using 
Al Platform 
-- And may ving, Crout Benboost today - wil của paciente Inin InDerper, 
Design 
- Neer much Didla Lo It very cuss to tware to saxo Duka Plnotes 
Steps 
- Wel they connect la astrmel Bourcon ? 
- Discuss tho Data Science Environment 
- Understand what Tools the Data Scheseines pro Using 
. Discuss the Model Hub 
Foura lo an the 
· Discuss tho Model Serving Platform

LLTechnologies 
PARTNER PROGRAM 
Al as-a-service 
VS 
GPU as-a-service 
DELL Technologies 
PARTNER PROGRAM ...LLTechnologies 
PARTNER PROGRAM 
Al as-a-service 
VS 
GPU as-a-service 
DELL Technologies 
PARTNER PROGRAM

Unicrential .. 
Detween ... and GPU Sc: vices 
GPU as-a-service 
An offering that provides applications with 
GPU resources / capabilities using: 
· GPU Time-slicing / Time-sharing 
· GPU Partition / Fractioning 
· GPU Passthrough or Direct GPU Access 
DELL Technologies 
PARTNER PROGRAMA ...Unicrential .. 
Detween ... and GPU Sc: vices 
GPU as-a-service 
An offering that provides applications with 
GPU resources / capabilities using: 
· GPU Time-slicing / Time-sharing 
· GPU Partition / Fractioning 
· GPU Passthrough or Direct GPU Access 
DELL Technologies 
PARTNER PROGRAMA

SE DEFIN- 
TYPES OF UNAFER - STURED DA 
STORAGE ENGINES 
Network Attached Storage (NAS) 
Object Storage 
Definition NAS & o dedicated file storage device that provides local area network (LAN) users váth 
Definition: Object storage is A data storage architecture that manages dinu as objects, as opposed to pass 01 
centralized, consolidated disk storage through a standard Ethernet connection 
blocks. Each object includes the data toall, metadata and a unique Hentihat. 
Key Features 
Kuy Features 
. The Board Storage NAS systems more data in a hierarchical to system 
Accessibility: Accessible over a network using standard Be-sharing protocol Ay MPS, SMAA/CIT'S 
. Object- Based Storage: Stores dola as objects in a flat address space. 
. Performante Generally offers high performance for file sharing and ances within a local network 
Scolabuty: Highly sestalis designed to handle vast amounts of unstructured data. 
Scalability: Limited scuolabany comprised to object norge adding more therage often requires additional 
Accessibility. Accessed the APUS (e.g. RESTful APS) rather than traditional file system protocole 
NAS devices 
· Dusaleility, Often includes built -in data replication and redundancy for high durability. 
bhanagement: Typically easier to manage for amed to medura-sized burheises 
Monagreat Requires more sophidicated management look and understanding of Aps 
Use Cases Kleal for file sharing, backups and home media server 
Use Cases Suitable for cloud storage, ben dain backups, and archived savage- 
DELL Technologies ...SE DEFIN- 
TYPES OF UNAFER - STURED DA 
STORAGE ENGINES 
Network Attached Storage (NAS) 
Object Storage 
Definition NAS & o dedicated file storage device that provides local area network (LAN) users váth 
Definition: Object storage is A data storage architecture that manages dinu as objects, as opposed to pass 01 
centralized, consolidated disk storage through a standard Ethernet connection 
blocks. Each object includes the data toall, metadata and a unique Hentihat. 
Key Features 
Kuy Features 
. The Board Storage NAS systems more data in a hierarchical to system 
Accessibility: Accessible over a network using standard Be-sharing protocol Ay MPS, SMAA/CIT'S 
. Object- Based Storage: Stores dola as objects in a flat address space. 
. Performante Generally offers high performance for file sharing and ances within a local network 
Scolabuty: Highly sestalis designed to handle vast amounts of unstructured data. 
Scalability: Limited scuolabany comprised to object norge adding more therage often requires additional 
Accessibility. Accessed the APUS (e.g. RESTful APS) rather than traditional file system protocole 
NAS devices 
· Dusaleility, Often includes built -in data replication and redundancy for high durability. 
bhanagement: Typically easier to manage for amed to medura-sized burheises 
Monagreat Requires more sophidicated management look and understanding of Aps 
Use Cases Kleal for file sharing, backups and home media server 
Use Cases Suitable for cloud storage, ben dain backups, and archived savage- 
DELL Technologies

Object storage market Gywarnics 
ologies 
#DellAIDataPlatformSur 
GRAN 
Global Object Storage Market Growth 
Increasingly Deployed as Primary Storage 
Object is the preferred storage choice for organizations 
IT and Production 
Emerging 
looking to leverage advanced data analytics and Al 
S25B 
technologies 
Workloads 
Dell Object 
Workloads 
$25 B 
Ticred archivo 
Next-gen Apps 
$208 
Backup 
Streaming 
15.7% 
Bucket B 
$158 
CAGR 
Bucket A 
Video/Audio 
Analytics 
S108 
Bucket 
Cloud gateway 
AUML 
BB 
Storage 
2032 
Scalability | Simplicity | APIs | Economics 
DELL Technologies 
Rezparch Rewit 2032 ...Object storage market Gywarnics 
ologies 
#DellAIDataPlatformSur 
GRAN 
Global Object Storage Market Growth 
Increasingly Deployed as Primary Storage 
Object is the preferred storage choice for organizations 
IT and Production 
Emerging 
looking to leverage advanced data analytics and Al 
S25B 
technologies 
Workloads 
Dell Object 
Workloads 
$25 B 
Ticred archivo 
Next-gen Apps 
$208 
Backup 
Streaming 
15.7% 
Bucket B 
$158 
CAGR 
Bucket A 
Video/Audio 
Analytics 
S108 
Bucket 
Cloud gateway 
AUML 
BB 
Storage 
2032 
Scalability | Simplicity | APIs | Economics 
DELL Technologies 
Rezparch Rewit 2032

ObjectScale So over RDWww.\ with GPUDirect, AI/ML jobs 
ogies 
Del Al Factory 
AM 
A Factory Dichoose 
#DellAIDataPl 
FRA BEA D UP 
10M+ More Objects Per Hour 
~0% GPU Utilization Impact 
11,331,4 MAB/B 
2.6 ms 
4.241.5 MB/ 
7.2 m 
70%+ Lower CPU Utilization 
10 % 
Up to 230% More Bandwidth 
Up to 80% Lower Latency 
(Based on Dell internal ObjectScale S3 over RDMA 
tosting, May 2025. Actual results may vary.) 
DELL Technologies 
DELLTechnologies ...ObjectScale So over RDWww.\ with GPUDirect, AI/ML jobs 
ogies 
Del Al Factory 
AM 
A Factory Dichoose 
#DellAIDataPl 
FRA BEA D UP 
10M+ More Objects Per Hour 
~0% GPU Utilization Impact 
11,331,4 MAB/B 
2.6 ms 
4.241.5 MB/ 
7.2 m 
70%+ Lower CPU Utilization 
10 % 
Up to 230% More Bandwidth 
Up to 80% Lower Latency 
(Based on Dell internal ObjectScale S3 over RDMA 
tosting, May 2025. Actual results may vary.) 
DELL Technologies 
DELLTechnologies

DELLTechnologies 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Structured 
Unstructured 
Semi- 
Structured 
.... 
.. 
echnologie 
DELLTechnologies 
ER PROGRA! ...DELLTechnologies 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Structured 
Unstructured 
Semi- 
Structured 
.... 
.. 
echnologie 
DELLTechnologies 
ER PROGRA!

DELLTechnologies 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Structured 
Unstructured 
Semi- 
Structured 
chnologies 
DELLTechnologies 
ER PROGRAM ...DELLTechnologies 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Structured 
Unstructured 
Semi- 
Structured 
chnologies 
DELLTechnologies 
ER PROGRAM

DELLTechnologies 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Structured 
Unstructured 
Semi- 
Structured 
.... 
DELLTechnologies 
echnologie 
ER PROGRAM ...DELLTechnologies 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Structured 
Unstructured 
Semi- 
Structured 
.... 
DELLTechnologies 
echnologie 
ER PROGRAM

#DellAIDa 
Single 
Point 
of Access 
Silo Busting 
DELL Technolc 
PARTNER PROGR. ...#DellAIDa 
Single 
Point 
of Access 
Silo Busting 
DELL Technolc 
PARTNER PROGR.

u Factories based on scaly, pertormance, and environmental 
equirements 
#De 
Extreme Scale 
Mand Duster 
HA Fabris 
Fine Tuning 
HA PELVic 
Fine Tuning 
HA POMOC 
Inferencing 
Myet Cluster 
HA PALTO 
Disaggregated 
Test and 
on 
Inferencingt 
Inferencing+ 
Dev 
Hoved Clublar 
NOG-HÀ 
Pilot 
all 
Medium 
Large 
XL 
DELL Technologies 
DELLTechnologie ...u Factories based on scaly, pertormance, and environmental 
equirements 
#De 
Extreme Scale 
Mand Duster 
HA Fabris 
Fine Tuning 
HA PELVic 
Fine Tuning 
HA POMOC 
Inferencing 
Myet Cluster 
HA PALTO 
Disaggregated 
Test and 
on 
Inferencingt 
Inferencing+ 
Dev 
Hoved Clublar 
NOG-HÀ 
Pilot 
all 
Medium 
Large 
XL 
DELL Technologies 
DELLTechnologie

Ai factories sased on scary, performance, and environm.S.ca 
Thank you to our Sponsors 
DELL Technologie 
requirements 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Thank you to our Sponsors 
NVIDIA 
Leme Se 
NVIDIA 
AMDA 
AMDE 
KIOXIA 
KIOXIA 
PEER 
PER 
$ superna® 
wasab 
superna® 
WasOD 
L'Datadobi 
Diskove 
SeDatadobi 
Diskove 
Test and 
Progress 
Starburst 
Starburst 
Dev 
Strategic Part 
Strategic Partners 
NWWW . computergross 
W CS computergross station 
Mediun 
Large 
XL 
NOW computergross 
DELLTechnologies 
OPACO 
SEC TD SYNNEX Tin 
9029 INGRAMI 
ternal Use - Confidential 
V.Valery 
WESTCOAST 
SEC 
TD SYNNEX 
tin 
DELLTechnologies 
WESTCOME ...Ai factories sased on scary, performance, and environm.S.ca 
Thank you to our Sponsors 
DELL Technologie 
requirements 
PARTNER PROGRAM 
#DellAIDataPlatformSummit 
Thank you to our Sponsors 
NVIDIA 
Leme Se 
NVIDIA 
AMDA 
AMDE 
KIOXIA 
KIOXIA 
PEER 
PER 
$ superna® 
wasab 
superna® 
WasOD 
L'Datadobi 
Diskove 
SeDatadobi 
Diskove 
Test and 
Progress 
Starburst 
Starburst 
Dev 
Strategic Part 
Strategic Partners 
NWWW . computergross 
W CS computergross station 
Mediun 
Large 
XL 
NOW computergross 
DELLTechnologies 
OPACO 
SEC TD SYNNEX Tin 
9029 INGRAMI 
ternal Use - Confidential 
V.Valery 
WESTCOAST 
SEC 
TD SYNNEX 
tin 
DELLTechnologies 
WESTCOME

Common use cases for ;.. 
DELLTechnologies 
PARTNER PROGRAM 
A. AMARILLO 
#DellAIDataPlatformSummit 
Kennedy Miller Mitchell 
AV Northwestern 
Medicine 
Deloitte. 
duostech 
Content 
Digital 
Digital 
Design & 
Codo 
Computer 
creation 
assistant 
twins 
data creation 
generation 
vision 
Produce 
Make community 
Build digital twins 
Improve 
Help developors 
Increase railroad 
blockbuster 
services more 
o research low- 
productivity and 
become more 
safety using 
movies 
accessible 
carbon power 
patient outcomes 
efficient 
automated 
inspections 
RESULTS 
RESULT 
RESULTS 
RESULTS 
RESULT 
RESULTS 
Sox acceleration of fikn 
Brishogy 
20x this Al performance of 
40% improvement a 
80% reduction i 
Increase in accuracy 
production prooves 
previous technologiol 
radiology performance 
wereessing lima 
processing time 
of inspection 
20x performance gain in 
of resido 
Enough 
15x more simulation 
The bespoke ConAJ Ino 
for routine tasks 
capability 
had hang rolled out to 11 
120x performance boog 
sùng npº inspections 
disinbuling production files 
hospitals 
Tomoles 
2x more energy 
commun) 
€2 Langu 
atiiciently 
DELLTechnologies 
DELLTechnologies ...Common use cases for ;.. 
DELLTechnologies 
PARTNER PROGRAM 
A. AMARILLO 
#DellAIDataPlatformSummit 
Kennedy Miller Mitchell 
AV Northwestern 
Medicine 
Deloitte. 
duostech 
Content 
Digital 
Digital 
Design & 
Codo 
Computer 
creation 
assistant 
twins 
data creation 
generation 
vision 
Produce 
Make community 
Build digital twins 
Improve 
Help developors 
Increase railroad 
blockbuster 
services more 
o research low- 
productivity and 
become more 
safety using 
movies 
accessible 
carbon power 
patient outcomes 
efficient 
automated 
inspections 
RESULTS 
RESULT 
RESULTS 
RESULTS 
RESULT 
RESULTS 
Sox acceleration of fikn 
Brishogy 
20x this Al performance of 
40% improvement a 
80% reduction i 
Increase in accuracy 
production prooves 
previous technologiol 
radiology performance 
wereessing lima 
processing time 
of inspection 
20x performance gain in 
of resido 
Enough 
15x more simulation 
The bespoke ConAJ Ino 
for routine tasks 
capability 
had hang rolled out to 11 
120x performance boog 
sùng npº inspections 
disinbuling production files 
hospitals 
Tomoles 
2x more energy 
commun) 
€2 Langu 
atiiciently 
DELLTechnologies 
DELLTechnologies

Common use cases for . .. 
DELLTechnologies 
PARTNER PROGRAM 
Kennedy Miller Mitchell 
A AMARILLO 
Northwestern 
#DellAIDataPlatformSummit 
Deloitte 
duostech 
Content 
Digital 
Digital 
creation 
Design & 
Computer 
assistant 
Code 
twins 
data creation 
generation 
vision 
Produco 
Mako community 
Build digital twins 
blockbuste 
services more 
to research 
Improve 
Help dovolopers 
Increase railroad 
movies 
accessible 
to research low- 
productivity and 
become more 
safety using 
carbon power 
patient outcomes 
automated 
actions 
nspactions 
RESULTS 
RESULTS 
REN. 1.15 
RESULTS 
Box acceleration of film 
ction procom 
20x the Al performance of 
production proccos 
provious tachnologios 
for improvement in 
radiology performance 
processing time 
8x Increase in accuracy 
for routine tasks 
of saporeson 
20x performance g 
Ex more simulation 
The bespoko GenAl to 
120x performance Doos 
distributing production files 
capability 
Pr 
has been roBed out to 11 
smaks 
2x more energy 
efficiently 
DELLTechnologies 
Internal Use . Continental ...Common use cases for . .. 
DELLTechnologies 
PARTNER PROGRAM 
Kennedy Miller Mitchell 
A AMARILLO 
Northwestern 
#DellAIDataPlatformSummit 
Deloitte 
duostech 
Content 
Digital 
Digital 
creation 
Design & 
Computer 
assistant 
Code 
twins 
data creation 
generation 
vision 
Produco 
Mako community 
Build digital twins 
blockbuste 
services more 
to research 
Improve 
Help dovolopers 
Increase railroad 
movies 
accessible 
to research low- 
productivity and 
become more 
safety using 
carbon power 
patient outcomes 
automated 
actions 
nspactions 
RESULTS 
RESULTS 
REN. 1.15 
RESULTS 
Box acceleration of film 
ction procom 
20x the Al performance of 
production proccos 
provious tachnologios 
for improvement in 
radiology performance 
processing time 
8x Increase in accuracy 
for routine tasks 
of saporeson 
20x performance g 
Ex more simulation 
The bespoko GenAl to 
120x performance Doos 
distributing production files 
capability 
Pr 
has been roBed out to 11 
smaks 
2x more energy 
efficiently 
DELLTechnologies 
Internal Use . Continental

Explosion & 
Forecast: Spending & shipped File and Object Storage oy 2028ª 
DELLTechnologies 
Unstructured Data, 
#DellAIDataPlatformSummit 
PARTNER PROGRAM 
Unprecedented 
Opportunity 
Spending 
Total CAGR 
20.3% 
19.7% 
Over 
18.6% 
90% 
Shipped storage capacity 
30.6% 
of data generated by organizations is 
Total CAGR 
of data gen 
30.0% 
Instructured.' 
Scale-out object Scale-out file 
DELL Technologies ...Explosion & 
Forecast: Spending & shipped File and Object Storage oy 2028ª 
DELLTechnologies 
Unstructured Data, 
#DellAIDataPlatformSummit 
PARTNER PROGRAM 
Unprecedented 
Opportunity 
Spending 
Total CAGR 
20.3% 
19.7% 
Over 
18.6% 
90% 
Shipped storage capacity 
30.6% 
of data generated by organizations is 
Total CAGR 
of data gen 
30.0% 
Instructured.' 
Scale-out object Scale-out file 
DELL Technologies

Forecast: Spending & Shipped File and Object Storage oy 20282 
DELL Technologies 
Unstructured Data 
#DellAIDataPlatformSummit 
PARTNER PROGRAM 
Unprecedented 
Opportunity 
Spending 
Total CAGR 
20.3% 
19.7% 
Over 
18.6% 
90% 
Shipped storage capacity 
of data generaled by organizations is 
unstructured.' 
30.0° 
Scale-out object 
Scale-out 
ALL Technologies 
DELL Technologies ...Forecast: Spending & Shipped File and Object Storage oy 20282 
DELL Technologies 
Unstructured Data 
#DellAIDataPlatformSummit 
PARTNER PROGRAM 
Unprecedented 
Opportunity 
Spending 
Total CAGR 
20.3% 
19.7% 
Over 
18.6% 
90% 
Shipped storage capacity 
of data generaled by organizations is 
unstructured.' 
30.0° 
Scale-out object 
Scale-out 
ALL Technologies 
DELL Technologies

Explosion of 
Forecast: Spending & Shipped File and Object Storage by 2028 
DELL Technologies 
Unstructured Data, 
#DellAIDataPlatformSummit 
PARTNER PROGRAM 
Unprecedented 
Opportunity 
Spending 
20.3% 
Total CAGR 
19.7% 
Over 
18.6% 
90% 
Shipped storage capacity 
of data generated by organizations is 
Tolal CAGR 
30.0% 
unstructured. 
Scale-out object 
Scale-out 
LL Technologios 
PARTALA PROGRAM 
DELLTechnologies ...Explosion of 
Forecast: Spending & Shipped File and Object Storage by 2028 
DELL Technologies 
Unstructured Data, 
#DellAIDataPlatformSummit 
PARTNER PROGRAM 
Unprecedented 
Opportunity 
Spending 
20.3% 
Total CAGR 
19.7% 
Over 
18.6% 
90% 
Shipped storage capacity 
of data generated by organizations is 
Tolal CAGR 
30.0% 
unstructured. 
Scale-out object 
Scale-out 
LL Technologios 
PARTALA PROGRAM 
DELLTechnologies

OLE DEFIN- 
TYPES OF U 
ITE. CTURED DA 
STORAGE ENGINES 
#D 
Network Attached Storage (NAS) 
Object Storage 
Definition NAS & a dedicated the storage device that provides local area network (LAN) som with 
Definition: Object storage in a data storage architecture that manages date and objects as opposed to tes 
centralved consolidated disk storage through a standard Ethernet connection 
blocks. Each object includes the data keel, metadata, and a unique koraller. 
Key Features 
Kay Featurcx 
· File-Based Storage: NAS systeme store data in a lémarchécal les system. 
. Accessibility Accessible over a network using honderd file-sharing protocoly like PFS. SMB/CIT'S. 
Object- Based Storage: Stores dals as objects in a flat address space. 
. Performance: Generally offers high performance for the thering and access anthin a local netamente 
. Scalability . Highly scalable, designed to hand's vast amounts of unstructured date. 
. Scalability: Venised scalstadig compared to object storage, adding more storage often requires additional 
· Accessibility; Accessed via APIS (e.g. RESTful APla) rather than traditional file system protocols. 
NAS devices 
Due ability . Often includes bust in data replication and redundancy for high durability. 
Management Typically easier to manage for small to medium-feed businesses 
Management Requires more sophisticated management tools and understanding of APK. 
. Use Cases Ideal for the sharing backups, and home media serveres 
· Use Cours Suitable for cloud garage big data backups, and archived storage. 
DELL Technologies ...OLE DEFIN- 
TYPES OF U 
ITE. CTURED DA 
STORAGE ENGINES 
#D 
Network Attached Storage (NAS) 
Object Storage 
Definition NAS & a dedicated the storage device that provides local area network (LAN) som with 
Definition: Object storage in a data storage architecture that manages date and objects as opposed to tes 
centralved consolidated disk storage through a standard Ethernet connection 
blocks. Each object includes the data keel, metadata, and a unique koraller. 
Key Features 
Kay Featurcx 
· File-Based Storage: NAS systeme store data in a lémarchécal les system. 
. Accessibility Accessible over a network using honderd file-sharing protocoly like PFS. SMB/CIT'S. 
Object- Based Storage: Stores dals as objects in a flat address space. 
. Performance: Generally offers high performance for the thering and access anthin a local netamente 
. Scalability . Highly scalable, designed to hand's vast amounts of unstructured date. 
. Scalability: Venised scalstadig compared to object storage, adding more storage often requires additional 
· Accessibility; Accessed via APIS (e.g. RESTful APla) rather than traditional file system protocols. 
NAS devices 
Due ability . Often includes bust in data replication and redundancy for high durability. 
Management Typically easier to manage for small to medium-feed businesses 
Management Requires more sophisticated management tools and understanding of APK. 
. Use Cases Ideal for the sharing backups, and home media serveres 
· Use Cours Suitable for cloud garage big data backups, and archived storage. 
DELL Technologies

- 
S 
Dell Al Data Platform 
Single Point of Access 
... 
Materialised Views 
... 
Accele 
d Insights 
Fe 
es 
D 
Dell Data Analytics Engine 
Da 
CON 
DELL 
DELLTechr 
PART 
- 4 ...- 
S 
Dell Al Data Platform 
Single Point of Access 
... 
Materialised Views 
... 
Accele 
d Insights 
Fe 
es 
D 
Dell Data Analytics Engine 
Da 
CON 
DELL 
DELLTechr 
PART 
- 4

Piloter exam 
Ethornot swilchoa 
Indroviructure Node mi 
Hardware DNS namo Os 
Stach 
Modulos IP and 
R6815 
MicroKBa 
R$615 
0815-1 
Ubuntu Server 24 04 LTS 
Heim 
KOMAnser 10.4.1. 
2 
R6615 
Microlas 
86615 
8816-2 
Ubuntu Server 24 04 LTS 
KSMaster 104.1. 
RB61 
N 
RG615 
6315 3 
Ubuntu Senny 24 04 LTS 
Helm 
KAMonfar 10.4.1. 
8661 
MicroKOS, 
K&s control & wob ter 
ROS15 
6615-4 
IPuntu Borvar 24 04 LTS 
Kronor 10.4.1. 
R081 
R0015 
70015-5 
Ubuntu Server 24.04 LTS 
2 
Helm 
VMWare esx01 
VASWare Cax0? 
R660 
72103 
ROX760XANH100 
760кД-1 
RX7BOXALL409 
1760xn-2 
Vector DB Storage 
and Kas cluster storage 
1. Install Ubuntu Server 
2. Install Microk8s 
GPUs- KBs LLM serving ter 
embedding & retrieval tor 
3. Install GPU Operator 
4. Install POC Environment (NVAIE, Opens ...Piloter exam 
Ethornot swilchoa 
Indroviructure Node mi 
Hardware DNS namo Os 
Stach 
Modulos IP and 
R6815 
MicroKBa 
R$615 
0815-1 
Ubuntu Server 24 04 LTS 
Heim 
KOMAnser 10.4.1. 
2 
R6615 
Microlas 
86615 
8816-2 
Ubuntu Server 24 04 LTS 
KSMaster 104.1. 
RB61 
N 
RG615 
6315 3 
Ubuntu Senny 24 04 LTS 
Helm 
KAMonfar 10.4.1. 
8661 
MicroKOS, 
K&s control & wob ter 
ROS15 
6615-4 
IPuntu Borvar 24 04 LTS 
Kronor 10.4.1. 
R081 
R0015 
70015-5 
Ubuntu Server 24.04 LTS 
2 
Helm 
VMWare esx01 
VASWare Cax0? 
R660 
72103 
ROX760XANH100 
760кД-1 
RX7BOXALL409 
1760xn-2 
Vector DB Storage 
and Kas cluster storage 
1. Install Ubuntu Server 
2. Install Microk8s 
GPUs- KBs LLM serving ter 
embedding & retrieval tor 
3. Install GPU Operator 
4. Install POC Environment (NVAIE, Opens

Ai ..... . ITECTUR. 
SOFTWARL 
. İNEÜ / MULTITEN ·· 
Consumer Layer 
Application API 
CVCD Ops 
User Specific Environments 
(e.g. Instance of Deepset, NVAIE, Openshift Al. 
Date Scientists 
GenAl Workload 
Any other Software:e.g. Dataiku, H.20, .... ) 
End-User Application 
End-Use Software 
ClearML Pipelines 
AirFlow / Flyte 
Environment 
Sparl 
ClearML Data Process Plane 
Python Custom 
HPC&AI - API Layer 
APV Model Serving 
ClearML Control Plane 
LLMOps/VILOpe Modules 
Job Schođường 
BLURN & KAS 
Orchestr ation 
OMNIA 
Contener Runtime 
Vatual Di 
LTechnologies 
Virtual Ilardware 
THER PROGRAMA 
DELI ...Ai ..... . ITECTUR. 
SOFTWARL 
. İNEÜ / MULTITEN ·· 
Consumer Layer 
Application API 
CVCD Ops 
User Specific Environments 
(e.g. Instance of Deepset, NVAIE, Openshift Al. 
Date Scientists 
GenAl Workload 
Any other Software:e.g. Dataiku, H.20, .... ) 
End-User Application 
End-Use Software 
ClearML Pipelines 
AirFlow / Flyte 
Environment 
Sparl 
ClearML Data Process Plane 
Python Custom 
HPC&AI - API Layer 
APV Model Serving 
ClearML Control Plane 
LLMOps/VILOpe Modules 
Job Schođường 
BLURN & KAS 
Orchestr ation 
OMNIA 
Contener Runtime 
Vatual Di 
LTechnologies 
Virtual Ilardware 
THER PROGRAMA 
DELI

itied cook Architecture tor Al 
Data 
Chedel Genioo 
-220 Recognition1 
End User 
GenAl 
Industry 
Tol Lo 
Standard 
Csong forestedl 
specific AI / ML 
Use Cases 
Use Cases 
Software 
I association 
IWOULD InFerencing 
layer 
AI / ML 
Applications 
A/LA Took 
Rimedia Al listerprico 
Al Software 
Opening 
Costolette 
RunUmo 
BESO ME 
Al 
GPU SOIVETU 
Servers 
CPU 2 
Platform 
Storage 
Security 
Fabric ...itied cook Architecture tor Al 
Data 
Chedel Genioo 
-220 Recognition1 
End User 
GenAl 
Industry 
Tol Lo 
Standard 
Csong forestedl 
specific AI / ML 
Use Cases 
Use Cases 
Software 
I association 
IWOULD InFerencing 
layer 
AI / ML 
Applications 
A/LA Took 
Rimedia Al listerprico 
Al Software 
Opening 
Costolette 
RunUmo 
BESO ME 
Al 
GPU SOIVETU 
Servers 
CPU 2 
Platform 
Storage 
Security 
Fabric
