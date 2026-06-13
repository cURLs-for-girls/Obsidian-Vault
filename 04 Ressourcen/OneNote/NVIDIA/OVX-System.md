---
tags: [onenote, aivengers]
---

# OVX-System

Nvidia Branding

Plattform um digitale Zwillinge und Metaverse-Anwendungen umzusetzen

openUSD SW-Plattform von Pixar, um 3D-Szenen und -Daten zu erstellen, zu beschreiben und zu teilen ("HTML" of 3D Virtual Worlds)

Das NVIDIA OVX (Omniverse Extended) System kombiniert leistungsstarke Hardware und Software, um komplexe 3D-Simulationen und immersive Umgebungen zu erstellen und zu betreiben.

Hier sind die Hauptmerkmale des NVIDIA OVX Systems:

Digital Twins und Simulationen: NVIDIA OVX wurde entwickelt, um digitale Zwillinge in Echtzeit zu simulieren. Digitale Zwillinge sind virtuelle Modelle von physischen Systemen, die Echtzeitdaten verwenden, um Verhalten und Leistung zu simulieren. Dies ist besonders in Branchen wie Fertigung, Smart Cities und Logistik nützlich.

Unterstützung für NVIDIA Omniverse: OVX ist optimiert für die NVIDIA Omniverse Plattform, die es ermöglicht, virtuelle Welten und Simulationsumgebungen zu erstellen. Omniverse ist eine kollaborative Plattform für 3D-Design und Echtzeit-Simulation.

AI- und GPU-Beschleunigung: NVIDIA OVX-Systeme nutzen die fortschrittlichen Fähigkeiten von NVIDIA GPUs, um rechenintensive Aufgaben wie KI-gestützte Simulationen, Rendering und physikbasierte Simulationen zu beschleunigen.

Skalierbarkeit und Leistung: Diese Systeme sind skalierbar, um große, verteilte Umgebungen zu unterstützen, und bieten enorme Rechenleistung für komplexe Simulationen in Echtzeit.

NVIDIA ConnectX-7 ist eine Hochleistungs-Netzwerkkarte, die speziell entwickelt wurde, um extrem schnelle Netzwerkgeschwindigkeiten, geringe Latenz und erweiterte Offload-Funktionen zu bieten

BlueField3 ist eine DPU, also ein spezialisierter Prozessor, der entworfen wurde, um bestimmte Rechenzentrumsaufgaben wie Netzwerk-, Speicher- und Sicherheitsoperationen zu entlasten

Partner 
ASUS 
GIGABYTE 
GIGABYTE 
GIGABYTE 
GIGABYTE 
HPE 
HPE 
L e novo 
Supermicro 
Supermicro 
Supermicro 
Supermicro 
OVX Server 
Esca000A-E 2 
G293-S47-A 
p li ntDL 
Prnt iant DL380a 
ThinkSystem SRfi7S 
GPO SuperServer 
sys421GE-TNRT 
GPI 1 
SYS-421GE-TNRT3 
GPI 1 
SYS-521GE-TNRT 
Supported NVIDIA 
GPUS 
LAOS, L40 
LAOS, L40 
L40S, L40 
L40S, L40 
L40S 
L40S 
LAOS 
LAOS 
Tested 
Network 
Devices 
CX7 
CX7 
83140H, CX7 
B3140H, CX7 
B3140H, CX7 
zero Trust 
Compatible 
Yes 
Yes 
Yes 
Yes 
Yes 
Yes 
Yes ...Partner 
ASUS 
GIGABYTE 
GIGABYTE 
GIGABYTE 
GIGABYTE 
HPE 
HPE 
L e novo 
Supermicro 
Supermicro 
Supermicro 
Supermicro 
OVX Server 
Esca000A-E 2 
G293-S47-A 
p li ntDL 
Prnt iant DL380a 
ThinkSystem SRfi7S 
GPO SuperServer 
sys421GE-TNRT 
GPI 1 
SYS-421GE-TNRT3 
GPI 1 
SYS-521GE-TNRT 
Supported NVIDIA 
GPUS 
LAOS, L40 
LAOS, L40 
L40S, L40 
L40S, L40 
L40S 
L40S 
LAOS 
LAOS 
Tested 
Network 
Devices 
CX7 
CX7 
83140H, CX7 
B3140H, CX7 
B3140H, CX7 
zero Trust 
Compatible 
Yes 
Yes 
Yes 
Yes 
Yes 
Yes 
Yes

