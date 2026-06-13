---
tags:
  - lernkarten
  - ai-storage
  - storage-architektur
  - storage-systeme
status: aktiv
erstellt: 2026-06-04
hersteller:
  - NetApp
  - Pure Storage
  - Dell
  - IBM
  - WEKA
  - MinIO
---

# Lernkarten – Kapitel 3.4: Storage-Systeme im Rechenzentrum

---

## 🔵 Warum mehrere Storage-Systemtypen?

Warum enthält ein AI-Rechenzentrum selten nur eine Art Storage-System?
?
- Unterschiedliche Datenschichten haben **unterschiedliche Anforderungen** an Latenz, Durchsatz, Kapazität und Kosten
- Eine einzige Storage-Lösung bedient selten alle Anforderungen eines KI-Workloads optimal
- Das Ergebnis ist eine Architektur aus **mehreren Storage-Systemtypen**, die zusammen eine vollständige Datenpipeline abbilden
- Architekturentscheidungen sollten deshalb **früh** getroffen werden

---

## ⚡ All-Flash-Array (AFA) ⚠️ *wiederholen*

Was ist ein All-Flash-Array, welche typischen Vertreter gibt es, und wann ist es die richtige Wahl – wann nicht?
?
- **Definition:** Storage-System, das ausschließlich **NVMe-SSDs** verwendet – ausgelegt auf maximale IOPS und minimale Latenz
- **Typische Vertreter:** NetApp AFF, Pure Storage FlashArray, Dell PowerStore, HPE Alletra
- **Stärken:**
  - Sehr niedrige Latenz (< 500 µs)
  - Hohe IOPS
  - Robuste Datenschutz-Features (Snapshots, Replikation, Inline-Deduplizierung)
- **Geeignet für:** Vektordatenbanken, KV-Cache-Offloading, Datenbankinstanzen für RAG-Prozesse → **latenzkritische Workloads**
- **Nicht geeignet für:** Große Datenmengen wie Dokumentkorpora oder Modell-Artefakt-Archive (zu teuer pro TB), Scale-up stößt bei sehr großem Kapazitätsbedarf an Grenzen

---

## 🗂️ Scale-out NAS / Paralleles Dateisystem ⚠️ *wiederholen*

Was ist Scale-out NAS, welche Vertreter gibt es, und für welchen AI-Einsatz ist es ideal?
?
- **Definition:** NAS-Systeme mit **horizontaler Skalierbarkeit** – Daten und Metadaten werden über mehrere Nodes verteilt; Durchsatz und Kapazität wachsen gemeinsam
- **Typische Vertreter:** NetApp ONTAP (Scale-out), Dell PowerScale (früher Isilon), HPE Alletra MP X10000, IBM Spectrum Scale (GPFS), WEKA
- **Stärken:**
  - Hoher **aggregierter Durchsatz**
  - **Paralleler Zugriff** durch viele Clients gleichzeitig
  - **POSIX-kompatibel** → PyTorch, TensorFlow u. a. Frameworks können ohne Anpassungen auf das Dateisystem zugreifen
- **Ideal für:** Gleichzeitiges Laden großer Modellgewichte durch mehrere GPU-Nodes
- **Schwächen:** Höhere Komplexität im Betrieb; Latenz höher als All-Flash mit lokalem NVMe; für viele kleine IOPS (Vektordatenbanken) nicht erste Wahl

> **POSIX-Hinweis:** POSIX (Portable Operating System Interface) ist ein Standard, der sicherstellt, dass Anwendungen wie PyTorch ohne Anpassungen auf das Dateisystem zugreifen können.

---

## 🪣 Object Storage (S3-kompatibel) ⚠️ *wiederholen*

Was ist Object Storage, welche Vertreter gibt es, und wofür wird es in AI-Umgebungen eingesetzt?
?
- **Definition:** Speichert Daten als eigenständige Objekte in einem **flachen Namensraum**, Zugriff über **S3-API** (HTTP-basiertes Protokoll, ursprünglich von AWS, heute Industriestandard)
- **Typische Vertreter:** MinIO, NetApp StorageGRID, Dell ObjectScale, IBM Cloud Object Storage, Ceph
- **Stärken:**
  - Nahezu **unbegrenzte Skalierbarkeit**
  - **Niedrige Kosten** pro Terabyte
  - Native Parallelität beim Lesen
  - Umfangreiche Metadaten pro Objekt
  - Nativ cloud-kompatibel
- **Geeignet für:** Rohdaten-Ablage, Modell-Artefakt-Repository, Quellspeicher für RAG-Ingestion-Pipelines
- **Schwächen:**
  - Höhere Latenz als Block- oder File-Storage (HTTP-Overhead)
  - **Kein POSIX-Support** – Anwendungen brauchen S3-Konnektoren oder FUSE-Treiber (Filesystem in Userspace)
  - Für latenzkritische Echtzeit-Zugriffe ungeeignet

---

## 🧩 Hyperkonvergente und softwarebasierte Plattformen

Was sind softwarebasierte Storage-Plattformen, und wann sind sie besonders relevant?
?
- **Beispiele:** WEKA, Ceph – laufen auf **Standard-x86-Servern**
- **Stärken:** Bieten mehrere Storage-Protokolle aus **einer Software-Schicht** (Block, File, Object)
- **Besonders relevant in:** Cloud-nativen und **Kubernetes-basierten Umgebungen**
  - Gut in Container-Orchestrierung integrierbar
  - Stellen **StorageClass-Ressourcen über CSI-Treiber** bereit (Container Storage Interface – Standardschnittstelle für Storage in Kubernetes)
- **Vorteil:** Keine proprietäre Hardware notwendig; flexible Skalierung auf Commodity-Hardware

---

## 📊 Welches System für welche Datenschicht? ⚠️ *wiederholen*

Wie ordnet man Storage-Systemtypen den Datenschichten in einem AI-Workload zu?
?

| Datenschicht | Beispieldaten | Systemtyp | Leitmetrik |
|-------------|--------------|-----------|------------|
| **Hot** | Vektorindex, KV-Cache | All-Flash-Array, lokale NVMe | IOPS, Latenz |
| **Warm** | Modellgewichte, aktive Dokumente | Scale-out NAS / Paralleles Dateisystem | Durchsatz, Parallelität |
| **Cold** | Rohdaten, Archiv-Dokumente, Modell-Versionen | Object Storage | Kapazität, Kosten/TB |

- **Kernaussage:** Die Datenschicht bestimmt das Storage-System – nicht umgekehrt
- **Praxistipp:** Diese Tabelle eignet sich gut als Gesprächsmodell im Kundentermin, um zu zeigen, warum eine Einzel-Lösung für AI-Workloads selten ausreicht
