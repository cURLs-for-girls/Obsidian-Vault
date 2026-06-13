---
tags: [onenote, aivengers]
---

# Data Summit Pitch

Vorbereitung für Andi für morgen früh

Einladungstemplate für Dell Sales

Wer bietet ähnliche “AI Factory”-Konzepte an?

Das Konzept einer vorgefertigten, validierten On-Premises-KI-Infrastruktur bieten mittlerweile fast alle großen Hardware-Hersteller an, meist in sehr enger Partnerschaft mit NVIDIA (oft als “NVIDIA AI Computing by Hersteller” oder ähnliche Brandings).

HPE Private Cloud AI (mit NVIDIA): Dies ist der wohl stärkste direkte Konkurrent. HPE bündelt hier Compute, Storage und Networking mit der HPE GreenLake for File Storage (basierend auf VAST Data) und einer eigenen AI-Software-Schicht (HPE Ezmeral).

Lenovo Hybrid AI Solutions: Lenovo bietet mit seinen ThinkSystem-Servern und TruScale-Services ähnliche validierte Designs an, legt den Fokus aber stark auf Edge-Computing und Wasserstoffkühlung.

Cisco Secure AI Factory: Cisco hat ein eigenes Framework, das logischerweise extrem netzwerk- und sicherheitszentriert ist, nutzt aber für Storage oft Partner (wie NetApp).

Nutanix GPT-in-a-Box 2.0: Ein stark hyperkonvergenter Ansatz (HCI), der auf der Nutanix-Plattform läuft und sich eher an Unternehmen richtet, die eine Cloud-ähnliche Erfahrung On-Premises suchen.

Die direkten Konkurrenten zur Dell AI Factory sind:

Was macht die Dell AI Data Platform einzigartig?

1.	Eigene Storage IP im Herzen der KI: Bei vielen Konkurrenten besteht die Storage-Schicht aus zugekauften oder gepartnerten Lösungen (z. B. HPE mit VAST Data oder Cisco mit NetApp). Dell hingegen nutzt mit PowerScale (ehemals Isilon), ObjectScale und dem 2025/2026 neu eingeführten parallelen Dateisystem Project Lightning (bzw. Dell Lightning File System) eigene, massiv skalierbare Storage-IP, die nativ in die Plattform integriert ist.

2.	KI-spezifische Data Engines: Dell hat spezielle Data Engines für unstrukturierte Daten integriert. Dazu gehört beispielsweise ein neuer Kontextspeicher, der gezielt auf das Handling von Vektor- und KV-Caches (Key-Value-Caches) für generative KI (LLMs) ausgelegt ist. Das ist genau dein Spezialgebiet!

3.	Nahtlose Datenaufbereitung (Data Prep): Die Plattform versteht sich nicht nur als dummer Speicher, sondern bietet integrierte Funktionen für Vektorsuche, semantische Suche und hybride Keyword-Suche (in Zusammenarbeit mit Elastic). Sie bereitet die Daten so auf, dass KI-Agenten oder RAG-Systeme sie direkt konsumieren können.

4.	Zero Data Egress / On-Premise RAG: Die Architektur ist darauf ausgelegt, dass Unternehmen RAG (Retrieval Augmented Generation) und Model-Finetuning komplett lokal durchführen können. Die Daten (und das ist der Security-Aspekt) müssen das RZ nicht verlassen, da die Data Platform die Datensilos vor Ort aufbricht und orchestriert.

Während alle Anbieter Server (wie den PowerEdge XE97xx oder HPE Cray) und NVIDIA-GPUs (H100, B200) verbauen, unterscheidet sich Dell durch den Umgang mit den Daten. Die Dell AI Data Platform ist Dells “Unique Selling Proposition” (USP) und hebt sich durch folgende Punkte ab:

Fazit für deine Kunden:Wenn ein Kunde primär nach einer Netzwerk- und Security-Policy-Lösung sucht, ist Cisco oder HPE stark. Wenn der Kunde aber extrem große, unstrukturierte Datenmengen (Petabytes an Dokumenten, Bildern, Logs) hat, die er sicher und ohne Bottlenecks (Stichwort: KV-Cache Management) für LLMs nutzbar machen will, ist Dells Ansatz mit der nativen AI Data Platform und PowerScale momentan sehr schwer zu schlagen.

