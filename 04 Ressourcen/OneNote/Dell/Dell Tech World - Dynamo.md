---
tags: [onenote, aivengers]
---

# Dell Tech World - Dynamo

Moin, wir hatten heute auf der Dell TechWorld eine super interessante NDA Session mit dem Engineering deren Unstructured Data Kollegen.

Für euch die Zusammenfassung.

Besonders beeindruckend für mich: wie sie mit Hilfe von NVIDIA Dynamo und die Einbindung deren hochperformanten Object Storage die Token Erstellung verdoppelt haben!!

💡 Technische Zusammenfassung Dell TechWorld 2025 – Meeting mit Jay Limbasiya (Dell Global Strategist AI, Data Science & Data Management)

🔧 1. Strategische Ausrichtung: Dell AI Data Platform

• Ziel: Integration von Business-, Daten- und Infrastrukturstrategie zur Reduktion von OPEX/CAPEX und zur Produktivsetzung von AI-Projekten.

• Dell positioniert sich als Anbieter einer modularen AI-Plattform, bestehend aus Compute, Storage und Data Services – herstelleragnostisch für GPUs/CPUs (NVIDIA, AMD, Intel).

• Das bisherige „Lakehouse“-Branding wird abgelöst durch den Begriff AI Data Platform, wobei Lakehouse-Elemente als technische Enabler integriert bleiben.

⸻

🧱 2. Architektur der AI Data Platform

• Modular & Composable: Compute, Storage, Data Engine und MetadataIQ können unabhängig skaliert und kombiniert werden.

• Zielgruppen:

• Data Engineers (direkter Zugriff via File/S3),

• Data Scientists (Python APIs, Frameworks wie LangChain, NVIDIA NeMo).

• Integration von Engines wie Starburst (Trino), Apache Spark und Elasticsearch.

🗂 3. MetadataIQ: Semantisches Datenverständnis

• Export systemeigener Metadaten aus PowerScale (Dateiname, Pfade, Dateigröße, Zugriffszeiten etc.) über SnapDev → Indexierung in Elasticsearch.

• Erweiterung um inhaltsspezifische Metadaten (z. B. Text aus PDFs, Objekterkennung in Bildern).

• Nutzung zur Klassifikation, Tagging und als Basis für Data Catalogs.

🔍 4. Retrieval-Augmented Generation (RAG) Enablement

• Dell unterstützt RAG-Workflows durch:

• Metadatenabfragen + semantische Suche (Text, Bild, Audio),

• Framework-Kompatibilität mit LangChain, LlamaIndex, NVIDIA NeMo,

• automatisierte Erstellung und Versionierung von Datasets für AI-Modelle.

• Ziel: Beschleunigung der Data Engineering Pipelines – Vorbereitung und Anreicherung von Daten für Inference und Training ohne aufwendige manuelle Prozesse.

🚀 5. Optimierung von Trainings-Workflows

• Automatisierte Konvertierung von Rohdaten → Tensor-Repräsentationen (für PyTorch etc.).

• Speicherung tensorisierter Daten auf Lightning (Dell Parallel File System) zur Entlastung von Object/File-Storage.

• Checkpoints & Model Outputs werden kontextsensitiv zwischen PowerScale, Object Storage und Lightning abgelegt.

⚙️ 6. KV-Cache Offload für LLM-Inferencing

• KV-Cache = Attention-Zustandsvektoren (Key/Value), generiert beim ersten Prompt.

• Dell speichert diese Vektoren persistent auf Lightning-Storage → spart GPU-Rechenleistung bei Re-Inferencing.

• Bei 32k+ Kontext: bis zu 2,26× schnellere Inferenzzeiten im Vergleich zu GPU-only.

• Unterstützt z. B. Mistral, LLaMA 3, NVIDIA VLLM & TensorRT-LLM.

⚡ 7. Project Lightning – High-Performance Parallel File System

• RDMA-fähiges Filesystem, direkt angebunden an GPUs.

• Datenströme: GPU → Lightning Storage (NVMe over Fabric) ohne CPU-Bottleneck.

• Nutzt Dell R16 Nodes (3× 400 GbE Ports), ausgelegt für AI-optimierte I/O (Tensor, Checkpoints, Vektoren).

• Im Vergleich zu WekaIO eigenentwickelt und eng in die Dell AI Data Platform integriert.

🛠 8. Composable AI Factory & Infrastruktur

• Dell AI Factory = Gesamtpaket (Compute, Storage, Data Platform, Management).

• Komponenten einzeln lizenzierbar und skalierbar:

• Einstieg über z. B. Starburst/Spark-Referenzdesigns möglich.

• Kombinierbar mit bestehenden Object Stores oder GPU-Racks.

• T-Shirt-Sizing (S/M/L/XL) für passende PoC- & Production-Szenarien.

🔐 9. AI Security & Trustworthy AI

• Security Stack entlang des AI-Lifecycles:

• Model Security (Manipulation, Bias),

• Deployment Security (Access, Masking),

• Data Security (Klassifikation, Zugriffsschutz).

• Trust-Komponenten wie z. B. Data Poisoning Detection, Modellverifikation und Datenklassifikation werden zwischen Compute- und Storage-Schicht verteilt.

Wenn ihr Fragen habt, einfach melden.

Der nächste Schritt: es wird eine Deep Dive Session mit dem Team von Sinan geben. Wer möchte, darf gerne auch teilnehmen.
