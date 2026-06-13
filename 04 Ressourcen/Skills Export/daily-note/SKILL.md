---
name: daily-note
description: Use at every session start to automatically create today's daily note in the vault if it doesn't already exist, without waiting for the user to ask.
---

# Daily Note

## Overview

Automatische Erstellung der heutigen Daily Note in `05 Daily Notes/`. Läuft bei jedem Session-Start — ohne dass Eva explizit darum bitten muss.

## Verhalten bei Session-Start

1. **Datum ermitteln** — `date +%Y-%m-%d`
2. **Prüfen** ob `05 Daily Notes/YYYY-MM-DD.md` bereits existiert
3. **Wenn nicht vorhanden**: Datei mit Template anlegen (siehe unten)
4. **Wenn vorhanden**: Nichts tun — still weitermachen
5. **Kurze Bestätigung** ausgeben: "📅 Daily Note für YYYY-MM-DD wurde angelegt." oder "📅 Daily Note für heute ist bereits vorhanden."

## Template

```markdown
---
tags: [daily-note]
status: aktiv
erstellt: YYYY-MM-DD
---

# YYYY-MM-DD

## Fokus heute

## Notizen

## Offene Punkte

## Rückblick
```

## Wichtige Regeln

- **Niemals** eine bestehende Daily Note überschreiben
- Datum immer frisch per `date` ermitteln — niemals aus dem Kontext raten
- Der YAML-Block muss vollständig sein (tags, status, erstellt)
- Kein eigener Abschnitt oder Kommentar — direkt erstellen und kurz bestätigen
- Nach Bestätigung **normal weitermachen** mit dem Rest des Session-Starts (Inbox prüfen etc.)
