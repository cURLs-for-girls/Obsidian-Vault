---
name: ki-marktradar
description: "Tagesaktueller Marktradar für die KI-Industrie: strategische Moves, M&A, Partnerschaften, Hardware-Releases (NVIDIA, AMD, NPUs, Interconnects) und neue Tools/Frameworks für Agenten, Orchestrierung, Inference und RAG. Output ist Markdown direkt im Chat. Diesen Skill aktivieren bei Phrasen wie \"ki-marktradar\", \"was machen die ki-player\", \"ki-marktbewegungen\", \"ki-industrie update\", \"morgenbriefing\", \"morning briefing ki\", \"was tut sich bei openai/anthropic/google/nvidia/meta/mistral\", \"ki-news heute\", \"ki-business news\", \"strategische moves ki\", \"ki-partnerschaften\", \"ki-hardware news\", oder wenn der User einen tagesaktuellen Überblick über das Geschehen am KI-Markt jenseits reiner Modell-Releases will. Immer verwenden wenn nach KI-Marktnews, KI-Industrieaktivität oder Aktivitäten der großen KI-Player gefragt wird — auch wenn der User das Wort \"Skill\" nicht erwähnt. NICHT aktivieren wenn es ausschließlich um neue Modell-Releases geht (dafür gibt es den Skill latest-models)."
---

# KI-Marktradar

Tagesaktueller Überblick über das Geschehen im KI-Markt — alles, was Infrastruktur-, Deployment- und Enterprise-AI-Entscheidungen beeinflusst, **außer** reine Modell-Releases.

## Scope

**Im Scope:** Strategische Moves der großen Player (OpenAI, Anthropic, Google, Meta, Mistral, NVIDIA, AMD, Microsoft, Apple, Amazon, xAI, DeepSeek, Alibaba, Cohere etc.), M&A, Partnerschaften, Investments, Funding-Rounds, Hardware-Releases & -Roadmaps (GPUs, NPUs, Speicher, Interconnects), neue Tools/Frameworks für Agenten/Orchestrierung/RAG/Inference, regulatorische Entwicklungen mit Deployment-Relevanz.

**Nicht im Scope:** Modell-Releases → gehören zu `latest-models`. Grenzfall (Release = strategischer Move): Einzeiler + Verweis auf `latest-models`.

## Workflow

### 1. Datum prüfen
`date` via bash. Suchanfragen mit konkretem Datum auf Englisch und Deutsch formulieren. Bei Wochenende: Freitag/Samstag-News einschließen, transparent machen.

### 2. Recherche
Mindestens 3–5 web_search-Calls, mehrere Quellen pro News. Eine einzelne Quelle reicht nie.

Tier 1 (bevorzugt): heise.de, golem.de, handelsblatt.com, offizielle EU-Kanäle (EU AI Office, BSI).
Tier 2: Vendor-Blogs (openai.com/blog, anthropic.com/news, blogs.nvidia.com etc.), TechCrunch, The Verge, Bloomberg Tech, Reuters Tech, Semianalysis.
Tier 3 (nur als Frühwarnsystem, muss durch Tier 1/2 bestätigt werden): Reddit r/LocalLLaMA, HackerNews, Twitter/X.

### 3. Aktualitätsfilter
Hauptregel: letzte 24h. Ausnahme: ältere Meldung rein, wenn heute eine signifikante neue Entwicklung dazu existiert — beide Daten transparent nennen. Wochenend-Ehrlichkeit: lieber 3 starke News als 5 schwache.

### 4. Filter & Priorisierung
Aufnehmen wenn: strategischer Move Top-10-Player, M&A >100 Mio. USD, Hardware-Release mit Inference/Training-Relevanz, Tool/Framework mit Adoption-Potential, regulatorische Änderung mit Deployment-Konsequenz.

Nicht aufnehmen: PR ohne Substanz, kleine Funding-Rounds (<10 Mio. USD No-Name), Modell-Releases, Konferenz-Ankündigungen ohne technischen Inhalt.

## Output: Markdown direkt im Chat

**Maximal 5 News, lieber 3 starke.** Kein File, kein Word, kein Drive-Upload — direkt als Markdown in der Antwort.

### Aufbau

```
# KI-Marktradar — DD. Monat YYYY
*Stand: TT.MM.JJJJ · Zeitfenster: letzte 24h · [optionaler Honesty-Hinweis bei dünnen Tagen]*

---

## 1. Schlagzeile
*(DD.MM.YYYY)*

**Was passiert ist** — 1–2 Sätze.

**Warum relevant** — 1–2 Sätze zu Infrastruktur-/Deployment-Implikationen.

**Hardware-Einordnung** *(falls anwendbar)* — 1 Satz mit konkreten Zahlen.

Quellen: [Name](URL), [Name](URL)

---

## 2. Schlagzeile
...
```

### Qualitätsprinzipien

- Sachlich, präzise, auf Deutsch. Fachbegriffe und Produktnamen bleiben Englisch.
- Kein Hype, kein Bullshitbingo. Sachkern herausarbeiten.
- Zielgruppe: Infrastruktur- und Deployment-Entscheider. Frage: "Würde Eva das in einer Architektur-Diskussion zitieren?"
- DE/EU-Relevanz bei Gleichstand bevorzugen.
- URLs vollständig und funktionierend — lieber eine als drei kaputte.

### Häufige Fallen

- **Aktualitätsfalle:** Ereignis-Datum prüfen, nicht nur Artikel-Datum.
- **Vendor-Echo:** Fünf Outlets mit derselben PR = eine News. Primärquelle finden.
- **Modell-Doppelung:** Releases → `latest-models`.
- **Konferenz-Hype:** Nur 2–3 von 50+ Announcements sind infrastruktur-relevant.

### Optionaler Gmail-Draft

Nur wenn User explizit nach E-Mail fragt: `create_draft` an `evadoelle93@googlemail.com`, Betreff `KI-Marktradar — DD. Monat YYYY`, Body als Plain-Text.