https://docs.nvidia.com/certification-programs/pdf/nvidia-certified-systems.pdf

NVIDIA Omniverse Enterprise | Dell USA

OVX utos With 8 opus 
Networking 
M em ory 
Host Storage 
2K 56c Intel Xeon 
Gold or 
sac AMD 
essa 
Laos 
CU,nectx-7 
BlueField-3. 
33220 (2 Q00Gb) 
Min 768GB DORS 
Ecc DIMM 
slot) 
Ix ITS NVMe 
2x NVMe ...OVX utos With 8 opus 
Networking 
M em ory 
Host Storage 
2K 56c Intel Xeon 
Gold or 
sac AMD 
essa 
Laos 
CU,nectx-7 
BlueField-3. 
33220 (2 Q00Gb) 
Min 768GB DORS 
Ecc DIMM 
slot) 
Ix ITS NVMe 
2x NVMe

Foundation App Templates 
U SO Co Slm 
Omniverse Platform 
a 
NVIDIA RTX Virtual workstation (VWS) 
Hypervisor 
VMware vSphere 
Dell powerEdge7soxa 
NVIDIA 
CV Al 
Development 
Jupyter 
NVIDIA TAO 
docker ...Foundation App Templates 
U SO Co Slm 
Omniverse Platform 
a 
NVIDIA RTX Virtual workstation (VWS) 
Hypervisor 
VMware vSphere 
Dell powerEdge7soxa 
NVIDIA 
CV Al 
Development 
Jupyter 
NVIDIA TAO 
docker

Aus <https://teams.microsoft.com/v2/>

Kern von Omniverse

Fileserver

Asset DB

Collab Engine

Web Browser Oberfläche

Anforderungen um den Nucleus Server zu installieren

Storage kommt auf den Use Case an - ändert sich nicht durch Nucleus

Nucleus:

OMNIVERSE NUCLEUS SIZING 
Sizing Specifications 
Version 
Users 
Notes 
OS 
Nucleus Workstation 
~2 to 15 concurrent users 
Designed for small groups. 
Windows 10 support 
or 
Performance will depend on workstation, 
Linux 
~2 to 10 "live edit" users 
·Optimal data transfer mechanisms: HTTP, multithreading, and 
similar optimizations are not possible with Workstation setups 
·Advanced authentication features, like Single Sign On, when 
shipped, will not be available. Only the most basic login/password 
based auth with internal to this instance accounts will ever be 
supported 
Enterprise Nucleus 
~500 concurrent users 
Designed for Production Environments 
Linux Docker 
Server 
SSO Support 
~25 "live edit" users 
LFT [Large File transfer support) 
Secure transfer 
n 
Enterprise Nucleus Server Minimum specification 
CPU - Min 2.4Hz (recommended 3.0 -3.4GHz) 12 cores 
Memory 32GB 
Storage 250GB 
Customer workloads will impact the exact specifications. 
General rules for designing file server. 
Larger System memory will improve OS filesystem cache - important for large amount of concurrent file transfer 
Storage - storage will depend on project size. For MIE VFX this may be 100s of TBs 
Additional cores for LFT as number of concurrent users grows. For large servers recommend running LFT on separate CPU socket 
Live Edits is similar to on online gaming server. If server is oversubscribed users will experience increased latency. Faster CPU cores will increase performance. ...OMNIVERSE NUCLEUS SIZING 
Sizing Specifications 
Version 
Users 
Notes 
OS 
Nucleus Workstation 
~2 to 15 concurrent users 
Designed for small groups. 
Windows 10 support 
or 
Performance will depend on workstation, 
Linux 
~2 to 10 "live edit" users 
·Optimal data transfer mechanisms: HTTP, multithreading, and 
similar optimizations are not possible with Workstation setups 
·Advanced authentication features, like Single Sign On, when 
shipped, will not be available. Only the most basic login/password 
based auth with internal to this instance accounts will ever be 
supported 
Enterprise Nucleus 
~500 concurrent users 
Designed for Production Environments 
Linux Docker 
Server 
SSO Support 
~25 "live edit" users 
LFT [Large File transfer support) 
Secure transfer 
n 
Enterprise Nucleus Server Minimum specification 
CPU - Min 2.4Hz (recommended 3.0 -3.4GHz) 12 cores 
Memory 32GB 
Storage 250GB 
Customer workloads will impact the exact specifications. 
General rules for designing file server. 
Larger System memory will improve OS filesystem cache - important for large amount of concurrent file transfer 
Storage - storage will depend on project size. For MIE VFX this may be 100s of TBs 
Additional cores for LFT as number of concurrent users grows. For large servers recommend running LFT on separate CPU socket 
Live Edits is similar to on online gaming server. If server is oversubscribed users will experience increased latency. Faster CPU cores will increase performance.

