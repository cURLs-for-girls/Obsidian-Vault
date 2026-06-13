---
name: sales-unterlagen
description: Use when Eva wants to compose a post-meeting email with sales documents for the Vertrieb after a customer appointment (Kundentermin). Triggers on "Unterlagen verschicken", "Follow-up Mail", "Nachbereitung Termin", "Unterlagen für Vertrieb", or after logging a customer meeting note.
---

# Sales-Unterlagen Mail

Erstellt die Standard-Nachberichtsmail an den Vertrieb nach einem Kundentermin. Kurz, direkt, keine Schnörkel.

---

## Workflow

1. **Kontext lesen** — aktuelle Meetingnotiz lesen (`<current_note>` oder Projektdatei). Was wurde gezeigt? Was hat den Kunden interessiert? Welche Follow-ups wurden vereinbart?
2. **Dokumente auswählen** — aus dem Katalog unten die passenden raussuchen
3. **Mail zusammenbauen** — nach dem Template unten
4. **Ausgabe** — fertige Mail direkt kopierbereit, kein Drumherum

---

## Mail-Template

```
Hallo [Name],

anbei die Unterlagen von gestern:

[Dokument 1]
[Dokument 2]
[Link: Bezeichnung: URL]
...

> [Follow-up-Hinweis falls vorhanden]

Viele Grüße
Eva
```

**Regeln für den Inhalt:**
- Nur Dokumente die zum Gespräch passen — nicht alles auf einmal
- Links mit kurzem Label (z.B. `Demohub: https://demo.cancom-ds.de/`)
- Follow-up nur wenn es ein konkretes Next-Step gibt — in `>` Blockquote
- Kein "Ich hoffe das hilft", kein "Bei Fragen stehe ich gerne zur Verfügung"
- Kein Siezen — immer du/ihr

---

## Dokument-Katalog

### Decks & Flyer

| Bezeichnung | Datei | Wann verwenden |
|---|---|---|
| Präsentation | Kundenpitch (z.B. `07 Anhänge/AI Pitch DiaSys.pdf`) — **kundespezifisch anpassen** | Immer, wenn eine Folienpräsentation gezeigt wurde |
| Flyer AI Discovery Workshop | `07 Anhänge/CANCOM AI Discovery Workshop - Von der Idee zur Umsetzung (Flyer, DE) (1).PDF` | Wenn AI-Strategie, Einstieg, PoC oder Workshop thematisiert wurde |
| Flyer CANCOM Assistant | `07 Anhänge/CANCOM Assistant - KI-Chatbot Lösung (Flyer, DE).pdf` | Wenn Chatbot, internes Wissen, RAG oder Datensouveränität Thema war |

### Links & Demos

| Bezeichnung | URL | Beschreibung |
|---|---|---|
| Demohub | https://demo.cancom-ds.de/ | CANCOM Demo-Umgebung — bei konkretem Produktinteresse mitschicken |
| DGX Spark Spotlight | https://shop.cancom.de/de/spotlights/nvidiadgxspark | Bei DGX Spark Interesse / Testinstanz-Anfrage |

### Referenzen

| Bezeichnung | Datei | Video | Beschreibung |
|---|---|---|---|
| Referenz ASYS | `07 Anhänge/Referenz_Asys_DE (1).PDF` | https://vimeo.com/1175134384/1670176d62?fl=ip&fe=ec | ASYS Group (Elektronikfertigung, 1.300 MA) — AI Vision Extractor, >2 Monate Zeitersparnis, <4 Wochen PoC |

### Produkte mit Follow-up-Bedarf

| Produkt | Typischer Follow-up |
|---|---|
| Digital Voice Agent | Separaten Demo-/Follow-up-Termin vereinbaren |
| DGX Spark | Testinstanz-Prozess erklären, Spotlight-Link mitschicken |
| AI Discovery Workshop | Terminvorschlag für Workshop mitschicken |
| CANCOM Assistant | PoC-Möglichkeit ansprechen, Demohub zeigen |

> **Katalog wächst.** Neue Dokumente einfach hier ergänzen wenn Eva sie liefert.

---

## Beispiel (aus echtem Termin)

```
Hallo Alex,

anbei die Unterlagen von gestern:

Präsentation
Flyer AI Discovery Workshop
Flyer CANCOM Assistant
Demohub: https://demo.cancom-ds.de/
Referenz ASYS: PDF | Video

> Du hattest großes Interesse am Digital Voice Agent. Ich würde da gerne einen kurzen Demo-Termin machen — meld dich einfach.

Viele Grüße
Eva
```

---

## Stil-Reminder

Evas Mail-Ton: kurz, direkt, freundlich. Kein Corporate-Speak.
- ❌ "Im Nachgang zu unserem gestrigen Gespräch übermittle ich Ihnen anbei die besprochenen Unterlagen."
- ✅ "Anbei die Unterlagen von gestern:"
