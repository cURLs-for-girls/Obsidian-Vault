---
tags:
  - lernkarten
  - ai-storage
  - storage-architektur
  - schutzmechanismen
  - verfuegbarkeit
status: aktiv
erstellt: 2026-06-04
hersteller:
  - NetApp
  - Pure Storage
  - IBM
---

# Lernkarten – Kapitel 3.6: Schutzmechanismen und Verfügbarkeit

---

## 🔵 Warum andere Anforderungen als klassische Anwendungen?

Warum stellen KI-Workloads andere Anforderungen an Datenverfügbarkeit als klassische Unternehmensanwendungen?
?
- **Training:** Ein kurzer Ausfall ist oft verkraftbar – ein **Checkpoint** kann neu gestartet werden
- **Produktive Inferenz:** Hier gilt das **nicht**
- **Konsequenz:** Ein ausgefallenes Storage-System bedeutet **sofort**, dass der Endnutzer keine Antwort erhält
- **Kernfrage in der Architektur:** Welcher Mechanismus löst welches Problem?

---

## 🧩 Drei Bestandteile einer RAG-Wissensbasis ⚠️ *wiederholen*

Aus welchen drei Bestandteilen besteht eine RAG-Wissensbasis, und was bedeutet das für die Verfügbarkeit?
?
- **Bestandteile:**
  1. **Quell-Dokumentenkorpus** → in Object Storage
  2. **Vektoren** → in der Vektordatenbank
  3. **Modellgewichte** → in File- oder Object-Storage
- **Konsequenz:** Fällt **einer** dieser Bestandteile aus, **degradiert die gesamte Anwendung**
- **Architekturprinzip:** Jede Schicht braucht ihren passenden Schutzmechanismus – nicht überall ist das gleiche Schutzniveau nötig oder bezahlbar

---

## 🛡️ Schutz pro Datenschicht ⚠️ *wiederholen*

Welcher Schutzmechanismus passt zu welcher Datenschicht in einer RAG-Architektur?
?

| Datenschicht | Storage-Typ | Schutzmechanismus |
|-------------|------------|-------------------|
| Vektordatenbank (Hot) | All-Flash | RAID + **synchrone Replikation** auf zweites System |
| Modellgewichte (Warm) | Scale-out NAS | Eigene **Node-Redundanz + Erasure Coding** im Dateisystem; Replikation nur bei Multi-Site |
| Dokumentkorpus (Cold) | Object Storage | **Erasure Coding** im Cluster (Standard); **Geo-Replikation** für Multi-Site |

- **Vektordatenbank:** Hot Tier ist am kritischsten → RAID schützt vor einzelnen Laufwerksausfällen, synchrone Replikation gegen Controller-Ausfall
- **Modellgewichte:** Scale-out NAS bringt Redundanz **eingebaut** mit (mehrere Nodes, Erasure Coding) – zusätzliche Replikation nur sinnvoll bei mehreren RZ-Standorten
- **Dokumentkorpus:** Erasure Coding im Object-Storage-Cluster ist Standard; Geo-Replikation für Multi-Site-Setups empfohlen

---

## 📸 Snapshots für Wissensbasis-Updates ⚠️ *wiederholen*

Warum sind Snapshots gerade für RAG-Wissensbasen so wichtig, und was leisten Immutable Snapshots zusätzlich?
?
- **Problem:** Eine RAG-Wissensbasis wird **regelmäßig aktualisiert** – neue Dokumente kommen hinzu, bestehende Vektoren werden neu berechnet
- **Risiko:** Schlägt ein Update fehl oder verschlechtert es die Qualität der Suchergebnisse → System muss schnell auf den letzten bekannten guten Zustand zurück
- **Lösung Snapshots:**
  - **Point-in-Time-Kopien** des Storage-Zustands
  - Rückkehr in **Sekunden**, ohne Betriebsunterbrechung
- **Immutable Snapshots (unveränderliche Snapshots):**
  - Können **selbst von Administratoren nicht gelöscht** werden
  - Zusätzlicher Schutz gegen **Ransomware**
  - Verfügbar z. B. bei NetApp ONTAP, Pure Storage FlashArray, IBM FlashSystem

> **Merksatz:** Snapshots sind kein Backup-Ersatz – sie sind ein **Rollback-Werkzeug für den laufenden Betrieb**.

---

## ⚙️ High Availability (HA) und RTO

Wie wird High Availability bei Storage-Systemen typischerweise realisiert, und was ist RTO im RZ-Kontext?
?
- **HA (High Availability) Definition:** Fähigkeit eines Systems, auch bei Komponentenausfällen **ohne Unterbrechung** weiterzulaufen
- **Realisierung:** Bei Storage-Systemen typischerweise durch **doppelte Controller** – fällt ein Controller aus, übernimmt der zweite ohne Unterbrechung
- **RTO (Recovery Time Objective):** Die **maximal tolerierbare Ausfallzeit** – maßgeblicher Parameter in der RZ-Planung
- **Typisches RTO für produktive Inferenz-Systeme:** **Sekunden bis wenige Minuten**

---

## 🚫 Warum Backup ≠ HA

Warum ist Backup-Wiederherstellung aus einer Bandbibliothek kein Ersatz für High Availability?
?
- **Backup:** Absicherung gegen **Totalverlust** (z. B. komplettes RZ verloren, Ransomware)
- **HA:** Absicherung gegen **Komponentenausfall** im laufenden Betrieb
- **Konsequenz für RTO:** Bandbibliothek-Restore dauert **Stunden bis Tage** → passt nicht zu einem RTO von Sekunden/Minuten
- **Merksatz:** *"Backup rettet den Datenbestand. HA rettet den Service-Level."*

---

## 📊 Überblick: Schutzmechanismen im AI-RZ

| Mechanismus | Schützt gegen | Typisches Tool |
|------------|--------------|---------------|
| RAID | Einzelne Laufwerksausfälle | In Storage-System eingebaut |
| Erasure Coding | Mehrfache Ausfälle in Scale-out | Scale-out NAS, Object Storage |
| Synchrone Replikation | Controller-/Array-Ausfall | All-Flash-Arrays |
| Snapshots | Logische Fehler, fehlerhafte Updates | Storage-Plattform |
| Immutable Snapshots | Ransomware, Manipulation | NetApp, Pure, IBM |
| Geo-Replikation | Standortausfall | Object Storage, NAS |
| HA (doppelte Controller) | Hardware-Ausfall im laufenden Betrieb | Storage-System |
| Backup | Totalverlust, Compliance | Separate Backup-Lösung |
