---
tags:
  - lernkarten
  - ai-storage
  - storage-architektur
  - hosts
  - compute
status: aktiv
erstellt: 2026-05-22
hersteller:
  - NVIDIA
  - NetApp
---

# Lernkarten – Kapitel 3.2: Hosts und Compute-Anbindung

---

## 🔵 Hosts im Rechenzentrum – Grundbegriff

Was sind Hosts im KI-Kontext, welche zwei Typen gibt es, und was ist aus Storage-Sicht die entscheidende Frage?
?
- **Definition:** Hosts sind die Ausführungsumgebung für KI-Inferenz-Workloads im Rechenzentrum
- **Zwei Typen:**
  - **Klassische Server** – CPU-basiert, transaktionale Workloads, Web-Apps, Datenbanken
  - **GPU-Hosts** – spezialisierte Server mit einer oder mehreren GPUs für Inferenz (Frameworks: NVIDIA Triton, vLLM)
- **Storage-Perspektive:** Entscheidend ist **wo die Daten physisch liegen** – lokal im Host oder zentral im Rechenzentrums-Storage

---

## 🖥️ Klassische Server vs. GPU-Hosts

Welche Rolle spielen klassische Server im AI-Kontext, und was unterscheidet GPU-Hosts grundlegend?
?
- **Klassische Server im AI-Kontext:**
  - Greifen auf zentralen Storage zu (SAN, NAS)
  - Übernehmen **Orchestrierung, API-Gateways, Vor- und Nachverarbeitung** von Inferenzanfragen
- **GPU-Hosts:**
  - Laden **Modellgewichte in den GPU-Speicher** und verarbeiten Anfragen in Sekunden bis Millisekunden
  - Bei RAG zusätzlich: lokaler **KV-Cache** (Key-Value-Cache) für Token + Client für Vektor-DB und Dokumentenspeicher
- **Kernaussage:** Die Storage-Anbindung der GPU-Hosts entscheidet, ob **teure GPUs auf Daten warten** oder kontinuierlich ausgelastet sind

---

## ⚡ Lokale Datennutzung (DAS) ⚠️ *wiederholen*

Was ist lokale Datennutzung, was liegt typischerweise lokal, und was sind Vor- und Nachteile?
?
- **Definition:** Der Host hält relevante Daten auf **direkt angebundenen Medien** – typischerweise NVMe-SSDs im Serverchassis (Direct Attached Storage, DAS)
- **Typische Inhalte:**
  - **Modellgewichte** – lokal gehalten, um Ladezeiten aus zentralem Storage zu vermeiden
  - **KV-Cache-Offloading** – bei großen LLMs werden Teile des KV-Caches auf schnelle NVMe-SSDs ausgelagert
- **Vorteile:** Sehr niedrige Latenz + hohe IOPS – kein Netzwerk im Pfad
- **Nachteile:**
  - Begrenzte Kapazität pro Host
  - Keine Sharing-Fähigkeit zwischen mehreren Hosts
  - Höherer Betriebsaufwand: Daten müssen über viele GPU-Server verteilt und aktualisiert werden

---

## 🌐 Zentrale Datennutzung ⚠️ *wiederholen*

Was ist zentrale Datennutzung, welche Storage-Typen kommen zum Einsatz, und welche drei Zugriffsmuster gibt es im Inferenz-/RAG-Kontext?
?
- **Definition:** Hosts greifen über das Netzwerk auf ein **gemeinsames Storage-System** zu
- **Storage-Typen:** Paralleles Filesystem, leistungsfähiges NAS, S3-kompatibler Object Storage
- **Drei typische Zugriffsmuster:**
  1. **Modellgewichte zentral:** GPU-Hosts laden Gewichte von zentralem File-Storage (NFS, paralleles NFS) – alle teilen denselben Datenbestand
  2. **RAG-Vektordaten:** Zugriff über Netzwerk auf Vektor-Datenbank, deren Daten auf NVMe-basiertem Block- oder File-Storage liegen
  3. **Dokument-Korpus:** Zentral in Object Storage – wird nur bei Ingestion und Aktualisierung gelesen, **nicht bei jeder Inferenzanfrage**

---

## ⚖️ Lokal vs. Zentral – Vergleich ⚠️ *wiederholen*

Wann lohnt sich lokale Datenhaltung, wann zentrale – und was ist der KV-Cache-Sonderfall?
?
| Kriterium | Lokal (DAS) | Zentral (Netzwerk) |
|-----------|------------|-------------------|
| Latenz | Sehr niedrig (kein Netzwerk) | Höher (Netzwerkpfad) |
| IOPS | Sehr hoch | Abhängig von Netzwerk/Storage |
| Kapazität | Begrenzt pro Host | Skalierbar, geteilt |
| Sharing | Nicht möglich | Mehrere Hosts gleichzeitig |
| Betriebsaufwand | Hoch (Verteilung über viele Server) | Niedriger (zentrale Aktualisierung) |
| Typischer Einsatz | Modellgewichte, KV-Cache-Offload | Modell-Sharing, RAG-Vektordaten, Korpus |

**KV-Cache-Sonderfall:** Bei großen LLMs passt der KV-Cache nicht vollständig in den GPU-VRAM → Offloading auf lokale NVMe-SSDs als schnellste verfügbare Alternative

> **🔄 Praxisupdate (Dell Tech World):** RDMA (Remote Direct Memory Access) ermöglicht KV-Cache-Offload auf *Shared Storage* – nicht nur lokal. RDMA umgeht die CPU beim Netzwerkzugriff und macht zentralen Storage schnell genug für diesen Use Case. Dell ObjectScale nutzt RDMA mit bis zu 230 % mehr Durchsatz. → Die Grenze zwischen "muss lokal sein" und "kann zentral sein" verschiebt sich durch RDMA.

---

## 📊 Überblick: Hosts und ihre Storage-Zugriffsmuster

| Host-Typ | Hauptaufgabe | Datenzugriff | Kritischer Faktor |
|----------|-------------|--------------|-------------------|
| Klassischer Server | Orchestrierung, API-Gateway, Vor-/Nachverarbeitung | Zentral (SAN, NAS) | Verfügbarkeit |
| GPU-Host (Inferenz) | Modellausführung | Lokal (Modellgewichte) oder zentral | GPU-Auslastung vs. Wartezeit |
| GPU-Host (RAG) | Inferenz + Retrieval | Zentral (Vektor-DB, Object Store) + lokal (KV-Cache) | Retrieval-Latenz |
