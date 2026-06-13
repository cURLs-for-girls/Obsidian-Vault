---
tags: [onenote, aivengers]
---

# KI/ AI Systeme für beeXact - Schwerpunkt nvidia 

KI/ AI Systeme für beeXact - Schwerpunkt nvidia

Die Firma Beexact ist ein deutsches Unternehmen, das sich auf die Entwicklung und den Vertrieb von Technologien und Lösungen für die Bau- und Maschinenbauindustrie spezialisiert hat. Ein besonderer Fokus liegt dabei auf der präzisen Vermessung und Steuerung von Maschinen, insbesondere im Bereich der Bauwirtschaft. Beexact bietet unter anderem Systeme für die Maschinensteuerung und 3D-Vermessung an, die es ermöglichen, Bauprojekte effizienter und genauer umzusetzen.

Ein typisches Einsatzgebiet der Beexact-Technologien ist die Vermessung von Baugeländen sowie die Steuerung von Baumaschinen, wie Bagger oder Planierraupen, durch GPS-gestützte Systeme. Diese Technologien helfen, Arbeitsprozesse zu optimieren und die Genauigkeit der Arbeiten zu erhöhen, was letztlich zu einer verbesserten Effizienz und Kostensenkung führt.

Zusätzlich zur Hardware bietet Beexact auch Softwarelösungen, die mit den Maschinensteuerungssystemen integriert werden können, um eine nahtlose Datenverarbeitung und -analyse zu ermöglichen. Das Unternehmen hat sich in der Branche einen Namen gemacht, indem es maßgeschneiderte Lösungen für spezifische Anforderungen von Bauprojekten entwickelt.

Mögliche Use Cases:

Automatisierte Maschinensteuerung --> Bagger / Planierraupen autonom steuern

3D-Geländemodellierung und Vermessung --> vermessungsdaten autom. Analysieren und daraus 3D Modell erstellen

Baufortschrittsüberwachung und -optimierung --> automatische Doku und Prognosen bei der Zeitplanung aufgrund hist. Daten

Qualitätskontrolle und Sicherheit --> Überwachung der Bauquali durch Analyse der Bilddaten

Optimierung von Ressourcen und Energieverbrauch --> Energieverbrauch durch Analyse der Betriebsdaten minimieren

Anfrage:

Hier fangen wir nicht bei NULL an, da der Kunde bereits eine KI Lösung auf Basis von Phyton Scripte im Einsatz hat.

Es geht primär um die nvidia Karten, was diese evtl. mehr leisten…

Mittwoch der Kunde fragt expliziet nach nvidia. Wie kommen wir ihn von Intel überzeugt?

Gibt es, wie bei AMD, eine Übersetzung zu CUDA?

Welche GPU nutzen Sie derzeit? Falls nicht, was dann?

Für was nutzt er AI aktuell (Use Cases) -  Was ist sein Ziel?

Wie weit ist er mit diesem Ziel? Stimmt seine Basis hierfür?

Wie viele Leute beschäftigen sich mit diesem Thema?

Wie intensiv nutzt er AI? Welche Workloads hat er?

Evtl von Gaudi überzeugen

Fragen:

Intel Developer Cloud - zum Testen einladen

Gaudi ausnutzen auf Plattform - statt POC Zugang zu Developer Cloud

Auch für CPU und Next Gen

SYCL ist für jede Hardware - Cuda nur für Nvidia

Ja es gibt Cuda Conversion - Cuda zu SYCL C++ --> von dort aus kann man den Code auf jede GPU bringen

Zu AMD GPU kann man dann theoretisch auch wechseln

FPGA - für telco zum programmieren

Folienset überlegen:

Phasen: Training - Modell - Inferenz

CUDA Folie

