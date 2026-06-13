---
tags: [onenote, aivengers]
---

# AI Advisor Technical Track

twernicke@nvidia.com - HW specialist - schreiben bei Fragen - vGPU

Sschaber@nvidia.com

Wduetsch

Fragen:

can i use it without license?

Enterprise grade means support?

Formula - look over

Katalog - blackwell schon enhtalten?

AI Enterprise

Full stack solution - vgpu ist only virtualization

Microservices, enterprise grade software,  nvidia cert. Systems

OVX is refernce architecture - for omniverse

HGX - nvlink and nvbridge instrad of pcie - whole platform with sxm modules

MGX - modular platform wo man modular system wählen kann - watercooled usw

Nvidia certified system - support für ganze lösung - liste gezeigt - ist auf OEM-Seite nicht aud nvidia seite

TensorRT - beispiel für einen software stack

So eine lösung zu maintainen sehr schwierig weil so viele komponenten - ohne enterprise grad SW schwierig

Infrastrukture SW - Treiber = Basis

SW Lifecycle des Treibers 2 mal pro jahr

Feature set bleibt gleich - macht es ISVs leicht

Feature branch / prod. Branch / longterm supp. Branch

For developers

Versionierung

Bsp pytorch version - opensource hat viele CVEs - nvidia version hat keine CVEs - patches monatlich - ansonsten nur alle 9 monate

Business gtandard SLAs immer included bei NVAIE

NIM

Preconfigured profile = single GPU - multi GPU multi Node

Alles im container enthalten

Docker run command - danach direkt inferencing

Image wird vom katalog gezogen (ngc)

Optimization profiles: latency oder throughput oder lora - macht NIM automatisch: picked das optimierte profil zb für llama 8B mit FP16

Precision with int8?

Comparison auf fußnoten achten dass quantization gleich ist und nicht fp 8 mit fp 16 verglichen wird - wenn 5 x schneller dann warscheinlich äpfelk birnen vergleich

Dynamo

New triton infrence server?

Load balancing beispiel --> KV-Cache routing - mehr cache = höhere chance dass anfrage schon mal gecashed wurde - aber mehr need für gpu memory / KV-Cache sits in GPU memory - offload manager sitzt im shared storage

KV = Key Value

Was wenn der prompt nur ein bisschen anders aber fast gleich?  Durch tokenization werden schnipsel gespeichert

What is if videos or pictures get through? There are pixel instead of tokens

Brev.Dev - DEMO

Brev.nvidia.com - l40s genommen

Visual studio code umgebung

(BILD) - dann Docker RUN command

Automatisch das profil gewählt - thoughput weil wegen 1 gpu

Next: OpenAI script - hat dieses modifiziert - base url und api key verändert (Bild)  - kein api key weil er es lokal nutzt

LLM kann man hier easy verändern - im bsp wurde llama in openAI genutzt

Jupyter notebook geht auch aber visual studio code bessetr

NIM Blueprints

James Workflow gezeigt - morgen live demo - ist ein receipt für die applikation - keine konkrete vorlage

RIVA component - hierfür NVAIE (muss man aber nicht - kann auch free SW nutzen)  - Omniverse license für audio2face

Infrastructure Part

EGX - PCIe Servers - auch nvidia zertifiziert

FP64 only for H100 (double precision) - single precision GPU like L40s

Pcie - NVL - nur marketing auch pcie kann NVL

H100 / 200 NVL ist available

4way bridge und 2 way bridge verfügbar für NVLink

NVL für preissensitivte leute - HGX für nicht preissensitive

Blackwell 6000 pro server:

NVENC / NVDEC bei H100 entfernt wegen platz

Incl. Confidential computing

MIG neu weil davor nicht auf graphischen GPUs verfügbar

HGXB300 NVL 16 abgekündigt - produktionsprozess bei TSMC wurde improved - deswegen wurde das übersprungen

Pcie gibt mehr dichte aber nicht mehr performance pro GPU

MIG für Baremetal environment

vGPU für virtulaisierte Umgebung

Baremetal nur MIG

Passthrough nur vGPU

Vgpu - MIG + vGPU - kein timeslicing weil MIG aber wenn MIG zu mehreren vGPUs wird, dann nutzt man Timeslicing

Networking

Classic ethernet

Spectrum x für Ethernet

Nvlink - eingeschränkt auf 1-2 meter weite - geht nicht über ein rack hinaus

infiniband

Beste: nvlink + infiniband / spectrum x

Warum braucht man ein weiteres netzwerk für die GPU kommunikation? - wegen East West

Wenn loadbalancer pkaete verteilt  - RDMA korrigiert die reihenfolge der pakete nicht - deswegen weiteres netzwerk -> gilt für training

Was mit inferenz: netzwerk wird immer wichtiger für inferencing (mixture of experts von Deepseek zb) und KV-Cache und mehrere GPUs

Pakt reordering in bluefield card

Connect X hat congestion control schon drin - spectrum x kriegt das über bluefield DPU

X800 Quantum switch + connect x super NIC - infiniband

Not onlye cong. Control / adaptive routing

Network computing - exchange data pakets - so no resending of pakets

Rail-optimized - 32 server möglich weil man jede gpu vernetzt - man braucht mehr transceiver

Non optimized - nur 4 server in einer reihe möglich

