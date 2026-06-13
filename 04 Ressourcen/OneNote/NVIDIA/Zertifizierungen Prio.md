---
tags: [onenote, aivengers]
---

# Zertifizierungen Prio

•	Warum Platz 1? Das ist die „Königsklasse“ der AI-Hardware. Auch wenn Kunden vielleicht keine volle DGX kaufen, ist die DGX-Architektur (HGX Boards, NVLink-Topologie) die Referenzarchitektur für alle AI-Server (auch von Dell, HP, Lenovo).

•	Dein Nutzen: Du lernst hier, wie GPU-Cluster physisch aufgebaut sind, wie Kühlung und Stromversorgung (dein 450W vs. 600W Thema!) im Rack funktionieren.

1. DGX AI Compute Systems Technical Curriculum (2025)

•	Warum Platz 2? Hier geht es um die nackten GPU-Specs der Data-Center-Karten (H100/H200, B100/B200, L40S).

•	Dein Nutzen: Das ist dein „Brot-und-Butter“-Wissen. Wenn ein Kunde fragt: „Soll ich für Inferenz eine L40S oder eine H100 PCIe nehmen?“, findest du hier die technischen Argumente (Speicherbandbreite, FP8-Leistung).

2. Compute Technical Curriculum (2025)

•	Warum Platz 3? Hardware verkauft sich heute nur über den Use-Case. Deine Fragen zum KV-Cache und Inference Sizing gehören genau in dieses Modul.

•	Dein Nutzen: Du lernst, die Brücke zwischen „Kunde will Llama 3 70B nutzen“ und „Kunde braucht X Terabyte VRAM“ zu schlagen. Das macht dich vom Hardware-Verkäufer zum Lösungs-Berater.

3. Generative AI - Technical AI Advisor Curriculum

•	Warum Platz 4? Hardware ist nutzlos ohne Software. Deine Fragen zu MPS, vGPU und Run:AI fallen in diesen Bereich (NVIDIA AI Enterprise Software Stack).

•	Dein Nutzen: Du verstehst, welche Software-Lizenzen (NVAIE) du zur Hardware dazu packen musst, damit Features wie der GPU Operator oder Multi-Node-Scaling überhaupt funktionieren.

4. NVIDIA AI Technical Curriculum (2025)

•	Warum Platz 5? AI-Hardware skaliert nicht mehr einzeln. Sobald du mehr als einen Server hinstellst (Distributed Training), wird das Netzwerk (Infiniband / Spectrum-X Ethernet) zum Flaschenhals.

•	Dein Nutzen: Ein AI-Consultant, der GPUs verkauft aber das Netzwerk vergisst, baut langsame Cluster. Dieses Wissen schützt dich davor.

5. Networking Technical Curriculum (2025)

•	NPN 5-Star Program (NIM and Blueprints): Sehr wichtig strategisch (das ist NVIDIAs neue Software-Strategie), aber weniger „Hardware-nah“. Mach das als Nummer 6.

•	Visualization Technical: Nur relevant, wenn du auch CAD-Workstations oder Omniverse-Projekte betreust. Wenn dein Fokus rein auf „AI Rechenleistung“ liegt, ist Compute wichtiger als Visualization. Da du aber nach der RTX 6000 Ada (eine Pro-Viz Karte im Server-Einsatz) gefragt hast: Ein Blick hier hinein schadet nicht, da die RTX-Karten technisch oft im Visualization-Track behandelt werden, auch wenn sie für AI genutzt werden. Tausch-Tipp: Falls du fast nur RTX-Server (wie im Bild oben) und keine HGX/H100 Systeme verkaufst, tausche Networking gegen Visualization Technical.

Einordnung der anderen (Optional):
