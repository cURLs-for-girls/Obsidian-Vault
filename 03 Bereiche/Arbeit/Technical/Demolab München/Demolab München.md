---
tags:
  - aifactory
  - nvidia
  - demolab
  - referenzdesign
status: aktiv
erstellt: 2026-05-19
---

# Demolab München

Das CANCOM Demolab in München (RZ Aschheim) dient als Live-Umgebung für AI-Referenzdesigns – primär auf Basis von NVIDIA-Hardware und Dell-Infrastruktur. Hier können Kunden reale Workloads erleben und Architekturen greifbar gemacht werden.

## Zweck

- Kunden- und Partnerdemos für AI-Infrastruktur
- Validierung von Referenzarchitekturen
- Presales-Unterstützung mit Live-Umgebung

## Architektur

### Topologie RZ Aschheim

![[07 Anhänge/Architekturen/Topologie RZ Aschheim.png]]

**Komponenten:**

| Komponente | Details |
|---|---|
| Compute | NVIDIA DGX B300 (Blackwell Ultra, 8× B300 GPU, 30 TB interner NVMe) |
| Storage | 3× Dell PowerScale F210 (Scale-out NAS-Cluster, All-Flash) |
| Netzwerk | 2× Dell S4112F-ON Switch (redundant, A+B) |

**Netzwerkdesign:**
- Storage-Netzwerk physisch und logisch getrennt vom Management-Netzwerk
- VLANs zur Traffic-Segmentierung
- Redundante Switch-Pfade für Hochverfügbarkeit

## Verwandte Ressourcen

- [[04 Ressourcen/AI Infrastruktur/NVIDIA DGX B300]]
- [[04 Ressourcen/AI Infrastruktur/AI Infrastruktur]]
- [[04 Ressourcen/AI Storage/AI Storage]]

## Lieferstatus DGX B300 Demo Unit

> Stand: 2026-05-28

### Bestellung
| Feld | Wert |
|---|---|
| Bestellt am | 15.04.2026 |
| NVIDIA Order | 1579781 |
| Geplante Lieferzeit | ca. 12 Wochen |
| Versanddatum | ❌ noch kein konkretes Datum |

### Warum hat es so lange gedauert?

Interne Verzögerungen seit Mitte April 2026:
- **WoF** = **Workplace of the Future** → CANCOMs interner Bestell- und Freigabeprozess für Hardware & Equipment. Über diesen Shop/System werden Anträge gestellt und Budgets freigegeben. Im DGX-Kontext: offizieller WoF-Antrag inkl. Budgetfreigabe, damit die Bestellung überhaupt ausgelöst werden konnte.
- **Budgetklärung:** Wer zahlt was — und wann? War intern nicht sofort geklärt.

→ Bestellung erst möglich, nachdem WoF und Budget geklärt waren (→ Bestellung 15.04.2026).

### Aktueller Blocker: Site Survey

**NVIDIA-Requirement:** Versand erst nach freigegebenem Site Survey.

- Status: **noch nicht finalisiert** (teilweise vor Ort nötig — Noris / Aschheim)
- NVIDIA prüft damit, ob die Infrastruktur für die DGX geeignet ist

### Offene Punkte für das Site Survey

- [ ] **PDU:** Absicherung, Anschlüsse, Bauform
- [ ] **Strom & Klima:** genaue Werte eintragen
- [ ] **Platz:** Bautiefe, Rack-Maße
- [ ] **Loading Dock:** Maße dokumentieren
- [ ] **Netzwerk-Anbindung:** bestätigen

## Notizen & Erkenntnisse

<!-- Hier laufende Beobachtungen, Demo-Feedback und Änderungen eintragen -->
