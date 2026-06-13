---
name: internes-meeting
description: >
  Verarbeitet Transkripte von internen Business-Meetings (BU-Runden, Regionen-Calls, QBRs).
  Erstellt strukturierte Zusammenfassung als Event-Log mit Stimmungsbild, regionalen Feedbacks
  und optionalen Hersteller-Highlights. Speichert das Ergebnis als Vault-Notiz.
---

# Internes Meeting – Transkript → Strukturierte Zusammenfassung

Verarbeite ein internes Meeting-Transkript in drei Schritten:
1. Transkript vollständig lesen und Meeting-Struktur verstehen
2. Strukturierte Zusammenfassung als Event-Log ausgeben
3. Als Vault-Notiz speichern

---

## Schritt 1: Transkript lesen & verstehen

Bevor du irgendetwas schreibst: Transkript vollständig lesen.

Herausarbeiten:
- **Meeting-Typ** – Wer spricht? Welche Regionen/BUs? Moderator identifizierbar?
- **Agenda-Punkte** – Was waren die offiziellen Punkte, was kam spontan?
- **Stimmungsbild** – Wie ist die allgemeine Stimmung? Wo gibt es Frust, wo Euphorie?
- **Regionale Differenzen** – Welche BUs/Regionen haben abweichende Haltungen?
- **Hersteller-Themen** – Welche Hersteller werden diskutiert, wie ist die Haltung?
- **Starke O-Töne** – Wörtliche Aussagen, die die Stimmung auf den Punkt bringen
- **Aktionspunkte** – Was wurde beschlossen oder soll als nächstes passieren?

---

## Schritt 2: Strukturierte Zusammenfassung

Format exakt so ausgeben:

```
MEETING: [Titel / Datum falls erkennbar]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

STIMMUNGSBILD
[2–3 Sätze. Wie war die Gesamtstimmung? Was dominiert emotional? Was lief gut?]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EVENT LOG
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Pro Thema ein Block:]

### [Thema / Agenda-Punkt]
*Stimmung: [neutral / positiv / kritisch / gemischt / sehr kritisch]*

- [Kernaussagen als Bullets]
- [Regionale Differenzen falls vorhanden: "Nord: ... West: ..."]
- [O-Ton falls vorhanden: > "Zitat"]
- [Aktionspunkt falls vorhanden: → Wer macht was bis wann]

[Nächster Block ...]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
AKTIONSPUNKTE GESAMT
[Nummerierte Liste: Wer / Was / Bis wann (falls bekannt)]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
HERSTELLER-HIGHLIGHTS
[Nur wenn explizit gewünscht oder wenn ein Hersteller dominant diskutiert wird]
[Pro Hersteller: Ausgangslage → Kritik → Positive Punkte → Empfehlung]
```

---

## Schritt 3: Als Vault-Notiz speichern

Speicherort bestimmen:
- Meeting zu aktivem Projekt → `02 Projekte/[Projektname]/`
- Meeting zu laufendem Bereich (z.B. Broadcom, HPE, interne Organisation) → `03 Bereiche/03.2 Arbeit/`
- Unklar oder kein fester Platz → `01 Inbox/`

**Dateiname:** `[Titel] [YYYY-MM-DD].md` (z.B. `Team JF BUs 2026-05-28 Meeting Notes.md`)

**Frontmatter immer:**
```yaml
---
tags: [meeting, interne, ...themenspezifische Tags...]
status: inbox
erstellt: [YYYY-MM-DD]
---
```

**Zusätzlich für Projekte:** `priorität` und `fällig` erfragen falls noch nicht bekannt.

---

## Umgang mit schwierigen Transkripten

- **Schlechte ASR-Qualität / viele Wortverwechslungen:** Sinngemäß extrahieren. Offensichtliche Fehler (z.B. Eigennamenverwechslungen) kennzeichnen mit `[?]`.
- **Viele Sprecher, unklar wer spricht:** Im Event-Log auf Zuordnung verzichten wenn unsicher. Nur zuordnen wenn eindeutig.
- **Sehr langer Call (>60 Min):** Auf die wichtigsten 5–7 Themenblöcke fokussieren, administrative Randgespräche weglassen.
- **Regionen-Runden (typisch für BU-Calls):** Jede Region als eigenen Sub-Block im Event-Log darstellen, Stimmung pro Region explizit benennen.

---

## Regeln für Stimmungswiedergabe

- Stimmung **nie glätten** – wenn jemand "voll genervt" ist, steht das so da
- O-Töne nur wenn wirklich im Transkript – nie erfinden
- Unterschied zwischen **konstruktiver Kritik** ("wir müssen das besser machen") und **strukturellem Frust** ("das ist ein grundlegendes Problem") kenntlich machen
- Wenn mehrere Regionen ähnliche Aussagen machen: zusammenfassen mit "Alle/Mehrere Regionen berichten..."
- Ironie und Galgenhumor als solche markieren

---

## Hersteller-Highlight (optional, auf Anfrage)

Wenn Eva sagt "Highlight [Hersteller]" oder "ich brauche das für [Event/Gespräch]":

```
⭐ [HERSTELLER] HIGHLIGHT – für [Event/Kontext]

AUSGANGSLAGE
[Zahlen, Marktposition, was hat sich verändert?]

WAS DIE TEAMS BERICHTEN
[Konkrete Fälle, O-Töne, regional differenziert]

POSITIVE ANKERPUNKTE
[Was funktioniert, wer sind verlässliche Kontakte?]

NÄCHSTE SCHRITTE INTERN
[Was wurde beschlossen oder ist geplant?]

BOTSCHAFTEN FÜR [EVENT/GESPRÄCH]
[Tabelle: Thema → CANCOM-Position]
```

---

## Ausgabe-Reihenfolge

1. Event-Log Zusammenfassung (Schritt 2)
2. Hersteller-Highlights falls angefragt
3. Kurze Rückfrage: "Soll ich die Notiz unter [vorgeschlagener Pfad] speichern?"
4. Nach Bestätigung: Vault-Notiz anlegen

Keine Meta-Einleitung wie "Hier ist deine Zusammenfassung" – direkt mit dem Stimmungsbild beginnen.
