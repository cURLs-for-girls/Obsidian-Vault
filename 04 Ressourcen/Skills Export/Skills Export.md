---
tags:
  - skills
  - claude
  - claudian
  - referenz
aliases:
  - skills_export
status: aktiv
erstellt: 2026-05-26
hersteller:
  - Eva Dölle
  - Anthropic Claude
---

# Skills Export

Zentrale Ablage und Single Source of Truth für alle Claude-Skills, die ich in **Claudian** (lokaler Obsidian-Agent) nutze.

**Wichtig:** Die Dateien hier sind die echten Originale. `~/.claude/skills/` enthält nur Symlinks darauf. Wenn ich eine `SKILL.md` hier editiere, ist die Änderung in der nächsten Claudian-Session live.

## Skill-Übersicht

| Skill | Zweck |
|---|---|
| [[04 Ressourcen/Skills Export/chat-compaction/SKILL.md\|chat-compaction]] | Komprimiert laufenden Chat zu Handover-Block für neuen Chat (Token-Sparen in claude.ai) |
| [[04 Ressourcen/Skills Export/ki-marktradar/SKILL.md\|ki-marktradar]] | Tagesaktueller Marktradar für KI-Industrie: M&A, Partnerschaften, Hardware, Tools |
| [[04 Ressourcen/Skills Export/ki-spuren-entfernen/SKILL.md\|ki-spuren-entfernen]] | Sprachliche KI-Spuren in deutschen Texten erkennen und entfernen (Eva-Stil) |
| [[04 Ressourcen/Skills Export/latest-models/SKILL.md\|latest-models]] | Neueste KI-Modell-Releases (~14 Tage) als Steckbrief-Karten, mit Deep Research |
| [[04 Ressourcen/Skills Export/plaud-ai/SKILL.md\|plaud-ai]] | Transkripte (Vorträge/Meetings/Podcasts) → strukturierte Zusammenfassung + LinkedIn-Post |
| [[04 Ressourcen/Skills Export/recherche-bericht/SKILL.md\|recherche-bericht]] | Umfassende, quellenbelegte Recherche als gespeichertes Dokument |
| [[04 Ressourcen/Skills Export/rechnung-erstellen/SKILL.md\|rechnung-erstellen]] | Rechtskonforme PDF-Rechnung aus minimalen Angaben generieren |
| [[04 Ressourcen/Skills Export/sales-unterlagen/SKILL.md\|sales-unterlagen]] | Follow-up-Mail mit Sales-Unterlagen nach Kundenterminen vorbereiten |
| [[04 Ressourcen/Skills Export/schnellrecherche/SKILL.md\|schnellrecherche]] | Schneller Themenüberblick aus mehreren Quellen, in 2 Minuten lesbar |
| [[04 Ressourcen/Skills Export/vortrag-zu-linkedin/SKILL.md\|vortrag-zu-linkedin]] | Transkript → Zusammenfassung + humanisierter LinkedIn-Post (Dublette zu plaud-ai) |

## Architektur

```
04 Ressourcen/Skills Export/    ← Echte Dateien (hier editieren)
        ↑ Symlink
~/.claude/skills/                ← Claudian lädt hier von
```

Vorteile: keine Sync-Drift, Obsidian indiziert die echten Dateien, Änderungen sofort live.

## Pipeline: Neuen Skill aus claude.ai übernehmen

1. **In claude.ai** den Skill bauen / exportieren (ZIP-Download)
2. **ZIP entpacken** und Ordner nach `04 Ressourcen/Skills Export/` ziehen — Format ist immer `<skill-name>/SKILL.md`
3. **Symlink anlegen** mit:
   ```bash
   bash "04 Ressourcen/Skills Export/sync-to-claudian.sh"
   ```
4. **Claudian neu starten** — neuer Skill ist verfügbar

Das Script `sync-to-claudian.sh` ist idempotent (mehrfach ausführbar, ohne Schaden) und meldet Konflikte (z.B. wenn bereits ein echter Ordner mit dem Namen in `~/.claude/skills/` liegt).

### Pipeline: Skill direkt im Vault bearbeiten

- `SKILL.md` in Obsidian öffnen, ändern, speichern
- Beim nächsten Claudian-Session-Start ist die neue Version live (keine Sync nötig — der Symlink zeigt direkt auf die Datei)

### Pipeline: Skill umbenennen oder löschen

- Ordner im Vault umbenennen oder löschen
- `sync-to-claudian.sh` ausführen — räumt verwaiste Symlinks auf

## Spezialfall ki-spuren-entfernen

Zwei Versionen existierten parallel (Vault-Web-Export vs. Claudian-lokal). Die Claudian-Version ist umfangreicher (Interpunktions-Priorisierung, Schreibstil-Referenz) und wurde zur kanonischen `SKILL.md` gemacht. Die alte Web-Export-Version liegt daneben als `SKILL.claude-ai-export.md` — als Backup und Vergleichsquelle.

Bei Gelegenheit prüfen, ob ich die Web-Version bei claude.ai aktualisieren will, damit beide Welten denselben Skill nutzen.

## Backup

Vollständiges Backup beider ursprünglichen Welten (vor Konsolidierung) liegt in:
- `06 Archiv/Skills Backup 2026-05-26/claudian-local/` — was vorher in `~/.claude/skills/` lag
- `06 Archiv/Skills Backup 2026-05-26/vault-export-original/` — was Eva ursprünglich exportiert hat

## Offene Punkte

- `plaud-ai` und `vortrag-zu-linkedin` haben fast identische Descriptions → bei Gelegenheit konsolidieren oder klar abgrenzen
- `chat-compaction` ist für claude.ai-Consumer-App gedacht — in Claudian theoretisch obsolet, aber stört nicht
- ki-spuren-entfernen Versionen langfristig zusammenführen (siehe oben)

## Suchstichwort

`skills_export` — referenziert diesen Index.
