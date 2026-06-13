---
tags:
  - lernkarten
  - ai-storage
  - rag
  - tiering
status: aktiv
erstellt: 2026-05-18
hersteller:
  - NetApp
  - IBM
  - Milvus
  - Qdrant
---

# Lernkarten – Kapitel 2.8: Datentiering in KI-Infrastrukturen

---

## 🔵 Grundkonzept Tiering

Was ist Datentiering, warum braucht man es in KI-Infrastrukturen, und was bestimmt die RAG-Antwortzeit neben dem Sprachmodell?
?
- **Definition:** Aufteilung von Daten auf unterschiedliche Speichermedien nach Zugriffshäufigkeit und Latenzanforderung
- **Warum:** Verschiedene Phasen einer Inferenz-/RAG-Pipeline stellen grundlegend verschiedene Anforderungen an Speed, Kapazität und Kosten – ein einheitliches Medium kann das nicht effizient erfüllen
- **RAG-Latenz:** Nicht nur Modellqualität entscheidet, sondern vor allem **wie schnell der Vektorindex aus dem Speicher geladen wird** und auf welchem Medium er liegt

---

## 🔴 Hot Tier ⚠️ *wiederholen*

Was ist der Hot Tier, was liegt dort, und welche Leistungswerte sind relevant?
?
- **Medium:** NVMe-SSDs – Flash direkt über PCIe-Bus angebunden, ohne Umweg über ältere Schnittstellenstandards
- **Inhalt:** Aktiver Vektorindex, Embedding-Vektoren, Quelldokumentchunks
- **Latenz:** 0,01–0,05 ms | **Durchsatz:** bis 14 GB/s (HDDs: max. 100–200 MB/s → Faktor 70 langsamer)
- **P95-Ziel:** RAG-Systeme in Produktion erwarten unter **100 ms** Retrieval-Latenz auf Milliarden Vektoren
- **Modellgewichte:** Ein 8B-Modell (~15 GB) braucht auf NVMe schon mehrere Sekunden zum Laden – auf langsamen Medien werden es Minuten, in denen das System keine Anfragen beantwortet

---

## 🟡 Warm Tier

Was ist der Warm Tier, was liegt dort, und wie unterstützen Vektordatenbanken Tiering?
?
- **Medium:** SATA-SSDs oder QLC-NVMe – höhere Kapazität, niedrigere Kosten als Hot Tier
- **Inhalt:** Ältere Wissensbasisabschnitte, weniger populäre Dokumentbereiche, saisonale Inhalte – alles was regelmäßig, aber nicht bei jeder Anfrage abgerufen wird
- **Vektordatenbanken:** Milvus und Qdrant unterstützen automatische Tiering-Strategien – häufig abgerufene Vektoren bleiben im RAM/Hot Tier, seltener abgerufene wandern auf Warm/Cold → reduziert Flash-Bedarf erheblich

---

## ⚪ Cold Tier ⚠️ *wiederholen*

Was ist der Cold Tier, was liegt dort, und was macht ihn in KI-Umgebungen besonders?
?
- **Medium:** HDDs (hohe Kapazität, niedrige Kosten/TB) oder Objektspeichersysteme
- **Inhalt:** Ältere Modellversionen, archivierte Dokumentenstände, Rohdaten vor Aufbereitung, historische Anfrage-/Antwortlogs, Audit-Trails für Compliance
- **Besondere Dynamik:** Was heute kalt ist, kann morgen wieder heiß werden (reaktiviertes Modell, neue Fragestellung) → intelligente Systeme wie **NetApp ONTAP FabricPool** oder **IBM Spectrum Discover** erkennen Zugriffsmuster und migrieren Daten automatisch, bevor ein Engpass entsteht

---

## 💻 Relevanz für Softwareentwickler

Warum ist Storage kein reines Infrastrukturthema für RAG-Entwickler?
?
Die Speicherarchitektur bestimmt direkt, ob eine Anwendung ihre **SLOs (Service Level Objectives)** erfüllt – in drei konkreten Punkten:
1. **Vektorindex-Größe:** Wächst der Index über den RAM hinaus, entscheidet allein das Speichermedium über Ladezeit und Traversierungsgeschwindigkeit
2. **Verknüpfte Latenzen:** Vektortreffer und Quelldokument müssen in derselben Antwortzeit geliefert werden – liegt das Dokument auf einem langsamen Medium, steigt die Gesamtlatenz spürbar
3. **Schreiboperationen:** Wissensbasis-Updates brauchen kurze Writes, die den laufenden Lesebetrieb nicht blockieren – das ist eine I/O-Architekturanforderung, die kein Code allein lösen kann

---

## 📊 Überblick

| Tier | Medium | Latenz | Kosten/TB | Typische Inhalte |
|------|--------|--------|-----------|-----------------|
| Hot | NVMe-SSD | 0,01–0,05 ms | Sehr hoch | Aktiver Vektorindex, Embeddings, Modellgewichte |
| Warm | SATA-SSD, QLC-NVMe | 0,1–1 ms | Mittel | Seltener abgerufene Vektoren, ältere Wissensbasis |
| Cold | HDD, Objektspeicher | 5–20 ms | Niedrig | Archivierte Modelle, Logs, Rohdaten, Audit-Trails |
