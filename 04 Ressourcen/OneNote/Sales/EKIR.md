---
tags: [onenote, aivengers]
---

# EKIR

Als Orientierung habe ich das Mixtral 8x7B Modell genommen:

Phase 1: 500 User - Entry

Variante A – 4-Bit Quantisiert - günstigere Variante

Vorschlag: HPE ProLiant DL380a Gen 11

CPU: Intel Xeon 5 ca. 32 Kerne Singlecore (Dualcore mind. 16 Kerne), mind. 64 Threads, mind. 3 GHz)

RAM: ca. 256 GB DDR5

GPU: 2× L40s (48 GB VRAM je Karte) - Verfügbarkeit einfach derzeit am besten

Storage: 2× NVMe SSD (je 2 TB)

Netzwerk: 2× 25 GbE minimum

Node-Spezifikation:

1 Node

Clustergröße:

Variante B – 16-Bit FP16 - qualitativ bessere Lösung

RAM: 512 GB DDR5

GPU: 4 x L40s oder 8 x Intel Gaudi 3 / AMD MI300x --> für AMD und Intel wird aber ein anderer Formfaktor benötigt ("HGX")

Phase 2: 20.000 + User

Variante A – 4-Bit Quantisiert (horizontal skalierend)

CPU: AMD EPYC 9654 oder Intel Xeon 8592+

RAM: 256 GB DDR5

GPU: 4× L40S (48 GB VRAM je Karte)

Storage: 2× NVMe SSD (je 2 TB, PCIe 4.0)

Netzwerk: mind. 2× 100 GbE

Node-Spezifikation (pro Node):

4 Nodes → insgesamt 16× L40S → ausreichend für 1000+ parallele Anfragen (4-Bit)

Variante B – 16-Bit FP16 (Enterprise-Empfehlung)

RAM: 1 TB DDR5

Storage: 4× NVMe SSD (je 2 TB)

Netzwerk: 2× 100 GbE (oder NVIDIA NVLink/NVSwitch Backend)

2 Nodes → insgesamt 8× H100 → performant für Mixtral 8x7B FP16 und 2.000+ parallele Sessions

Für 20.000 User (Peak Load): Optional auf 4 Nodes / 16 GPUs ausbauen
