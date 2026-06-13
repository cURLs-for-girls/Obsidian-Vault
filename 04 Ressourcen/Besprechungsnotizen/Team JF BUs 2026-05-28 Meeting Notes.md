---
tags: [meeting, broadcom, hpe, vmware, cancom-live, internal]
status: inbox
erstellt: 2026-05-28
---

# Team JF BUs – Meeting Notes | 28.05.2026

## Stimmungsbild

Gute Zahlen, aber dicker Frust unter der Oberfläche. Zwei Themen dominieren: **Broadcom/VMware** (alle Regionen gleichermaßen genervt – Kunden wandern ab oder bauen Parallelinfrastruktur auf) und **HPE** (Zahlen brechen weg, Team zu jung/unerfahren, große Deals fallen durch). Positiv: AI Factory Summit läuft gut an, DGX B300 in der Pipeline, neue Partnerschaft mit Digital Reality.

---

## Event Log

### [Pre-Meeting] Teams-Migration
- Interner Frust über Teams-Pflichtumstieg
- Meeting-Räume laufen noch auf WebRTC/WebEx → Gruppenanrufe funktionieren schlecht
- Forderung: IT muss Raumsysteme auf Teams umstellen (inkl. Pro-Lizenzen), sonst bringt die Migration nichts
- Kabel als Fallback: funktioniert, "aber wir sind nicht mehr in den 90ern"
- **Stimmung:** pragmatisch genervt, kleines Frustventil vor dem eigentlichen Meeting

---

### [Agenda 1] Broadcom/VMware – QBR Fortcom & Regionen-Feedback

**Einleitung:**
- QBR mit Fortcom: gute Zahlen, gutes Engagement, positives Feedback auch in kleinen und großen Deals → Daniel gibt ausdrückliches Lob in die Runde
- Zertifizierungen: Sales und Solution Sales gut vorangekommen, aber oft fehlt der letzte Klick – Prüfung am Ende nicht abgeschlossen
- Martin Meier fährt bald nach Amsterdam zu einem C-Level-Meeting → sammelt aktiv Pain Points und Success Stories aus den BUs

#### Nord (Jens) – sehr kritisch, strukturell frustriert
- Feedbackkultur der Broadcom VBs: **"ohne Lust"** – kein Rückmeldeverhalten, ständige Betreuerwechsel
- Kein Rückhalt gegen SVA bei Otto Office (SVA nur mit Nutanix dran, CANCOM kriegt keine Unterstützung)
- BCF-Lizenzen: keine vernünftigen Rabatte, alles schleppend

**Hauptproblem DXWell/BXRe (ausführlich diskutiert):**
- Kunde möchte Wartung um 12 Monate verlängern
- Broadcom-Anforderung neu: Subscription muss um **36 Monate** verlängert werden (statt früher 3 Monate länger als Wartungslaufzeit)
- Gleichzeitig: maximale Wartungsverlängerung ist 12 Monate
- Ergebnis: Im nächsten Jahr dasselbe Problem → Kunde akkumuliert 60+ Monate Subscription
- Per E-Mail einmal mit dem alten VB so abgestimmt → VB weg (krank/entlassen), neuer VB ignoriert alle Absprachen
- Eskalation läuft: Jens soll nochmal an Mikal formulieren (mit Mario Schult und Ostheimer MCC im CC)
- Jens' Prognose: wenig Hoffnung

**Weitere Fälle:**
- BKK: baut **parallele Hypervisor-Infrastruktur** auf – zu gefährlich, sich nur auf Broadcom zu verlassen
- Telefonica: wollte Broadcom-Lizenzen reduzieren zugunsten von Nutanix → Broadcom: "Alles oder nichts" → Kunde ist vollständig zu Nutanix gewechselt
- Broadcom-Argumentation intern: "Schmeißt die alten Systeme weg, kauft Ready Nodes, die Lizenzen könnt ihr woanders verwenden" → bei Kunden mit 2 Jahre alten Systemen schwer vermittelbar

> **Zitat Jens:** *"Im Moment bin ich bei der Broadcom einfach nur voll genervt."*

#### West (Erik & Klaus) – frustriert, aber konstruktiv
- Kundenstimmung flächendeckend: Verdruss auf Broadcom, alle schauen sich Alternativen an (Proxmox, verschiedene Optionen)
- Kunden stellen dann fest: Wechsel ist viel schwieriger als gedacht
  - Technisch: Storage-Kompatibilität, Anbindung
  - Organisatorisch: eigenes Personal schulen auf neue Plattform
- Fazit Klaus/Erik: **Großteil der (kleineren) Kunden wird in den nächsten 2–3 Jahren nicht wechseln können** – fehlt die Manpower
- Das ist ambivalent: gut für Broadcom-Standing, aber nicht unbedingt gut für den Kunden

**Klaus' Workshop-Ansatz:**
- Alternativen-Workshop aufgesetzt (zusammen mit Mike)
- Bereits bei 2–3 Kunden erprobt
- Wird über Vertrieb ausgerollt: Call-Out Day geplant → direkt alle Kunden ansprechen
- Wichtig: **Entscheider am Tisch** brauchen, nicht nur Admins

**Strategischer Impuls (Oliver):**
- CANCOM verkauft heute 97% Virtualisierung, Markt liegt bei 25% Kubernetes – wächst auf ~50%
- Proxmox-Verkauf bei Leitstellen-Kunden → direkt danach: Kubernetes-Anfrage → Beweis für die Entwicklung
- Appell: Bei Workshops und Beratungen **nicht Hypervisor-zentriert denken**, sondern **Datacenter-Plattform** insgesamt
- Im Enterprise: oft Richtung OpenShift; bei kleineren Kunden wächst das Thema auch

**Ergänzung:** Cloud Migration als Alternative ansprechen – löst das Skill-Thema (Umschulung) oft von selbst

**Service Provider Programm:**
- Broadcom hat VSPP (VMware Service Provider Program) aufgekündigt
- Noch 11 lizensierte SPs in ganz Deutschland
- White Labeling: **nicht mehr möglich**
- Optionen für betroffene Kunden:
  1. Business verkaufen
  2. Sell & Leaseback: Hardware geht an CANCOM, CANCOM stellt Lizenz bereit
  3. Hardware von CANCOM (on-prem beim Kunden oder im CANCOM RZ) → SP-Betrieb bleibt möglich
- Plan B läuft bis **31.03.2027** (Vertragsende der meisten 3-Jahres-Verträge)
- Wer Opportunities in der Region hat: bitte bei Daniel melden

**Success Story (Eric, Competence Center):**
- Wilken (Service Provider): VSPP aufgekündigt → Virtualisierungsalternativen-Workshop + AI Workshop aufgesetzt
- Tendenz Richtung Red Hat
- Kunde vollumfänglich beraten → Referenz verfügbar

#### Mitte
- Michael war beim Kunden vor Ort bei Deal-Installation → kein aktiver Beitrag
- Feedback per Chat: Angebote dauern sehr lange, nichts Akutes

---

### [Agenda 2] ⭐ HPE – Ausführliche Zusammenfassung

→ Siehe Abschnitt unten: **HPE Highlight für HPE Discover Juni**

---

### [Agenda 3] AI Factory Summit – 9. Juni, München
- Dell & CANCOM Exklusiv-Event (kein anderer Hersteller)
- Aktuell: ~61 Anmeldungen, davon 51 Kunden → noch Plätze frei
- Agenda: Use Cases, Spreadshop, Live-Demos, Infrastrukturthemen Datacenter, Physical Infrastructure (Steiniger/Marcel)
- DGX B300-Update soll dort highlighted werden (sofern Stand passt)
- **Bitte: Kunden aktiv ansprechen, Link im Chat geteilt**

---

### [Agenda 4] CANCOM Live Events 2026 – Termine stehen
- Alle Locations und Termine jetzt fix im Loop
- Standdienst, Inhalte, Pitches, Keynote werden wie letztes Jahr gemeinsam geplant
- **Problem in manchen Regionen:** zu viele Events parallel (AI Roadshow Ende Juni, Factory Summit, Physical Infrastructure Event, CANCOM Live) → welchen Kunden wohin einladen? Koordination nötig
- Leipzig/CANCOM Live zeitlich mit anderer Veranstaltung kollidiert → Roland & Joachim abstimmen

---

### [Agenda 5] Digital Reality – Co-Location Partnership
- Besuch beim weltgrößten (eigenen Angaben nach) Co-Location-Anbieter, Standort Frankfurt
- Durchführung mit BU Mitte
- Eindruck: **sehr beeindruckend** – professionelles Setup, Liquid Cooling kein Fremdwort, tiptop vorbereitet
- Partnervertrag in Vorbereitung (gemeinsam mit Österreich)
- CMS ist in Kontakt: Equipment-Versand direkt aus Hamburg zu Digital Reality
- Pitch-Deck liegt vor → bei Bedarf teilen
- **Für Kunden relevant:** Wer Co-Location-Kapazitäten braucht, ist hier gut aufgehoben

---

### [Agenda 6] DGX B300 & Nvidia AI Factory Specialization
- DGX B300 Mitte April angefragt, Bestellung intern freigegeben (Budget/WOF-Prozess abgeschlossen)
- Benötigt für AI Factory Specialization von Nvidia
- **Training-Portal:** Down vom 24.–31. Mai zur Überarbeitung, ab **1. Juni** freigeschaltet
  - Etwas kurzfristig (Workshop Ende Juni), aber "no pressure"
  - Mail-Notification kommt automatisch wenn neue Trainings live sind
- **Site Survey** muss noch vor Ort im Noris-RZ abgeschlossen werden (Strom, PDUs, Platzbedarf)
  - Sollte diese Woche passieren
  - Danach: endgültige Bestellung → **~12 Wochen Lieferzeit**
- Wird auf AI Factory Summit am 9. Juni presented (Daniel & Co.)

---

### [Agenda 7] Consumption-Modelle / Keystorm (CFS-Übergabe)
- Dennis verlässt CANCOM → Übergabe an Kleinschroth-Team läuft, aber **noch keine dedizierte Ressource**
- 12 Keystone-Verträge (11 LSC, 1 Müller) liegen seit **1 Monat bei Legal**
- Anfragen kommen trotzdem weiter rein (Steve aus Frankfurt mit Keystorm-Anfrage, andere Hersteller)
- CANCOM wurde für Keystorm Port 3 enabled → Legal-Prüfung blockiert aktuell
- Warten auf Ressourcenfreigabe von Tom Stark
- Status: "typisches CANCOM Mikromanagement" (O-Ton)

---

### [Info-Block] IBM LinuxONE (Z – nur Linux)
- Linux-only Variante des Mainframes (kein Mainframe-Software-Overhead)
- 90% aller Linux/Kubernetes-Workloads laufen darauf
- Kostenvorteil: Durch allgemeine Preissteigerungen bei Intel-Servern **teilweise günstiger als x86**
- Konsolidierungsfaktor bis **4:1** (besonders im Datenbankumfeld)
- CANCOM: **1 von 3 Partnern in Deutschland** mit echter Expertise
- Geschlossene Lieferkette (gebaut in USA mit eigenen Speichern) → kein globaler Chip-Preisdruck
- **Einsatz:** Bei Kunden mit explodierenden Server-Kosten als überraschender Alternativvorschlag

---

### [Ende] Nächstes Präsenz-Meeting
- **Wann:** Nach Sommerferien, vor CANCOM Lives
- **Locationvorschläge (ernst gemeint):** Stuttgart (neuer Meeting-Raum + Fußball möglich), Hamburg, München
- **Locationvorschläge (halb ernst):** Straubing, Mallorca/Bierkönig, Flensburg/Johannsen, Rom bei Stefano
- **Stimmung:** ausgelassen, viele gegenseitige Sticheleien → gutes Zeichen fürs Teamgefüge
- Daniel koordiniert Terminabstimmung

---

## ⭐ HPE Highlight – Background für HPE Discover Juni

> Dieser Abschnitt fasst alle HPE-relevanten Aussagen aus dem Meeting zusammen. Relevant für die Vorbereitung auf HPE Discover und interne Gespräche mit HPE.

### Ausgangslage
CANCOM wächst im Datacenter mit allen Herstellern – nur HPE fällt massiv ab. Auf Initiative von Rüdiger gab es am **Dienstag (27.05.)** ein Management-Meeting mit HPE in München. Mehrere Folgetermine geplant.

### Was die BUs berichten – direkt und ungeschminkt

