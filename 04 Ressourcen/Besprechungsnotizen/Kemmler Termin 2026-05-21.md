---
tags:
  - kunde/kemmler
  - sales
  - meeting
status: aktiv
erstellt: 2026-05-21
---

# Kemmler Termin – 21. Mai 2026

> [!info] Kontext
> Erstes ausführliches AI-Discovery-Gespräch mit Vertretern aus drei autarken Einheiten der Kemmler-Gruppe. Starkes Interesse an On-Premise-KI-Infrastruktur, Discovery Workshop und CANCOM Assistant.

## Ansprechpartner

| Name | Rolle | Einheit |
|------|-------|---------|
| Werner | IT-Mitverantwortlicher (11-köpfiges Team, gemeinsam mit Maja) | Kemmler Gruppe |
| Patrick Steinhäfer | Produktionsleiter | Kemmler Baustoffe – Produktion & Sonderteilfabrik |
| Marcel Meyer | Softwareentwicklung & KI-Strategie | Chemlit (Schwesterfirma) |
| Büffle | IT & Vertrieb (ERP, Copilot, Außendienst) | Kemmler Baustoffe |

---

## Was der Kunde sich von CANCOM wünscht

| Wunsch | Von wem | Details |
|--------|---------|---------|
| **AI Discovery Workshop** | Steinhäfer, Büffle | Explizit gewünscht, ~10.000 €, 2 Tage, inkl. 30-seitigem Konzept |
| **Strategie-Workshop** *(vor Discovery)* | Büffle | KI-Strategie zunächst auf Geschäftsleitungsebene ausrichten |
| **CANCOM Assistant – On-Premise** | Werner | Explizit: „Den würde ich On-Premise kriegen, tatschlich" |
| **Follow-up mit Discovery-Kollegen** | Büffle (Baustoffe) | Separates 15-min-Call mit Consultant, der gerade bei anderen Kunden den Workshop durchführt |
| **Leistungsbeschreibung / Angebot zusenden** | Büffle | „Vielleicht kalkulieren Sie mal, vielleicht schlagen Sie einfach mal einen Vorschlag vor" |
| **Lizenzmodell klären** | Werner | Jährlich vs. monatlich, Kaufoption – kein Fan von monatlich mit Preiserhöhungen |

---

## Nächste Schritte

- [ ] Angebot / Leistungsbeschreibung für Discovery Workshop erstellen (~10.000 €, 2 Tage)
- [ ] Erik wegen Strategie-Workshop auf Geschäftsleitungsebene fragen
- [ ] 15-min-Call mit Discovery-Consultant für Büffle (Baustoffe) organisieren
- [ ] CANCOM Assistant On-Premise-Verfügbarkeit klären und an Werner kommunizieren
- [ ] Lizenzmodell-Optionen (jährlich / Kauf) für Werner zusammenstellen
- [ ] Frage nach Bildverarbeitung / Objekterkennung im CANCOM Assistant beantworten

---

## Kundenstimmen im Detail

### Werner – IT, Kemmler Gruppe

**KI im Einsatz (privat/experimentell):**
- Lokales LLM auf eigener Hardware: AMD RX 7100 XT (600 €), 4-Mrd.-Parameter-Modell, läuft mit VLLM + Open Web UI
- Nutzt es für PowerShell-Skripte
- Metabase eingebunden → Datenbankabfragen per KI (funktioniert teilweise)
- Hat HP-Workstation mit Nvidia-GPU von Mitbewerber für Tests zur Verfügung

**Roadmap / Wünsche:**
- Knowledge Base aus Ticketsystem via RAG/CAG als Vektordatenbank anbinden
- Internes ERP-Wiki einbinden
- Langfristig: MCP-Schnittstelle oder API zum ERP-System
- Lokales Modell ausbauen und für Mitarbeiter ausrollen
- ROI-Gedanke zentral: „Wenn ich keine digitale Dividende habe, reicht der ROI nie"
- Fragt nach Claude Opus (Security-Kontext)
- Stark präferiert On-Premise gegenüber Cloud