3rd Party Applications können mit Nucleus kommunizieren

User kann bevorzugte Anwendungen weiter verwenden (Content Creation Tools wie Canva oder Unsplash)

Nur Veränderungen werden auf dem Nucleus Server gespeichert, nicht das ganze Modell wird gepudated

Connector vorhanden? - dann darüber connecten

Falls nicht, Omnidrive nutzen

Falls das nicht geht, Format importieren/exportieren

Connect:

USD:

Erlaubt Layeing

Also mehrere Leute können an einer Szene arbeiten

Wie Versionierung bei DMS Systemen

Connection über Omnidrive möglich (braucht keinen Connector)

Real-time updates 
shared between apps 
after a single 
UNREAL 
3 
AUTODESK® 
M 
AUTODESK® 
BI-DIRECTIONAL 
export/import. Material 
ENGINE 
3DS MAX' 
MAYA' 
CONNECTOR 
conversion supported. 
Real-time updates from 
apps are reflected in 
Omniverse but aren't 
AUTODESK® 
UNI-DIRECTIONAL 
shared back. 
Rhinoceros 
R 
REVIT® 
SketchUp 
design, model, present analyze, malin. 
Material 
CONNECTOR 
conversion supported. 
IGES 
11 
Conversion to USD via 
direct import or 
Import Only 
E57 
ALEMBIC 
LXO 
MD5 
ST 
third-party app. 
EXPORT, IMPORT 
Materials often 
converted manually. 
F 
Export and Import 
CITF 
USD 
FBX 
GLB 
OBJ 
USDZ ...Real-time updates 
shared between apps 
after a single 
UNREAL 
3 
AUTODESK® 
M 
AUTODESK® 
BI-DIRECTIONAL 
export/import. Material 
ENGINE 
3DS MAX' 
MAYA' 
CONNECTOR 
conversion supported. 
Real-time updates from 
apps are reflected in 
Omniverse but aren't 
AUTODESK® 
UNI-DIRECTIONAL 
shared back. 
Rhinoceros 
R 
REVIT® 
SketchUp 
design, model, present analyze, malin. 
Material 
CONNECTOR 
conversion supported. 
IGES 
11 
Conversion to USD via 
direct import or 
Import Only 
E57 
ALEMBIC 
LXO 
MD5 
ST 
third-party app. 
EXPORT, IMPORT 
Materials often 
converted manually. 
F 
Export and Import 
CITF 
USD 
FBX 
GLB 
OBJ 
USDZ

FLOWCHART FOR CONNECTION 
Multiple Ways to Interact - Many in Real-Time, with Automated Material Conversion 
START HERE! 
Has a Connector? 
YES 
Start Collaborating 
NO 
BONUS PATH: 
Develop your own 
Exports USD/MDL/Textures? 
YES 
connector (follow the 
Export to OmniDrive 
samples in KIT) 
NO 
Engage directly with 
tool developer or use 
NO 
an Exchanger 
Exports Common Formats? 
YES 
Import in Create ...FLOWCHART FOR CONNECTION 
Multiple Ways to Interact - Many in Real-Time, with Automated Material Conversion 
START HERE! 
Has a Connector? 
YES 
Start Collaborating 
NO 
BONUS PATH: 
Develop your own 
Exports USD/MDL/Textures? 
YES 
connector (follow the 
Export to OmniDrive 
samples in KIT) 
NO 
Engage directly with 
tool developer or use 
NO 
an Exchanger 
Exports Common Formats? 
YES 
Import in Create

