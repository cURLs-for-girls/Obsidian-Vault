---
tags: [onenote, aivengers]
---

# AI Netzwerk

Erweitertes Hochgeschwindigkeitsnetzwerk für GPU-GPU-Kommunikation in Clustern, optimiert für Multi-GPU-Workloads.

NVLink Switch-Systeme:

Netzwerke mit extrem niedriger Latenz und hoher Bandbreite für Datenzentren.

Beispiele: NVIDIA Quantum-2 InfiniBand.

AI-optimierte Ethernet- und InfiniBand-Lösungen:

Technologien wie NVIDIA NVLink C2C oder UCIe (Universal Chiplet Interconnect Express) ermöglichen effizientere Kommunikation zwischen Prozessoren.

Chip-to-Chip-Kommunikation:

Netzwerk- und Interconnect-Technologien

Das Bild zeigt die drei Arten von Netzwerken – Front-End Fabric, Back-End Fabric und Out-of-Band Management Fabric – und deren typische Einsatzszenarien in einem Cluster-Setup. Ich erkläre dir die Begriffe und helfe dir zu verstehen, welche dieser Netzwerke für einen Standalone-Server relevant sind.

Funktion: Zuständig für den Datenaustausch zwischen Benutzern/Clients und dem Server/Cluster.

Eigenschaften: Hohe Bandbreite und interaktive Antwortzeiten sind erforderlich, um Daten und Anwendungen zugänglich zu machen. Besonders wichtig für die Optimierung von Job-Abschlusszeiten und die Benutzererfahrung bei trainierten Anwendungen.

Beispiel-Kommunikation: Eingaben von Nutzern (z. B. Bilddaten für eine Analyse) werden über das Frontend-Netzwerk in den Cluster eingespeist, und Ergebnisse werden zurückgegeben.

1. Front-End Fabric (Frontend-Netzwerk) - unbedingt notwendig

Du benötigst auf jeden Fall ein Frontend-Netzwerk, da es der Hauptzugangspunkt für Daten und Benutzerkommunikation ist.

Für einen Standalone-Server:

--> 10-100 GB/s ausreichend

Funktion: Verbindet die Rechenressourcen innerhalb eines Clusters miteinander, z. B. GPUs und CPUs.

Eigenschaften: Optimiert für extrem niedrige Latenz und sehr hohe Bandbreite, da es für GPU-GPU- oder GPU-CPU-Kommunikation bei Modellen, die in Echtzeit trainiert oder inferenziert werden, unerlässlich ist.

Einsatzgebiet: Wichtig in Cluster-Setups, in denen viele GPUs zusammenarbeiten und ständig Daten austauschen müssen (z. B. beim Training eines KI-Modells).

2. Back-End Fabric (Backend-Netzwerk) - nur wenn Cluster

Ein Back-End-Netzwerk ist nicht notwendig, da keine Kommunikation zwischen mehreren Knoten oder GPUs innerhalb eines Clusters stattfindet.

Funktion: Dediziertes Netzwerk für das Management der Infrastruktur, unabhängig von den produktiven Netzwerken. Wird für Aufgaben wie Monitoring, Firmware-Updates und Hardware-Fehlerbehebung verwendet.

Eigenschaften: Unterstützt „Day-0“ bis „Day-N“-Operationen, was die gesamte Lebensdauer der Geräte abdeckt.

Vorteil: Der Server/Cluster bleibt verwaltbar, selbst wenn die produktiven Netzwerke ausfallen.

3. Out-of-Band Management Fabric (Management-Netzwerk) - empfehlenswert, muss auch nicht sehr "breit" sein

--> 1 GB/s ausreichend

Ein Management-Netzwerk ist optional. Es kann sinnvoll sein, wenn du Remote-Management benötigst (z. B. IPMI oder iDRAC für Dell-Server), aber es ist kein Muss für die reine Funktionalität eines Standalone-Servers.

Frontend-Netzwerk: Unbedingt erforderlich, da es die Schnittstelle zur Außenwelt bildet.

Backend-Netzwerk: Nicht notwendig, da kein Cluster vorhanden ist.

Out-of-Band-Management: Optional, je nach Bedarf an Remote-Überwachung und -Wartung.

Fazit für einen Standalone-Server

200 Gbps pro Knoten reichen in der Regel aus.

Backend kann über 100G oder 200G Ethernet oder InfiniBand realisiert werden.

Kleine Cluster (4–8 GPUs):

Skalierung auf mindestens 400 Gbps pro Knoten ist erforderlich.

Technologien wie HDR InfiniBand (400 Gbps) oder NVLink sind hier notwendig.

Mittlere bis große Cluster (16–64 GPUs oder mehr):

Bandbreitenanforderungen gehen in die Terabit-Dimensionen.

Spezielle Netzwerke mit optischen Technologien oder NVSwitches sind Standard.

Exascale-Cluster (z. B. Supercomputer):

Praxiswerte für KI-Training:

1. Compute Network

Zweck:

• Dient der Kommunikation zwischen Compute-Nodes (Servern) in einem Cluster oder Rechenzentrum.

• Transportiert Daten für Rechenprozesse, z. B. für verteiltes Computing, HPC (High-Performance Computing) oder AI-Training.