---

### Patrick Steinhäfer – Produktionsleiter, Kemmler Baustoffe

**Laufendes Projekt:**
- Forschungsprojekt mit Fraunhofer Institut: Taktzeit-Optimierung in der Produktion (3. Forschungsrunde, erstes Modell kommt freitags)
- Ziel: Alle Tische in der Umlauffertigung auf gleiche Taktzeit bringen – Engpässe per KI erkennen und ausgleichen
- Öffentlich gefördert (Landesforschungsgelder)
- Bisher nur Datenübermittlung in Excel, noch kein Modell live

**Konkretes Problem / Potenzial:**
- Betonmischrezeptur: Steine und Sand schwanken in Feuchtigkeit → KI zur Optimierung
- Kameras im Mischer vorhanden, Maschinendaten (Leistungsaufnahme etc.) liegen vor → Datenbasis ist da
- Politische Hürde: Mischanlage, Betonierstation und Qualitätsverantwortliche haben unterschiedliche Interessen
- Offen für AI Discovery Workshop: „Ja, das sehe ich auch so. Da könnten wir diese unterschiedlichen Themen beleuchten."

---

### Marcel Meyer – KI-Strategie & Softwareentwicklung, Chemlit

**KI im Einsatz (sehr weit fortgeschritten):**
- Automatische Rechnungs- und Auftragsbestätigungsverarbeitung
- Datenextraktion aus E-Mails bei Reklamationen
- Digitales Vier-Augen-Prinzip: KI prüft vor Produktion alle Auftragsdaten auf Widersprüche und Gefahrenabweichungen
- Chatbot mit Open Web UI (eigenem MCP-Server) + Open-Source-Wiki
- Aktuelles Großprojekt: 20.000 Anfragen/Jahr automatisch verarbeiten + Angebote vorbereinigen (ohne menschlichen Eingriff)
- Infrastruktur: Server mit RTX 4090, Ollama, Modelle: LLaMA 4 und Qwen 3.6
- Fallback: Google Cloud mit Gemini-Modellen (Gemini 4 + Gemini 3.5 Flash)

**Offen:**
- Produktion bei Chemlit: Noch kein KI-Einsatz, fehlt der Ansatz → offen für Impulse
- Möchte nicht-komplexestes Thema für erste Erfahrungen identifizieren

---

### Büffle – IT & Vertrieb, Kemmler Baustoffe

**KI im Einsatz:**
- Microsoft Copilot: ~1.000 Lizenzen (nicht alle aktiv genutzt)
- IT-Support-Chatbot (Eigenentwicklung): kurz vor Rollout – Mitarbeiter schreiben dem Bot vor dem Ticket
- LKW-Beladungsoptimierung: Eigenentwicklung, ERP-unabhängig
- Angebotsabgleich (Vier-Augen-ähnlich) über separate Anwendung
- Ausschreibungsrecherche-Tool (Building RAP o.ä.)
- Infrastruktur: eigene Next-Cloud-Instanz, Office 2024 on-premise, kein O365
- Plant ERP-interne KI für 800–1.000 Mitarbeiter im Vertrieb zu customizen

**Wünsche / Hinweise:**
- Außendienstler arbeiten nach Gefühl → KI-Tools müssen sich menschlich anfühlen (Voice, Chat)
- Bedarf: Dokumentenmanagement, Datenblattverwaltung, Außendienst-Assistenzfunktion
- Betont autarke Gruppenstruktur: jede Einheit eigenständig und ergebnisverantwortlich
- Fehlt: KI-Strategie auf Geschäftsleitungsebene → Strategie-Workshop vor Discovery Workshop gewünscht

---

## Vorbereitung (alte Notizen)

![[Kemmler.md]]
