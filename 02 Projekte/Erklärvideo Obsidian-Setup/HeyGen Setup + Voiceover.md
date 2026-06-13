---
tags: [projekt, video, heygen, produktion]
status: bereit-für-produktion
erstellt: 2026-06-09
gehört-zu: "[[Skript v1 - Voiceover + Bildregie]]"
---

# HeyGen Setup + Copy-Paste Voiceover

## TL;DR — der Plan für morgen

1. **HeyGen Account** anlegen (oder bestehenden nutzen)
2. **Avatar + Stimme** auswählen (Empfehlungen unten)
3. **6 Szenen** im HeyGen-Editor anlegen — Text pro Szene unten ist copy-paste-fertig
4. **Render starten** (3:30 Min Avatar-Video, ca. 5–15 Min Wartezeit)
5. **Screen Recordings** in Obsidian aufnehmen (Liste siehe Drehplan unten)
6. **Schnitt** in CapCut: Avatar als Hauptspur, Screen Recordings als B-Roll oben drauf
7. **Export** 1080p MP4 → fertig

---

## HeyGen-Account & Plan

- **URL:** https://www.heygen.com
- **Plan-Empfehlung:** "Creator" (~24 €/Monat, monatlich kündbar) — enthält 15 Min Render-Zeit, reicht für mehrere Versuche. Free-Tier reicht nicht (nur 3 Min und mit Wasserzeichen).
- **Tipp:** falls schon ein Firmen-Account existiert, dort prüfen — viele CANCOM-Bereiche haben das im Marketing-Stack.

## Avatar-Auswahl

Im HeyGen unter **"Avatars" → "Public Avatars"** filtern auf:
- **Gender:** Female
- **Style:** Business / Professional (nicht "Casual" / "Lifestyle")
- **Age:** ähnlich zur eigenen Stimme — vermeidet Uncanny-Valley
- **Background:** neutral / office

**Wichtiger Test vor dem Massen-Rendern:** Erst 15-Sek-Sample mit Szene 1 rendern, kritisch anschauen — passen Avatar und Stimme zusammen? Wenn nein: Avatar wechseln, bevor die anderen 5 Szenen gerendert werden.

## Stimme

**Eigene geclonte Stimme** verwenden — unter **"Voice" → "My Voices"** auswählen.

**Settings:** Speed **0.95–1.0** (leicht langsamer als Standard, hilft Management-Publikum), Pitch neutral.

## Avatar-Sichtbarkeit (wichtige Design-Entscheidung)

| Variante | Wie | Wann sinnvoll |
|---|---|---|
| **A) Full-Screen** | Avatar füllt das Bild, Screen Recordings nur in Intro/Outro als Cut-Aways | Wenn die Persönlichkeit im Vordergrund stehen soll |
| **B) PiP (Picture-in-Picture)** ⭐ *Empfehlung — besonders bei Public-Avatar + eigener Stimme* | Avatar klein in einer Ecke, Screen Recording dominiert | Optimaler Kompromiss für Sales-Demo — Stimme + Gesicht + sichtbares Setup. Lip-Sync-Mismatch fällt bei kleinem Avatar kaum auf. |
| **C) Voice-only** | HeyGen-Export ohne Avatar-Bild, nur Audio | Wenn der Avatar zu künstlich wirkt oder nicht zum Brand passt |

**Mein Vorschlag:** Variante **B**. Für Intro (Block 0) und Outro (Block 5) Avatar full-screen, sonst PiP unten rechts (~20 % Bildbreite). So sehen die Zuschauer das Setup *und* haben eine "Person dahinter".

---

## Pausen-Syntax für HeyGen

- **Kurze Pause** → mit `…` oder Komma — HeyGen liest das natürlich
- **Lange Pause** (1 Sek.) → im HeyGen-Editor den **"Add Pause"-Button** nutzen (kleines Uhr-Symbol über dem Text-Feld), Dauer eintragen
- **Betonungen** → einfach `**fett**` oder `*kursiv*` im Editor — manche Stimmen reagieren darauf (Conrad tut es)

---

## Voiceover-Texte — copy-paste-fertig pro Szene

> Pro Szene in HeyGen eine eigene **"Scene"** anlegen. Avatar/Stimme einmal global setzen — gilt dann für alle Szenen.

> **Version v2 — mit SSML-Pausen für HeyGen.** "Claudian" wurde durch "KI-Assistent" / "KI-Plugin" ersetzt (Sales-neutrale Formulierung).

### Szene 1 — Hook (0:15)

```
Drei Tage nach einem wichtigen Termin..  <break time="0.5s" /> erinnern Sie sich noch an die Hälfte.... <break time="0.5s" /> Wissen, das Geld wert ist, geht verloren...  <break time="0.5s" /> Ich zeige Ihnen in drei Minuten, wie ich das gelöst habe.  <break time="0.5s" /> <break time="0.5s" />
```

### Szene 2 — Sammeln (0:35)

```
Mein Setup hat drei Bausteine. Erstens: nichts geht verloren. <break time="0.5s" />

Jedes Teams-Meeting wird automatisch mitgeschnitten und transkribiert. Das Transkript landet anschließend in meinem Wissenssystem. <break time="0.5s" />

Dieses System ist Obsidian — mein zweites Gehirn.  <break time="0.5s" /> <break time="0.5s" />
```

### Szene 3 — Strukturieren (0:35)

```
Baustein zwei: Struktur, ohne Aufwand. <break time="0.5s" />

Vier Bereiche — Projekte, Bereiche, Ressourcen, Archiv. Aktuelles oben, Hintergrundwissen unten. <break time="0.5s" />

Und das Beste: Notizen verknüpfen sich gegenseitig. Spreche ich heute über Kunde X — sehe ich sofort, was vor drei Monaten lief.  <break time="0.5s" /> <break time="0.5s" />
```

