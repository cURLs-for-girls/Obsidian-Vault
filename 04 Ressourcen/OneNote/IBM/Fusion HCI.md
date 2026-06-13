---
tags: [onenote, aivengers]
---

# Fusion HCI

IBM AI Storage & FUSION HCI im Portfolio der CANCOM

CANCOM HW Strategie in Abstimmung mit Herstellerstrategie

HCI:

Schlüsselfertig

Archikteturprinzip STX mit Nvidia

Solange DPU vorhanden

Kernfagen:

Welcher USP: Wie differenziert sich IBM Fusion HCI konkret von der “Dell AI Factory”, insbesondere da Dell bereits eine stark optimierte Datenpipeline und NVIDIA-validierten PowerScale-Speicher bietet ?

Welche Zielgruppe: Welche exklusiven Use Cases oder Kundensegmente decken wir mit IBM ab, die wir mit unseren bestehenden Rahmenwerken von HPE und Dell aktuell nicht bedienen können ?

Welche Zielgruppe: Zielt IBM Fusion HCI hauptsächlich auf Kunden ab, die bereits fest im Red Hat OpenShift- oder IBM-Ökosystem verankert sind, oder gibt es starke Argumente für Neukunden ?

Infrastruktur: unterstützt Fusion HCI die neusten B300 Karten?

Fokus der Infrastruktur: Training / Finetuning oder Inferenz?

Differenzierungsmerkmal 
Dell Al Factory mit NVIDIA 
IBM Fusion HCI 
Architektonischer Fokus 
High-Performance Hardware- 
Container-native App- 
Integration & rechenintensive 
Entwicklung (OpenShift) & 
LLMs 
1 3 
Hybrid-Cloud 
4 
5 
Storage-Basis 
Dell PowerScale (optimiert für 
IBM Storage Scale (Paralleles 
KV-Cache-Offloading & NVIDIA- 
Filesystem für extreme 
Pipelines) 2 
Skalierbarkeit) 
4 
Software-Stack 
NVIDIA Al Enterprise & Base 
Red Hat OpenShift & IBM 
Command 
1 
watsonx 
4 
Flexibilität 
Stark auf NVIDIA-Hardware 
Hohe Flexibilität bei hybriden 
optimiert und validiert 
1 
Umgebungen und 
Datensouveränität 
4 
3 ...Differenzierungsmerkmal 
Dell Al Factory mit NVIDIA 
IBM Fusion HCI 
Architektonischer Fokus 
High-Performance Hardware- 
Container-native App- 
Integration & rechenintensive 
Entwicklung (OpenShift) & 
LLMs 
1 3 
Hybrid-Cloud 
4 
5 
Storage-Basis 
Dell PowerScale (optimiert für 
IBM Storage Scale (Paralleles 
KV-Cache-Offloading & NVIDIA- 
Filesystem für extreme 
Pipelines) 2 
Skalierbarkeit) 
4 
Software-Stack 
NVIDIA Al Enterprise & Base 
Red Hat OpenShift & IBM 
Command 
1 
watsonx 
4 
Flexibilität 
Stark auf NVIDIA-Hardware 
Hohe Flexibilität bei hybriden 
optimiert und validiert 
1 
Umgebungen und 
Datensouveränität 
4 
3

1. IBMs Rolle in der neuen NVIDIA STX-Architektur

Ihre Beobachtung bezüglich der GTC ist absolut korrekt. NVIDIA hat auf der GTC 2026 die NVIDIA STX (AI-Native Data Platform Architecture) vorgestellt. Dies ist ein Paradigmenwechsel, da Storage nun als “Context Memory” direkt in den Datenpfad integriert wird.

•	Einordnung: IBM ist einer der Co-Entwickler dieser STX-Architektur. IBM Storage Scale (das auf der IBM Storage Scale System 6000 Hardware läuft) nutzt diese Architektur, um als intelligenter Datenlayer zu fungieren. Das bedeutet, dass IBM nicht einfach nur “schnell Daten liefert”, sondern die Datenaufbereitung (z. B. durch cuDF-Integration für Analytics) und das RAG-Management direkt auf Storage-Ebene beschleunigt.

•	Presales-Argument: Wenn bei Lenovo oder Dell Projektregistrierungen (Deal Regs) blockiert sind, ist IBM Fusion/Storage Scale mit der STX-Zertifizierung und Validierung für DGX BasePOD und SuperPOD ein absolut gleichwertiger, wenn nicht gar bei komplexen Daten-Pipelines überlegener “Plan B” (oder Plan A) im High-End-Segment

2. Differenzierung von Dell AI Factory und PowerScale

Dell vertreibt die “AI Factory” sehr erfolgreich als validierte Turnkey-Lösung, stark gebündelt mit NVIDIA-Hardware und PowerScale-Storage.

•	Einordnung: Dell PowerScale ist massiv skalierbar und extrem verlässlich als klassischer Scale-Out-NAS. Die KI-Sicht Ihres Kollegen hat jedoch recht: Dell liefert primär hochperformanten, konformen Storage. IBM hingegen geht mit Content-Aware Storage und der Integration in watsonx.data über die reine Bereitstellung von IOPS hinaus und integriert Governance und Vektorisierung.

•	Presales-Argument: Bei Kunden, bei denen das reine GPU-Sizing im Vordergrund steht (z.B. maximale TFLOPS), reicht oft Dell. Sobald Kunden aber komplexe Datenfragmentierungen haben, globale Namespaces (Active File Management) benötigen oder strenge Compliance-Anforderungen (Sovereign AI) haben, bietet IBM handfeste architektonische Mehrwerte.

3. Fokus auf Inferenz und Agentic AI (OpenClaw/NemoClaw)

Da Sie sich viel mit Inference-Optimierung und Agent-Frameworks (NemoClaw) beschäftigen, ist die STX-Architektur extrem relevant.

•	Einordnung: Die neue NVIDIA STX-Plattform (mit dem CMX Context Memory) zielt explizit darauf ab, den Speicherdurchsatz für Inferenz und Agentic AI massiv zu steigern (bis zu 5x höherer Token-Durchsatz). IBM positioniert seinen Storage genau für diese datenintensiven, hochdurchsatz-orientierten Inferenz-Pipelines.

•	Presales-Argument: Für Kunden, die Agenten-Systeme (wie NemoClaw) bauen, bei denen große Mengen an Kontext oder RAG-Daten in Echtzeit in den KV-Cache der GPUs geladen werden müssen, bietet die IBM/NVIDIA-STX-Kombination messbare Vorteile bei den Latenzen.

Die KI-Zusammenfassung des Kollegen ist technisch akkurat und spiegelt die neuesten GTC-2026-Ankündigungen wider. Sie können bestätigen, dass IBM durch die Co-Entwicklung der STX-Architektur aktuell einen Vorsprung in der “Intelligenz” des Datenpfades hat, während Dell (mit PowerScale) oft über die schiere Marktmacht der integrierten Hardware-Server-Bundles gewinnt. Der Pitch für IBM bei CANCOM sollte sich daher stark auf Kunden mit komplexen Daten-Workflows, RAG-Pipelines und hybriden Cloud-Anforderungen fokussieren.

---------------------------------------------------------------------

2 blickwinkel

Storage von datenverarbeitung schwer zu trennen

Übergang von infra zu SW

Was ist AI Storage, wofür brauche ich den?

Was nehme ich wann?

Grundlegend Storage

Was ist RAG, was ist bei Infrerenz wichtig

Lösungsebene: Und was gibt’s

IBM - Scale System - USP? - über AFM - externe Datenquellen anflanschen pärsentiert es als interner Speicher - ohne kopieren

Storage Plattform mit 3 Herstellern - Dell Everpure IBM

ESS 6000 hat Bluefield drin

Bluefield

Nvlink Ansatz

Basisdesign -

Extended Design - mit Storage Scale

CANCOM Linie - 4.5. - Statement of Direction - AI Storage - Teil - werden wir hier Energie aufwenden?

Hey Olli,

Danke für die Einordnung und den Hinweis auf die Scale-Technologie. Das ist ein interessanter Blickwinkel und ich verstehe die Intention, Storage nicht nur auf reine I/O-Performance zu reduzieren.

Trotzdem würde ich an einer Stelle einhaken. Der Vergleich zwischen IBM Fusion und Dell PowerStore hinkt aus meiner Sicht strukturell ein wenig, weil es sich dabei nicht wirklich um gleichwertige Produkte handelt. IBM Fusion ist eine vollständige HCI-Lösung, also Compute, Storage und Networking in einer Appliance, mit OpenShift direkt integriert. Dell PowerStore ist dagegen eine reine Storage-Appliance, also nur ein Baustein in einem breiteren Stack. Das sind verschiedene Produktkategorien.

Wenn man die Scale-Technologie als Bezugspunkt nimmt, dann wäre Dell PowerScale der deutlich passendere Vergleichspartner. PowerScale ist Dells Scale-out NAS-Plattform, explizit AI-Factory-validiert, unterstützt ebenfalls GPUDirect Storage, NFS over RDMA und parallele Datenzugriffe für AI-Pipelines. Allerdings wäre auch das kein 1:1-Vergleich, weil PowerScale eben kein All-in-One ist, sondern Teil der Dell AI Factory.

Das ist aus meiner Sicht aber keine Schwäche, sondern eine bewusste Designentscheidung: Dell setzt auf disaggregierte, komponentenweise skalierbare Architektur statt auf eine fest verdrahtete Appliance. Ob HCI oder disaggregierter Stack die bessere Wahl ist, hängt letztlich stark vom Kundenprofil ab.
