---
tags: [onenote, aivengers]
---

# AI Storage

Storage Grundlagen --> Eva (um was zu checken)

Architektur im RZ --> Eric

Brücke zu AI und Dell (RAG usw.) --> Flo / Louis

Storage Grundlagen

Wie AI Storage sich von herkömmlichem Storage unterscheidet

Datenvolumen und -vielfalt: AI-Anwendungen erfordern die Verarbeitung großer Mengen unstrukturierter Daten wie Bilder, Videos und Sensordaten, während herkömmlicher Storage sich hauptsächlich auf strukturierte Daten wie Datenbanken und Dateien konzentriert.

Hohe Performance: AI Storage priorisiert hohe IOPS und geringe Latenz, um die Datenverarbeitung in Echtzeit zu unterstützen, im Gegensatz zu herkömmlichem Storage, bei dem Kosten oder Kapazität der Geschwindigkeit vorgezogen werden können.

Parallelität: AI Systeme müssen Daten parallel über verteilte Knoten hinweg verarbeiten und fortschrittliche Architekturen wie Objekt-Storage oder parallele Dateisysteme erfordern.

Nahtlose Integration: AI Storage-Lösungen sind so konzipiert, dass sie eng mit AI-Frameworks (z. B. TensorFlow, PyTorch) und Beschleunigern (z. B. GPUs, TPUs) zusammenarbeiten.

3 Speicherarten

Stell dir Storage wie eine Stadt vor: Block-Storage sind einzelne Baugrundstücke ohne Haus, File-Storage sind fertige Häuser mit Adresse in einer Straße, und Object-Storage sind versiegelte Container in einem riesigen Logistiklager mit Etikett und Metadaten. Block-Storage zerlegt Daten in Blöcke und präsentiert sie einem Server wie eine rohe Festplatte; File-Storage organisiert Daten in Dateien und Ordnern; Object-Storage speichert Daten als Objekte mit eindeutiger ID und Metadaten in einer flachen Struktur.

Block-Storage: Ein Speicherbereich, der für einen Server wie eine eigene Festplatte wirkt. Der Server bekommt rohe Blöcke und organisiert sie selbst.

File-Storage: Dateien und Ordner in einer festen Struktur, also eine klassische Freigabe mit Verzeichnisbaum.

Object-Storage: Daten werden als Objekte mit ID und Metadaten gespeichert, meist für große unstrukturierte Datenmengen.

NTFS: Das klassische Dateisystem von Windows.

ext4: Ein sehr verbreitetes Dateisystem bei Linux.

VMFS: Ein Dateisystem von VMware, damit mehrere virtuelle Maschinen sauber auf gemeinsamem Speicher liegen können.

Dateisysteme

3 Anbindungsarten

DAS, NAS, SAN

DAS = die Festplatte im oder direkt am Server, wie ein Anhänger direkt an einem Fahrzeug.

NAS = ein zentraler Aktenschrank im Netzwerk, auf den viele zugreifen können.

SAN = ein eigenes Straßennetz nur für Storage-Verkehr, über das mehrere Server auf zentrale Storage-Ressourcen zugreifen.

DAS liefert meist Block-Storage an genau einen Host.

NAS liefert File-Storage über SMB oder NFS.

SAN liefert typischerweise Block-Storage über ein dediziertes Netzwerk, klassisch etwa Fibre Channel oder auch iSCSI

Weitere Begriffe

RAG & die Vektordatenbank

Data Lake (Evolution von Data Warehouse)

Blob

IOPS, Latenz, Durchsatz.

Viele kleine Zugriffe = IOPS.

Schnelle Reaktion = Latenz.

Viel Datenmenge bewegen = Durchsatz.

🗂️ Datenschutz & Datensicherung

RAID (Redundant Array of Independent Disks)RAID kombiniert mehrere physische Festplatten zu einem logischen Verbund für Redundanz und/oder Performance. RAID schützt vor Festplattenausfall, ist aber kein Backup – es sichert nicht gegen Datenverlust durch Löschen, Ransomware oder Feuer. Dell PowerStore und PowerVault nutzen RAID intern für Ausfallsicherheit.

SnapshotEin Snapshot ist ein zeitpunktbezogener Zustandsabdruck eines Volumes – es werden zunächst nur Metadaten gespeichert, Änderungen danach werden separat erfasst (Copy-on-Write). Snapshots entstehen in Sekunden, benötigen minimal Speicherplatz und ermöglichen RPOs im Minutenbereich. Sie sind kein vollständiges Backup, aber ideal zur schnellen Wiederherstellung.

BackupEin Backup erstellt eine vollständige Datenkopie auf einem separaten Speicherziel. Im Gegensatz zum Snapshot ist ein Backup unabhängig vom Originalspeicher und schützt auch bei totalem Systemausfall oder Standortverlust. Dell PowerProtect Data Manager automatisiert Backup-Workflows.

ReplikationReplikation kopiert Daten kontinuierlich oder periodisch auf ein zweites System (lokal oder remote). Sie dient der Disaster Recovery – bei Ausfall des Primärsystems übernimmt das Replikat. Unterschied: Snapshot = Zeitpunkt lokal, Replikation = Kopie auf separatem System.

📦 Storage-Objekte

