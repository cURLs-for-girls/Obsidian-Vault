---
tags:
  - lernkarten
  - ai-storage
  - storage-architektur
  - netzwerk
status: aktiv
erstellt: 2026-05-27
hersteller:
  - NVIDIA
  - Mellanox
  - Broadcom
---

# Lernkarten – Kapitel 3.3: Das Speichernetzwerk

---

## 🔵 Grundbegriff: Das Speichernetzwerk

Was ist die Rolle des Speichernetzwerks im Rechenzentrum, und welcher Verkehrstyp hat in modernen Rechenzentren stark zugenommen?
?
- **Rolle:** Das Speichernetzwerk ist das **Bindeglied zwischen den Hosts und den Storage-Systemen** – es ermöglicht den Datenzugriff der Server auf Speicherressourcen
- **Moderner Trend:** Interner Datenverkehr der **Server untereinander** hat massiv zugenommen → wird als **Ost-West-Traffic** bezeichnet
- Ost-West-Traffic bedeutet: Nicht nur Host ↔ Storage, sondern auch Server ↔ Server (z.B. bei verteilten Inferenz-Clustern)

---

## ⚖️ Technologie-Entscheidung: Ethernet vs. InfiniBand

Welche zwei Netzwerktechnologien dominieren bei Storage-Netzwerken im Hochgeschwindigkeitsbereich, und was ist der grundlegende Unterschied?
?
| Merkmal | **Ethernet (RoCE)** | **InfiniBand (IB)** |
|---------|--------------------|--------------------|
| Standard | De-facto-Standard im Unternehmen | Primär HPC-Umgebungen |
| Geschwindigkeit | 10 GbE bis 400 GbE | Extrem hoch, sehr niedrige Latenz |
| Integration | Gut in bestehende IT integrierbar | Bildet oft Insellösungen (Silos) |
| Kosten | Wirtschaftlich | Sehr kostenintensiv |
| Besonderheit | RoCE für verlustfreien Transport | Kein Paketverlust auf HW-Ebene |

---

## 🌐 Ethernet und RoCE im Detail

Was ist RoCE, welche zwei Kernvorteile bietet es, und warum ist normales 10-GbE-Ethernet noch relevant?
?
- **RoCE = RDMA over Converged Ethernet** – Protokoll auf Basis von Ethernet
- **Kernvorteile:**
  1. **Verlustfreier Datentransport** – keine Paketverluste im Netzwerkpfad
  2. **Direkter Speicherzugriff ohne CPU-Belastung** – Daten gehen direkt in/aus dem Speicher, CPU wird umgangen
- **10-GbE (10 Gigabit Ethernet):** Immer noch der De-facto-Standard in Unternehmensrechenzentren für dataintensive Aufgaben – moderne Cluster gehen auf **100–400 GbE**
- **Fazit:** RoCE macht Ethernet fit für hochperformante Storage-Anbindungen

---

## ⚡ InfiniBand (IB) im Detail ⚠️ *wiederholen*

Was sind die Stärken von InfiniBand, und warum wird es trotzdem oft nicht eingesetzt?
?
- **Stärken:**
  - Primär für **HPC (High Performance Computing)** entwickelt
  - **Extrem niedrige Latenzen** – minimale Verzögerung im Datenpfad
  - **Kein Paketverlust** direkt auf Hardware-Ebene
- **Schwächen / Hürden:**
  - **Sehr kostenintensiv** – deutlich teurer als Ethernet
  - Bildet oft **technologische Insellösungen (Silos)** → schwer in bestehende IT-Umgebungen zu integrieren
- **Fazit:** IB ist leistungsstärker, aber für viele Unternehmens-Szenarien überdimensioniert und zu teuer

---

## 🚧 Netzwerk-Engpass: Oversubscription

Was ist Oversubscription, warum ist es ein Problem, und wie wird es gelöst?
?
- **Definition:** Zu viele Hosts sind an einen Switch angeschlossen und **teilen sich eine gemeinsame Uplink-Verbindung (Uplink)**
- **Problem:** Jeder Host kann **nicht jederzeit seine volle Bandbreite nutzen** – Netzwerk wird zur Flaschenhals
- **Lösung: Non-blocking Design**
  - Jeder Host kann **jederzeit seine volle Bandbreite nutzen**
  - Kein Host wird durch andere gebremst (blockierungsfreies Design)
- **Merkhilfe:** Non-blocking = Autobahn mit genug Spuren für alle, kein Stau

