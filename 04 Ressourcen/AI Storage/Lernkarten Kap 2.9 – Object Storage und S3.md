---
tags:
  - lernkarten
  - ai-storage
  - object-storage
  - s3
status: aktiv
erstellt: 2026-05-22
hersteller:
  - MinIO
  - NetApp
  - Dell
  - Ceph
---

# Lernkarten – Kapitel 2.9: Object Storage und S3 als De-facto-Standard

---

## 🔵 Was ist S3 – und warum ist es ein Standard?

Was ist S3, warum gilt es als Standard, und was bedeutet "S3-kompatibel" in der Praxis?
?
- **S3** = Amazon Simple Storage Service – hat sich als **universelles Zugriffsprotokoll** für Object Storage durchgesetzt
- **Entscheidend:** S3 ist **kein Produkt**, sondern eine **API-Spezifikation**
- **S3-kompatibel:** Jeder Anbieter, der diese API implementiert, gilt als S3-kompatibel → eine Anwendung, die einmal gegen S3 entwickelt wurde, läuft ohne Änderungen gegen **MinIO, NetApp StorageGRID, Dell ObjectScale oder Ceph**
- **Zugriff:** Immer über eine **REST-API** (zustandsloses HTTP-Kommunikationsmodell)
- **Adressierung:** Nicht über Dateipfade oder Blockadressen, sondern über **Objekt-ID + Bucket-Name**

---

## 📦 Die vier Kernkonzepte ⚠️ *wiederholen*

Was sind Bucket, Objekt, REST-API und Lifecycle-Policy – und was unterscheidet sie von klassischen Konzepten?
?
- **Bucket:** Logischer Container für Objekte – wie ein Verzeichnis auf höchster Ebene, aber **ohne Unterordner-Logik**. Milliarden von Objekten können in einem einzelnen Bucket liegen
- **Objekt:** Die eigentliche Dateneinheit – bestehend aus **Nutzdaten + eindeutiger ID + frei definierbaren Metadaten** (z. B. `model_version=2.4`, `dataset=legal_docs_DE`)
- **REST-API:** Steuert alle Operationen über HTTP-Verben (GET, PUT, DELETE) – **kein Mount, kein Treiber, keine proprietäre Client-Software** notwendig
- **Lifecycle-Policies:** Automatische Regeln, die Objekte nach **Zeit oder Zugriffshäufigkeit** zwischen Tiers verschieben oder löschen – Beispiel: Rohdaten nach 90 Tagen → Cold-Tier, nach 365 Tagen → automatisch gelöscht

---

## 🤖 Relevanz in AI-Pipelines ⚠️ *wiederholen*

Warum ist S3-kompatibler Object Storage die universelle Datenhaltungsschicht für KI-Pipelines?
?
S3 dominiert aus drei Gründen:
1. **Nahezu unbegrenzte Skalierbarkeit** – wächst mit dem Datenvolumen ohne Architekturwechsel
2. **Nativer Parallel-Lesezugriff ohne Lock-Konflikte** – viele GPU-Hosts können gleichzeitig lesen
3. **Framework-Integration von Haus aus:** PyTorch, TensorFlow, LangChain, LlamaIndex und NVIDIA Triton bringen **S3-Konnektoren nativ mit** – kein Zusatzaufwand

---

## 📊 S3-Rollen in einer typischen AI-Infrastruktur

Welche drei Rollen übernimmt S3-Object-Storage in einer AI-Infrastruktur, und wie unterscheiden sich die Zugriffsmuster?
?
| Rolle | Inhalt | Zugriffsmuster |
|-------|--------|----------------|
| **Rohdaten-Ablage** | PDFs, Texte, Bilder, Logs – Quelle für Training und Ingestion | Bulk-Reads, wenig frequent |
| **Modell-Artefakt-Repository** | Gewichte, Checkpoints, ONNX-Dateien | Große sequentielle Reads, selten |
| **RAG-Dokumentenspeicher** | Quellmaterial für die Ingestion-Pipeline | Parallel-Reads, burstweise |

**Merksatz:** S3 ist nicht die schnellste Schicht – aber die **skalierbarste und am weitesten integrierte**. Deshalb ist es die Grundlage jeder AI-Datenpipeline.