DPU hat HW-Barriere - besser für Security (eigene Sec. Domain wenn man DPU nutzt)

DPU (mehr power) - SuperNIC (energieeffizienter)

Inference Sizing

Llm

rag

agents

2023

2024

2025

Reasoning 10k tokens im ggsatz zu normaler knowledge abfrage - 100 x mehr kosten

Quantization frage?

Prefill phase = TTFT , mehr als 3 Sekunden ist schlecht

Decoding Phase nicht mehr so wichtig, inter token latency - wird beim lesen generiert und so shcnell liest man halt nicht

Latency throughput ist immer trade off - auf jeden fall festelgen welche latenz man möchte für User experience

Which model?

8 Mrd (wegen Llama 8B) x 1 byte x Overhead 1,5 = 12 GB vRAM

Precision für inferenz meistens FP8

GPU Utilization

Inflight batching - fill up gpu mit throughput oder latency workloads

Inferencing techniques

Daten parallelisierung - deploy 4 NIM instances - replizieren auf 4 instances , geht nur wenns in eine gpu passt

Tensor paralelislm - auf mehrere gpus teilen

Kombination beides techniken

Pipeline parallelism

Expert parallelism - only for mixture of experts model

Splitting model wenn es nicht mehr in eine gpu passt

Network - bits per second

NVLink - bytes per second - 900 GB/s

L40s nicht gut wenn kunde LLMs machen möchte - eher für Testzwecke

---------------------------------------------------------------------------------

Referenten: Willi Dutsch (Networking Sales), Thomas Wernicke & Simon Schaber (Solution Architects, Enterprise Platform).

Ziel: AI Enterprise Plattform & Infrastruktur vorstellen. Schwerpunkt: GPU-Portfolio, Inferenz-Sizing, Netzwerkstrategien.

Teilnehmer & Einführung

AI Enterprise: Für LLMs, ML, Inferenz im Datacenter.

Omniverse: Für Visualisierung, Digital Twins, Zusammenarbeit.

Beide Plattformen können kombiniert werden (z. B. Predictive Maintenance mit Omniverse Visualisierung).

NVIDIA Plattformen

AI Enterprise Stack

AI Solutions (Microservices / NIMs für schnellen Produktivgang)

Enterprise-grade Software (LTS-Support, API-Stabilität, CVE-Management)

NVIDIA Certified Systems (Server-, GPU-, CPU-zertifizierte Komplettsysteme für stabilen Betrieb)

Drei Säulen:

Infrastruktur-Software: Treiber, Kubernetes-Operatoren, Cluster-Management.

Applikations-Software: Frameworks, NIMs, LLMs.

Software-Architektur:

Einfache Bereitstellung per Docker Run-Befehl (<5 Min).

Hardware wird erkannt → optimierte Profile für Performance/Latency ausgewählt.

Unterstützung von FP16/FP8 und automatischer Präzisionsreduktion zur Optimierung von Speicher und Durchsatz.

KB-Cache-Aware Routing mit Dynamo Stack: 30x schnellere Inferenz möglich durch Cache-bewusste Lastverteilung über mehrere NIM-Instanzen.

NIMs (NVIDIA Inference Microservices)

GPU-Hardware & Plattformen

HGX: Plattform mit NVSwitch/NVLink (Hochleistung, bis 600W/GPU).

EGX: Standardserver mit PCIe GPUs.

MGX: Modular, für OEMs (z. B. wassergekühlt).

Architekturübersicht:

H100/H200: Rechenzentren, hohe FP64-Präzision.

L40S: Single-Precision, Multi-Instance GPU (MIG) auch für grafische Workloads.

RTX 6000 Blackwell: Nachfolger von L40S, GDDR7, MIG & Confidential Computing-fähig.

Aktuelle GPUs:

PCIe-Varianten haben geringeren Energieverbrauch und höhere Rack-Dichte.

Multi-Instance GPU & VGPU zur effizienten Ressourcenverteilung.

Besonderheiten:

Netzwerk im Datacenter

Referenzarchitekturen empfohlen → optimierte Entwicklung & Wartung.

NVLink: Schnellste Verbindung (innerhalb eines Racks).

SpectrumX: Ethernet-Optimierung mit Bluefield SuperNICs (vergleichbare Performance zu InfiniBand).

InfiniBand: Beste Performance, aber komplexer im Cloud-Kontext.

Technologien:

Getrennte Netze: GPU-zu-GPU (East-West), User-Zugriff (North-South).

Inferenz zunehmend vernetzt → Netzwerkleistung auch hier kritisch (Mixture of Experts, verteilte Modelle).

Design-Empfehlung:

Dynamo Stack für cache-bewusste Inferenzoptimierung.

Blueprints (Build.nvidia.com) für AI-Workflow-Vorlagen (z. B. Digital Human).

Brev.dev: Cloud-Plattform für GPU-Ressourcen, schnelles Testen von NIMs.

Zukunftstrends & Tools

Fazit

Hardware (GPUs, Server, Netzwerk),

Software (AI Enterprise, NIMs, Frameworks),

Betriebskonzepte (Enterprise-Support, Lifecycle-Management),

mit Fokus auf schnelle Produktionsreife und optimierte AI-Workloads.

NVIDIA bietet einen vollständigen Datacenter-Stack:
