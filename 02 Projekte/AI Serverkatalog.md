---
tags: [projekt, coding, cancom, ai-infrastruktur]
status: aktiv
erstellt: 2026-05-17
priorität: niedrig
fällig: 
---

# AI Serverkatalog / CANCOM AI Sizing Dashboard

Internes Vertriebs-Tool für CANCOM Solution Design / Presales – hilft beim GPU-Sizing und Server-Matching für Kunden.

## Lokaler Pfad
`/Users/eva.doelle/Library/CloudStorage/OneDrive-CANCOMGmbH/AI/2_CDC allgemein/AI Serverkatalog`

## Orientierung
Die **`projektuebergabe.md`** im Projektordner ist die erste Anlaufstelle in jeder neuen Session – enthält aktuellen Stand, Phasen-Status, Memory-Index und Quick-Check-Liste.

Weitere Projektdokumente:
- `PRD.md` – Anforderungen
- `ARCHITECTURE.md` – lebende Architekturdokumentation
- `CLAUDE.md` – Projektbriefing für Claude

## Repo
https://github.com/cURLs-for-girls/ai-sizing-dashboard (privat)

## Aktueller Stand (2026-05-17)
- Phase 0 ✅ Fundament (Vite + React + TS)
- Phase 1 ✅ Daten-Migration (servers.json, gpus.json, models.json)
- **Phase 2 ⏭ Sizing-Engine** – als nächstes

## Offene Themen
- **Architektur neu denken** – Eva ist mit der aktuellen Architektur nicht ganz zufrieden, will das mit dem Brainstorming-Superskill nochmal grundlegend angehen bevor Phase 2 startet
- Sizing-Mathematik: VRAM, KV-Cache, Overhead
- PRD-Testfall: Nemotron 120B für 50 User / 20k Context → 2× H100 80GB im Dell XE9680

## Tech-Stack
Vite · React 19 · TypeScript · JSON-Datenbasis · GitHub Pages (geplant)

---

## Shop-Sizer Prototype (2026-05-22)

Parallel zum internen Dashboard wurde ein **kundenorientierter Wizard** für den CANCOM Shop entwickelt — als HTML-Prototype für den Shop Owner Termin.

### Idee
Öffentlicher Sizing-Wizard auf shop.cancom.de → Kunde gibt Anforderungen ein → bekommt ungefähre Einschätzung → vollständige Empfehlung gegen Email-Adresse → Lead-Capture für Vertrieb.

### Prototype-Datei (Stand: v5, finaler Stand)
`.superpowers/brainstorm/53688-1779453153/content/wizard-prototype-v5.html`

Absoluter Pfad:
`/Users/eva.doelle/Library/CloudStorage/OneDrive-CANCOMGmbH/Eve/.superpowers/brainstorm/53688-1779453153/content/wizard-prototype-v5.html`

### Wizard-Flow (4 Fragen)
1. **Anwendungsfall + Modell-Typ** (6 Kacheln, MECE)
   - Chatbot / Assistent → Standard Chat-Modell
   - Dokumente & Wissen → Reasoning-Modell
   - Coding Assistent → Coding-Modell (on-prem GitHub Copilot Alternative)
   - Prozesse automatisieren → Agent-Modell
   - Bild & Dokumente verstehen → Multimodal-Modell
   - Computer Vision / Video → Computer Vision
2. **Concurrent Users** — 1–10 / 10–50 / 50–200 / 200+
3. **Anfragegröße** — Kurze Fragen / Dokumente / Große Dateien (mit Token-Angaben)
4. **Latenz** — Echtzeit / Normal / Batch

### Ergebnis-Screen
- GPU-Klasse + Preis-Range sichtbar (ungefähr)
- Vollständige Empfehlung gesperrt (Blur + Lock): KI-Modell, GPU, Server, AI Factory Stack
- Email-Gate → Report per Mail + CANCOM-Experte meldet sich
- Goldene Hinweis-Box: Modell-Empfehlung durch Experten (Claude, GPT-4o, Llama, Gemini, Mistral)
- AI Discovery Workshop Button für Kunden ohne klaren Use Case

### Design
- Dunkles Dashboard-Theme (identisch mit AI Factory Specialization Dashboard)
- Originales CANCOM Logo oben links mit rotem Hover-Glow
- Kacheln mit rotem Top-Border-Glow on hover
- Roter Fortschrittsbalken mit Glow-Effekt

### Offene Punkte
- [ ] PDF/Report-Inhalt definieren (Sizing-Summary, Warum AI Factory, Komponenten-Roadmap ohne Preise, CTA)
- [ ] Shop Owner Termin — Prototype zeigen, Integration besprechen
- [ ] Backend für Email-Versand (nach Freigabe durch Shop Owner)
