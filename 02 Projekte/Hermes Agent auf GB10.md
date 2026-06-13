---
tags: [projekt, ki, agenten, hermes, gb10, ai-infrastructure]
status: planung
erstellt: 2026-06-02
priorität: mittel
fällig: 2026-06-04
---

# Hermes Agent auf GB10

## Ziel

Ein autonomes Agentensystem auf der Dell GB10 (zuhause) aufsetzen mit **Hermes Agent von Nous Research** ([Website](https://hermes-agent.nousresearch.com/)). Ziel: Agenten/Subagenten erforschen, Kanban-Dashboard nutzen, ersten echten Use Case fahren (Freiluftbunker + Loft-Projekt).

**Hardware**: Dell GB10 (NVIDIA Grace Blackwell, 128 GB Unified Memory), aktuell zuhause, Setup ab Donnerstag 2026-06-04.

**Existierender Stack**: Claude Pro (Chat), Claudian (Agent im Vault), Perplexity Pro (Recherche), Obsidian (dieses Vault), Todoist.

## Entscheidungen aus dem Brainstorming (2026-06-02)

### Modell-Strategie: Hybrid (Option C)
- Hermes orchestriert lokal auf der GB10
- Reasoning kommt aus **Claude API (Sonnet 4.5)** und **Perplexity API**
- Später: lokales OSS-Modell auf der GB10 für günstige Routine-Tasks
- Begründung: Optimum aus den verfügbaren KIs holen + LinkedIn-Aufhänger

### Integration: Hermes als Außenagent (Option 1, MVP-light)
- Hermes lebt komplett auf der GB10
- Aufträge per Telegram/Signal/CLI
- **Vault-Sync explizit zurückgestellt** als Add-on Phase 3 (Eva: "cool aber nicht zwingend nötig")
- Vault bleibt Source of Truth, Claudian bleibt Editor-Co-Pilot

### Was bewusst NICHT im MVP ist
- Kein OneDrive/Obsidian-Sync
- Kein lokales OSS-Modell zu Beginn (die 128 GB schlafen erstmal)
- Kein automatisches Reinschreiben ins Vault

## Phasen-Plan

### Phase 1 — MVP "Hermes auf GB10, von überall erreichbar"

**Setup:**
- OS: NVIDIA DGX OS (kommt mit der GB10, Ubuntu-basiert) — nichts ändern
- Remote-Zugang: **Tailscale** installieren → von Mac aus per SSH erreichbar ohne Port-Forwarding
- Hermes installieren via Nous Research Install-Skript (Linux One-Liner)
- Sandbox-Backend: **Docker** (kommt mit DGX OS)

**Modell-Backend (KISS):**
- Nur Anthropic API mit **Sonnet 4.5** als Reasoning-Modell
- Anthropic API Credits: 20-50€ zum Spielen
- **Hard Budget Cap in Hermes auf 5€/Tag** (Notbremse gegen runaway agent)
- Perplexity API als Tool-Quelle für Web-Recherche (kommt aus Pro-Abo, $5/Monat Credits)

**Interface:**
- **Telegram** als Hauptkanal — Hermes kann das nativ, vom Handy aus chatten
- Plus CLI auf der GB10 für Debugging

**Erster Use Case:**
- Bunker-Projekt — Auftrag per Telegram: "Recherchier Bunker-Kauf in Deutschland: rechtliche Lage, Bauamtsprozess, typische Kosten"
- Hermes legt Notizen lokal in `~/.hermes/` an
- Ergebnisse kommen per Telegram zurück → Eva copy-pastet manuell ins Vault was sie behalten will

**Ergebnis**: An einem Abend installierbar, ~25€ Setup-Credits, sofort spielbereit.

### Phase 2 — Hybrid einschalten (ca. Woche 2)

- Auf der GB10 ein OSS-Modell starten: **Hermes 4 70B** von Nous Research (passt namens-poetisch UND ist auf Tool-Use trainiert)
- Server: **Ollama** (einfacher) oder **vLLM** (schneller)
- Hermes Agent konfigurieren — Routing:
  - Leichte Tasks (Tagging, Memory-Lookup, Status-Updates auf Kanban) → lokales Modell, 0€
  - Harte Reasoning-Tasks (Recherche-Synthese, Texte) → Claude API
- **LinkedIn-Aufhänger**: "Mein Hermes denkt lokal für die kleinen Sachen, ruft Claude nur wenn nötig — Token-Bill um 80% gesenkt"

### Phase 3 — Vault-Integration (Add-on, wenn es juckt)

- Hermes schreibt in `01 Inbox/Hermes/YYYY-MM-DD.md` direkt ins Vault
- OneDrive-Sync-Konflikte vermeiden über strikte Schreibregeln (nur Append, neue Dateien, fester Ordner)
- Erst angehen wenn Phase 1+2 wirklich laufen

## Risiken (für Eva intern, NICHT direkt umsetzen — als Mental-Backlog)

### 1) Token-Kosten 💸 — größtes Risiko
- Claude Pro ≠ Claude API. Hermes braucht separaten Anthropic API Key mit Credits
- Sonnet 4.5: $3/Mio Input, $15/Mio Output. 4h autonomer Agent = 10-30€/Session
- Horror-Story: Agent vergisst sich zu stoppen, über Nacht 200€ weg
- **Mitigation**: Hard Budget Cap, Smart Routing zu lokalem Modell, aggressives Prompt Caching, mit Haiku starten

### 2) OneDrive-Sync-Konflikte 🌀
- Vault liegt in OneDrive-CANCOMGmbH. GB10 + Mac + OneDrive Sync = potenzielle Dateikorruption
- **Mitigation (für Phase 3)**: Dedizierter Hermes-Ordner, nur Append/Neue Dateien, Daily-Log-Notiz

### 3) Inbox-Pollution 🗑️
- Autonome Agenten produzieren viel. 3 Tage Recherche = 50+ Notizen ohne Kuratierung
- **Mitigation**: Strukturierte Frontmatter (`quelle`, `vertrauen`, `status: roh|review|verifiziert`), tägliches Kurations-Ritual

### 4) Auto-generated Skills ⚠️
- Hermes Killer-Feature: schreibt sich selbst Python-Code. Aber Sicherheitsrisiko
- **Mitigation**: Docker-Sandbox, Skill-Approval-Workflow, wöchentlich `~/.hermes/skills/` reviewen

### 5) Memory-Divergenz 🧠
- Hermes' DB vs Vault → unterschiedliche "Wahrheiten" möglich
- **Mitigation**: Vault = Single Source of Truth, Hermes-DB = nur Cache/Index

## LinkedIn-Funke (bereits in [[01 Inbox/LinkedIn Funken]])

**Hook-Idee**: "Warum ich meinen KI-Agenten nicht mehr in der Cloud baue — und was Hermes besser macht als der übliche Stack"

**Content-Bausteine**:
- Hybrid-Architektur (lokal + Cloud-APIs)
- Kanban-Dashboard Screenshot (1-2 coole Features zeigen)
- Ehrliche Token-Kosten-Story (das macht keiner sonst)
- Brücke AI Infrastructure ↔ Agent Architecture (Presales-Aufhänger)

## Offene Fragen für Donnerstag 2026-06-04

- [ ] **Telegram** als Interface okay, oder lieber Signal/Discord/Web-UI?
- [ ] **Bunker** als erster Use Case oder lieber ein leichteres "warmlaufen"-Projekt?
- [ ] Hat die GB10 schon OS-Setup? Welcher User-Account?
- [ ] Tailscale-Account schon vorhanden oder neu?
- [ ] Anthropic API Account schon da oder neu anlegen?

## Nächster Schritt (Donnerstag)

1. Eva sagt: "Phase 1 ist gesetzt" oder benennt Anpassungen
2. Claudian schreibt detailliertes Setup-Spec mit Schritt-für-Schritt-Anleitung (writing-plans Skill)
3. Eva setzt um, Claudian begleitet
4. Erstes Bunker-Recherche-Experiment laufen lassen
5. Parallel: LinkedIn-Post-Outline ziehen

## Referenzen

- Hermes Agent: https://hermes-agent.nousresearch.com/
- Nous Research GitHub: https://github.com/NousResearch
- Lizenz: MIT
- Multi-Platform: Telegram, Discord, Slack, WhatsApp, Signal, Email, CLI
- Sandboxing-Backends: local, Docker, SSH, Singularity, Modal
