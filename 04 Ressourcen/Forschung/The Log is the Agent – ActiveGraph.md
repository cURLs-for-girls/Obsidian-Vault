---
tags:
  - forschung
  - ki-agenten
  - enterprise-ai
  - architektur
  - presales
status: gelesen
erstellt: 2026-05-27
hersteller:
  - Yohei Nakajima (babyblueDot)
  - arXiv
quelle: https://arxiv.org/pdf/2605.21997
---

# The Log is the Agent – ActiveGraph

> [!abstract] Paper-Steckbrief
> **Autor:** Yohei Nakajima  
> **Veröffentlicht:** Mai 2026 (arXiv: 2605.21997)  
> **Kernthese:** Das unveränderliche Event Log – nicht das LLM – ist die Source of Truth eines KI-Agenten. Zustand wird deterministisch aus dem Log berechnet.

## Was ist ActiveGraph?

ActiveGraph führt einen grundlegenden Architekturwechsel für KI-Agenten ein. Klassische Ansätze stellen das LLM ins Zentrum und bauen Logging und Memory-Systeme drum herum. ActiveGraph dreht das um:

- **Event Log = Source of Truth** – alle Aktionen, Regeländerungen und Ergebnisse sind unveränderliche Ereignisse im Log
- **Deterministischer Arbeitsgraph** – aus dem Log wird der aktuelle Zustand berechnet, auf den KI-Routinen (sog. *Behaviors*) reagieren
- **Kein zentraler Orchestrator** – kleine, autonome Bausteine koordinieren sich über Veränderungen im Graphen (inspiriert von *Blackboard-Architekturen*)

## Key Takeaways für AI Presales

### 1. Lineage wird zum Compliance-Standard

> *„Lineage is the deliverable"*

Jede Aktion – jeder Tool-Call, jede Regelänpassung, jeder LLM-Aufruf – ist ein Event im Log. Das ermöglicht lückenlose Rückverfolgbarkeit bis zum initialen Auslöser. Für Enterprise-Kunden mit Compliance- und Audit-Anforderungen ist das ein starkes Verkaufsargument: Nicht nur das Ergebnis, sondern der fälschungssichere Weg dorthin ist das eigentliche Produkt.

**Presales-Botschaft:** *„Wenn Ihr Kunde fragt ‚Warum hat der Agent das entschieden?' – mit ActiveGraph können Sie es lückenlos zeigen."*

### 2. Deterministisches Replay – Wiederholbarkeit trotz LLM-Nicht-Determinismus

LLMs sind nicht-deterministisch. ActiveGraph löst das durch einen **Content-Addressed Cache**: Modell- und Tool-Antworten werden beim ersten Lauf exakt gespeichert. Historische Läufe lassen sich später deterministisch reproduzieren – ohne neue, kostenpflichtige API-Calls.

**Presales-Botschaft:** *„Jeder Agenten-Lauf ist reproduzierbar – das ist Voraussetzung für produktiven Enterprise-Betrieb."*

### 3. Effizientes Forking – Was-wäre-wenn zu Minimal-Kosten

Man kann einen Agenten-Lauf an einem beliebigen vergangenen Ereignis forken, einen Parameter oder Prompt ändern und von dort neu starten. Alles bis zum Fork-Punkt kommt aus dem Cache – keine Rechenzeit, keine API-Kosten.

**Presales-Botschaft:** *„Prompt-Optimierung und Szenario-Tests werden erschwinglich – kein vollständiger Neustart nötig."*

### 4. Kein Vektordatenbank-Overhead für Workflow-Gedächtnis

ActiveGraph macht Vektordatenbanken als primäres Kurzzeit-/Langzeitgedächtnis des Agenten-Workflows obsolet. Der Zustand wird deterministisch aus dem Log abgeleitet – kein verlustbehafteter Memory-Layer dazwischen.

> Vektordatenbanken bleiben sinnvoll für Fachwissen (RAG), aber nicht als Workflow-Gedächtnis.

**Presales-Botschaft:** *„Einfachere Architektur, weniger Infrastruktur, weniger Fehlerquellen."*

### 5. Koordination ohne starre Workflows

Keine Skripte, kein zentraler Orchestrator. Kleine *Behaviors* reagieren autonom auf Graph-Änderungen – das System ist dadurch skalierbarer und flexibler.

**Presales-Botschaft:** *„Komplexe Agentensysteme ohne monolithisches Workflow-Management – das skaliert."*

## Das große Bild

> Weg von: *„Wir hoffen, das Modell macht das Richtige und merkt sich den Kontext"*  
> Hin zu: *„Wir bauen ein fälschungssicheres, wiederholbares Protokollsystem, aus dem sich das Modell seinen Kontext deterministisch selbst zusammenbaut"*

Dieser Paradigmenwechsel ist für Enterprise AI entscheidend – besonders überall, wo Compliance, Reproduzierbarkeit und Kosteneffizienz zählen.

## Verwandte Notizen

- [[04 Ressourcen/KI Tools und Workflows/KI Tools und Workflows]]
- [[04 Ressourcen/AI Infrastruktur/AI Infrastruktur]]
