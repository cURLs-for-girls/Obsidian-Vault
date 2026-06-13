---
tags: [ressource, lernkarten, ai-storage]
status: aktiv
erstellt: 2026-05-17
---

# Lernkarten – Kapitel 2.7 Effizienz- und Kapazitätsmechanismen

---

## Karte 1
**❓ Welche drei Technologien helfen Speicherkapazität effizienter zu nutzen – und was ist ihr gemeinsames Ziel?**

✅
1. **Thin Provisioning** – optimiert die Zuweisung von Kapazität
2. **Deduplizierung** – entfernt identische Datenblöcke
3. **Komprimierung** – reduziert die Größe einzelner Blöcke

Gemeinsames Ziel: **Mehr nutzbare Kapazität aus vorhandenem physischen Speicher herausholen.**

Im RAG-Kontext besonders relevant wenn mehrere Modellvarianten, versionierte Wissensbasen oder redundante Dokumentenbestände parallel vorgehalten werden.

---

## Karte 2
**❓ Was ist Thin Provisioning – und was spart es konkret?**

✅ Thin Provisioning = **bedarfsgesteuerte Speicherzuweisung**.

Ohne Thin Provisioning: Speicher wird beim Anlegen eines Volumes sofort vollständig reserviert – egal ob genutzt oder nicht.
Mit Thin Provisioning: Kapazität wird erst belegt wenn Daten **tatsächlich geschrieben** werden.

→ Thin Provisioning spart **keine Bytes auf dem Datenträger**, sondern verhindert dass Kapazität **ungenutzt reserviert** bleibt.

**RAG-Relevanz:** Wissensbasen wachsen schrittweise – nicht auf einen Schlag. Thin Provisioning ist ideal für dieses sukzessive Wachstum.

---

## Karte 3
**❓ Wie funktioniert Deduplizierung technisch?**

✅ Das System berechnet für jeden Datenblock eine **Prüfsumme (Hash)** und vergleicht sie mit bereits gespeicherten Blöcken.
Existiert derselbe Block bereits → wird nur ein **Verweis** gespeichert, keine zweite Kopie.

**Inline-Deduplizierung** (NetApp ONTAP, Pure Storage): passiert noch **vor dem Schreiben** auf den Datenträger → Effekt sofort wirksam.

---

## Karte 4
**❓ Wo entfaltet Deduplizierung in RAG-Systemen ihren Nutzen – und wo nicht?**

✅ **Gut deduplizierbar:**
- Redundante Dokumente (identische PDFs, mehrfach hochgeladene Dateien)
- Versionierte Wissensbasen (neue Version ändert oft nur wenige Prozent)

❌ **Kaum deduplizierbar (hochentropische Daten):**
- Verschlüsselte Dateien
- Bereits komprimierte Bilder

→ Je strukturierter und redundanter die Daten, desto größer der Effekt.

---

## Karte 5
**❓ Was ist der Unterschied zwischen Deduplizierung und Komprimierung?**

✅
- **Deduplizierung**: arbeitet **blockweise** – erkennt identische Blöcke und speichert sie nur einmal
- **Komprimierung**: arbeitet **innerhalb eines Blocks** – entfernt redundante Muster durch Algorithmen

→ Deduplizierung = "dieser Block existiert schon" → Verweis setzen.
→ Komprimierung = "dieser Block hat interne Redundanz" → Inhalt verkleinern.

---

## Karte 6
**❓ Warum muss Komprimierung bei latenz-sensitiver Inferenz abgewogen werden?**

✅ Komprimierung erzeugt beim Lesen und Schreiben immer **Rechenaufwand** (CPU).

Bei Inferenz wartet der Nutzer in Echtzeit → jede zusätzliche Rechenoperation kann die Antwortzeit erhöhen.

**Abwägung:** Eingesparter Speicher vs. zusätzlicher Prozessoraufwand.

Für **Textdaten** (Dokumente, Metadaten, Indexstrukturen) lohnt es sich oft – Reduktion bis Faktor 10 möglich.
Für **Modellgewichte** nur eingeschränkt sinnvoll.

---

## Karte 7
**❓ Was ist ZipLLM – und was macht es besonders?**

✅ ZipLLM kombiniert **Deduplizierung + Delta-Komprimierung** speziell für Large Language Models.

Besonders effektiv wenn **mehrere Varianten derselben Modellfamilie** parallel vorgehalten werden – z.B. Llama 7B, 13B, 70B. Diese teilen viele identische Gewichtsblöcke.

→ Speicherreduktion von über **50%** möglich.

---

## Karte 8 – Übersichtskarte
**❓ Wie ergänzen sich die drei Mechanismen – ersetzen sie sich gegenseitig?**

✅ Sie ergänzen sich, ersetzen sich aber **nicht**:

| Mechanismus | Wirkt auf | Spart |
|---|---|---|
| Thin Provisioning | Kapazitätszuweisung | Ungenutzte Reservierung |
| Deduplizierung | Identische Blöcke | Redundante Kopien |
| Komprimierung | Blockinhalt | Interne Redundanz |

→ Alle drei gemeinsam aktivieren = stärkste Kapazitätseinsparung.
Anbieter die das empfehlen: **NetApp, Pure Storage, IBM**

---

## Karte 9 – RAG-Praxiskarte
**❓ Was bedeutet es konkret für eine RAG-Umgebung wenn alle drei Mechanismen aktiv sind?**

✅ Eine versionierte Wissensbasis auf einem System mit Inline-Deduplizierung und Komprimierung belegt **deutlich weniger physische Kapazität** als ihr logisches Volumen vermuten lässt.

Effekt:
- Niedrigere Speicherkosten
- Längere Zeit bis zur nächsten Kapazitätserweiterung
