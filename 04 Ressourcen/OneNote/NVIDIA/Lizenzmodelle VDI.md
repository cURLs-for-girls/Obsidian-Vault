---
tags: [onenote, aivengers]
---

# Lizenzmodelle VDI

Lizenzmodelle für NVIDIA vGPU (A16 und RTX Pro 6000) 
· Lizenztypen: Es gibt drei Haupttypen von Lizenzen - vApps (Application Streaming), vPC (Virtual PC) und vWS (Virtual 
Workstation). Die Wahl der Lizenz richtet sich nach dem gewünschten Einsatzzweck: vWS für professionelle 3D- 
Anwendungen, vPC für Standard-VDI und vApps für Session-basierte Nutzung 
· Lizenzierung pro CCU: Alle Lizenzen werden pro gleichzeitigem Benutzer (Concurrent User, CCU) vergeben, nicht mehr 
pro Gerät oder GPU. Die Lizenzen können als jährliches Abonnement (1, 4 oder 5 Jahre) oder als bleibende (Perpetual) 
Lizenz mit jährlicher Wartung erworben werden 
Technische und administrative Anforderungen 
· Enforcement und Token: Die Lizenzierung wird softwareseitig durchgesetzt. Ein "Client Configuration Token" aus dem 
NVIDIA Licensing-Portal muss auf jeder VM/Gast bereitgestellt werden. Ohne Lizenz wird die Performance nach rund 20 
Minuten beschnitten, nach weiteren 24 Stunden noch stärker reduziert 2 
· Zentrale Lizenzverwaltung: Die Verwaltung und Verteilung erfolgt über den NVIDIA License System Service (Cloud oder 
On-premises via DLS/CLS). Eine direkte Zuweisung auf Hostebene ist nicht mehr vorgesehen 
2 
· vWS-Lizenz deckt vPC ab: Virtuelle Workstations (vWS) beinhalten automatisch alle Funktionen der vPC-Lizenz. Für 
GPU-Passthrough und Bare-Metal Deployments ist (fast immer) eine vWS-Lizenz erforderlich 
1 
2 
Spezifika für A16 und RTX Pro 6000 
. Die NVIDIA A16 ist auf hohe User-Dichte im VDI optimiert. Pro Board können mehrere Profile und Lizenzen parallel 
genutzt werden, z. B. verschiedene Profile pro GPU 
3 . 
· Die NVIDIA RTX Pro 6000 setzt auf die aktuelle Blackwell-Architektur und ist für VDI-Einsätze (als vGPU oder Pass- 
Through) nur in Kombination mit einer entsprechenden vWS-Lizenz lauffähig 
4 
2 ...Lizenzmodelle für NVIDIA vGPU (A16 und RTX Pro 6000) 
· Lizenztypen: Es gibt drei Haupttypen von Lizenzen - vApps (Application Streaming), vPC (Virtual PC) und vWS (Virtual 
Workstation). Die Wahl der Lizenz richtet sich nach dem gewünschten Einsatzzweck: vWS für professionelle 3D- 
Anwendungen, vPC für Standard-VDI und vApps für Session-basierte Nutzung 
· Lizenzierung pro CCU: Alle Lizenzen werden pro gleichzeitigem Benutzer (Concurrent User, CCU) vergeben, nicht mehr 
pro Gerät oder GPU. Die Lizenzen können als jährliches Abonnement (1, 4 oder 5 Jahre) oder als bleibende (Perpetual) 
Lizenz mit jährlicher Wartung erworben werden 
Technische und administrative Anforderungen 
· Enforcement und Token: Die Lizenzierung wird softwareseitig durchgesetzt. Ein "Client Configuration Token" aus dem 
NVIDIA Licensing-Portal muss auf jeder VM/Gast bereitgestellt werden. Ohne Lizenz wird die Performance nach rund 20 
Minuten beschnitten, nach weiteren 24 Stunden noch stärker reduziert 2 
· Zentrale Lizenzverwaltung: Die Verwaltung und Verteilung erfolgt über den NVIDIA License System Service (Cloud oder 
On-premises via DLS/CLS). Eine direkte Zuweisung auf Hostebene ist nicht mehr vorgesehen 
2 
· vWS-Lizenz deckt vPC ab: Virtuelle Workstations (vWS) beinhalten automatisch alle Funktionen der vPC-Lizenz. Für 
GPU-Passthrough und Bare-Metal Deployments ist (fast immer) eine vWS-Lizenz erforderlich 
1 
2 
Spezifika für A16 und RTX Pro 6000 
. Die NVIDIA A16 ist auf hohe User-Dichte im VDI optimiert. Pro Board können mehrere Profile und Lizenzen parallel 
genutzt werden, z. B. verschiedene Profile pro GPU 
3 . 
· Die NVIDIA RTX Pro 6000 setzt auf die aktuelle Blackwell-Architektur und ist für VDI-Einsätze (als vGPU oder Pass- 
Through) nur in Kombination mit einer entsprechenden vWS-Lizenz lauffähig 
4 
2

