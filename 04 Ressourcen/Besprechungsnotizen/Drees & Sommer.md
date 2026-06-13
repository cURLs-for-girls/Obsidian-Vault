
# 🧩 Gesamtbild: Was ist bei Drees & Sommer passiert?

## 1) Einstieg / Opportunity

- Ausgangspunkt war ein **Kundentermin bei Drees & Sommer** zum Thema:
    - **AI Platform**
    - **Server-Infrastruktur für ein AI Lab** [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)
    
- Direkt danach:
    - Viktor Unruh hat eine **Opportunity („AI-Server-Landschaft“) in Salesforce angelegt** [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)
    - Ziel: Aufbau einer **AI-Serverlandschaft beim Kunden**

👉 Positionierung: klassisches AI-Infrastruktur-/Datacenter-Thema 

---

## 2) Inhaltlich: Was wollte der Kunde?

Aus den Anforderungen und Diskussionen ergibt sich klar:

### 🎯 Technische Zielrichtung

- Aufbau eines **AI Labs / AI Plattform**
- Fokus auf:
    - GPU-basierte Systeme
    - spätere **Skalierbarkeit (Nachrüstbarkeit mit GPUs)** [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

### ⚙️ Konkrete Anforderungen (aus der Konfiguration)

- 2HE Server
- **Bis zu 4 GPUs möglich (initial 2)** [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)
- NVIDIA RTX Pro 6000 (Blackwell)
- AMD CPU (~32 Cores)
- 12×64 GB RAM
- NVMe Storage, 25G NIC  
    [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

👉 Wichtig: Kunde hatte **klare Vorstellungen**, ging Richtung konkrete Beschaffung – kein reines „Ideenthema“.

---

## 3) Angebotsphase / Lösungsausarbeitung

### 🖥️ Optionen, die ihr gebaut habt:

Es wurden **mehrere Architekturvarianten** erstellt:

- **Supermicro Server**
    - mit Workstation GPUs (kostengünstiger)
- **HPE Server**
    - mit Server GPUs
    - Varianten mit 2 oder 4 GPUs  
        [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

### ⏱️ Entscheidender Faktor:

- **Verfügbarkeit & Lieferzeit war kritisch**
    - Supermicro: ~8–10 Wochen
    - HPE: ~18–23 Tage  
        [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

👉 Kunde brauchte Hardware relativ kurzfristig → starker Verkaufshebel

---

## 4) Technische Diskussion / Herausforderungen

### 🔥 zentraler Knackpunkt:

- **Workstation GPU vs. Server GPU**
    - Kunde tendierte aus Preisgründen zu Workstation GPU
    - Aber:
        - Server-Konfiguration unterstützt offiziell nur Server GPUs [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

👉 Ihr habt hier:

- technisch beraten
- Alternativen bewertet
- Risiken kommuniziert

---

### ⚠️ weiteres Thema:

- **GPU-Verfügbarkeit & Storage**
    - Engpass bei Komponenten (v.a. Storage / GPU)
    - Sizing musste ggf. angepasst werden [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

---

## 5) Angebot beim Kunden

- Viktor Unruh hat das **Angebot offiziell an Drees & Sommer geschickt**:
    
    - inkl. 3 Optionen
    - inkl. Lieferzeiten
    - mit klassischem Closing (“würden uns freuen über Ihren Auftrag”) [[Fw: Angebo...AI Server | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABulK3wgAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)
- Intern:
    
    - „**Angebot ging heute Nachmittag an den Kunden**“ [[AW: Oppty...ees+Sommer | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABtIv1EAAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

👉 Status danach:

- Ihr wart **in Warteschleife auf Feedback**

---

## 6) Sales- / Go-to-Market Aktivitäten

### 🤝 Kundenentwicklung

- Geplant bzw. gemacht:
    - Follow-up Termin zu:
        - **AI**
        - **Sizing von Maschinen** [[Viktor Unruh im Chat | Teams]](https://teams.microsoft.com/l/message/19:68f763ff-9b02-4e8f-8f79-aa4c86eee3ef_b92e6470-f353-4c87-82d5-463d7e1759c1@unq.gbl.spaces/1750080804691?context=%7B%22contextType%22:%22chat%22%7D)
- Diskussion:
    - Einbindung technischer Experten (BU Mitte) sinnvoll

### 🧠 Strategischer Ansatz

- Aufbau über:
    - Use Cases
    - NVIDIA-Input
    - AI Workshops (von dir eingebracht)

---

### 🧑‍💼 Kontakte beim Kunden

- Ansprechpartner u.a.:
    - Stefan Busch
    - Jonathan Rahn [[Fw: Angebo...AI Server | Outlook]](https://outlook.office365.com/owa/?ItemID=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L%2b64FyAcApZEBvl904UaX0kIKvHt%2fpgAAAgEMAAAApZEBvl904UaX0kIKvHt%2fpgABulK3wgAAAA%3d%3d&exvsurl=1&viewmodel=ReadMessageItem)

---

## 7) Erweiterung / strategischer Ausbau

- Idee von Viktor Unruh:
    - Termin mit **Head of Global AI (Raffala ..) beim Kunden organisieren** [[Viktor Unruh im Chat | Teams]](https://teams.microsoft.com/l/message/19:68f763ff-9b02-4e8f-8f79-aa4c86eee3ef_b92e6470-f353-4c87-82d5-463d7e1759c1@unq.gbl.spaces/1750080804691?context=%7B%22contextType%22:%22chat%22%7D)

👉 Bedeutet:

- Versuch eines **Top-Down-Ansatzes zusätzlich zum technischen Entry**

---

## 8) Marketing / Kampagnenbezug

- Drees & Sommer war:
    - **auf dem AI Datacenter Summit**
- Opportunity sollte:
    - mit dieser Kampagne verknüpft werden [[Viktor Unruh im Chat | Teams]](https://teams.microsoft.com/l/message/19:68f763ff-9b02-4e8f-8f79-aa4c86eee3ef_b92e6470-f353-4c87-82d5-463d7e1759c1@unq.gbl.spaces/1750080804691?context=%7B%22contextType%22:%22chat%22%7D)

👉 Gute Lead-Herkunft / Attribution-Thema

---

## 9) Termine / Zusammenarbeit zwischen euch

### 📅 Wichtige Aktivität

- Abstimmung AI bei Drees+Sommer
    - organisiert von Viktor Unruh  
        [[Abstimmung...ees+Sommer | Meeting]](https://teams.microsoft.com/l/meeting/details?eventId=AQMkAGQwOGI5ZGVjLWFiZjktNDkyZS1iMzRlLTUyNGU2OGU5NDY3OABGAAAD9e4fWZMCwUyV4v0L_64FyAcApZEBvl904UaX0kIKvHt-pgAAAgENAAAApZEBvl904UaX0kIKvHt-pgABqPhRwgAAAA%3d%3d)

### 🤝 Zusammenarbeit

Du warst stark eingebunden in:

- Anforderungen & Konzeption
- GPU-/Architektur-Bewertung
- Workshop- / AI-Argumentation
- Abstimmung mit Solution Design (Torsten / Maik)

---

# 🧭 Fazit (Management-Sicht)

### ✅ Was ihr erreicht habt

- Opportunity sauber aufgebaut
- Konkrete Infrastruktur-Optionen entwickelt
- Angebot beim Kunden platziert
- Technisch fundierte Beratung geliefert
- Follow-ups & strategische Kontakte vorbereitet

### 🟡 Offene Punkte (laut Daten)

- **Keine klare Rückmeldung auf Angebot** (zuletzt offen) [[Viktor Unruh im Chat | Teams]](https://teams.microsoft.com/l/message/19:68f763ff-9b02-4e8f-8f79-aa4c86eee3ef_b92e6470-f353-4c87-82d5-463d7e1759c1@unq.gbl.spaces/1750080804691?context=%7B%22contextType%22:%22chat%22%7D)
- Deal vermutlich:
    - entweder verzögert
    - oder nicht final entschieden

---

# 💡 Kurz-Zusammenfassung in 3 Sätzen

- Ihr habt bei Drees & Sommer eine **AI-Server-Infrastruktur für ein AI Lab** aufgebaut und konkret angeboten.
- Der Prozess ging von **Workshop/Termin → technische Konfiguration → Angebot mit mehreren Serveroptionen → Follow-ups**.
- Kritisch waren **GPU/Verfügbarkeit, Architekturentscheidung (Workstation vs. Server GPU)** und danach blieb die **Kundenrückmeldung offen**.