---
name: latest-models
description: >
  Recherchiert und präsentiert die neuesten KI-Modelle der letzten ~14 Tage als strukturierte
  Steckbrief-Karten mit Deep Research (mehrere Web-Quellen, YouTube-Kanäle, Millstone AI Benchmarks).
  Diesen Skill aktivieren bei Phrasen wie "neueste Modelle", "latest models", "neue KI-Modelle",
  "was ist neu in KI", "neue Modelle diese Woche", "KI-Modell News", "what dropped in AI",
  "neue Releases KI", "ki modelle aktuell", "latest model releases", oder wenn der User einen
  schnellen Überblick über aktuelle Modell-Veröffentlichungen will.
  Immer verwenden wenn nach neuen, aktuellen oder kürzlich erschienenen KI-Modellen gefragt wird.
---

# Latest Models Skill

Recherchiere und präsentiere alle relevanten KI-Modell-Releases der letzten ~14 Tage.

## Workflow

### 1. Deep Research — 3 parallele Quell-Kanäle

Führe alle drei Recherche-Wege durch, bevor du Karten schreibst.

---

#### A) Web-Suche (Pflicht, mindestens 4 Queries)

- `new AI models released [Monat] [Jahr]`
- `LLM open source release [Monat] [Jahr]`
- `AI model benchmark [Monat] [Jahr]`
- Anbieter-spezifisch wenn nötig: OpenAI, Anthropic, Google, Meta, Mistral, DeepSeek, xAI, Alibaba/Qwen, Xiaomi, NVIDIA, MiniMax, Moonshot, Zhipu AI ...

---

#### B) YouTube-Kanal-Recherche (Pflicht)

YouTube-Seiten sind nicht direkt abrufbar — nutze stattdessen gezielte Web-Suchen nach Video-Titeln dieser Kanäle:

**Caleb Writes Code** (`@CalebWritesCode`):
```
site:youtube.com "caleb writes code" [Modellname oder "new model"] [Monat] [Jahr]
```
oder
```
"caleb writes code" new AI model [Monat] [Jahr]
```

**Everlast AI** (`@EverlastAI` o.ä. — exakten Kanalnamen ggf. einmal suchen):
```
"everlast AI" youtube new model [Monat] [Jahr]
```

**Allgemeine Creator-Suche** als Fallback wenn kanalspezifische Suche nichts liefert:
```
youtube AI model release [Monat] [Jahr] site:youtube.com
```

**Wichtig:** Wenn ein Video-Titel ein Modell nennt, das in der Web-Suche noch nicht aufgetaucht ist → dieses Modell recherchieren und in die Karten aufnehmen. Creator decken oft schneller ab als Nachrichtenquellen.

---

#### C) Millstone AI Inference Benchmarks (Pflicht)

Rufe https://www.millstoneai.com/inference-benchmark auf.

Millstone AI misst **reale Produktions-Inference-Performance** — unabhängig, unter standardisierten Bedingungen (50+ Szenarien, kein Prompt-Caching, kein Speculative Decoding). Die Werte sind verlässlicher als viele selbst-veröffentlichte Lab-Benchmarks.

Relevante Metriken aus Millstone AI:
- **Peak Throughput** (Tokens/Sekunde)
- **Chatbot User Capacity** (wieviele simultane Nutzer bei 32K Context)
- Hardware-Konfiguration (z.B. 1x H100 SXM, 2x RTX Pro 6000 Blackwell)

Wenn ein neues Modell dort gelistet ist: Werte in die Benchmark-Zeile der Karte eintragen.

---

### 2. Zeitfenster & Aktualitätsfalle

**Zeitfenster: letzte 14 Tage** — nicht enger setzen. Bei einem engen 7-Tage-Fenster fallen wichtige Releases durch das Raster (z.B. erscheint ein Modell vom 24. April bei einer Abfrage am 10. Mai als "zu alt").

**Aktualitätsfalle:** Immer das heutige Datum kennen und nur Modelle listen die tatsächlich in den letzten 14 Tagen released wurden. Nicht ältere Modelle aufnehmen nur weil sie bekannter sind.

---

### 3. Filterung

Aufnehmen:
- ✅ Neue Modelle (inkl. neue Versionen bestehender Familien)
- ✅ Open Weights / Open Source Releases
- ✅ Preview-Releases die öffentlich zugänglich sind (als solche kennzeichnen)

Nicht aufnehmen:
- ❌ Reine Feature-Updates ohne neues Modell
- ❌ Angekündigte Modelle ohne tatsächlichen Release

---

### 4. Ausgabe: Steckbrief-Karten

Für jedes Modell eine Karte. Unbekannte Felder mit `–` markieren, **nie weglassen**.

```
🔓 OPEN SOURCE  [Lizenz]   /   🔒 CLOSED SOURCE
📦 [Modellname] — [Anbieter]
──────────────────────────────────────────────
📅 Erscheinungsdatum:  TT.MM.JJJJ  [ggf. "Preview"]
🏢 Anbieter:           Name
🎯 Einsatzgebiet:      z.B. Code, Reasoning, Multimodal, Agenten, Sprache …
🧠 Architektur:        z.B. Dense Transformer / MoE / Hybrid Mamba+Transformer / –
📐 Parameter:          z.B. 30B gesamt / 3B aktiv (MoE)  |  –
🪟 Kontextfenster:     z.B. 256K Token  |  –
📊 Benchmarks:         Akademisch: [z.B. SWE-Bench 77,6%, AIME 81%]
                       Inference (Millstone AI): [z.B. 674 Tok/s · 13 simultane User @ 1x RTX Pro 6000 Blackwell]  |  –
🔀 Varianten:          z.B. Flash / Pro  |  8B / 70B  |  –
🔓 Verfügbarkeit:      API / Webapp / Open Weights (HuggingFace) / Research only
💡 Warum relevant:     1–2 Sätze. Was ist neu oder besonders? Warum lohnt ein Blick?
```

---

### 5. Abschluss (nach allen Karten)

2–3 Sätze:
- Welcher Trend fällt auf?
- Welches Modell sticht hervor und warum?

---

## Tonalität

- Sachlich, präzise, auf Deutsch
- Fachbegriffe und Modellnamen bleiben Englisch
- Kein Marketing-Sprech
- Preview-Status explizit kennzeichnen
- Fehlende Infos mit `–` — nie raten