Toolkit um Omniverse Apps zu gestalten

In Python aber supportet mehr und mehr no code apps

Omniverse Application = Collection of Extensions oder Microservies

Create ist viele Applications

KIT:

ASSEMBLIES 
APPS 
MICROSERVICES 
CREATE 
VIEW 
FORMAT CONVERTER 
DEEPSEARCH 
MACHINIMA 
ISAAC SIM 
THUMBNAILS 
BATCH 
AUDIO2FACE 
EXTENSIONS 
ASSET IMPORT/EXPORT 
ANIMATION TOOLS 
RIVA 
CORE EXTENSIONS 
CONTENT BROWSER 
MESH TOOLS 
TEXTURE TOOLS 
OMNIVERSE KIT 
USD 
PHYSX 5 
OMNIUI 
PYTHON 
RTX 
OMNIGRAPH 
NUCLEUS CLIENT ...ASSEMBLIES 
APPS 
MICROSERVICES 
CREATE 
VIEW 
FORMAT CONVERTER 
DEEPSEARCH 
MACHINIMA 
ISAAC SIM 
THUMBNAILS 
BATCH 
AUDIO2FACE 
EXTENSIONS 
ASSET IMPORT/EXPORT 
ANIMATION TOOLS 
RIVA 
CORE EXTENSIONS 
CONTENT BROWSER 
MESH TOOLS 
TEXTURE TOOLS 
OMNIVERSE KIT 
USD 
PHYSX 5 
OMNIUI 
PYTHON 
RTX 
OMNIGRAPH 
NUCLEUS CLIENT

Physiktechnologien werden  angewendet

Bringt dem Modell bei wie die Physik sich verhält

MDL = Material Definitions Language

Definiert Texturen von Material

Simulation:

Multi GPU native

Path Tracer

Real time ray tracing oder path tracing

Für RTX GPUs gemacht

RTX Renderer:

> Simulate the real world 
> Built for RTX GPUs 
> Built on standards: USD and MDL 
> Runs in both Windows and Linux 
> Pushes limits of RTX Ray-Tracing + Al + Multi-GPU + Cloud ...> Simulate the real world 
> Built for RTX GPUs 
> Built on standards: USD and MDL 
> Runs in both Windows and Linux 
> Pushes limits of RTX Ray-Tracing + Al + Multi-GPU + Cloud

OMNIVERSE ENTERPRISE OVERVIEW 
Enhance Popular AEC/DCC Applications and Workflows 
For AEC and M&E Industries 
Connect to Existing Tools 
Design Collaboration 
UNREAL 
3 
AUTODESK® 
ENGINE 
3DS MAX® 
M 
AUTODESK® 
MAYA 
Rhinoceros 
design, medel, present, analyze, meslitt. 
R 
AUTODESK® 
REVIT® 
SketchUp 
Application 
Team 
Omniverse Create and View Apps 
Omniverse Connectors 
Omniverse Nucleus ...OMNIVERSE ENTERPRISE OVERVIEW 
Enhance Popular AEC/DCC Applications and Workflows 
For AEC and M&E Industries 
Connect to Existing Tools 
Design Collaboration 
UNREAL 
3 
AUTODESK® 
ENGINE 
3DS MAX® 
M 
AUTODESK® 
MAYA 
Rhinoceros 
design, medel, present, analyze, meslitt. 
R 
AUTODESK® 
REVIT® 
SketchUp 
Application 
Team 
Omniverse Create and View Apps 
Omniverse Connectors 
Omniverse Nucleus

NVIDIA OMNIVERSE ENTERPRISE 
3 
AUTODESK 
MICROSERVICES 
3DS MAX 
WEB PIXEL 
STREAMING 
CLOUDXR 
... 
M 
WORKSTATION 
AUTODESK 
+ ---- 
MAYA 
R 
AUTODESK 
ENTERPRISE NUCLEUS 
REVIT 
OMNIVERSE 
CREATE 
VIRTUAL 
REALITY 
NUCLEUS 
ENTERPRISE NUCLEUS 
WORKSTATION 
DOCKER 
1 
MCNEEL & 
ASSOCIATES 
USER ACCT SAML 
SELF-SERVICE 
RHINO 
ACTIVE DIRECTORY 
CLOUD HOSTING 
Rhinoceros 
OMNIVERSE 
VIEW 
AUGMENTED 
OTHER 
REALITY 
EPIC GAMES' 
KIT-BASED 
UNREAL 
APPS 
ENGINE 
STORAGE 
WEB 
BROWSER ...NVIDIA OMNIVERSE ENTERPRISE 
3 
AUTODESK 
MICROSERVICES 
3DS MAX 
WEB PIXEL 
STREAMING 
CLOUDXR 
... 
M 
WORKSTATION 
AUTODESK 
+ ---- 
MAYA 
R 
AUTODESK 
ENTERPRISE NUCLEUS 
REVIT 
OMNIVERSE 
CREATE 
VIRTUAL 
REALITY 
NUCLEUS 
ENTERPRISE NUCLEUS 
WORKSTATION 
DOCKER 
1 
MCNEEL & 
ASSOCIATES 
USER ACCT SAML 
SELF-SERVICE 
RHINO 
ACTIVE DIRECTORY 
CLOUD HOSTING 
Rhinoceros 
OMNIVERSE 
VIEW 
AUGMENTED 
OTHER 
REALITY 
EPIC GAMES' 
KIT-BASED 
UNREAL 
APPS 
ENGINE 
STORAGE 
WEB 
BROWSER

Create

View

Apps:

Subscription:

Creator

Reviewer

Nucleus

Omniverse Enterprise 
Omniverse Enterprise 
Omniverse Enterprise 
Creator Subscription 
Reviewer Subscription 
Nucleus Subscription 
Enables scene composition, simulation and rendering 
Review and approval application for 
Collaboration and scalable core microservices 
on workstations and virtual workstations. 
workstations and virtual workstations. 
deployed on servers and/ or workstations. 
Includes: 
Includes: 
Includes: 
Omniverse Create, Kit, Extensions, Create app and 
Batch microservices (on up to 64 GPUs) & NVIDIA 
Omniverse View & NVIDIA Enterprise Support 
Nucleus Workstation, Enterprise Nucleus Server 
Enterprise Support 
& NVIDIA Enterprise Support 
Collaboration via Nucleus requires a Nucleus 
Editing and commenting via Nucleus requires a 
subscription. 
Nucleus subscription. ...Omniverse Enterprise 
Omniverse Enterprise 
Omniverse Enterprise 
Creator Subscription 
Reviewer Subscription 
Nucleus Subscription 
Enables scene composition, simulation and rendering 
Review and approval application for 
Collaboration and scalable core microservices 
on workstations and virtual workstations. 
workstations and virtual workstations. 
deployed on servers and/ or workstations. 
Includes: 
Includes: 
Includes: 
Omniverse Create, Kit, Extensions, Create app and 
Batch microservices (on up to 64 GPUs) & NVIDIA 
Omniverse View & NVIDIA Enterprise Support 
Nucleus Workstation, Enterprise Nucleus Server 
Enterprise Support 
& NVIDIA Enterprise Support 
Collaboration via Nucleus requires a Nucleus 
Editing and commenting via Nucleus requires a 
subscription. 
Nucleus subscription.

Workstation Launcher - Enduser

Workstation Nucleus - Enduser

Enterprise Launcher - small teams

Enterprise Nucleus Server - large teams

Installations Options:

FLEXIBLE, SCALABLE, ACROSS ANY NVIDIA RTX SYSTEM 
SMALL, LOCAL WORKGROUPS 
LARGE, VIRTUALIZED ENTERPRISE 
REMOTE SITE IVMI 
VMO 
VM1 
VM2 
000 
O YMI 
DESKSIDE WORKER / USER 
MOBILE WORKER / USER 
MOBILE WORKER / USER 
VM2 
VM3 
VM3 
VM& 
VMA 
O 
VM5 
VM5 
DESKSIDE WORKER / USER ...FLEXIBLE, SCALABLE, ACROSS ANY NVIDIA RTX SYSTEM 
SMALL, LOCAL WORKGROUPS 
LARGE, VIRTUALIZED ENTERPRISE 
REMOTE SITE IVMI 
VMO 
VM1 
VM2 
000 
O YMI 
DESKSIDE WORKER / USER 
MOBILE WORKER / USER 
MOBILE WORKER / USER 
VM2 
VM3 
VM3 
VM& 
VMA 
O 
VM5 
VM5 
DESKSIDE WORKER / USER

16 GB Video Memory at least

OVX-Systeme - basieren auf L40 / L40s - wieso?

Sind OVX Systeme sozusagen die Lösung für Enterprise Nucleus Server?

Omniverse wurden für RTX Grafikkarten gebaut

Sizing Server - welche Größen sind relevant? zB RAM oder HBMe / User / Parameter / Token

Fragen Florian:

CBmed 
ONB 
ITAU 
UNIVERSITÄT 
Salzburg 
BIOMARKER RESEARCH 
OESTERREICHISCHE NATIONALBANK 
transformation 
WÜRZBURG 
Collaborative 
NXAI 
Computing 
EUROSYSTEM 
HEALTHCARE 
FINANCIAL 
EDU & RESEARCH 
EDU & RESEARCH 
STARTUP 
Hewlett Packard 
Hewlett Packard 
Enterprise 
Enterprise 
DELL 
DELL 
NVIDIA. 
slurm 
DELL 
NVIDIA. 
NVIDIA. 
NVIDIA. 
NVIDIA. 
ceph 
ddn 
vmware 
vmware 
vmware 
vmware 
by Broadcom 
by Broadcom 
by Broadcom 
oy Broadcom 
VERTIV 
ADA 
Vision Al 
Gen Al 
Gen AI, LLM, ML 
Gen AI, LLM, ML 
LLM, ML 
NVIDIA L40 
NVIDIA H100 NVL 
NVIDIA HGX H100, L40S 
NVIDIA HGX H100, DGX 
NVIDIA DGX H200 
RTX VWORKSTATION 
NVIDIA AI ENTERPRISE 
NVIDIA AIE, OMNIVERSE 
NVIDIA AI ENTERPRISE 
NVIDIA AI ENTERPRISE 
< 40K/< 100K 
< 130k/< 600k 
> 100k, 300k/ > 600k 
> 3 M / (> 4 M) 
> 70 M / (24 M / 3y) ...CBmed 
ONB 
ITAU 
UNIVERSITÄT 
Salzburg 
BIOMARKER RESEARCH 
OESTERREICHISCHE NATIONALBANK 
transformation 
WÜRZBURG 
Collaborative 
NXAI 
Computing 
EUROSYSTEM 
HEALTHCARE 
FINANCIAL 
EDU & RESEARCH 
EDU & RESEARCH 
STARTUP 
Hewlett Packard 
Hewlett Packard 
Enterprise 
Enterprise 
DELL 
DELL 
NVIDIA. 
slurm 
DELL 
NVIDIA. 
NVIDIA. 
NVIDIA. 
NVIDIA. 
ceph 
ddn 
vmware 
vmware 
vmware 
vmware 
by Broadcom 
by Broadcom 
by Broadcom 
oy Broadcom 
VERTIV 
ADA 
Vision Al 
Gen Al 
Gen AI, LLM, ML 
Gen AI, LLM, ML 
LLM, ML 
NVIDIA L40 
NVIDIA H100 NVL 
NVIDIA HGX H100, L40S 
NVIDIA HGX H100, DGX 
NVIDIA DGX H200 
RTX VWORKSTATION 
NVIDIA AI ENTERPRISE 
NVIDIA AIE, OMNIVERSE 
NVIDIA AI ENTERPRISE 
NVIDIA AI ENTERPRISE 
< 40K/< 100K 
< 130k/< 600k 
> 100k, 300k/ > 600k 
> 3 M / (> 4 M) 
> 70 M / (24 M / 3y)

& Deploy Virtualized NVIDIA Omniv X 
+ 
https://infohub.delltechnologies.com/de-de/p/deploy-virtualized-nvidia-omniverse-environment-with-dell-poweredge-r760xa-and-nvidia-140-gpus/ 
NTRA 
HERSTELLER 
A 
LEARN 
MS 
ToDe 
HPE 
VEEAM 
VM 
KBC 
NVIDIA 
AI_HW_INFO 
VED VisioCafe free visio ... 
Xvantage 
Home - Block 
Software Stack 
VMware ESXi, 8.0.1 
Windows 10 Enterprise 10.0.19045 
NVIDIA vGPU Grid Driver 16.1 
Omniverse USD Composer 2023.2.0 
Omniverse Launcher 1.8.11 
Omniverse Nucleus 2023.1.0 
Post-Deployment Configuration Example. 
The following figure shows a VMware vCenter Omniverse USD Composer Virtual Workstation configured with 4 x L40 vGPUs. 
Edit Settings 
OMNI-USD-COMPOSER 
X 
Virtual Hardware 
VM Options 
Advanced Parameters 
ADD NEW DEVICE v 
> CPU 
32 v 
> Memory 
96 
V 
GB V 
> Hard disk 1 
250 
... 
GB v 
... 
> Hard disk 2 
250 
GB v 
> SCSI controller O 
LSI Logic SAS 
> Network adapter 1 
r760xa-test01-vdi v 
Connected 
: 
> CD/DVD drive 1 
Client Device 
Connected 
: 
> PCI device 0 
NVIDIA GRID vGPU nvidia_140-48q 
... ...& Deploy Virtualized NVIDIA Omniv X 
+ 
https://infohub.delltechnologies.com/de-de/p/deploy-virtualized-nvidia-omniverse-environment-with-dell-poweredge-r760xa-and-nvidia-140-gpus/ 
NTRA 
HERSTELLER 
A 
LEARN 
MS 
ToDe 
HPE 
VEEAM 
VM 
KBC 
NVIDIA 
AI_HW_INFO 
VED VisioCafe free visio ... 
Xvantage 
Home - Block 
Software Stack 
VMware ESXi, 8.0.1 
Windows 10 Enterprise 10.0.19045 
NVIDIA vGPU Grid Driver 16.1 
Omniverse USD Composer 2023.2.0 
Omniverse Launcher 1.8.11 
Omniverse Nucleus 2023.1.0 
Post-Deployment Configuration Example. 
The following figure shows a VMware vCenter Omniverse USD Composer Virtual Workstation configured with 4 x L40 vGPUs. 
Edit Settings 
OMNI-USD-COMPOSER 
X 
Virtual Hardware 
VM Options 
Advanced Parameters 
ADD NEW DEVICE v 
> CPU 
32 v 
> Memory 
96 
V 
GB V 
> Hard disk 1 
250 
... 
GB v 
... 
> Hard disk 2 
250 
GB v 
> SCSI controller O 
LSI Logic SAS 
> Network adapter 1 
r760xa-test01-vdi v 
Connected 
: 
> CD/DVD drive 1 
Client Device 
Connected 
: 
> PCI device 0 
NVIDIA GRID vGPU nvidia_140-48q 
...

