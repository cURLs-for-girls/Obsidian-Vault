---
tags: [projekt, vortrag, ai-factory, dell, nvidia]
status: aktiv
priorität: hoch
erstellt: 2026-05-14
fällig: 
event: AI Factory Summit
---

# Vortrag Referenzarchitekturen – AI Factory Summit

## Ziel

Vortrag zu Referenzarchitekturen wie der Dell AI Factory und NVIDIA AI Factory halten. AI Storage für KI-Workloads soll ein zentrales Thema sein. Co-Presenter: **Daniel**.

## Status

In Bearbeitung – priorisiert 🔴

## Nächste Schritte

- [ ] Gliederung ausarbeiten (Basis: Ablauf-Skript unten)
- [ ] Layout-Vorschlag / Folienerüst erstellen (CC Standard als Ausgangspunkt)
- [ ] Dell AI Factory Referenzarchitektur ausarbeiten
- [ ] NVIDIA AI Factory Referenzarchitektur ausarbeiten
- [ ] Storage-Landschaft ausarbeiten (PowerScale / ObjectScale / Block Storage)
- [ ] Kühlungsfolie bauen ("plakative Aussage")
- [ ] Demohardware klären: DGX + PowerScale + Everpure
- [ ] Nerf Gun Verlosung organisieren
- [ ] Präsentation bauen

---

## Ablauf-Skript (Rohfassung)

> [!tip] Bühnenkonzept
> Storytelling mit Nerf-Gun-Gag als rotem Faden – locker, unterhaltsam, aber mit echtem Inhalt dahinter.

1. **Opening** – Einstieg auf der Bühne
2. **Daniel legt los** → klappt nicht
3. **Eve schießt Nerf-Darts**, die Daniel sammeln muss
4. **Eve betritt die Bühne**: *„STOP – lass uns das strukturiert angehen. Es gibt ein validiertes Design."*
5. **Daniel**: *„Was?!"* → Begriffe klären
6. **Strategie** → *One 4 All*
7. **Referenzarchitektur** Dell / NVIDIA
8. **Storage** – Demohardware: DGX, PowerScale, Block Storage, Everpure / ObjectScale
9. **Luft- und Flüssigkühlung** – plakative Aussage
10. **Closing** – Nerf Gun → Abschlussbild: *Secure AI Factory*

🎯 **Nerf Gun Verlosung** am Ende

---

## Stack-Struktur (inhaltlicher Aufbau)

> [!info] Kernbotschaft
> Compute mit Grafikkarten ist nur **ein Teil** des Stacks – der vollständige Stack braucht Netzwerk und Storage.

```
┌─────────────────────────────┐
│  Compute  (GPU / DGX)       │
├─────────────────────────────┤
│  Netzwerk                   │
├─────────────────────────────┤
│  Storage  ← Dell kommt ins  │
│            Spiel            │
└─────────────────────────────┘
```

**Storage-Landschaft hat sich erweitert:**
- PowerScale (Scale-out NAS)
- ObjectScale (Object Storage)
- Block Storage
- Everpure (Demohardware vor Ort)

---

## Begriffe (Glossar für den Vortrag)

| Begriff | Erklärung |
|---|---|
| **AI Factory** | Begriff von NVIDIA – Fabrik für Intelligenz (Bild: Jensen Huang) |
| **Training vs. Inferenz** | Training = Modell lernen / Inferenz = Modell nutzen |
| **Referenzdesign** | Technische Blaupause – geprüft und vertrauenswürdig |
| **Token / Cost-per-Token** | Die neue Währung in der KI-Welt |

---

## Ressourcen

- [[04 Ressourcen/AI Infrastruktur/AI Infrastruktur]]
- [[04 Ressourcen/AI Storage/AI Storage]]

## Dateien & Ablage

- 📁 Präsentationsordner (OneDrive): `/Users/eva.doelle/Library/CloudStorage/OneDrive-CANCOMGmbH/AI/2_CDC allgemein/AI Factory Summit`
  - `AI Factory Summit Keynote V1 - dunkelblau.pptx` ← aktuelle Version
  - `AI Factory Summit Keynote V2 - schwarz.pptx`

## Notizen

