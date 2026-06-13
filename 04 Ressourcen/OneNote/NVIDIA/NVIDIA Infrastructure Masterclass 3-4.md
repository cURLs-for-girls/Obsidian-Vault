---
tags: [onenote, aivengers]
---

# NVIDIA Infrastructure Masterclass 3/4

Designing New Software to Power Next-Gen Al Factories 
Capability 
NVIDIA Mission Control 
DIY Approach 
Rack Management 
· Component Power Sequence 
· Engineering effort to document rack deployment 
· Event driven services - shutdown/isolation 
· Manual integration of events and actions 
· Integrated inventory management and vis. 
· 
No integrated rack visualization 
BMS Integration 
· Standardized APIs to integrate BMS with 
. Create scripts and workflows following the standardized BMS 
NVIDIA Mission Control 
integration APIs and protocol from reference design 
Configure 
Advanced Provisioning 
· Integrated Ethernet, NVLink and IB provision 
· Develop automation to provision out of band and N/S ETH 
network, Compute IB fabric, Compute trays, and NVLink switch 
trays 
Acceptance Tests 
· Extensibility of customer acceptance test 
· Manually run scripts to execute acceptance tests for checking 
hardware quality, No GUI integration possible 
Validate 
Topology Aware Scheduler 
· Integrated scheduling for NVLink domain and 
. Write own scripts to performs NVLink and CUDA bootstrap - 
workload GPU dependency for IMEX service 
create partition and launches IMEX service 
· Pre and post flight validation of resources 
· Create scripts for preflight and postflight checks 
· Customize slurm for incorporating NVLink topo awareness rules 
Health checks 
· Extensibility to customize validation suite 
· Manually run scripts to execute on demand health checks for 
checking hardware quality, No GUI integration possible 
Autonomous Job and 
· Integrated workload management and restart 
· Write own scripts to take remedial or isolation actions in the 
Hardware Recovery 
guidance for hardware and software errors 
cluster based on hardware or software errors. 
Operate 
Liquid Cooling 
· Predefined actions for LC events 
· Write own scripts to monitor BMCs for leakage events and define 
a leakage detection policy to enact upon the events 
Energy and Power 
· Integrated power management of system 
· Write own scripts to achieve scheduler integrated power profiles 
Optimizations 
based on workload profile 
support ...Designing New Software to Power Next-Gen Al Factories 
Capability 
NVIDIA Mission Control 
DIY Approach 
Rack Management 
· Component Power Sequence 
· Engineering effort to document rack deployment 
· Event driven services - shutdown/isolation 
· Manual integration of events and actions 
· Integrated inventory management and vis. 
· 
No integrated rack visualization 
BMS Integration 
· Standardized APIs to integrate BMS with 
. Create scripts and workflows following the standardized BMS 
NVIDIA Mission Control 
integration APIs and protocol from reference design 
Configure 
Advanced Provisioning 
· Integrated Ethernet, NVLink and IB provision 
· Develop automation to provision out of band and N/S ETH 
network, Compute IB fabric, Compute trays, and NVLink switch 
trays 
Acceptance Tests 
· Extensibility of customer acceptance test 
· Manually run scripts to execute acceptance tests for checking 
hardware quality, No GUI integration possible 
Validate 
Topology Aware Scheduler 
· Integrated scheduling for NVLink domain and 
. Write own scripts to performs NVLink and CUDA bootstrap - 
workload GPU dependency for IMEX service 
create partition and launches IMEX service 
· Pre and post flight validation of resources 
· Create scripts for preflight and postflight checks 
· Customize slurm for incorporating NVLink topo awareness rules 
Health checks 
· Extensibility to customize validation suite 
· Manually run scripts to execute on demand health checks for 
checking hardware quality, No GUI integration possible 
Autonomous Job and 
· Integrated workload management and restart 
· Write own scripts to take remedial or isolation actions in the 
Hardware Recovery 
guidance for hardware and software errors 
cluster based on hardware or software errors. 
Operate 
Liquid Cooling 
· Predefined actions for LC events 
· Write own scripts to monitor BMCs for leakage events and define 
a leakage detection policy to enact upon the events 
Energy and Power 
· Integrated power management of system 
· Write own scripts to achieve scheduler integrated power profiles 
Optimizations 
based on workload profile 
support