LUN (Logical Unit Number)Eine LUN ist eine eindeutige Kennung für einen logischen Speicherbereich in einer SAN-Umgebung (Block Storage). Der Server sieht die LUN wie eine virtuelle Festplatte – ohne zu wissen, welche physischen Disks dahinterstecken. Protokolle: Fibre Channel, iSCSI.

VolumeEin Volume ist ein logischer Speichercontainer innerhalb eines Storage-Systems. In NAS-Umgebungen enthält es ein Dateisystem, in SAN-Umgebungen beherbergt es LUNs. Dell PowerStore und ONTAP-basierte Systeme nutzen Volumes als zentrale Verwaltungseinheit.

ShareEin Share ist ein freigegebenes Verzeichnis auf einem Volume, das über NAS-Protokolle (SMB/CIFS für Windows, NFS für Linux) im Netzwerk bereitgestellt wird. Clients mounten den Share direkt wie ein Netzlaufwerk – kein spezieller Treiber nötig.

BucketEin Bucket ist der grundlegende Speichercontainer in Object Storage (z. B. S3-kompatibel). Objekte (Dateien + Metadaten) werden flach in Buckets abgelegt – keine Ordnerhierarchie. Dell ECS (Elastic Cloud Storage) unterstützt S3-Buckets nativ.

⚙️ Storage-Effizienz

Thin ProvisioningThin Provisioning weist einem Volume virtuell mehr Kapazität zu, als physisch vorhanden ist – Speicher wird erst bei tatsächlicher Nutzung belegt. Vorteil: bessere Auslastung, keine Verschwendung durch pre-allokierten Leerraum. Gefahr: Overprovisioning bei unkontrolliertem Wachstum.

Deduplizierung (Dedupe)Dedupe erkennt identische Datenblöcke und speichert sie nur einmal – alle Referenzen zeigen auf denselben Block. Besonders effektiv bei VMs, Backups und Datenbanken. Dell PowerStore erreicht mit Inline-Dedupe erhebliche Platzeinsparungen.

Komprimierung (Compression)Komprimierung reduziert die Datenmenge durch Algorithmen (z. B. LZ4) bevor oder nachdem Daten auf die Disk geschrieben werden. Kombiniert mit Dedupe typischerweise 3:1 bis 5:1 Datenreduktion oder höher. Dell All-Flash Arrays führen beides inline durch, ohne Performanceverlust.

⚡ Flash vs. Hybrid

All-FlashEin All-Flash Array (AFA) verwendet ausschließlich SSDs – keine HDDs. Ergebnis: konsistent niedrige Latenz (<1 ms), hohe IOPS, geringer Platzbedarf. Dell PowerStore und PowerMax sind AFAs, ideal für Datenbanken, VDI und kritische Workloads.

HybridHybrid Arrays kombinieren SSDs (als Cache/Tier) mit HDDs (als Kapazitätsebene). Daten werden automatisch auf den schnellen SSD-Tier promoted, wenn häufig zugegriffen wird. Dell PowerVault und ältere Unity-Systeme nutzen dieses Modell für kostenoptimierte Kapazität.

🔄 Verfügbarkeit

Hochverfügbarkeit (HA)Hochverfügbarkeit bedeutet, dass ein System trotz Komponentenausfällen weiterbetrieben wird – durch redundante Controller, Netzwerkpfade und Netzteile. Dell PowerStore ist auf 99,9999% Verfügbarkeit (Six Nines) ausgelegt. HA eliminiert Single Points of Failure.

FailoverFailover ist der automatische Wechsel von einem ausgefallenen System/Pfad auf ein Standby-System. Bei Storage bedeutet das: fällt Controller A aus, übernimmt Controller B nahtlos, ohne I/O-Unterbrechung. Dell PowerStore führt Controller-Failover in Sekunden durch.

🌡️ Datentiering

Hot TierHot Tier ist der schnelle, teure Speicher für häufig genutzte Daten – typischerweise NVMe oder SSD. Maximale Performance, sofortiger Zugriff. In S3-Modellen entspricht dies der Standard-Klasse.

Cold TierCold Tier ist günstiger, langsamer Speicher für selten genutzte oder Archivdaten. Zugriffszeiten können Minuten bis Stunden betragen. Dell ECS und Cloud-Tiering (z. B. zu AWS Glacier) verschieben Daten automatisch per Lifecycle-Policy in den Cold Tier.

☁️ S3 (Simple Storage Service)

S3 ist das von Amazon AWS geprägte Object-Storage-Protokoll, das zum De-facto-Standard für Cloud- und Hybrid-Storage wurde. Objekte werden über eine REST-API mit HTTP-Methoden (PUT, GET, DELETE) verwaltet – ohne Dateisystem-Hierarchie. Dell ECS bietet vollständige S3-API-Kompatibilität on-premises, sodass Applikationen zwischen Cloud und lokalem Rechenzentrum portabel bleiben. Kernkonzepte: Buckets (Container), Objekte (Daten + Metadaten + eindeutige ID) und Lifecycle-Policies für automatisches Tiering.

Architektur im RZ

Storage-Architektur im RZ in 6 Bausteinen — Hosts, Netzwerk, Storage-System, Datenpfad, Schutzmechanismen und Skalierung.
