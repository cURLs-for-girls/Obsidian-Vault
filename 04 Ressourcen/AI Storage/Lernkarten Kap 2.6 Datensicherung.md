---
tags: [ressource, lernkarten, ai-storage]
status: aktiv
erstellt: 2026-05-17
---

# Lernkarten – Kapitel 2.6 Datensicherung

## Karte 1
**❓ Was schützt RAID – und was schützt es ausdrücklich *nicht*?**

✅ RAID schützt vor dem **Ausfall einzelner Festplatten**. Es verteilt Daten auf mehrere Laufwerke und berechnet fehlende Daten aus den verbliebenen.
❌ RAID schützt **nicht** vor versehentlichem Löschen oder Ransomware – beides passiert auf allen gespiegelten Laufwerken gleichzeitig.
→ **RAID ist kein Ersatz für ein Backup.**

---

## Karte 2
**❓ Was ist Replikation – und wo liegt ihre Schwäche?**

✅ Replikation kopiert Daten **kontinuierlich** auf ein zweites, physisch getrenntes System (anderer Brandabschnitt oder RZ). Fällt das Primärsystem aus, übernimmt das Sekundärsystem.
❌ Replikation spiegelt **jeden Zustand** – also auch fehlerhafte. Eine korrumpierte Wissensbasis wird genauso zuverlässig repliziert wie eine intakte.

---

## Karte 3
**❓ Warum ist Replikation bei Inferenz kritischer als bei Training?**

✅ Bei Inferenz wirkt sich ein Ausfall **sofort auf den Endnutzer** aus – die gesamte Anfragebearbeitung stoppt.
Bei Training ist ein kurzer Unterbruch verschmerzbar.

---

## Karte 4
**❓ Was ist ein Snapshot – und welche besondere Rolle spielt er in RAG-Umgebungen?**

✅ Ein Snapshot ist eine **Point-in-Time-Kopie** des Dateisystems – in der Regel innerhalb von Sekunden wiederherstellbar, ohne Betriebsunterbrechung.
In RAG wichtig weil: die Wissensbasis regelmäßig aktualisiert wird → schlägt ein Update fehl, muss man schnell auf den letzten sauberen Zustand zurück.

---

## Karte 5
**❓ Was sind Immutable Snapshots – und warum sind sie besonders wertvoll?**

✅ Unveränderliche Snapshots, die **selbst Administratoren nicht löschen können**.
Schutz gegen: Ransomware + fehlerhafte Wissensbasis-Updates.
Anbieter: **NetApp ONTAP**, **Pure Storage FlashArray**

---

## Karte 6
**❓ Was schützt ein klassisches Backup – und warum ist es bei Inferenz/RAG gut beherrschbar?**

✅ Backup = physisch und logisch **vollständig getrennte Kopie** auf unabhängigem Medium. Einziger Schutz gegen Totalverlust.
Bei Inferenz/RAG beherrschbar weil: die relevanten Daten (Dokumentenbasis + Vektordatenbank + Modellgewichte) oft nur **wenige TB bis einstellige PB** umfassen.
Anbieter: **Veeam, Cohesity, Commvault**

---

## Karte 7
**❓ Was sind die drei Datenkategorien die bei Inferenz/RAG gesichert werden müssen?**

✅
1. **Bereinigte Dokumentenbasis** (die Rohdaten für RAG)
2. **Vektordatenbank** (die verarbeiteten Embeddings)
3. **Modellgewichte** (das fertig trainierte Modell)

---

## Karte 8 – Übersichtskarte
**❓ Nenne die 4 Sicherungsmechanismen und ihren jeweiligen Schutzbereich:**

| Mechanismus | Schützt vor |
|---|---|
| RAID | Festplattenausfall |
| Replikation | Systemausfall (ganzes RZ) |
| Snapshot | Fehlerhaftes Update, Ransomware |
| Backup | Totalverlust |
