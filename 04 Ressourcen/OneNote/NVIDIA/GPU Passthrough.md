---
tags: [onenote, aivengers]
---

# GPU Passthrough

WDDM = Lizenz ✅

WDDM ist das Windows-Grafiktreiber-Modell (Display/3D/DirectX). Auf Datacenter-GPUs (Tesla/A-Series/L-Series etc.) in virtualisierten Umgebungen gilt: WDDM-Modus = GRID/vGPU-Lizenz erforderlich.  Dell beschreibt es direkt so: „Mit einer GRID-Lizenz kann der Nutzer die NVIDIA GRID- und virtuellen GPU-Treiber herunterladen, um vom TCC- in den WDDM-Modus zu wechseln.”

TCC/Compute = keine vGPU-Lizenz ✅ (meistens)

TCC (Tesla Compute Cluster) ist der reine Compute-Modus unter Windows – er deaktiviert den Windows-Grafik-Stack komplett.  AWS bestätigt: GRID-Treiber laufen im WDDM-Modus, TCC-Modus hingegen ist für Compute-only.  Wer nur CUDA/AI-Workloads ohne Grafikausgabe fährt, braucht typischerweise keine vGPU-Lizenz.

Die eine Nuance, die du kennen solltest

Es ist nicht ganz so simpel wie „WDDM = immer Lizenz, TCC = nie Lizenz”. Die eigentliche Logik ist:

Szenario 
Treiber 
Lizenz nötig? 
Windows VDI/3D/Remote- 
WDDM (GRID/vGPU-Treiber) 
Ja (vApps/vPC/vWS) 
Desktop 
Windows Compute-only 
TCC-Modus 
X 
Nein 
(CUDA/AI) 
Linux Compute-only (CUDA/AI) 
Standard Linux-Treiber 
X Nein 
Windows Server + Passthrough 
WDDM via GRID-Treiber 
Ja 
+ Grafik 
4 
9 
Merksatz: Der Treiber-Stack ist der Auslöser, nicht die Passthrough-Technik. Sobald du auf 
einer Datacenter-GPU unter Windows den WDDM/GRID-Treiber lädst (egal ob Passthrough 
oder vGPU-Sharing), bist du im Lizenz-Ökosystem. 
4 ...Szenario 
Treiber 
Lizenz nötig? 
Windows VDI/3D/Remote- 
WDDM (GRID/vGPU-Treiber) 
Ja (vApps/vPC/vWS) 
Desktop 
Windows Compute-only 
TCC-Modus 
X 
Nein 
(CUDA/AI) 
Linux Compute-only (CUDA/AI) 
Standard Linux-Treiber 
X Nein 
Windows Server + Passthrough 
WDDM via GRID-Treiber 
Ja 
+ Grafik 
4 
9 
Merksatz: Der Treiber-Stack ist der Auslöser, nicht die Passthrough-Technik. Sobald du auf 
einer Datacenter-GPU unter Windows den WDDM/GRID-Treiber lädst (egal ob Passthrough 
oder vGPU-Sharing), bist du im Lizenz-Ökosystem. 
4

Fragen an den Kunden:

- Was will der Kunde machen (durchreichen)? Bsp.VDI/3D‑Rendering/DirectX/OpenGL oder rein Compute (KI, CUDA ohne Anzeige)?

- Welchen Hypervisor und welche Edition (z.B. vSphere Standard vs. Enterprise Plus, Citrix Lizenzstufe)?

- Welche GPU(s) und welcher Treiber (Standard‑Treiber, NVIDIA vGPU‑Treiber, Compute‑Only)?

GPU in VM?

├─ Nein (Bare Metal)

│  └─ i.d.R. keine vGPU Lizenz

│

└─ Ja

├─ vGPU Sharing

│  └─ Lizenz nötig

│     ├─ App / Session → vApps

│     └─ eigene Workstation VM → vWS

└─ PCIe Passthrough (1:1)

├─ Linux

│  ├─ nur CUDA / kein Desktop → keine Lizenz

│  └─ Desktop / 3D → Lizenz

└─ Windows

├─ App / Session → vApps

└─ eigene VM mit Desktop / 3D → vWS
