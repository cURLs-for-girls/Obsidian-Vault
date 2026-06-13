---
tags: [onenote, aivengers]
---

# HPE PCAI Schulung

Sizing Fragen

NFS / S3 Storage - braucht keinen PCP-Stack - kann GPU direkt mit Daten befüllen

Netzwerk SpectrumX - Infiniband - RDMA Einrichtung - direkter Zugriff Speicher GPU

AI Essentials HPE + weitere Tools

For your Inferencing, RAG, and Fine-tuning workloads 
Unified experience through HPE GreenLake cloud 
Small 
Medium 
Large 
Extra Large* 
Compute 
4 or 8 NVIDIA L40S GPUS 
8 or 16 NVIDIA L40S GPUS 
16 or 32 NVIDIA H100 NVL GPUS 
16 or 32 NVIDIA GH200 NVL2 
Storage 
109 TB to 500TB 
217 TB to 500 TB 
670 TB to 1088 TB 
670 TB to 1088 TB 
Networking 
100GbE NVIDIA Networking 
200GbE NVIDIA Networking 
400GbE NVIDIA Networking 
800GbE NVIDIA Networking 
Power 
up to 8 kW rack 
up to 17.7 kW 
up to 16.5 KW × 2 
up to 16.5 KW × 2 ...For your Inferencing, RAG, and Fine-tuning workloads 
Unified experience through HPE GreenLake cloud 
Small 
Medium 
Large 
Extra Large* 
Compute 
4 or 8 NVIDIA L40S GPUS 
8 or 16 NVIDIA L40S GPUS 
16 or 32 NVIDIA H100 NVL GPUS 
16 or 32 NVIDIA GH200 NVL2 
Storage 
109 TB to 500TB 
217 TB to 500 TB 
670 TB to 1088 TB 
670 TB to 1088 TB 
Networking 
100GbE NVIDIA Networking 
200GbE NVIDIA Networking 
400GbE NVIDIA Networking 
800GbE NVIDIA Networking 
Power 
up to 8 kW rack 
up to 17.7 kW 
up to 16.5 KW × 2 
up to 16.5 KW × 2

Inferencing Use Case der Use Case der vorgestellt wird

Jedes Rack eine einzelne Einheit

Aruba Switche für Out of Band Mgmt

4 x L40s GPUs bekommen wir - 1 Rack

Vektor DB läuft auf dem Storage - was noch? - braucht man so viel TB? Für Images / Kubernetes / OS

S3 von Haus aus enabled - also direkt ein Objectstore

Was wird auf den Nodes gespeichert? Inferencing braucht nicht so viel Storage

HCI ist nicht Teil von Nvidia Lösung - wollen Redundanz von Vektor DB - deswegen Storage so groß

Liste mit Standard Nvidia Modelle gibt er uns

Ops Ramp Suite mit Monitoring drin für Operator

Frage zu Lizensierung: ist AI Enterprise jetzt direkt dabei? - alles integriert - Laufzeit auf die die wir abschließen - 3 oder 5 Jahre - egal ob L40s oder H100

Auch Lizensierung für HPE Software inkludiert - MLFlow Kubeflow Use sind integriert

8 GPUs - 2 Server - 4 GPUs 1 Server - Rack nicht austauschbar derzeit - soll sich aber künftig ändern

Kubernetes von HPE gemanaged - wir definieren Wartungsfenster - macht alles HPE

NVIDIA Al Computing by HPE 
HPE Private Cloud Al 
Al Models 
Community + Partner + Custom 
Setup, inventory, IT and Asset 
NVIDIA NIM 
Lifecycle Management 
Al Software 
NVIDIA AI 
HPE AI Essentials 
Workload provisioning, 
Enterprise 
orchestration and management 
HPE Private Cloud 
Control Plane 
Al Infrastructure 
NVIDIA GPU/GPU 
HPE AI Servers 
VM runtimes and Kubernetes 
NVIDIA Spectrum-X 
HPE File Storage 
cluster management 
Al Services 
HPE Provided 
3rd Party 
Monitoring, observability and E2E 
Partners 
security for apps and infrastructure 
Small 
Medium 
Large 
X Large 
Configurations aligned to enterprise Al workloads 
HPE GreenLake cloud ...NVIDIA Al Computing by HPE 
HPE Private Cloud Al 
Al Models 
Community + Partner + Custom 
Setup, inventory, IT and Asset 
NVIDIA NIM 
Lifecycle Management 
Al Software 
NVIDIA AI 
HPE AI Essentials 
Workload provisioning, 
Enterprise 
orchestration and management 
HPE Private Cloud 
Control Plane 
Al Infrastructure 
NVIDIA GPU/GPU 
HPE AI Servers 
VM runtimes and Kubernetes 
NVIDIA Spectrum-X 
HPE File Storage 
cluster management 
Al Services 
HPE Provided 
3rd Party 
Monitoring, observability and E2E 
Partners 
security for apps and infrastructure 
Small 
Medium 
Large 
X Large 
Configurations aligned to enterprise Al workloads 
HPE GreenLake cloud

Komponenten sollen erstmal so im Rack bleiben - Austausch sollte aber möglich sein gegen Geld

Machen die meisten Kunden so

Frage wegen Infra: nutzen diese nicht eigene Infra mit Storage usw? die haben ja schon was

Small Size Beispiel:

Use Cases

Spiffy Spire - SSO - Zero Trust bei Anmeldung

Vereinfachung der Open Source Produkte - YAML Files selbst schreiben -

"New Notebook Server" - so muss man sich nicht einloggen

So kann man in NVAIE springen und als Framework nutzen

Data Engineering - Airflow Nutzung - alles was gelb ist kann man nicht nutzen oder ist nicht Teil - Anleitung für Import eigenes Framework

Kubeflow, MLFlow verfügbar

HPE MLIS = deren Triton Inference Server

AI Accelerators:

Genome identifizieren für Krankenhaus

Warum genau für HPE entschieden? - wenig Ressourcen, keine dedizierten MA für AI, CPU / GPU Transfo nicht gemerkt, wollte es schlüsselfertig haben

Was ist mit anderen Herstellern? - weiß er so nicht

OVX-zertifizert? - muss er fragen

Use Case:

Theoretisch manuell erweiterbar mit eigenen Ressourcen - man muss also nicht noch extra einen weiteren Server mit 4 GPUs im Rack installieren