### Szene 4 — Abfragen *(Hauptszene, 0:55)*

```
Jetzt kommt der eigentliche Hebel — Baustein drei. <break time="0.5s" />

Ich habe einen KI-Assistenten direkt in Obsidian eingebaut. Er kann etwas, das früher unmöglich war: mit meinem gesamten Wissen sprechen.  <break time="0.5s" />

Beispiel: Nächste Woche Kundentermin. Früher: halbe Stunde in Mails wühlen. Heute… frage ich einfach.  <break time="0.5s" />

In Sekunden bekomme ich eine Zusammenfassung — mit Quellen, mit Verlinkung zu jeder einzelnen Notiz. Nachvollziehbar. Nachprüfbar.  <break time="0.5s" />

So wende ich agentische KI an. In diesem Fall fungiert Obsidian als mein zweites Gehirn.  <break time="0.5s" /> <break time="0.5s" />
```

### Szene 5 — Wiederverwerten (0:40)

```
Baustein vier: wiederverwerten. Das spart mir jeden Tag echte Stunden.  <break time="0.5s" />

Aus jeder Notiz lasse ich das KI-Plugin formulieren — Follow-up-Mail. LinkedIn-Post. Angebotsentwurf. Zusammenfassung fürs Team.  <break time="0.5s" />

Was früher eine Abendstunde war… ist in zwei Minuten fertig. Und ich bleibe der Mensch in der Schleife.  <break time="0.5s" /> <break time="0.5s" />
```

### Szene 6 — Outro (0:30)

```
Drei Bausteine. Eine Wirkung.  <break time="0.5s" />

Teams-Mitschnitt — damit nichts verloren geht. Obsidian — damit alles seinen Platz findet. Das KI-Plugin — damit ich mein Wissen jederzeit nutzen kann.  <break time="0.5s" />

Das Ergebnis: Weniger Aufwand. Bessere Organisation. Ich vergesse nichts. Ich bin besser vorbereitet. Ich denke klarer.  <break time="0.5s" />
```

---

## Drehplan — Screen Recordings (ca. 30 Min Aufwand)

Pro Clip: **15–30 Sekunden**. Tool: **QuickTime Player** ("Datei → Neue Bildschirmaufnahme") oder **OBS**. Cursor sichtbar lassen, leicht größer als normal.

| # | Was aufnehmen | Verwendung in |
|---|---|---|
| 1 | Teams-Meeting läuft, rotes Aufzeichnungs-Icon sichtbar | Block 1 |
| 2 | Teams nach Meeting: Recording-Tab → Schwenk auf Obsidian-Sidebar, neue Notiz erscheint | Block 1 |
| 3 | Obsidian voll sichtbar, Sidebar mit Ordnerstruktur, Cursor über die 4 Hauptordner | Block 2 |
| 4 | Eine Notiz öffnen mit mehreren `[[Wikilinks]]` → Klick auf Graph View, Knoten sichtbar | Block 2 + 3 *(beide Blöcke nutzen denselben Graph!)* |
| 5 | Claudian-Symbol klicken → Chat-Panel öffnet sich → Frage tippen → Antwort scrollt ein | Block 3 |
| 6 | Drei schnelle Outputs: fertige Mail / LinkedIn-Post / Angebotsentwurf — je ~5 Sek | Block 4 |
| 7 | Mail-Entwurf voll sichtbar, Cursor zur "Senden"-Schaltfläche | Block 4 |

**Wichtig zu #4:** Den Graph-View-Screenshot später in Block 3 nochmal verwenden. Beim Aufnehmen darauf achten, dass die Knoten-Anordnung visuell wiedererkennbar ist.

**Test-Daten:** Wenn echte Kundennamen zu sensibel sind — vorher einen Test-Vault mit anonymisierten Notizen anlegen (z.B. "Kunde Müller GmbH" statt echtem Namen).

---

## Schnitt in CapCut (ca. 1 Std)

1. **HeyGen-MP4** auf Hauptspur ziehen
2. **Screen Recordings** auf zweite Spur darüber, an den richtigen Stellen schneiden (siehe Bildregie im Hauptskript)
3. Bei PiP-Variante: Avatar auf Position bringen (z.B. unten rechts, ~20 % Größe)
4. **Übergänge:** Crossfade 0.3 Sek zwischen Cuts, nicht hart
5. **Musik:** dezenter Background-Track (CapCut hat lizenzfreie Tracks) auf 8–12 % Lautstärke
6. **Untertitel:** "Auto-Captions" anwerfen, einmal Korrektur lesen
7. **Export:** 1080p, MP4, ~25 fps

---

## Risiko-Liste — was morgen schief gehen könnte

| Risiko | Vermeidung |
|---|---|
| HeyGen-Render dauert länger als gedacht | Erste Szene sofort testen (30 Sek-Sample), nicht erst alle 6 vorbereiten |
| Avatar-Stimme klingt zu künstlich | Plan B: Variante C (Voice-only) oder dein Chef spricht selbst per Plaud/Teams-Aufnahme |
| Screen Recording zeigt sensible Daten | Test-Vault mit anonymisierten Notizen vorbereiten |
| Zeit zu knapp | Hook + Outro sind Pflicht. Block 2 + 4 kürzbar wenn nötig |
| Untertitel falsch (deutsche Fachbegriffe) | "Claudian", "Obsidian", "PARA" händisch korrigieren |
