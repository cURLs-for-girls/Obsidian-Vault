---
tags: [onenote, aivengers]
---

# vGPU / MIG

MIG-Spezifikationen 
GB200/B200/B100 
H100 
H200 
Confidential computing 
Ja 
Ja 
Ja 
Up to 7x 23GB 
7x 10GB 
Up to 7x 18GB 
Instanztypen 
Up to 4x 45GB 
4× 20GB 
Up to 4x 35GB 
Up to 2x 95GB 
2× 40GB 
Up to 2x 71GB 
Up to 1x 192GB 
1x 80GB 
Up to 1x 141GB 
GPU-Profiling und 
-Überwachung 
Gleichzeitig auf allen Instanzen 
Gleichzeitig auf allen Instanzen 
Gleichzeitig auf allen Instanzen 
Sichere Mandanten 
7x 
7x 
7x 
Mediendekodierer 
Dediziertes NVJPEG und NVDEC pro 
Dediziertes NVJPEG und NVDEC pro 
Dediziertes NVJPEG und NVDEC pro 
Instanz 
Instanz 
Instanz 
Vorläufige Spezifikationen, Änderungen möglich ...MIG-Spezifikationen 
GB200/B200/B100 
H100 
H200 
Confidential computing 
Ja 
Ja 
Ja 
Up to 7x 23GB 
7x 10GB 
Up to 7x 18GB 
Instanztypen 
Up to 4x 45GB 
4× 20GB 
Up to 4x 35GB 
Up to 2x 95GB 
2× 40GB 
Up to 2x 71GB 
Up to 1x 192GB 
1x 80GB 
Up to 1x 141GB 
GPU-Profiling und 
-Überwachung 
Gleichzeitig auf allen Instanzen 
Gleichzeitig auf allen Instanzen 
Gleichzeitig auf allen Instanzen 
Sichere Mandanten 
7x 
7x 
7x 
Mediendekodierer 
Dediziertes NVJPEG und NVDEC pro 
Dediziertes NVJPEG und NVDEC pro 
Dediziertes NVJPEG und NVDEC pro 
Instanz 
Instanz 
Instanz 
Vorläufige Spezifikationen, Änderungen möglich

Bereitstellung und Konfiguration von 
Sichere parallele Ausführung von Workloads 
Instanzen nach Bedarf 
Mit einem dedizierten Satz von Hardwareressourcen für Rechenleistung, Speicher und 
Ein Grafikprozessor kann in verschiedene MIG-Instanzen aufgeteilt werden. Ein 
Cache bietet jede MIG-Instanz garantierte QoS- und Fehlerisolierung. Das bedeutet, dass 
Administrator könnte beispielsweise mit einem NVIDIA H100 zwei Instanzen mit je 40 GB 
sich ein Fehler in einer Anwendung, die auf einer Instanz ausgeführt wird, nicht auf 
Speicher oder vier Instanzen mit je 20 GB oder sieben Instanzen mit je 10 GB erstellen 
Anwendungen auf anderen Instanzen auswirkt. 
oder eine Kombination. 
Unterschiedliche Instanzen können auch verschiedene Arten von Workloads ausführen: 
MIG-Instanzen können auch dynamisch neu konfiguriert werden, sodass Administratoren 
interaktive Modellentwicklung, Deep-Learning-Training, KI-Inferenz oder HPC- 
die GPU-Ressourcen an wechselnde Nutzer- und Geschäftsanforderungen anpassen 
Anwendungen. Da die Instanzen parallel ausgeführt werden, laufen die Workloads 
können. Sieben MIG-Instanzen können z. B. tagsüber zur Inferenz mit geringem Durchsatz 
ebenfalls parallel - jedoch getrennt und isoliert - auf demselben physischen 
verwendet werden und für das Deep-Learning-Training in der Nacht zu einer großen MIG- 
Grafikprozessor. 
Instanz umkonfiguriert werden. ...Bereitstellung und Konfiguration von 
Sichere parallele Ausführung von Workloads 
Instanzen nach Bedarf 
Mit einem dedizierten Satz von Hardwareressourcen für Rechenleistung, Speicher und 
Ein Grafikprozessor kann in verschiedene MIG-Instanzen aufgeteilt werden. Ein 
Cache bietet jede MIG-Instanz garantierte QoS- und Fehlerisolierung. Das bedeutet, dass 
Administrator könnte beispielsweise mit einem NVIDIA H100 zwei Instanzen mit je 40 GB 
sich ein Fehler in einer Anwendung, die auf einer Instanz ausgeführt wird, nicht auf 
Speicher oder vier Instanzen mit je 20 GB oder sieben Instanzen mit je 10 GB erstellen 
Anwendungen auf anderen Instanzen auswirkt. 
oder eine Kombination. 
Unterschiedliche Instanzen können auch verschiedene Arten von Workloads ausführen: 
MIG-Instanzen können auch dynamisch neu konfiguriert werden, sodass Administratoren 
interaktive Modellentwicklung, Deep-Learning-Training, KI-Inferenz oder HPC- 
die GPU-Ressourcen an wechselnde Nutzer- und Geschäftsanforderungen anpassen 
Anwendungen. Da die Instanzen parallel ausgeführt werden, laufen die Workloads 
können. Sieben MIG-Instanzen können z. B. tagsüber zur Inferenz mit geringem Durchsatz 
ebenfalls parallel - jedoch getrennt und isoliert - auf demselben physischen 
verwendet werden und für das Deep-Learning-Training in der Nacht zu einer großen MIG- 
Grafikprozessor. 
Instanz umkonfiguriert werden.

