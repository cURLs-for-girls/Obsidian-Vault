---
tags: [onenote, aivengers]
---

# Benchmarks

Bereich 
Top-Kennzahlen 
Was sie zeigen 
Intel-Beschleuniger 
LLM-Inference 
TTFT, Output-Tokens/s 
TTFT: Zeit bis zum 1. Token -> 
AMX + AVX-512 als Baseli 
Reaktionszeit; Tokens/s: 
Generierungsdurchsatz unter 
Last 
CPU-Compute (SPEC CPU 
SPECrate 2017 Int/FP, 
SPECrate: Durchsatz bei 
AVX-512 
2017) 
SPECspeed 2017 Int/FP 
parallelen Instanzen; 
SPECspeed: Leistung pro 
einzelner Aufgabe 
Speicher (STREAM) 
STREAM Triad Bandbreite (MB/ 
Nachhaltige 
Kein Spezialoffload (max. 
s) 
Speicherbandbreite der 
AVX-512 indirekt) 
Plattform -> zeigt ob Workloads 
CPU- oder Memory-limitiert 
sind 
Storage-I/O (fio) 
IOPS, p99-Latenz 
IOPS: I/O-Durchsatz bei kleinen 
DSA + QAT (optional) 
Operationen; p99-Latenz: 
Stabilität des Storage-Pfads 
unter Last ...Bereich 
Top-Kennzahlen 
Was sie zeigen 
Intel-Beschleuniger 
LLM-Inference 
TTFT, Output-Tokens/s 
TTFT: Zeit bis zum 1. Token -> 
AMX + AVX-512 als Baseli 
Reaktionszeit; Tokens/s: 
Generierungsdurchsatz unter 
Last 
CPU-Compute (SPEC CPU 
SPECrate 2017 Int/FP, 
SPECrate: Durchsatz bei 
AVX-512 
2017) 
SPECspeed 2017 Int/FP 
parallelen Instanzen; 
SPECspeed: Leistung pro 
einzelner Aufgabe 
Speicher (STREAM) 
STREAM Triad Bandbreite (MB/ 
Nachhaltige 
Kein Spezialoffload (max. 
s) 
Speicherbandbreite der 
AVX-512 indirekt) 
Plattform -> zeigt ob Workloads 
CPU- oder Memory-limitiert 
sind 
Storage-I/O (fio) 
IOPS, p99-Latenz 
IOPS: I/O-Durchsatz bei kleinen 
DSA + QAT (optional) 
Operationen; p99-Latenz: 
Stabilität des Storage-Pfads 
unter Last

Accelerators:

AMX für LLM-Inference, AVX-512 für klassische CPU-Compute-Workloads, keinen Spezialoffload für STREAM und DSA beziehungsweise QAT für Storage-nahe Tests.

Wichtige Einschränkung

AMX und AVX-512 gelten bei Xeon 6 laut Intel nur für P-Core-Modelle; Xeon-6-E-Core-Varianten wie die 6700E haben laut heise weder AVX-512 noch AMX.

Bereich 
Tool 
Wo holen 
Befehl 
LLM Quick 
Ollama 
-- verbose 
ollama. com 
ollama run llama3.2 -- verbose 
1 
LLM Last/p99 
vLLM + 
benchmark_serving.py 
pip install vllm 
python benchmark_serving. py -- num- 
prompts 1000 
8 
3 
CPU-Compute 
SPEC CPU 2017 
kostenpflichtig bei 
spec. org 
runcpu -- config =... intspeed intrate 
5 
12 
Speicher 
STREAM 
kostenlos, Quellcode 
./ stream 
nach Kompilierung mit 
kompilieren 
OpenMP 
4 
13 
Storage-I/O 
fio 
dnf install fio 
fio -- ioengine=libaio -- bs=4k -- 
readwrite=randread 
6 
14 ...Bereich 
Tool 
Wo holen 
Befehl 
LLM Quick 
Ollama 
-- verbose 
ollama. com 
ollama run llama3.2 -- verbose 
1 
LLM Last/p99 
vLLM + 
benchmark_serving.py 
pip install vllm 
python benchmark_serving. py -- num- 
prompts 1000 
8 
3 
CPU-Compute 
SPEC CPU 2017 
kostenpflichtig bei 
spec. org 
runcpu -- config =... intspeed intrate 
5 
12 
Speicher 
STREAM 
kostenlos, Quellcode 
./ stream 
nach Kompilierung mit 
kompilieren 
OpenMP 
4 
13 
Storage-I/O 
fio 
dnf install fio 
fio -- ioengine=libaio -- bs=4k -- 
readwrite=randread 
6 
14

Durchführung

Beschleuniger-Einsatz 
Test-Tool 
Beispiel-Befehl 
eline 
AMX: Matrix-Multiplikation für 
vLLM + benchmark_serving.py 
python benchmark_serving.py -- backend 
inf 
openai -- num-prompts 1000 -- request-rate 
INT8/BF16/FP16 -> direkte 
Beschleunigung im LLM; 
AVX-512: Vergleichspfad ohne 
AMX 
Vektormathematik für 
SPEC CPU 2017 (kostenpfl. ISO) 
runcpu -- config=myconfig.cfg intspeed 
fpspeed intrate fprate 
allgemeine Compute-, HPC- 
und Datenbank-Workloads; 
AMX hier nicht primär relevant 
STREAM misst die Plattform 
STREAM (kostenlos, C-Source) 
gcc -03 -march=native -fopenmp 
-DSTREAM_ARRAY_SIZE=80000000 stream.c -0 
selbst - DSA/IAA/QAT würden 
stream && ./stream 
verfälschen; AVX-512 wirkt 
allenfalls über Vektorisierung 
DSA: Datenbewegung / CRC / 
fio ( dnf install fio ) 
fio -- ioengine=libaio -- direct=1 -- bs=4k 
-- readwrite=randread 
DIF -> Storage- & Netzwerk- 
percentile_list=50:95:99 
Pfade; QAT: Kompression & 
Verschlüsselung (TLS, Ceph, 
Object Storage) ...Beschleuniger-Einsatz 
Test-Tool 
Beispiel-Befehl 
eline 
AMX: Matrix-Multiplikation für 
vLLM + benchmark_serving.py 
python benchmark_serving.py -- backend 
inf 
openai -- num-prompts 1000 -- request-rate 
INT8/BF16/FP16 -> direkte 
Beschleunigung im LLM; 
AVX-512: Vergleichspfad ohne 
AMX 
Vektormathematik für 
SPEC CPU 2017 (kostenpfl. ISO) 
runcpu -- config=myconfig.cfg intspeed 
fpspeed intrate fprate 
allgemeine Compute-, HPC- 
und Datenbank-Workloads; 
AMX hier nicht primär relevant 
STREAM misst die Plattform 
STREAM (kostenlos, C-Source) 
gcc -03 -march=native -fopenmp 
-DSTREAM_ARRAY_SIZE=80000000 stream.c -0 
selbst - DSA/IAA/QAT würden 
stream && ./stream 
verfälschen; AVX-512 wirkt 
allenfalls über Vektorisierung 
DSA: Datenbewegung / CRC / 
fio ( dnf install fio ) 
fio -- ioengine=libaio -- direct=1 -- bs=4k 
-- readwrite=randread 
DIF -> Storage- & Netzwerk- 
percentile_list=50:95:99 
Pfade; QAT: Kompression & 
Verschlüsselung (TLS, Ceph, 
Object Storage)