**1. Team-Qualität: Nachwuchs ohne Erfahrung**
- Alte, erfahrene HPE VBs wurden durch Berufseinsteiger ersetzt
- Kein Produktwissen, kein Verständnis für das Partnergeschäft, keine strategische Account-Bearbeitung
- Beim letzten internen VME-Workshop mit Kunde: HPE-Präsentation qualitativ sehr schwach, Veteran-Kollegen mussten mehrfach eingreifen
- Erstes "Hitscall" mit neuer HPE-Gruppe: Eindruck "komplette Nachwuchsgruppe gekriegt"

> *"Really, really a lot of room for improvement."*
> *"Ich war dabei, der Ralf Müller war dabei – wir haben zwei, drei Mal Socken einwerfen müssen, sonst wäre es in die falsche Richtung gelaufen."*

**2. Reaktionszeit & Angebotsprozess: unterirdisch**
- Klaus: 2 Jahre an Cohesity-Projekt gearbeitet, **zweimal mit dem Kunden auf der Discover**, im März gemeinsam in Böblingen – **bis heute kein Angebot**. Deal läuft jetzt direkt mit Cohesity. Volumen: ~500k. Keine Reaktion von HPE.
- Anderes Projekt: Windback mit Primera erfolgreich → neues Server-Projekt, Volumen 2,5 Mio. € → HPE-Angebot 900k teurer als Dell → VB-Reaktion: "Macht mal eine halbe Stunde günstiger"
- Direclec-Anfragen: kein Follow-up, kein Interesse

> *"Das interessiert keinen. Das ist halt so eine halbe Million, ne."*
> *"Selbst die Cohesity verzweifelt – die sagen, das haben wir auch noch nicht erlebt."*

**3. Vendor Head Programm: beiderseitig frustriert**
- HPE selbst ist nicht happy mit Performance der Vendor Heads
- Aber: Grundursache liegt bei HPE (ständige Betreuerwechsel, kein Engagement, kein Material)
- Vendor Heads fühlen sich von HPE nicht gesehen, egal wie laut sie sind
- Morpheus kürzlich im Vendor-Head-Meeting → positiver Impuls, aber strukturell noch viel zu tun

**4. Prozessklarheit: niemand zuständig**
- OEM-Frage (Vodafone-Projekt eines Kunden): VB → Partner Manager → VB → Daniela
- Niemand weiß Bescheid, niemand entscheidet → Kollege hat einfach geliefert ("fuck it")

**5. Sichtbarkeit beim Partner**
- Andere Hersteller: täglich präsent, verteilen Eis, machen Termine
- HPE: kaum je gesehen

### Positive Ankerpunkte (wichtig für HPE Discover)
- **Hassan (Shake) – Presales-Leiter Storage:** technisch kompetent, weiß wovon er spricht. Guter Gesprächspartner für konkrete Deals.
- **Leonie Alper:** ebenfalls als verlässlich eingestuft
- Beide beim Management-Meeting kennengelernt → können als Eskalationsweg genutzt werden

### Nächste Schritte (intern)
- **HPE Portfolio Refresh Meeting** mit allen Storage-Beteiligten wird aufgesetzt (Rüdiger unterstreicht das)
- **Feedback-Runde Vendor Heads** wird aufgesetzt – was läuft gut, was nicht?
- **Salesforce Mass Update** nächste Woche: HPE Opportunities werden aus Listen automatisch angelegt (von oben entschieden) → wird für Unmut sorgen, sollte bekannt sein

### Botschaften für HPE Discover
| Thema | CANCOM-Position |
|---|---|
| Teamqualität | Erfahrene VBs zurück – oder konsequentes Mentoring für Nachwuchs |
| Angebotsprozess | Reaktionszeiten sind geschäftsgefährdend (500k-Deal verloren) |
| Vendor Heads | Mehr HPE-seitige Aktivierung, Material und Präsenz |
| Preisgestaltung | 900k Abstand zu Dell bei 2,5M-Projekt ist nicht wettbewerbsfähig |
| Partnernähe | Andere Hersteller sind täglich da. HPE: kaum. |
| Eskalationswege | Hassan und Leonie als neue Ankerpunkte etablieren |

---

**Transkript:** [[04 Ressourcen/Besprechungsnotizen/Team JF BUs 2026-05-28 Transkript]]
**Skill:** [[04 Ressourcen/Skills Export/internes-meeting]]
