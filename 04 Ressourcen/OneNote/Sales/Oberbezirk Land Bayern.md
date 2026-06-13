---
tags: [onenote, aivengers]
---

# Oberbezirk Land Bayern

Wichtigsten daten - gesundheitsdaten - souverän - keine cloudlösung

KIS System im RZ

Volkmann ist einkauf - anderer Bereichsleiter

Plattform CCA - 2 instanzen - 150 / 350 MA - concurrent User

Token / Vektordatenbank

Use Cases, was soll gemacht werden

Gpt oss 120 b

10 concurrent User - wie viele Token? 2000 Token Frage und Antwort

2-3 Sätze lang durchscnittlich

Anzahl Dokumente pro anfrage 3 seiten (200 dokumente)

POC (also weg damit) oder MVP - bleibt danach

2 Instanzen weil beide in der open ai umgebung liegen

Klinikseite - Bezirkseite - müssen das trennen

Use Case: Fragen zum Unternehmen - also RAG-Anbindung - 2. Teil Texte zusammenfassen / Stichpunkte rausarbeiten - Recherchefragen - optional: aufwändig generierung / bilder

HPE Server soll es sein

Luftkühlung?

KW pro Rack?

Container deployment (docker?)

CCA von Frank vorgestellt - Schnittstellen Thematik - OpenAI Standard sprechen, dann geht das - Einbindung in n8n zB.

CCA:

Start Richtung Textverarbeitung

Websuche --> durch Anbindung Modell

Plus RAG : für POC Scope - > 350 Nutzer - 50 TB - Netapp

Virtualisierungsumgebung - was da frei ist ->

Storagefrage : haben sie was. Brauchen sie?

GPU Hardware -

1 Server HPE groß mit 1-2 H200s

Schritt: bis ende April 30.4. konzeption - detail: anforderungen - was ehißt das an Kosten? Wie bereitstellen? - 1 HPE Server ? Oder 10?

Schritt bis um 31.10. umsetzen - braucht die Entscheidung - Budget muss angefragt werden

Konfig für 10000 User

CPU: 2× AMD EPYC 9354, 32 Cores, 3,25 GHz, 280 W

RAM (Summe): 8× 64 GB DDR5‑4800 = 512 GB

GPU‑Slots: Chassis‑Option 2 DW‑Slots ( 2 von 2)

GPUs: 2× NVIDIA H200 NVL (inkl. 2‑Way NVLink Bridge)

Storage: 2× 3,84 TB NVMe Gen4 EDSFF (Raid 1: 3,84 TB Usable) + NS204i‑u v2 480 GB Boot‑OS

Netzwerk: Broadcom BCM57414 OCP3, 2× 10/25 GbE SFP28

DL385 Gen11 – „DL385 Gen11 2/2x H200 #1“ Preis 151K Euro

CPU: 2× Intel Xeon 6738P, 32 Cores, 2,9 GHz, 270 W

RAM (Summe): 8× 64 GB DDR5‑6400 = 512 GB

GPU‑Slots frei: Chassis‑Option „8 Double‑Wide“ → 6 DW‑Slots frei (von 8)

Storage: 2× 3,84 TB NVMe Gen5 EDSFF (Raid 1: 3,84 TB Usable) + NS204i‑u v2 480 GB Boot‑OS

DL380a Gen12 – „DL380a Gen12 2/8x H200 #1“ Preis 172K Euro

CPU / Accelerators: 2× NVIDIA GH200 NVL2 Grace Hopper       Summe 144 Arm Neoverse V2 cores (Dual‑Superchip‑Enablement)

RAM (Summe): LPDDR5X 960GB

GPU‑Slots frei: Plattform ist auf das 2‑Way‑GH200‑Bundle ausgelegt → 0 frei

GPUs: 2× GH200 NVL2 Summe 288 GB VRAM

Netzwerk: NVIDIA/Mellanox MCX631432AS‑ADAI OCP3, 2× 10/25 GbE SFP28

DL384 Gen12 – „DL384 Gen12 2/2x GH200 #1“ 90K Euro

GPU‑Slots frei: Chassis‑Option „4 Double‑Wide“ → 2 DW‑Slots frei (von 4)

DL380a Gen12 – „DL380a Gen12 2/4x H200 #1“ 167K Euro

CPU: 2× AMD EPYC 9124, 16 Cores, 3,0 GHz, 280 W

RAM (Summe): 4× 64 GB DDR5‑4800 = 256 GB

GPUs: 1× RTX6000 B Pro 96 GB

DL385 Gen11 – „DL385 Gen11 1x RTX6000 #1“ Preis 43K Euro

CPU: 2× AMD EPYC 9354, 32 Cores, 3,25 GHz, 280 W

RAM (Summe): 8× 64 GB DDR5‑4800 = 512 GB

GPU‑Slots: Chassis‑Option 2 DW‑Slots ( 1 von 2)

GPUs: 1× NVIDIA H200 NVL

DL385 Gen11 – „DL385 Gen11 1/2x H200 #1“ Preis 105K Euro

RAM (Summe): 8× 64 GB DDR5‑6400 = 512GB

GPU‑Slots frei: Chassis‑Option „8 Double‑Wide“ → 7 DW‑Slots frei (von 8)

DL380a Gen12 – „DL380a Gen12 1/8x H200 #1“ Preis 120K Euro

GPU‑Slots frei: Chassis‑Option „4 Double‑Wide“ → 3 DW‑Slots frei (von 4)

DL380a Gen12 – „DL380a Gen12 1/4x H200 #1“ 113K Euro

Konfigs Start POC

Hier wären alle möglichen Konfigs, einmal welche Möglichkeiten es gibt für den Produktivbetrieb mit 10000 User und einmal die Konfigs für den POC.

Ich sehe kaufmännisch und technisch folgende Konfigs für sinnvoll an:

10000 User

DL380a 2/8 H200 Karten und DL384

Als POC

DL 380a 1/8 H200 Karten, denn dieser ist Upgradefähig mit weiteren H200 Karten und mehr RAM

DL385 RTX 6000 ist halt eine kostengünstige Einstigeskonfig die es für den POC tut, jedoch kann der Server danach nicht sinnvoll weiterverwendet werden.

Ich habe auch schon mal angefragt, was eine H200 zum Nachrüsten kostet:

53K Euro

Empfehlunsgstext für den Kunden:

Verfügbarkeit: Die aktuelle Liefersituation bei Server-Komponenten (insbesondere GPUs und RAM) liegt bei ca. sechs Monaten. Cloud-Ressourcen sind hingegen sofort „On Demand“ verfügbar.

Investitionsrisiko: Da wir derzeit keine Testhardware bereitstellen können, müssten die Komponenten für einen On-Premise-POC fest erworben werden. In der Cloud entfallen diese hohen Erstinvestitionen (CAPEX); Sie zahlen nur die tatsächliche Nutzung.

Skalierbarkeit: Nach Abschluss des POC gibt es deutlich mehr Nutzer, was eine Leistungsstärkere Hardware erfordert. Bei physischer Hardware ist eine spätere Weiternutzung (Scale-In) oft technisch herausfordernd und unflexibel.

für die Durchführung des geplanten KI-POC empfehle ich dringend eine Umsetzung in der Cloud. Dies hat vor allem wirtschaftliche und zeitliche Gründe:

Durch den Cloud-Ansatz sichern wir einen zeitnahen Projektstart ohne langfristige Hardware-Bindung.
