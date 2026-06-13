---
tags: [onenote, aivengers]
---

# BMG

Appliance

HW+SW reicht nicht, auch Verwaltung, Wartung, Mgmt

Gerne über RV sonst Ausschreibung

70 B Modelle bis 200 User - 30-40 User concurrent

Welche Modelle: Deepseek-Modelle weniger Rechenleistung vRAM, Llama nicht kleinste 8 B Modelle, 70 B 3.2, eine Instanz, wie wird Speicher angebunden, ein Rack, das alle Komponenten hat - als Insellösung, Storage Compute Netzwerk, RAG Prozess, über User Interface,

Wie viele Daten werden hin und her geschoben

Nachbauen PCAI - Idee Matthias - Rack mit Komponenten

DAS Storage - jedes Rack ist Insel - Shared Storage

1-2 Netzwerkkarten

Netzwerkanforderungen

Variante 1 und 2 : Groß und klein

Version A: Mindestkonfig: meine nehmen / 2 L40s weiter - vertikal ja, horizontal nein

Version B: weg von local storage - Skalierungskonzept : besser horizontal skalieren ja - nur B anbieten und A aufbohren

Hardware für ein PoC System, welches bei Produktivsetzung skalierbar erweitert werden kann

Betriebssystem + Containerplattform inkl. Lizenzen - möglichst nicht OpenShift - Yiannis

Dienstleistung zur Implementierung und Setup - Bepreisung macht Manu

Dienstleistung zur Schulung der Pilotusergruppe des BMG - Bepreisung macht Mathias, Thies, Yiannis

Dienstleistung zur Schulung des ServiceDesk Personals der CANCOM innerhalb des BMG - wir - Bepreisung macht Mathias, Thies, Yiannis

Supportkontingent 3rd Level der Entwickler - wir

Oppty Frank

Wie soll die Appliance an den "Rest-of-World" angebunden werden?

Wie ist die Netztwerktopologie des Kunden? Hat jedes Rack einen ToR (Top of Rack) Switch? Welche Geschwindigkeit? Kabeltypen?

Dadurch wird entschieden, welche Erweiterungs-Karten bzw. Kartentypen in die Appliance (x86 Server) zu konfigurieren sind.

Thema Virtualisierung: Was its derzeit im EInsatz besipielswiese VMWare? Gibt es Kontingente aus denen wir uns bedienen können (Enterprise Vertrag) oder soll die Lizenz ebenfalls angeboten werden? VMWare gut mit NVAIE

Ein Angebot mit Beschreibung der einzelnen Komponenten - macht Mathias

3 VMs auf dem Host

Hypervisor

Linuxbetriebssystem Bare Metal - darauf container - Zielarchitektur?

NVAIE - GPU-Basis jährliche - Support wenn es wirklich groß wird

Thema Virtualisierung: Was its derzeit im Einsatz beispielsweise VMWare? Gibt es Kontingente aus denen wir uns bedienen können (Enterprise Vertrag) oder soll die Lizenz ebenfalls angeboten werden?

Gibt es im Bereich Storage Präferenzen (Hersteller)? Was ist derzeit im Einsatz und wer ist der Haus und Hof liferant?

Authentifizierung: SSO / IDP was ist im Einsatz

SMALL (AI Optimized) 
DSN Switches 
OOBM Switches 
Al Essentials 
NVIDIA AI Enterprise 
Al Control Plane Nodes 
OpsRamp 
Al Storage Backend 
Kubernetes 
Switches 
109 TB 
Al Storage - HPE 
GreenLake for File 
1 node 
4 GPUS 
Al Worker Nodes - HPE 
ProLiant DL380a ...SMALL (AI Optimized) 
DSN Switches 
OOBM Switches 
Al Essentials 
NVIDIA AI Enterprise 
Al Control Plane Nodes 
OpsRamp 
Al Storage Backend 
Kubernetes 
Switches 
109 TB 
Al Storage - HPE 
GreenLake for File 
1 node 
4 GPUS 
Al Worker Nodes - HPE 
ProLiant DL380a

--> Pizzabox 4xL40s + Alletra Storage (30-50 TB) + Top of Rack Switch --> Baukastenprinzip

Optional: Virtualisierungslizenzen mit Listpreis, falls sie selbst welche haben

Vor 1,5 Jahren RedHat Openshift - K8s Plattform

POC gemacht - geschoben

Bei uns oder über Wettbewerb - RedHat - kein Suse

Cloud Rahmenvertrag - Plattform weitertreiben

Keine Suse Lösung bauen wegen RedHat

Für POC zu groß Openshift, 3-4 Container

Idee: Openshift Single Node - 3 Server Agent Nodes für Hochverfügbarkeit

K8s Subscription wichtig

1 Baremetal Worker Node - miniserver

3 controlplane maschinen

Sensitiv -