WHAT'S NEEDED TO RUN OMNIVERSE 
Minimum Specification 
Recommended Specifications 
Generic Workstation 
Desktop Workstation 
MWS 
vWS (vGPU) 
Windows 10 
Windows 10 
Windows 10 
Windows 10 
Operating System 
Ubuntu 18.04 
Ubuntu 18.04 
Ubuntu 18.04 
Ubuntu 18.04 
CentOS7 
CentOS7 
CPU 
Intel 17 
Intel Xeon W-2235 3.8G 6C/12T 
Intel 17 
AMD Ryzen 
AMD Ryzen Threadripper Pro 3945WX 
AMD Ryzen 
Intel Xeon Gold 6354 
2.5GHz or greater 
4.0GHz 12C/24T 
3.0GHz or greater 
AMD EPYC 7443 
CPU Cores 
8 
16 
16 
16+ 
System RAM 
16 GB 
32 GB + 
16 GB + 
512 GB + 
Hard Drive Space 
Data Footprint + 20% 
500GB+ 
500GB+ 
500GB+ 
NVIDIA RTX A4000 (16GB) 
NVIDIA RTX A4000 (8 GB) 
GPU 
NVIDIA A40 (12Q profile) 
Any RTX GPU 
NVIDIA RTX A6000 (48GB) 
NVIDIA A40 (24Q profile) 
NVIDIA A40 (48Q profile) 
Frame Buffer 
6GB 
16GB + 
8GB + 
16GB + 
Driver Version 
455.28 (Linux) 
455.28 (Linux) 
455.28 (Linux) 
455.28 (Linux) 
456.71 (Windows) 
456.71 (Windows) 
456.71 (Windows) 
456.71 (Windows) ...WHAT'S NEEDED TO RUN OMNIVERSE 
Minimum Specification 
Recommended Specifications 
Generic Workstation 
Desktop Workstation 
MWS 
vWS (vGPU) 
Windows 10 
Windows 10 
Windows 10 
Windows 10 
Operating System 
Ubuntu 18.04 
Ubuntu 18.04 
Ubuntu 18.04 
Ubuntu 18.04 
CentOS7 
CentOS7 
CPU 
Intel 17 
Intel Xeon W-2235 3.8G 6C/12T 
Intel 17 
AMD Ryzen 
AMD Ryzen Threadripper Pro 3945WX 
AMD Ryzen 
Intel Xeon Gold 6354 
2.5GHz or greater 
4.0GHz 12C/24T 
3.0GHz or greater 
AMD EPYC 7443 
CPU Cores 
8 
16 
16 
16+ 
System RAM 
16 GB 
32 GB + 
16 GB + 
512 GB + 
Hard Drive Space 
Data Footprint + 20% 
500GB+ 
500GB+ 
500GB+ 
NVIDIA RTX A4000 (16GB) 
NVIDIA RTX A4000 (8 GB) 
GPU 
NVIDIA A40 (12Q profile) 
Any RTX GPU 
NVIDIA RTX A6000 (48GB) 
NVIDIA A40 (24Q profile) 
NVIDIA A40 (48Q profile) 
Frame Buffer 
6GB 
16GB + 
8GB + 
16GB + 
Driver Version 
455.28 (Linux) 
455.28 (Linux) 
455.28 (Linux) 
455.28 (Linux) 
456.71 (Windows) 
456.71 (Windows) 
456.71 (Windows) 
456.71 (Windows)

Omniverse for Everyone 
NVIDIA OMNIVERSE 
OMNIVERSE ENTERPRISE 
COLLABORATION 
Between multiple apps and one other user 
Between multiple apps and licensed Creators 
LICENSING 
Free for individuals 
Subscription Licenses, Annual and Multi-Year 
SUPPORT 
Public Forums, Training Videos & Community 
Full Enterprise Support 
NUCLEUS 
Nucleus Workstation only 
Enterprise Nucleus Server 
Nucleus Workstation 
CONNECTORS 
Use of all Connectors, including beta 
Use of all production Connectors, beta at own risk 
APPS 
All Omniverse apps, including beta 
Omniverse Create 
Omniverse View 
Only Nucleus workstation for local deployment is available to them ...Omniverse for Everyone 
NVIDIA OMNIVERSE 
OMNIVERSE ENTERPRISE 
COLLABORATION 
Between multiple apps and one other user 
Between multiple apps and licensed Creators 
LICENSING 
Free for individuals 
Subscription Licenses, Annual and Multi-Year 
SUPPORT 
Public Forums, Training Videos & Community 
Full Enterprise Support 
NUCLEUS 
Nucleus Workstation only 
Enterprise Nucleus Server 
Nucleus Workstation 
CONNECTORS 
Use of all Connectors, including beta 
Use of all production Connectors, beta at own risk 
APPS 
All Omniverse apps, including beta 
Omniverse Create 
Omniverse View 
Only Nucleus workstation for local deployment is available to them