Herausforderungen beim aufbau GB200 NVL72 herausarbeiten - und was mission control macht

Designing NVIDIA Mission Control Software 
Integrated solution to control NVIDIA's most capable Al infrastructure 
Al Workload Management 
(NVIDIA Run:ai) 
+ 
Autonomous Job Recovery 
+ 
Base Command Manager 
Datacenter Infrastructure 
+ 
Monitoring 
NVIDIA Mission Control 
Basic 
(BMS Integration Points) 
+ 
Al Data Center Operations 
Provisioning | Management | Observability 
Dynamic Power 
and Orchestration Software 
Optimizations 
+ 
Advanced Cluster 
Provisioning 
(Rack Provision, IMEX, NVLink 
Switch, NMX) 
+ 
Autonomous Hardware 
Recovery 
NVIDIA ...Designing NVIDIA Mission Control Software 
Integrated solution to control NVIDIA's most capable Al infrastructure 
Al Workload Management 
(NVIDIA Run:ai) 
+ 
Autonomous Job Recovery 
+ 
Base Command Manager 
Datacenter Infrastructure 
+ 
Monitoring 
NVIDIA Mission Control 
Basic 
(BMS Integration Points) 
+ 
Al Data Center Operations 
Provisioning | Management | Observability 
Dynamic Power 
and Orchestration Software 
Optimizations 
+ 
Advanced Cluster 
Provisioning 
(Rack Provision, IMEX, NVLink 
Switch, NMX) 
+ 
Autonomous Hardware 
Recovery 
NVIDIA

NVIDIA Mission Control 
Run models, automate the essentials 
Al Workload Management 
Seamless workload 
management and orchestration 
Integrated management and 
with NVIDIA Run:ai technology 
topology-aware orchestration 
Autonomous Recovery Engine 
Automated problem isolation, 
Intelligent recovery for 
Anomaly Detection | Job Restart | Recovery 
containment and tiered restart for 
improved infrastructure 
fewer job halts 
reliability 
Advanced Cluster Provisioning 
Developer-selectable profiles for 
power optimizations 
Dynamic Power Optimizations | Data Center Infrastructure Management 
Provisioning | Clustering | Managing 
Effortlessly scale and manage 
Simplified cluster provisioning 
dozens to 1000's of nodes 
with standardized APIs and 
inventory visualizations 
Telemetry and Observability 
Customizable dashboards for 
*Enhanced coordination 
monitoring KPIs with access 
between IT and data center 
to critical telemetry 
facilities for liquid cooling 
Validation and Diagnostics 
On-demand health checks 
for system lifecycle ...NVIDIA Mission Control 
Run models, automate the essentials 
Al Workload Management 
Seamless workload 
management and orchestration 
Integrated management and 
with NVIDIA Run:ai technology 
topology-aware orchestration 
Autonomous Recovery Engine 
Automated problem isolation, 
Intelligent recovery for 
Anomaly Detection | Job Restart | Recovery 
containment and tiered restart for 
improved infrastructure 
fewer job halts 
reliability 
Advanced Cluster Provisioning 
Developer-selectable profiles for 
power optimizations 
Dynamic Power Optimizations | Data Center Infrastructure Management 
Provisioning | Clustering | Managing 
Effortlessly scale and manage 
Simplified cluster provisioning 
dozens to 1000's of nodes 
with standardized APIs and 
inventory visualizations 
Telemetry and Observability 
Customizable dashboards for 
*Enhanced coordination 
monitoring KPIs with access 
between IT and data center 
to critical telemetry 
facilities for liquid cooling 
Validation and Diagnostics 
On-demand health checks 
for system lifecycle