---

## 🧠 CPU-Overhead und RDMA

Warum verursachen klassische Netzwerke CPU-Overhead, und wie löst RDMA dieses Problem?
?
- **Problem bei klassischen Netzwerken:**
  - Jedes Datenpaket wird **über die CPU verarbeitet**
  - Bei **100 GbE** wird die CPU schnell zum **Flaschenhals** (Engpass)
- **Lösung: RDMA (Remote Direct Memory Access)**
  - Wickelt den Datentransport **direkt über die Netzwerkkarten** ab
  - **Entlastet die CPU vollständig** – CPU muss sich nicht um den Datentransport kümmern
  - RoCE = RDMA-Technologie auf Ethernet-Basis
- **Fazit:** RDMA ermöglicht hohe Netzwerkgeschwindigkeiten ohne CPU-Sättigung

---

## 💀 KI-Relevanz: GPU Starvation

Was ist GPU Starvation, wann entsteht es, und welche zwei KI-Workloads sind besonders betroffen?
?
- **Definition:** GPU Starvation = **GPU-Rechenkerne müssen pausieren**, weil das Netzwerk Daten nicht schnell genug liefert
- **Entstehung:** Teure Recheneinheiten (GPUs) warten auf Daten → Rechenleistung wird verschwendet
- **Übergeordnetes Ziel:** Das Speichernetzwerk soll GPU Starvation **aktiv vermeiden**
- **Betroffene Workloads:**
  1. **Inferenz** – Modellgewichte müssen schnell in den GPU-VRAM geladen werden
  2. **RAG** – Vektordatenbankabfragen müssen mit minimaler Latenz beantwortet werden

---

## 📡 KI-Relevanz: Bandbreite für Inferenz

Warum braucht Inferenz eine hohe Netzwerkbandbreite, und was ist der kritische Engpass?
?
- **Anforderung: Hohe Bandbreite**
- **Grund:** Große KI-Modelle (oft **über 70 GB**) müssen schnell bewegt werden
- **Kritischer Pfad:** Modellgewichte müssen aus dem Speicher in den **VRAM (Video Random Access Memory)** der Grafikkarte geladen werden
- **Folge bei zu wenig Bandbreite:** GPU wartet auf Daten → GPU Starvation, sinkende Inferenzgeschwindigkeit
- **Merkhilfe:** Modell → Netzwerk → VRAM → GPU rechnet. Jede Verzögerung kostet GPU-Zeit.

---

## ⏱️ KI-Relevanz: Latenz für RAG ⚠️ *wiederholen*

Warum ist niedrige Latenz für den RAG-Betrieb kritisch, und was passiert bei zu hoher Latenz?
?
- **RAG = Retrieval-Augmented Generation**
- **Anforderung: Niedrige Latenz** – jede Anfrage trifft eine Vektordatenbank
- **Problem:** Eine **Vektordatenbank wird bei kleinen Suchanfragen kontinuierlich belastet**
- **Konsequenz bei hoher Latenz:**
  - Netzwerkverzögerungen im **Millisekundenbereich** summieren sich
  - Führen zu **spürbaren Wartezeiten** für den Anwender
- **Zwei simultane Netzwerkanforderungen bei Inferenz + RAG:**
  1. **Hohe Bandbreite** → für Modellgewichte
  2. **Niedrige Latenz** → für Vektordatenbankabfragen

---

## ✅ Fazit: Warum Ethernet mit RoCE im Unternehmenskontext?

Warum ist performantes Ethernet mit RoCE die bevorzugte Netzwerkwahl für KI-Inferenz und RAG im Unternehmen?
?
- **Keine extremen HPC-Latenzen nötig:** Inferenz und RAG benötigen **nicht** die ultra-niedrigen Latenzen wie beim GPU-Training
- **Wirtschaftlichste Wahl:** Ethernet mit RoCE ist deutlich günstiger als InfiniBand
- **Gut integrierbar:** Passt in bestehende Unternehmens-IT ohne Insellösung
- **Ausreichende Performance:** RoCE liefert verlustfreien Transport + RDMA (CPU-Entlastung) auf Ethernet-Basis
- **InfiniBand wäre:** Überdimensioniert + zu teuer für diesen Use Case
- **Merksatz:** *"Für Inferenz und RAG im Unternehmen: Ethernet mit RoCE = richtige Balance aus Performance und Wirtschaftlichkeit"*
