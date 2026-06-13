---
tags: [onenote, aivengers]
---

# Gaudi 3 Spezifikationen

Die Architektur der Gaudi 3 von Intel ist speziell auf KI- und maschinelles Lernen ausgerichtet und bietet eine Reihe von hochspezialisierten Komponenten, die zusammenarbeiten, um komplexe Berechnungen effizient durchzuführen. Hier sind die wichtigsten Features im Detail:

1. Tensor Processing Cores (TPCs)

Die Gaudi 3 verfügt über 64 vollständig programmierbare Tensor Processing Cores (TPCs). Diese Kerne sind darauf spezialisiert, rechenintensive Aufgaben, wie zum Beispiel Matrixmultiplikationen und Vektoroperationen, zu beschleunigen, die in neuronalen Netzen häufig vorkommen. Sie unterstützen verschiedene Datenformate wie FP32, TF32, BF16, FP16 und FP8, die alle für die Verarbeitung in KI-Anwendungen wichtig sind.

2. Matrix Math Engines (MMEs)

Die Gaudi 3 enthält acht Matrix Math Engines (MMEs). Diese Einheiten sind für die effiziente Durchführung von Matrixmultiplikationen zuständig, einem zentralen Bestandteil vieler KI-Algorithmen. Die MMEs sind für hohe Durchsatzraten bei der Verarbeitung von 16- und 8-Bit-Datenformaten ausgelegt und summieren die Ergebnisse in 32-Bit-Formaten, was eine präzise Berechnung ermöglicht.

3. Shared SRAM

Jede Gaudi 3-Einheit verfügt über 96 MB gemeinsam genutzten SRAM-Speicher, der eine hohe Bandbreite von 12,8 TB/s bietet. Dieser Speicher ist entscheidend, um die hohen Anforderungen an die Datenverarbeitung und den schnellen Zugriff zu erfüllen, die in KI-Anwendungen benötigt werden.

4. High Bandwidth Memory (HBM2e)

Gaudi 3 ist mit acht HBM2e-Speicherstapeln ausgestattet, die insgesamt 128 GB Speicherplatz und eine Bandbreite von 3,7 TB/s bieten. Der HBM2e-Speicher sorgt dafür, dass große Mengen an Daten schnell verarbeitet und zwischen den Recheneinheiten verschoben werden können, was für die Skalierbarkeit und Leistung der KI-Beschleuniger entscheidend ist.

5. Media Engines

Die Media Engines in Gaudi 3 sind für die Vorverarbeitung von Daten zuständig, insbesondere für Aufgaben wie das Dekodieren von Bild- und Videodaten. Dies entlastet die Hauptrechenkerne und verbessert die Gesamtleistung des Systems, indem die Datenverarbeitung effizienter gestaltet wird.

6. Netzwerkschnittstellen

Die Gaudi 3 verfügt über 24 integrierte 200-Gigabit-Ethernet-Schnittstellen, die für die Verbindung und Skalierung von mehreren AI-Beschleunigern in Rechenzentren ausgelegt sind. Diese Schnittstellen ermöglichen eine effektive horizontale Skalierung und bieten die Möglichkeit, große KI-Cluster zu erstellen.

7. PCI Express 5.0

Die Architektur unterstützt PCI Express 5.0, was eine schnelle Verbindung zu Host-CPUs ermöglicht und eine hohe Bandbreite für Datenübertragungen zwischen den verschiedenen Komponenten sicherstellt.

Zusammenfassend bietet die Gaudi 3-Architektur eine Kombination aus spezialisierten Recheneinheiten, schnellem Speicher und leistungsstarken Netzwerkschnittstellen, die es ermöglichen, KI-Workloads effizient und skalierbar zu verarbeiten​

Gigaflops (GFLOPS) bedeutet Milliarden (10^9) Gleitkommaoperationen pro Sekunde.

Teraflops (TFLOPS) bedeutet Billionen (10^12) Gleitkommaoperationen pro Sekunde.

In dieser Skala folgen:

Petaflops (PFLOPS) mit Billiarden (10^15) Operationen pro Sekunde.

Exaflops (EFLOPS) mit Trillionen (10^18) Operationen pro Sekunde.

Diese Maßeinheiten werden verwendet, um die Rechenleistung von Computerprozessoren und Supercomputern zu quantifizieren.