3 い い 第 
! 第 冖 工 
饕 山 石 
( に ) 0 ト 
- ー 凵 d 
(M009) 
( ト レ > 05 ) 
( M09 一 ) 9- R 朝 ト 4 
肴 、 は 、 リ 、 6 「 ー - 響 、 」 」 ー 6- を p 製 d 一 リ 、 、 ト 、 、 u 、 ー 、 - 当 「 07 き L を こ 0 凵 ■ 一 ま 71 ュ 
一 'E 0 - い 
(MSO 朝 ト 《 ...3 い い 第 
! 第 冖 工 
饕 山 石 
( に ) 0 ト 
- ー 凵 d 
(M009) 
( ト レ > 05 ) 
( M09 一 ) 9- R 朝 ト 4 
肴 、 は 、 リ 、 6 「 ー - 響 、 」 」 ー 6- を p 製 d 一 リ 、 、 ト 、 、 u 、 ー 、 - 当 「 07 き L を こ 0 凵 ■ 一 ま 71 ュ 
一 'E 0 - い 
(MSO 朝 ト 《 
scale up Bly

CUDA (Compute Unified Device Architecture) ist eine von NVIDIA entwickelte parallele Rechenplattform und Programmierschnittstelle (API), die es Entwicklern ermöglicht, die massive Rechenleistung von NVIDIA-Grafikprozessoren (GPUs) für allgemeine Zwecke zu nutzen, die über das reine Rendering von Grafiken hinausgehen.

CUDA bietet Entwicklern eine API und eine eigene Programmiersprache, die auf C/C++ basiert. Entwickler können CUDA nutzen, um rechenintensive Aufgaben direkt auf der GPU anstatt auf der CPU auszuführen --> CUDA = Sprache von Nvidia für die GPUs

Ja, Intel bietet ebenfalls eine Möglichkeit, CUDA-Code auf ihren GPUs auszuführen, ähnlich wie AMD mit ROCm (Radeon Open Compute) eine Übersetzungs- und Entwicklungsumgebung für CUDA-Code bereitstellt. Hier sind die Hauptansätze, die Intel verfolgt:

Intel oneAPI ist eine plattformübergreifende Programmierschnittstelle, die Entwicklern ermöglicht, Code für verschiedene Hardwarearchitekturen (CPUs, GPUs, FPGAs und andere Beschleuniger) zu schreiben.

DPC++ (Data Parallel C++): DPC++ ist eine Erweiterung von C++, die in oneAPI integriert ist und darauf abzielt, parallele Programmierung für verschiedene Hardware-Typen zu erleichtern. Es basiert auf SYCL, einem offenen Standard von Khronos, der die Parallelprogrammierung auf verschiedenen Plattformen ermöglicht.

CUDA-Code in DPC++: Entwickler können vorhandenen CUDA-Code in DPC++ umschreiben, um ihn auf Intel-GPUs lauffähig zu machen. oneAPI bietet auch Tools zur Migration von CUDA-Code, was die Portierung erleichtert.

Level Zero API: Diese low-level API in oneAPI gibt Entwicklern direkteren Zugriff auf die Hardware, ähnlich wie CUDA bei NVIDIA.

1. oneAPI

Intel bietet das DPC++ Compatibility Tool an, das speziell entwickelt wurde, um CUDA-Code automatisch in DPC++ zu übersetzen. Dieses Tool kann eine erhebliche Menge des Codes direkt portieren, was die Entwicklung für Intel-Hardware vereinfacht.

2. Intel DPC++ Compatibility Tool

AMD ROCm: ROCm ist AMDs Open-Source-Computing-Plattform, die es ermöglicht, CUDA-Code auf AMD-GPUs auszuführen. ROCm bietet eine API und Tools, die CUDA ähneln, sowie eigene Compiler und Bibliotheken, die CUDA-ähnliche Funktionalitäten bieten.

Intel oneAPI vs. ROCm: Während ROCm sich speziell auf AMD-GPUs konzentriert, ist oneAPI breiter aufgestellt und zielt darauf ab, Code für eine Vielzahl von Intel-Hardwaretypen zu ermöglichen. Beide Lösungen bieten Tools zur Migration von CUDA-Code, jedoch ist oneAPI hardwareübergreifend und unterstützt mehr als nur GPUs.

Vergleich zu AMD ROCm:

Zusammenfassung:

Intel bietet mit oneAPI und dem DPC++ Compatibility Tool Möglichkeiten, CUDA-Code auf Intel-Hardware auszuführen. Diese Tools erleichtern die Portierung von CUDA-basierten Anwendungen und bieten Entwicklern eine Plattform zur parallelen Programmierung auf Intel-Architekturen, ähnlich wie AMD mit ROCm für seine GPUs.

Steuernummer : genause adresse aktuell und  alte steuernummer von Lu an anslinger

Einzelrechnungen airbnb wo man mwst sieht an sie

Einkommenssteuer - anlage vermietung verpachtung dölle krack neu folgt eintragen -

Formular wohnung - anteile einkünfte - grundstücksgemeinschaft - gesonderte feststellung von amtswegen - finden