BCM = kostenlos, Mission Control kostet Geld / Lizenz (über NVAIE)

Du erhältst eine Free‑Use‑Lizenz, gültig bis zu 8 GPUs pro System, beliebig viele Systeme im Cluster sind erlaubt

Multi tenancy frage beantworten

Topology Aware Workload Orchestration 
Block scheduling for operating multi-node NVIDIA GB200 NVL72 systems 
Illustration of Distributed Training 
1. After User submits a job, Slurm "Block scheduler" 
identifies "NVLink Block topology" meeting the 
NCCL and job requirements: e.g., job 1: 64 GPUs, 
Compute Node [18] 
job2: 8 GPUs. 
Compute Node [17] 
Compute Node [1] 
Compute Node [16] 
2. NVIDIA Mission Control performs the prescriptive 
Session Establishment 
health checks on the nodes and network of the 
Scheduler 
Container 
Container 
App/Model 
4 
Scheduler 
App/Model 
system and launches Slurm application on each 
Agent 
Agent 
2 
DI 
VDL 
2 
compute node 
5 
L1 Switches 
1.C 
Framework 
Framework 
5 
CUDA/NCCL 
I.C 
SM 
CUDA/NCCL 
3. App/Model starts, and NCCL routs data over 
IMEX 
IMEX 
NVLink 
NVLink 
NVLink 
B 
GPU Driver 
GFM 
GPU Driver 
4. In the event of a failure, A. Mission Control marks 
the bad node as tainted, that node is excluded 
from future scheduling until repair, and B. job is 
restarted with a new Block e.g., job 1: 64 GPUs, 
A 
job2: 4 GPUs. C. Repair can bring the failing node 
back into execution 
NVIDIA Mission Control 
At the time of boot: A. Mission Control initialize NVLink Switches and 
NVLink Network from NMX-M, B. Performs NVLink and CUDA 
bootstrap - creates partition from NMX-M -> NMX-C -> GFM, and C. 
During prologue BCM launches IMEX service 
DVIDIA ...Topology Aware Workload Orchestration 
Block scheduling for operating multi-node NVIDIA GB200 NVL72 systems 
Illustration of Distributed Training 
1. After User submits a job, Slurm "Block scheduler" 
identifies "NVLink Block topology" meeting the 
NCCL and job requirements: e.g., job 1: 64 GPUs, 
Compute Node [18] 
job2: 8 GPUs. 
Compute Node [17] 
Compute Node [1] 
Compute Node [16] 
2. NVIDIA Mission Control performs the prescriptive 
Session Establishment 
health checks on the nodes and network of the 
Scheduler 
Container 
Container 
App/Model 
4 
Scheduler 
App/Model 
system and launches Slurm application on each 
Agent 
Agent 
2 
DI 
VDL 
2 
compute node 
5 
L1 Switches 
1.C 
Framework 
Framework 
5 
CUDA/NCCL 
I.C 
SM 
CUDA/NCCL 
3. App/Model starts, and NCCL routs data over 
IMEX 
IMEX 
NVLink 
NVLink 
NVLink 
B 
GPU Driver 
GFM 
GPU Driver 
4. In the event of a failure, A. Mission Control marks 
the bad node as tainted, that node is excluded 
from future scheduling until repair, and B. job is 
restarted with a new Block e.g., job 1: 64 GPUs, 
A 
job2: 4 GPUs. C. Repair can bring the failing node 
back into execution 
NVIDIA Mission Control 
At the time of boot: A. Mission Control initialize NVLink Switches and 
NVLink Network from NMX-M, B. Performs NVLink and CUDA 
bootstrap - creates partition from NMX-M -> NMX-C -> GFM, and C. 
During prologue BCM launches IMEX service 
DVIDIA
