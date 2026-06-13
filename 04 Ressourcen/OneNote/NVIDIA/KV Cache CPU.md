---
tags: [onenote, aivengers]
---

# KV Cache CPU

Deep Dive Example: KV Caching 
Queries 
Keys ^ 
Values 
Attention Score 
Step 1: 
Keys from 
Values from the 
Context 
persistent KV 
Phase 
× 
the 
N heads 
persistent 
KV cache 
cache 
Persistent KV Cache in CPU memory 
KV Cache in GPU memory 
Queries 
Keys ^ 
Values 
Step N: 
Cached 
Attention Score 
Generation 
X 
Phase 
X 
Cached 
Keys 
Values 
NVIDIA 
... 
00:00 / 00:44 15 / 30 
If additional context is added such as a follow question or prompt to the LLM then we only need to do a context phase on the new values and concatenate it onto the previous KVQ matrices. 
We can also combine contexts. Say you wanted to analyze three technical papers; each would have their KV Cache and you could combine them together vs needing to recompute the context phase again. This is one of the reasons we see things like Llama 4 model having a 2 
million token context window. Context is an incredibly powerful technique to provide relevant information to LLMs. 
For KV C 
aching it is r 
of is ...Deep Dive Example: KV Caching 
Queries 
Keys ^ 
Values 
Attention Score 
Step 1: 
Keys from 
Values from the 
Context 
persistent KV 
Phase 
× 
the 
N heads 
persistent 
KV cache 
cache 
Persistent KV Cache in CPU memory 
KV Cache in GPU memory 
Queries 
Keys ^ 
Values 
Step N: 
Cached 
Attention Score 
Generation 
X 
Phase 
X 
Cached 
Keys 
Values 
NVIDIA 
... 
00:00 / 00:44 15 / 30 
If additional context is added such as a follow question or prompt to the LLM then we only need to do a context phase on the new values and concatenate it onto the previous KVQ matrices. 
We can also combine contexts. Say you wanted to analyze three technical papers; each would have their KV Cache and you could combine them together vs needing to recompute the context phase again. This is one of the reasons we see things like Llama 4 model having a 2 
million token context window. Context is an incredibly powerful technique to provide relevant information to LLMs. 
For KV C 
aching it is r 
of is

1. Was “Persistent KV Cache in CPU Memory” hier bedeutet

•	Normalfall: Der KV Cache (das „Gedächtnis“ des Modells für den bisherigen Kontext) muss zwingend im extrem schnellen GPU-VRAM liegen, damit die GPU rechnen kann.

•	Das Problem: Bei langen Texten oder vielen gleichzeitigen Nutzern platzt der GPU-Speicher (OOM), noch bevor die Rechenleistung der GPU erschöpft ist.

•	Die Lösung (im Bild): Statt den Prozess abstürzen zu lassen, schiebt das System Teile des KV Caches, die gerade nicht aktiv benötigt werden (z. B. von Usern, die gerade tippen und nicht rechnen), in den RAM der CPU.

•	Der Trick: Wenn der User wieder eine Anfrage stellt, werden die Daten blitzschnell zurück in die GPU kopiert. Das ist viel schneller, als den Kontext neu zu berechnen (Recompute).

Das Bild zeigt ein Offloading-Szenario (oft als „Paged Attention“ oder „KV Cache Offloading“ bezeichnet).

2. Auswirkungen auf dein Sizing

•	GPU VRAM (Teuer): Du musst die GPUs nicht mehr so riesig dimensionieren, dass sie den gesamten Kontext aller inaktiven User gleichzeitig halten können. Du brauchst nur genug VRAM für die aktiven Requests (Batch Size).

•	System RAM (Billig): Du solltest deutlich mehr CPU-RAM einplanen. RAM ist billig. Du kannst hier hunderte Gigabyte vorhalten, um den Kontext vieler User „warm“ zu halten (Caching), ohne teure H100/A100 GPUs dafür zu blockieren.

•	PCIe-Bandbreite: Da die Daten ständig zwischen CPU-RAM und GPU hin- und hergeschoben werden, wird die Anbindung (PCIe Gen4/Gen5 oder NVLink zum Host) plötzlich zum Flaschenhals. Achte auf gute Bandbreite!

Für deine Planung bedeutet das eine Verschiebung der Ressourcen-Prioritäten:

3. Fazit für deine Sizing-Strategie

1.	Weniger GPUs kaufst (oder Modelle mit weniger VRAM wählst), solange die Rechenleistung (FLOPS) reicht.

2.	Dafür viel CPU-RAM (z. B. 512 GB oder 1 TB) in den Server steckst.

3.	Eine Inference-Engine nutzt, die KV Cache Offloading beherrscht (wie vLLM, DeepSpeed-MII oder NVIDIA Triton mit entsprechenden Backends).

Du kannst Geld sparen, indem du:

Wichtig: Das funktioniert gut für Szenarien mit vielen gleichzeitigen Sessions, von denen aber immer nur ein Teil gleichzeitig rechnet (typisch für Chatbots/Assistenten). Für massive Batch-Jobs, wo alle ständig rechnen, hilft der CPU-Cache weniger, weil du sonst ständig Daten hin- und herschiebst (Thrashing).
