---
tags: [onenote, aivengers]
---

# Berechnungen GPU CPU

A) Für Kl-Modelle (Training/Inferenz) 
Der GPU-Speicherbedarf wird hauptsächlich von folgenden Faktoren beeinflusst: 
• Modellgröße (Parameteranzahl) 
Faustformel: 
Parameter x Datentyp-Bits 
GPU-RAM (GB) 
8 x 10243 
Beispiel (Liama 2-7B in FP16): 
Mrd. x 16Bit 
14GB(+Overhead 20GB) 
8 x 10243 
• Batch-Größe 
Größere Batches erhöhen den Speicherbedarf linear. 
Beispiel: Bei Batch-Größe z 2x GPU-RAM. 
Datentyp (Präzision) 
Datentyp 
FP32 
FP16/BF16 
INT8 
Speicherbedarf pro Parameter 
4 Byte 
2 Byte 
1 Byte 
Quantisierung (z. B. INT8) reduziert den Bedarf um 50—75 %. 
Overhead (Datenladen, Optimierer, Gradienten) 
Typischerweise 20—50 % zusätzlich zum Modellgewicht. ...A) Für Kl-Modelle (Training/Inferenz) 
Der GPU-Speicherbedarf wird hauptsächlich von folgenden Faktoren beeinflusst: 
• Modellgröße (Parameteranzahl) 
Faustformel: 
Parameter x Datentyp-Bits 
GPU-RAM (GB) 
8 x 10243 
Beispiel (Liama 2-7B in FP16): 
Mrd. x 16Bit 
14GB(+Overhead 20GB) 
8 x 10243 
• Batch-Größe 
Größere Batches erhöhen den Speicherbedarf linear. 
Beispiel: Bei Batch-Größe z 2x GPU-RAM. 
Datentyp (Präzision) 
Datentyp 
FP32 
FP16/BF16 
INT8 
Speicherbedarf pro Parameter 
4 Byte 
2 Byte 
1 Byte 
Quantisierung (z. B. INT8) reduziert den Bedarf um 50—75 %. 
Overhead (Datenladen, Optimierer, Gradienten) 
Typischerweise 20—50 % zusätzlich zum Modellgewicht.

Praktische Beispiele: 
Modell 
ResNet-50 
GPT-3 (175B) 
Stable Diffusion XL 
Parameter 
25 Mio. 
175 Mrd. 
2.6 Mrd. 
FP16-RAM (CB) 
-0.5 
-350 
-10 
INT8-RAM (GB) 
-0.25 
-175 
-5 
B) Für Grafikberechnung (Rendering, Simulation) 
• Texturauflösung & Szenenkomplexität 
4K-Texturen: -100-500 MB pro Objekt. 
Raytracing: +20—50 % Overhead. 
• Framebuffer 
4K @ 60 FPS = 1-2 CB. ...Praktische Beispiele: 
Modell 
ResNet-50 
GPT-3 (175B) 
Stable Diffusion XL 
Parameter 
25 Mio. 
175 Mrd. 
2.6 Mrd. 
FP16-RAM (CB) 
-0.5 
-350 
-10 
INT8-RAM (GB) 
-0.25 
-175 
-5 
B) Für Grafikberechnung (Rendering, Simulation) 
• Texturauflösung & Szenenkomplexität 
4K-Texturen: -100-500 MB pro Objekt. 
Raytracing: +20—50 % Overhead. 
• Framebuffer 
4K @ 60 FPS = 1-2 CB.

2. CPU-RAM-Bedarf bestimmen 
A) Für KI-WorkIoads 
Datenvorverarbeitung 
Mindestens 2—4x der Batch-Größe (z. B. 64 GB für große Datensätze). 
• Modellladen (wenn nicht auf GPU) 
FP32-Modell: Parameter x 4 Byte (z. B. 7B-Modell z 28 GB). 
B) Allgemeine Workloads 
Empfehlungen: 
Kleinere Modelle (Training): 32—64 GB. 
Große Modelle (LLMS): 128 GB - 1 TB. 
Datenbanken/Simulationen: 1.5x der Datengröße. ...2. CPU-RAM-Bedarf bestimmen 
A) Für KI-WorkIoads 
Datenvorverarbeitung 
Mindestens 2—4x der Batch-Größe (z. B. 64 GB für große Datensätze). 
• Modellladen (wenn nicht auf GPU) 
FP32-Modell: Parameter x 4 Byte (z. B. 7B-Modell z 28 GB). 
B) Allgemeine Workloads 
Empfehlungen: 
Kleinere Modelle (Training): 32—64 GB. 
Große Modelle (LLMS): 128 GB - 1 TB. 
Datenbanken/Simulationen: 1.5x der Datengröße.