----------------------------------------------------------------------------------------------------------------------

Die DGX Spark ist ein Mini-Server. Genauer gesagt eine exakte Miniatur-Ausgabe von NVIDIAs großem Rechenzentrums AI-Server, der "DGX". Der größte Mehrwert für deinen Kunden liegt in der Vorhersehbarkeit. Die Spark bietet genau dieselbe Software- und Systemumgebung wie der riesige AI-Hochleistungsserver "DGX". Auf der Spark kann der Kunde verlässlich testen, wie sich seine KI-Anwendungen später im echten Produktivbetrieb verhalten werden. Das macht die Spark zur idealen Testumgebung, denn er spart sich Zeit und minimiert Risiken, indem er seine Software im Kleinformat perfektioniert, bevor er sie dann später auf die großen Systeme im Rechenzentrum ausrollen kann.

Du kannst dem Kunden gerne eine Teststellung anbieten:auf der Seite ist alles beschrieben. Der Kunde kann die Spark dann auch gerne über uns beziehen -> Kosten SEHR überschaubar.

Opener: Tokencounter / Skalierbarkeit -- Prompt der ins Leere läuft wegen Auslastung -- Eva mach mal Folien - aber es scheitert an infrastruktur / laserschwert / nerfgun / closed source vs opensource ("streitgespräch") - nerfs sind die daten die nicht schnell genug ankommen  --> Beschriftung von uns --> Daten nerfgun, GPU daneil, Storage Eva

Begriffe klären von denen jeder denkt dass sie selbstverständlich sind - inkl bilder /Story

Aktuelles reinbringen

AI Factory Summit: AI Factory ist DIE Plattform und dieser Plattform Gedanke (= Referenzarchitektur) formt sich in One 4 All weiter hinten - in der Infrastruktur --> Grundlage für Pitch auf AI Factory Summit // Wir starten vorne mit "Quick Win POC" - wir gewinnen den Trust -> wir beginnen ab Punkt 6/7 die Plattform aufzubauen

AI Factory Summit: das Grundkonstrukt AI Factory erklären / grundlegende Dinge erklären

AI Factory Summit: Anteasern  // Wasserkühlung? -> "99% aller RZs in D sind luftgekühlt -> Vera Rubin? wassergekühlt! Paradigmenwechsel! --> Physical Infrastrcuture "die AI Factory von morgen wird nicht luftgekühlt sein" --> Teaser hierfür einbauen

Schwenk Richtung Storage --> Data Mgmt -->

?Referenzen? --> Perfler und AT Kollegen fragen --> Daniel hat angefragt

GB10 / GB300 / Server --> AI Bundles ? T Shirt Sizes? --> refernzarchitektur  als ausbaustufe " AI Factory"

Christian Rücksprache - was er pitchen wird - was highlighten sie ->versuch mal beim hyperscaler ne GPU zu bekommen -> cooler use case - alles gut gecodet - es scheitert an der Infrastruktur

Lab zeigen aber auch nur High Level --> Int. Property - NVIDIA + Dell

AVENGERS mit einbringen?

ZGX

Opening

Daniel legt los --> klappt nicht

Nerfs schieße ich, die er sammeln muss

Ich komme auf die Bühne und sage STOP - lass uns das strukturiert angehen - es gibt ein validiertes design

Daniel: was?! --> Begriffe klären

Strategie -> One 4 All

Refernzarchiktetur Dell /Nvidia

Storage -- Demohardware - DGX PowerScale Blockstorage Everpure / Objectscale

Luft- und Flüssigkühlung "plakative Aussage"

Closing Nef Gun --> Abschlussbild Secure AI Factory

Nerf Gun Verlosung

Layout Vorschlag - Gerüst - Comp. Center Standard -- Anfangen

Einfacher "Stack" - Compute mit Grafikkarten ist nur ein Teil

Netzwerk

Storage

--> beim Storage kommt Dell ins Spiel

Begriffe:

AI Factory an sich -> Begriff von NVIDIA - Bild Jensen

Training vs. Inferenz

Referenzdesign - technische Blaupause - geprüft und vertrauenswürdig

Token / Cost-per-Token -> die neue Währung

Storage – PowerScale / ObjectScale / Block Storage - die Landschaft hat sich erweitert -->
