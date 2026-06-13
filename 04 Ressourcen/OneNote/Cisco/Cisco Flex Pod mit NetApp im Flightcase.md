---
tags: [onenote, aivengers]
---

# Cisco Flex Pod mit NetApp im Flightcase

BOM mit Cisco Doku vergleichen:

https://www.cisco.com/c/en/us/td/docs/unified_computing/ucs/UCS_CVDs/flexpod_ai_generative_ocp_m7.html

--> AFF A90

Cisco UCS X9508 Configured Chassis - UCSX-9508-U - Ethernet Switches ......CISCO

Komponenten laut CVD:

●    Cisco UCS X9508-Chassis mit Cisco UCSX-I-9108-100G Intelligent Fabric-Modulen, Cisco UCS 9416 X-Fabric-Modulen und Cisco UCS X210c M7- und X210c M6-Rechenknoten

●    Cisco UCS 6536 Fabric Interconnects der fünften Generation zur Unterstützung von 10/25/40/100GbE-Konnektivität von verschiedenen Komponenten

●    Cisco UCS C220 M7 und C240 ​​M7 Rack Mount Server, die direkt an die Fabric Interconnects angeschlossen sind

●    Hochgeschwindigkeits-Switching Cisco Nexus 93600CD-GX auf Basis von Cisco NX-OS, das für die Unterstützung von Konnektivität bis zu 400GE ausgelegt ist

●    NetApp AFF A800 End-to-End-NVMe-Speicher mit bis zu 100GE-Konnektivität

●    NVIDIA A100-80 GPUs in Cisco UCS X440p PCIe-Knoten, die über Cisco UCS X-Fabric mit Cisco UCS X210c M7-Servern verbunden sind

--> BOM steht noch aus

Wir werden Openshift AI und VMWare dort drauf installieren

Cisco UCS X9508 Server Chassis Installation Guide - Overview [Cisco UCS ......2 
3 
1 
0 
C 
4 
OL 
O 
0 
0 
308910

Zugehöriges Bild, Diagramm oder Screenshot...Cisco Unified 
Legend 
Computing System 
100 Gbps converged 
Cisco UCS 6536 Fabric 
Interconnect, Cisco UCS 
- 100 Gbps Ethernet 
×4 
x4 
X9508 Chassis with 9108- 
- 25 Gbps Converged 
100G IFM and 9416 X- 
Fabric, Cisco UCS M7 
Servers, Cisco UCS X440p 
with Up To 2 NVIDIA A100- 
80 GPUS 
... 
vPC 
vPC 
Cisco Nexus 
93600CD-GX 
vPC 
vPC 
NetApp storage 
controllers 
AFF-A800

Flightcase Köln - Standort besser

Flexpod Zertifieriung ausgelaufen Maik - vom Hersteller vorgegeben

Wohin stellen? - FFM?