3. CPU- & CPU-RAM-zusammenspiel 
Datenpipelining 
CPU lädt Daten vor GPU verarbeitet. 
Empfehlung: CPU-RAM sollte 2—3x größer sein als GPU-RAM, um Engpässe zu vermeiden. 
• Multi-GPU-Systeme 
Jede GPIJ braucht eigenen CPU-RAM-Puffer (z. B. 4x GPlJs mit 24 GB mind. 96 GB CPU- 
RAM). 
4. Tools zur Speicheranalyse 
NVIDIA-SMI (GPU-Überwachung) 
bash 
nvidia—smi total, memory.used 
PyTorch/TensorFlow Memory Profiler 
2. 
python 
—fo rmat=csv 
torch. # Zeigt GPU—Speichernutzung 
Linux/Windows Task Manager 
3. 
CPU- und GPU-Nutzung in Echtzeit prüfen. ...3. CPU- & CPU-RAM-zusammenspiel 
Datenpipelining 
CPU lädt Daten vor GPU verarbeitet. 
Empfehlung: CPU-RAM sollte 2—3x größer sein als GPU-RAM, um Engpässe zu vermeiden. 
• Multi-GPU-Systeme 
Jede GPIJ braucht eigenen CPU-RAM-Puffer (z. B. 4x GPlJs mit 24 GB mind. 96 GB CPU- 
RAM). 
4. Tools zur Speicheranalyse 
NVIDIA-SMI (GPU-Überwachung) 
bash 
nvidia—smi total, memory.used 
PyTorch/TensorFlow Memory Profiler 
2. 
python 
—fo rmat=csv 
torch. # Zeigt GPU—Speichernutzung 
Linux/Windows Task Manager 
3. 
CPU- und GPU-Nutzung in Echtzeit prüfen.

5. Praxis-Checkliste 
Modellparameter & Datentyp prüfen (FP16? INT8?). 
Batch-Größe testen (klein anfangen, hochskalieren). 
Overhead einplanen (+20-50 %). 
CPU-RAM 2x GPU-RAM für Datenpipelining. 
Quantisierung nutzen, falls möglich (INT8/FP8). 
Beispielrechnung für einen Kunden mit LLM-Inferenz: 
• Modell: Llama 2-78 (7 Mrd. Parameter). 
• Datentyp: FP16 (2 Byte/Parameter). 
• Batch-Größe: 4. 
• Berechnung: 
Mrd. x 2 x 4 z 56 
Empfehlung: 
CPU: NVIDIA AIOO 80GB (sicherer Puffer). 
CPU-RAM: 128-256 GB (für Datenvorverarbeitung). 
Zusammenfassung: 
• GPU-RAM Modellgröße x Batch x Datentyp + Overhead. 
CPU-RAM 2x CPU-RAM für flüssiges Datenhandling. 
Quantisierung & Profiling sparen Ressourcen. ...5. Praxis-Checkliste 
Modellparameter & Datentyp prüfen (FP16? INT8?). 
Batch-Größe testen (klein anfangen, hochskalieren). 
Overhead einplanen (+20-50 %). 
CPU-RAM 2x GPU-RAM für Datenpipelining. 
Quantisierung nutzen, falls möglich (INT8/FP8). 
Beispielrechnung für einen Kunden mit LLM-Inferenz: 
• Modell: Llama 2-78 (7 Mrd. Parameter). 
• Datentyp: FP16 (2 Byte/Parameter). 
• Batch-Größe: 4. 
• Berechnung: 
Mrd. x 2 x 4 z 56 
Empfehlung: 
CPU: NVIDIA AIOO 80GB (sicherer Puffer). 
CPU-RAM: 128-256 GB (für Datenvorverarbeitung). 
Zusammenfassung: 
• GPU-RAM Modellgröße x Batch x Datentyp + Overhead. 
CPU-RAM 2x CPU-RAM für flüssiges Datenhandling. 
Quantisierung & Profiling sparen Ressourcen.

Typische Szenarien 
Anwendung 
NLP (BERT, GPT) 
Computer Vision (ResNet) 
Generative Kl (Stable Diffusion) 
Tabellendaten (XGBoost) 
Empfohlene Batch-Größe 
16-64 
32-256 
1—8 (wegen hohem Speicherbedarf pro Bild) 
Oft Full-Batch (kein Mini-Batch) ...Typische Szenarien 
Anwendung 
NLP (BERT, GPT) 
Computer Vision (ResNet) 
Generative Kl (Stable Diffusion) 
Tabellendaten (XGBoost) 
Empfohlene Batch-Größe 
16-64 
32-256 
1—8 (wegen hohem Speicherbedarf pro Bild) 
Oft Full-Batch (kein Mini-Batch)

I. Batch-Größe im Training/Inferenz 
Definition: 
Die Batch-Größe gibt an, wie viele Datenpunkte (z. B. Texteingaben) gleichzeitig als Gruppe 
verarbeitet werden, um einen gemeinsamen Gradienten zu berechnen (Training) oder parallele 
Vorhersagen zu machen (Inferenz). 
Beispiel: Batch-Größe = 8 -ö 8 Texteingaben werden parallel auf der GPU verarbeitet. 
• Zweck: 
Effiziente Nutzung der GPU/TPU-Ressourcen (Parallelisierung). 
Stabilere Gradientenberechnung im Training. ...I. Batch-Größe im Training/Inferenz 
Definition: 
Die Batch-Größe gibt an, wie viele Datenpunkte (z. B. Texteingaben) gleichzeitig als Gruppe 
verarbeitet werden, um einen gemeinsamen Gradienten zu berechnen (Training) oder parallele 
Vorhersagen zu machen (Inferenz). 
Beispiel: Batch-Größe = 8 -ö 8 Texteingaben werden parallel auf der GPU verarbeitet. 
• Zweck: 
Effiziente Nutzung der GPU/TPU-Ressourcen (Parallelisierung). 
Stabilere Gradientenberechnung im Training.