Typische Eigenschaften:

• Hohe Bandbreite (z. B. 25G, 100G, 400G Ethernet oder InfiniBand).

• Niedrige Latenz für schnelle Datenverarbeitung.

• Verbindungen zwischen CPU/GPU-Servern für Workload-Skalierung.

Beispiel:

• In einem KI-Cluster verbindet das Compute Network mehrere GPU-Server, um Modelle verteilt zu trainieren.

2. Storage Network

• Verbindet Server mit Storage-Systemen, um große Datenmengen effizient bereitzustellen.

• Überträgt Daten zwischen Datenbanken, NAS (Network-Attached Storage) oder SAN (Storage Area Network).

• Hohe Datendurchsatzrate (z. B. 32G Fibre Channel, 100G Ethernet für NVMe-over-Fabric).

• Oft separiert vom Compute Network, um Engpässe zu vermeiden.

• Kann Block-, Datei- oder Objekt-Speicher unterstützen.

• Ein HPC-Cluster nutzt ein Storage Network mit NVMe-over-Fabric, um große Datenmodelle für die KI-Inferenz schnell zu laden.

3. In-Band Management Network

• Verwaltung und Steuerung von Systemen über das gleiche Netzwerk, das auch für Datenverkehr genutzt wird.

• Management-Befehle laufen über das gleiche Netzwerk wie Compute- oder Storage-Daten.

• Keine zusätzliche Hardware nötig, da es bestehende Netzwerke nutzt.

• Günstiger, aber riskanter, da Verwaltungsverkehr mit normalem Traffic vermischt ist.

• Sicherheitsprobleme möglich, da Angreifer leichter Zugriff erlangen können.

• Ein Administrator verwaltet Server über SSH oder eine Web-GUI über das reguläre Netzwerk.

4. Out-of-Band Management Network

• Dediziertes Netzwerk für die Verwaltung von Servern, unabhängig vom normalen Datenverkehr.

• Zugriff auf Server auch bei Netzwerkproblemen oder Systemausfällen möglich.

• Nutzt separate physische Netzwerkkarten oder dedizierte Schnittstellen (z. B. iDRAC, iLO, BMC).

• Sicherer, da Management-Zugriff von produktivem Traffic getrennt ist.

• Ermöglicht Remote-Zugriff auf das BIOS, Neustarts oder Fehlerdiagnosen.

• Ein Administrator greift über iDRAC auf einen Server zu, der abgestürzt ist, und startet ihn remote neu.

Netzwerktyp Zweck Typische Bandbreite Beispiel-Technologie

Compute Network Verbindet Compute-Nodes für Rechenaufgaben 25G, 100G, 400G InfiniBand, Ethernet --> wenn man Server miteinander verbindet - infiniband dann

Storage Network Verbindet Server mit Storage-Systemen 32G FC, 100G Ethernet Fibre Channel, NVMe-oF -- kann man auch infiniband aber auch je nach use case

In-Band Management Verwaltung über bestehendes Netzwerk Shared mit Compute/Storage SSH, Web-UI

Out-of-Band Management Dediziertes Management-Netzwerk 1G, 10G iDRAC, iLO, BMC

--> eigentlich nur ein Mgmt Netzwerk - zwei sind übertrieben

Für GPU-zu-GPU Kommunikation

ROCEv2 vs. Infiniband

Ethernet vs. Infiniband - Ethernet empfehlenswerter, da weiter verbreitet und auch gute Durchsätze (400GB/s statt 800 GB/s bei Infiniband)

Bei Infiniband wird die CPU komplett entlastet - bei ROCE nur weitestgehend - solange man aber kein groß skaliertes Trainihng macht oder einen Supercomouter braucht reicht Ethernet

Nvidia biete ja auch selbst Etherntfäige Switche an (Mellanox) - deswegen hier muss es auch nicht Nvidia sein - kann auch Cisco sein

Welche Netzwerke gibt es im GPU-Cluster?

1️⃣ GPU-Interconnect (z. B. NVLink, NVSwitch)

• Nur innerhalb eines einzelnen Servers

• GPUs kommunizieren direkt über NVLink (bis zu 900 GB/s bei NVSwitch)

• Völlig unabhängig vom externen Netzwerk!

2️⃣ High-Speed Cluster-Netzwerk (InfiniBand oder RoCE)

• Für Server-übergreifende Kommunikation zwischen GPUs

• InfiniBand (bis zu 800 Gbit/s) oder RoCE (bis zu 400 Gbit/s)

• Dedizierte Netzwerk-Hardware nötig (NICs & Switches)

• Kundennetzwerk hat hier keinen Einfluss!

3️⃣ Standard-Kundennetzwerk (1G/10G Ethernet)

• Verbindung zum normalen Unternehmensnetzwerk

• Wird für Datenmanagement, Steuerung, Benutzerzugriff genutzt

• Keine Rolle für GPU-zu-GPU-Berechnungen!

Weiteren host - cpu anfangen - virtualisiert - kmu - vmware enterprise - overhead -

Enterprise /kmu ?

Virtualisierung - welche nutzt er

Feedback einholen - andere
