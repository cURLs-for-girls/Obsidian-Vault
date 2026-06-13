---
tags: [onenote, aivengers]
---

# Building Blocks HPE

Obstacles:

Hauptpartner AI ist Nvidia

Netzwerk schlecht bei HPE

Lea kümmert sich um technischen AP

Blöcke: DL360 / 380 / 380 a für Größe S und M - HPE Apollo 6500 Gen10 Plus als Cluster Server für Gaudi (L)

CPUs: 2x Intel Xeon Scalable Prozessoren (Ice Lake oder Sapphire Rapids)

RAM: Bis zu 3 TB DDR4 RAM

Speicher: SSD/NVMe

Netzwerk: 10/25/40 GbE

Modell: HPE ProLiant DL360 Gen10 Plus

Hardware:

Intel® oneAPI: Eine Sammlung von Optimierungstools für AI, die mit VNNI (Vector Neural Network Instructions) arbeitet, um KI-Inferenz direkt auf der CPU zu beschleunigen.

TensorFlow/ONNX mit Intel MKL-DNN: Für KI-Inferenz auf Intel Xeon Prozessoren optimiert.

Software:

Keine dedizierten Beschleuniger (nur CPU-basierte Beschleunigung mit VNNI).

Beschleuniger:

Größe S – Ressourcenleichte Workloads ohne Beschleuniger

Größe M – Mittlere Workloads mit Intel Flex GPUs

RAM: Bis zu 6 TB DDR4

Beschleuniger: 2-4 Intel Data Center GPU Flex Series Karten (Flex 140 oder Flex 170)

Speicher: SSD/NVMe, optional NVMe-Storage für schnelleren Datenzugriff

Netzwerk: 25/100 GbE

Modell: HPE ProLiant DL380 Gen10 Plus

Intel® oneAPI Toolkits: Für die Entwicklung und Optimierung von KI-Workloads, die sowohl auf den Intel Xeon CPUs als auch auf den Intel Flex GPUs laufen.

Intel OpenVINO™ Toolkit: Für KI-Inferenz-Optimierung, ideal für Anwendungsfälle wie Bild- und Videoanalysen, welche stark von der Flex-GPU profitieren.

TensorFlow und PyTorch mit Intel optimierten Bibliotheken: Integration für das Training und die Inferenz auf den Flex GPUs.

Flex 140: Für KI-Inferenz und Videobearbeitung.

Flex 170: Leistungsfähiger für rechenintensive KI-Workloads.

Intel Data Center GPU Flex Series: Diese Karten sind ideal für KI-Inferenz, insbesondere für Workloads, die eine hohe Dichte an Video- oder Bildverarbeitung erfordern.

Ideal für mittlere Workloads wie KI-Inferenz, Bildverarbeitung, Videoanalysen und Streaming-basierte KI-Modelle, die nicht das vollständige Deep-Learning-Training erfordern, sondern eine effiziente Beschleunigung für KI-Inferenz benötigen.

Einsatzbereich:

Größe L – Clusterlösung für große KI-Workloads

CPUs: 2x Intel Xeon Scalable Prozessoren

Beschleuniger: Bis zu 8 Intel Habana Gaudi 2 Karten (über UBB)

RAM: Bis zu 12 TB DDR4

Speicher: SSD/NVMe, optional NVMe-Speicher für schnelle Datenübertragung

Netzwerk: 100/200 GbE für High-Performance-Cluster-Konnektivität

Modell: HPE Apollo 6500 Gen10 Plus

Intel Habana SynapseAI SDK: Für das Training auf mehreren Gaudi-Karten optimiert.

Slurm oder andere Workload-Management-Systeme für Clusterlösungen.

Intel® oneAPI: Für CPU-basierte KI- und HPC-Aufgaben, inkl. Deep Neural Network Library (oneDNN) für Beschleunigung auf CPUs.

MPI (Message Passing Interface): Für verteiltes Training und die Kommunikation zwischen Knoten.

Intel Habana Gaudi 2 UBB mit bis zu 8 Gaudi 2 Karten für maximale Rechenleistung.
