---
name: paper-radar
description: "Wöchentlicher Paper-Radar für neue KI-Forschungsergebnisse mit Presales-Relevanz. Aktivieren bei Phrasen wie \"paper-radar\", \"neue papers\", \"aktuelle Forschung\", \"was ist neu in KI-Forschung\", \"neue Studien\", \"paper-scan\", oder bei automatischen Wochenläufen. Sucht in arXiv, Hugging Face Daily Papers und Semantic Scholar nach Papers zu AI Agents, Enterprise AI, AI Infrastructure und AI Storage — filtert auf Presales-Relevanz und speichert interessante Paper im Vault."
---

# Paper Radar

Wöchentlicher Scan neuer KI-Forschungsergebnisse — gefiltert auf Evas Fachdomänen und Presales-Relevanz. Maximal 5 Paper, Qualität vor Quantität.

## Scope

**Im Scope:** AI Agents & Architektur, Enterprise AI (Compliance, Auditierbarkeit, ROI), AI Infrastruktur (Inference, Networking, GPUs), AI Storage, Multi-Agent-Systeme, LLM-Deployment-Patterns.

**Nicht im Scope:** Rein akademische Grundlagenforschung ohne Enterprise-Winkel, Medizin/Bio-KI, Modell-Releases → gehören zu `latest-models`.

## Workflow

### 1. Datum prüfen

`date` via bash. Suchzeitraum: **letzte 7 Tage**. Bei manuellem Run (kein Schedule): letzte 14 Tage.

### 2. Recherche – 3 Quellen parallel

**Quelle A – Hugging Face Daily Papers**
```
Suche: site:huggingface.co/papers [Keyword] after:[Datum]
Keywords: "agentic AI", "enterprise AI", "AI infrastructure", "AI storage"
```

**Quelle B – arXiv**
```
Suche: arxiv.org [Thema] [Zeitraum]
Kategorien: cs.AI, cs.MA (Multi-Agent), cs.DC (Distributed Computing), cs.NI (Networking)
Keywords: agent architecture, enterprise LLM, inference optimization, AI storage
```

**Quelle C – Web / Fachblogs**
```
Suche: "new paper" OR "research" [Keyword] [Zeitraum]
Quellen: papers.cool, ar5iv.org, Semantic Scholar, The Gradient, Ahead of AI (Sebastian Raschka)
```

Mindestens **2–3 Suchanfragen pro Quelle**, verschiedene Keywords.

### 3. Relevanzfilter

Für jedes gefundene Paper prüfen:

| Kriterium | Frage |
|-----------|-------|
| Presales-Winkel | Hat es Enterprise-, Compliance-, Cost- oder Scale-Relevanz? |
| Evas Domäne | Berührt es Agents, Infra, Storage oder Deployment? |
| Neuigkeitswert | Neuer Ansatz oder signifikante Vertiefung bekannter Konzepte? |

→ Nur Paper mit **mindestens 2 von 3 Ja** kommen in die Shortlist.
→ Shortlist: **maximal 5 Paper**, lieber 3 starke.

### 4. Shortlist ausgeben

Format pro Paper:

```
## [N]. Titel

*[Autor(en)] · [Datum] · [Quelle/arXiv-ID]*

**Kernthese:** [1 Satz — was ist der Ansatz?]

**Presales-Relevanz:** [1 Satz — warum interessant für Enterprise-Kundengespräche?]

→ [Link]
```

Am Ende fragen: *„Soll ich eines oder mehrere davon als Vault-Notiz speichern?"*

### 5. Vault-Notiz erstellen (auf Anfrage)

Wenn Eva ein Paper speichern möchte, Notiz anlegen unter `04 Ressourcen/Forschung/[Titel].md`.

**Template:**

```markdown
---
tags:
  - forschung
  - [themenfeld-tag]
status: gelesen
erstellt: YYYY-MM-DD
hersteller:
  - [Autor]
  - [Institution/arXiv]
quelle: [URL]
---

# [Titel]

> [!abstract] Paper-Steckbrief
> **Autor:** [Name]
> **Veröffentlicht:** [Datum]
> **Kernthese:** [1–2 Sätze]

## Was ist neu?

[Kurze Erklärung des Ansatzes — einfach und anschaulich]

## Key Takeaways für AI Presales

### 1. [Takeaway-Titel]

[Inhalt]

**Presales-Botschaft:** *„[Konkrete Formulierung für Kundengespräch]"*

### 2. [Takeaway-Titel]

[Inhalt]

**Presales-Botschaft:** *„[Konkrete Formulierung für Kundengespräch]"*

## Das große Bild

[Einordnung: Was bedeutet das für Enterprise AI?]

## Verwandte Notizen

- [[04 Ressourcen/Forschung/...]]
```

## Qualitätsprinzipien

- Sachlich, auf Deutsch. Fachbegriffe bleiben Englisch.
- Immer fragen: *„Würde Eva das in einem Kundengespräch oder LinkedIn-Post verwenden?"*
- Kein akademisches Fachkauderwelsch — Evas Superpower ist, Komplexes einfach zu erklären.
- Lieber 3 wirklich relevante Paper als 5 halbgare.

## Häufige Fallen

- **Aktualitätsfalle:** Erscheinungsdatum des Papers prüfen, nicht nur den Artikel darüber.
- **Akademik-Falle:** Tolles Paper ohne Enterprise-Anwendung → weglassen.
- **Dopplung mit ki-marktradar:** Papers zu Modell-Releases → `latest-models`. Business-News → `ki-marktradar`.
- **Zu breite Suche:** Lieber 2 gute Keywords tief durchsuchen als 10 Keywords oberflächlich.

## Schedule-Setup

Dieser Skill läuft idealerweise **wöchentlich montags um 08:00 Uhr**.

Setup einmalig via `/schedule`:
- **Cron:** `0 8 * * 1`
- **Prompt:** `paper-radar wöchentlicher Scan — letzte 7 Tage`
