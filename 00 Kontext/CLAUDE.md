# Vault Context

Dieses Vault ist das Zweite Gehirn von Eva Dölle (Spitzname: Eve).

## Über mich

Eva, AI Consultant bei CANCOM GmbH (Competence Center Cloud & Datacenter) in Mannheim. Fachgebiet: AI Infrastruktur – von AI Storage über Server und GPUs bis hin zu vollständigen Referenzarchitekturen. Hilft dem Vertrieb bei Kundenterminen (Presales), forscht zu AI Storage und liebt es, komplexe technische Themen so zu erklären dass sie jeder versteht. Privat leidenschaftliche Kampfsportlerin, Frisbee-Spielerin und KI-Bastlerin. Ausführliches Profil in [[00 Kontext/Über mich]].

## Vault-Struktur

- **00 Kontext/**: Persönliches Kontext-Profil (Über mich, ICP, Angebot, Schreibstil, Branding). Zentrale Referenz für alle inhaltlichen Aufgaben. Lies diese Dateien wenn du Content erstellst, LinkedIn-Posts schreibst, Angebote formulierst oder Präsentationen vorbereitest.
- **01 Inbox/**: Schnelle Gedanken, Brain Dumps, Meeting-Mitschriften ohne klaren Kontext. Alles was noch keinen festen Platz hat landet hier.
- **02 Projekte/**: Aktive Projekte mit konkretem Ziel. Starten als einzelne `.md` Datei. Nur bei komplexen Projekten mit mehreren Dateien (z.B. Meeting-Notizen, Anhänge) wird ein Unterordner erstellt.
- **03 Bereiche/**: Laufende Verantwortungsbereiche ohne Enddatum, aufgeteilt in Privat und Arbeit. Jeder Bereich ist ein Ordner der über die Zeit wächst.
- **04 Ressourcen/**: Referenzmaterial, Wissen, gesammelte Informationen zu Fachthemen. Jedes Thema ist ein eigener Ordner.
- **05 Daily Notes/**: Tägliches Logbuch. Format: `YYYY-MM-DD.md`. Gibt mir Kontinuität zwischen Sessions.
- **06 Archiv/**: Abgeschlossene Projekte und inaktive Bereiche. Nur auf Evas Anweisung verschieben.
- **07 Anhänge/**: Bilder, PDFs, Medien. Obsidian legt hier automatisch alle eingefügten Dateien ab.

## Regeln für dieses Vault

- Nutze `[[Wikilinks]]` für Verknüpfungen zwischen Notizen
- Neue Notizen ohne klaren Kontext kommen in `01 Inbox/`
- Meeting-Notizen gehören zum Projekt oder Bereich – wenn ein Projekt mehrere Dateien braucht, wird es zum Ordner erweitert
- Daily Notes im Format `YYYY-MM-DD.md` (z.B. `2026-05-14.md`)
- YAML Frontmatter in jeder Datei: `tags`, `status`, `erstellt`
- Projekte (`02 Projekte/`) bekommen zusätzlich `priorität` (hoch/mittel/niedrig) und `fällig` (Datum). Wenn Eva an einem Projekt arbeitet, nach beiden Feldern fragen falls sie noch fehlen.
- Ressourcen (`04 Ressourcen/`) bekommen zusätzlich `hersteller` (Liste der relevanten Anbieter/Quellen)
- Dateinamen in normaler Schreibweise mit Leerzeichen und Großbuchstaben
- Abgeschlossene Projekte nach `06 Archiv/` verschieben – nur auf Evas Anweisung
- Bevor du Dateien löschst oder überschreibst, nachfragen
- Wenn Eva sagt "merk dir das": in die passende Kontext-Datei speichern. Schreibregeln → `00 Kontext/Schreibstil.md`, Projekt-Infos → Projektdatei, Vault-Regeln → diese CLAUDE.md. Im Zweifel kurz fragen.
- Ausstehend: Eva liefert noch CANCOM-Designmaterial und das Logo der Dölle Krack GbR → dann `00 Kontext/Branding.md` vervollständigen

## Evas Superpower

Eva kann komplexe technische Zusammenhänge einfach und anschaulich erklären. Das ist ihr größter Mehrwert – für Kunden, Vertrieb und LinkedIn. Diesen Stil immer widerspiegeln.

## Session-Routinen

### Bei Session-Start
**Automatisch, ohne dass Eva etwas tippen muss — in dieser Reihenfolge:**
1. **Daily Note anlegen**: Verwende den `daily-note`-Skill. Prüfe ob `05 Daily Notes/YYYY-MM-DD.md` für heute bereits existiert. Falls nicht: direkt anlegen. Kurze Bestätigung ausgeben (eine Zeile), dann weitermachen.
2. **Inbox prüfen**: Prüfe `01 Inbox/` auf neue Notizen. Zeige kurz was drin liegt und biete an die Einträge einzusortieren.

### Kontext bei Bedarf
Wenn Eva fragt "Was ist gerade aktuell?" oder "Wo war ich stehen geblieben?": Lies die letzten 2–3 Daily Notes in `05 Daily Notes/` und die aktiven Projektdateien in `02 Projekte/` für ein kurzes Briefing.

### LinkedIn-Funken still mitsammeln
Während Eva an Projekten, Recherchen oder Kundenthemen arbeitet, im Hintergrund mitdenken: Gibt das einen LinkedIn-Post her? Wenn ja, **still** (ohne Eva zu unterbrechen) als Eintrag in `01 Inbox/LinkedIn Funken.md` unter "Offene Funken" oben einfügen. Format: Hook + Kontext (mit Wikilink) + Warum interessant.

Kriterien für einen Funken:
- Konkreter Aha-Moment (nicht nur "haben über X gesprochen")
- Presales-Relevanz: AI-Infrastruktur, AI Storage, GPU, Architektur-Entscheidungen, Kunden-Pain-Points
- In einem Satz erklärbar (sonst ist es kein guter Post)

Standard-Hashtags für Posts: `#TeamCANCOM #AIInfrastructure #AIAgents` + themenspezifisch.

### Bei Session-Ende
Anbieten:
1. **Daily Note befüllen**: Die Note für heute wurde beim Start angelegt — jetzt Zusammenfassung des Tages ergänzen (was wurde besprochen, entschieden, gelernt?)
2. Neue Erkenntnisse als Notizen speichern
3. Inbox aufräumen falls nötig
4. Falls neue LinkedIn-Funken in `01 Inbox/LinkedIn Funken.md` gesammelt wurden: Eva darauf hinweisen (z.B. "3 neue Funken heute, willst du einen ausarbeiten?") und bei Bedarf nach Template ausformulieren.

## Merker

- **skills_export**: Single Source of Truth für alle Claudian-Skills (10 Stück) in `04 Ressourcen/Skills Export/`. `~/.claude/skills/` enthält nur Symlinks ins Vault — wenn ich SKILL.md im Vault editiere, ist die Änderung in der nächsten Session live. Pipeline für neue Skills aus claude.ai: ZIP entpacken in den Ordner, dann `bash "04 Ressourcen/Skills Export/sync-to-claudian.sh"` ausführen. Übersicht in [[04 Ressourcen/Skills Export/Skills Export.md]]. Stand: 2026-05-26.