vGPU: Nvidia, AMD, Intel

MIG: Kann nur Nvidia

vGPU vs. MIG: Wann nutzt man was?

POCs, Demos, Entwicklungsumgebungen

Anwendungsvirtualisierung (z. B. CAD in Citrix, VDI)

Wenn du viele Nutzer mit dynamischem Bedarf hast

Wenn Flexibilität (statt Isolation) wichtiger ist

Auch bei Modellen, die kein MIG unterstützen (z. B. RTX 6000 Ada)

✅ vGPU – gut für:

➡️ Vorteil: Kann beliebig viele vGPUs instanziieren, abhängig von RAM – ideal für „leichte“ Workloads mit Shared Access.

Produktivbetrieb / Enterprise / KI-Inferenz / HPC

Szenarien mit QoS-Anforderungen (garantierte Ressourcen)

Wenn Sicherheit und Isolation entscheidend sind (z. B. Multi-Tenant-Clouds)

Wenn du mehrere dedizierte Services (z. B. KI-Modelle) auf einer GPU hosten willst

✅ MIG – gut für:

➡️ Vorteil: Harte Isolation, keine gegenseitige Beeinflussung, deterministische Laufzeiten.

RTX PRO 6000 Introduces Universal MIG 
Optimize GPU Utilization, Increase User Density and Throughput with vGPU 
SMs 
. Simultaneous Al and Graphics workloads 
. Dedicated SM, Memory, L2 and BW for hardware QoS and 
isolation 
GPU Instance 1 
. All MIG instances run in parallel with predictable latency and 
throughput 
. Right Sized GPU Allocation 
. Up to 4X instances on RTX PRO 6000 (24GB/instance) 
RTX PRO 6000 
GPU instance 2 
User 2 
. Different sized MIG instances based on target workloads 
. Up to 12 Time Slices Per MIG Instance with NVIDIA vGPU 
. Higher user density and throughput 
. Min 2GB profiles 
OPU Instance 3 
OPU Instance 4 
User 4 
Time slicing MIG 
Instances with NVIDIA 
VGPU 
NVIDIA ...RTX PRO 6000 Introduces Universal MIG 
Optimize GPU Utilization, Increase User Density and Throughput with vGPU 
SMs 
. Simultaneous Al and Graphics workloads 
. Dedicated SM, Memory, L2 and BW for hardware QoS and 
isolation 
GPU Instance 1 
. All MIG instances run in parallel with predictable latency and 
throughput 
. Right Sized GPU Allocation 
. Up to 4X instances on RTX PRO 6000 (24GB/instance) 
RTX PRO 6000 
GPU instance 2 
User 2 
. Different sized MIG instances based on target workloads 
. Up to 12 Time Slices Per MIG Instance with NVIDIA vGPU 
. Higher user density and throughput 
. Min 2GB profiles 
OPU Instance 3 
OPU Instance 4 
User 4 
Time slicing MIG 
Instances with NVIDIA 
VGPU 
NVIDIA