vApps-Lizenz 
· Wann? Für reine Anwendungs-Virtualisierung, Remote-Desktops und Terminalserver, bei denen keine GPU- 
beschleunigte Windows-Desktops oder 3D-Anwendungen benötigt werden. 
· Beispiel: Ein Unternehmen virtualisiert Microsoft Office, Webbrowser oder SAP über Citrix Virtual Apps/Remote Desktop 
Services. Die User benötigen keine anspruchsvolle Grafikleistung, aber eine gute Basis-Performance und GPU- 
unterstützte Codierung für Remote-Zugriff 1 2. 
vPC-Lizenz 
· Wann? Für grafikbeschleunigte Windows-Desktops im VDI, z.B. CAD light, PowerPoint, Teams, Browser, 
Videokonferenzen. Keine spezielleren 3D-/CAD- oder Workstation-Features erforderlich. 
· Beispiel: Eine Bank stellt Mitarbeitern virtuelle Windows 11 Desktops bereit, auf denen Office, Videokonferenz-Tools 
sowie einfache grafische Anwendungen genutzt werden. Die Visualisierung beinhaltet flüssigen Videostream und User- 
Erfahrungen wie auf physischen Rechnern 
2 
vWS-Lizenz 
· Wann? Für Grafik-Workstations, professionelle 3D- und CAD-Software, Simulation, Bild-/Videobearbeitung u.ä., meist 
mit RTX Pro 6000 oder A16 in "Workstation"-Profilen, GPU-Passthrough oder anspruchsvoller Virtualisierung. 
· Beispiel: Ein Ingenieurbüro bietet Mitarbeitern remote-basierte virtuelle Arbeitsplätze für Autodesk Inventor, Siemens 
NX oder Adobe After Effects. Die Anwendungen verlangen nach maximaler Grafikperformance, CUDA/OpenCL, Echtzeit- 
Visualisierung und vollen 3D-Funktionen 1 
2 ...vApps-Lizenz 
· Wann? Für reine Anwendungs-Virtualisierung, Remote-Desktops und Terminalserver, bei denen keine GPU- 
beschleunigte Windows-Desktops oder 3D-Anwendungen benötigt werden. 
· Beispiel: Ein Unternehmen virtualisiert Microsoft Office, Webbrowser oder SAP über Citrix Virtual Apps/Remote Desktop 
Services. Die User benötigen keine anspruchsvolle Grafikleistung, aber eine gute Basis-Performance und GPU- 
unterstützte Codierung für Remote-Zugriff 1 2. 
vPC-Lizenz 
· Wann? Für grafikbeschleunigte Windows-Desktops im VDI, z.B. CAD light, PowerPoint, Teams, Browser, 
Videokonferenzen. Keine spezielleren 3D-/CAD- oder Workstation-Features erforderlich. 
· Beispiel: Eine Bank stellt Mitarbeitern virtuelle Windows 11 Desktops bereit, auf denen Office, Videokonferenz-Tools 
sowie einfache grafische Anwendungen genutzt werden. Die Visualisierung beinhaltet flüssigen Videostream und User- 
Erfahrungen wie auf physischen Rechnern 
2 
vWS-Lizenz 
· Wann? Für Grafik-Workstations, professionelle 3D- und CAD-Software, Simulation, Bild-/Videobearbeitung u.ä., meist 
mit RTX Pro 6000 oder A16 in "Workstation"-Profilen, GPU-Passthrough oder anspruchsvoller Virtualisierung. 
· Beispiel: Ein Ingenieurbüro bietet Mitarbeitern remote-basierte virtuelle Arbeitsplätze für Autodesk Inventor, Siemens 
NX oder Adobe After Effects. Die Anwendungen verlangen nach maximaler Grafikperformance, CUDA/OpenCL, Echtzeit- 
Visualisierung und vollen 3D-Funktionen 1 
2
