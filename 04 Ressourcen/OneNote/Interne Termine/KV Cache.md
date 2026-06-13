---
tags: [onenote, aivengers]
---

# KV Cache

2 --> steht für Key und Value. Für jedes Token werden in jeder Attention-Schicht beide Vektoren gespeichert, deshalb taucht der Faktor 2 in der Formel auf.

Batch Size --> beschreibt, wie viele Anfragen oder Sessions gleichzeitig verarbeitet werden. Je mehr parallele Nutzer, umso mehr KV-Cache muss gleichzeitig im Speicher gehalten werden.

Kontextlänge –-> Anzahl der Tokens, die pro Anfrage im Kontextfenster liegen. Je länger der Prompt, umso größer

Layer –-> Anzahl der Attention-Layer, also der Schichten, in denen überhaupt ein KV-Cache aufgebaut wird. Jede Schicht speichert eigene Key- und Value-Werte

KV-Heads –> Anzahl der Heads, für die tatsächlich Key- und Value-Daten gespeichert werden. Bei modernen Modellen mit GQA ist diese Zahl oft kleiner als die Gesamtzahl der Attention-Heads, was Speicher spart.

Head Dimension –-> Größe eines einzelnen Key- oder Value-Vektors pro Head. Je größer diese Dimension ist, desto mehr Speicher wird pro Token und pro Head benötigt.

Bytes pro Wert – gibt an, in welchem Zahlenformat der Cache abgelegt wird. BF16 braucht meist 2 Bytes pro Wert, FP8 etwa 1 Byte; kleinere Datentypen reduzieren den Speicherbedarf direkt.

--> Viele der Parameter bringt das ausgewählte Modell mit sich. Hier muss allerdings geschaut werden, was es für ein Modell ist (zB. Klassisches Tranfordermodell oder MoE?)

Model Weights (FP16) : 
140 GB 
Model Weights (INT4/FP4) : 
35 GB 
(massiv reduziert ! ) 
KV Cache (128K, Batch=4) : 
160 GB 
KV Cache (128K, Batch=4) : 
160 GB 
(bleibt gigantisch) 
Overhead (10%) : 
14 GB 
Overhead (~10%): 
4 GB 
GESAMT : 
314 GB 
GESAMT : 
199 GB 
> Benötigt: 4× H100 (80GB) oder 3× H200 (141GB) 
- Benötigt: 3× H100 (80GB) oder 2× H200 (141GB) ...Model Weights (FP16) : 
140 GB 
Model Weights (INT4/FP4) : 
35 GB 
(massiv reduziert ! ) 
KV Cache (128K, Batch=4) : 
160 GB 
KV Cache (128K, Batch=4) : 
160 GB 
(bleibt gigantisch) 
Overhead (10%) : 
14 GB 
Overhead (~10%): 
4 GB 
GESAMT : 
314 GB 
GESAMT : 
199 GB 
> Benötigt: 4× H100 (80GB) oder 3× H200 (141GB) 
- Benötigt: 3× H100 (80GB) oder 2× H200 (141GB)
