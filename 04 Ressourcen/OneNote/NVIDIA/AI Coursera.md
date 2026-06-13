---
tags: [onenote, aivengers]
---

# AI Coursera

AI Prep Data: Rapids + Apache Spark (ebenfalls Plugin für OS Software) - Intel: Numpy Scipy

Training: Pytorch + Tensorflow - Intel: same

Optimization: Tensor RT - Intel: OpenVINO

Inferenz: Nvidia Triton Server (Load Balancing) - Intel: OpenVINO, Load Balancing acc?

NVIDIA Deep Learning Software Stack 
. CUDA - NVIDIA's groundbreaking parallel 
programming model 
. NVIDIA Container Runtime - Enables GPUs to be 
used inside containers 
. NGC Containers - Publicly available containers 
optimized to run on NVIDIA GPUs 
. DL Frameworks - Popular deep learning frameworks 
available inside the containers 
· Provides essential optimizations for deep learning, 
machine learning, and high-performance computing 
(HPC) leveraging NVIDIA GPUS 
NVIDIA Driver 
NVIDIA stellt viele Frameworks als Docker-Container über NGC bereit 
Host OS ...NVIDIA Deep Learning Software Stack 
. CUDA - NVIDIA's groundbreaking parallel 
programming model 
. NVIDIA Container Runtime - Enables GPUs to be 
used inside containers 
. NGC Containers - Publicly available containers 
optimized to run on NVIDIA GPUs 
. DL Frameworks - Popular deep learning frameworks 
available inside the containers 
· Provides essential optimizations for deep learning, 
machine learning, and high-performance computing 
(HPC) leveraging NVIDIA GPUS 
NVIDIA Driver 
NVIDIA stellt viele Frameworks als Docker-Container über NGC bereit 
Host OS

Al Workflows, Frameworks and Pretrained Models* 
Medical Imaging 
Speech Al Conversational Al 
Customer 
Physics 
Communi 
Video 
Autonomous 
Service 
Recommenders 
ML 
-cations 
Analytics 
Logistics 
Robotics 
Vehicles 
Cybersecurity 
Al and Data Science: Development and Deployment Tools 
Cloud Native Management and Orchestration 
Infrastructure Optimization 
Accelerated Infrastructure 
Cloud 
Data Center 
Edge 
Embedded ...Al Workflows, Frameworks and Pretrained Models* 
Medical Imaging 
Speech Al Conversational Al 
Customer 
Physics 
Communi 
Video 
Autonomous 
Service 
Recommenders 
ML 
-cations 
Analytics 
Logistics 
Robotics 
Vehicles 
Cybersecurity 
Al and Data Science: Development and Deployment Tools 
Cloud Native Management and Orchestration 
Infrastructure Optimization 
Accelerated Infrastructure 
Cloud 
Data Center 
Edge 
Embedded

In-Band Management Network 
Compute Network 
--- 
EGPU 
EGPU 
Host 1 
Host2 
Host-n 
Storage 
OOB Management 
2:33 / 18:35 ...In-Band Management Network 
Compute Network 
--- 
EGPU 
EGPU 
Host 1 
Host2 
Host-n 
Storage 
OOB Management 
2:33 / 18:35

Al Workloads Require an Al Fabric 
Control / User Access Network (N-S) 
Al Fabric (E-W) 
Loosely-Coupled Applications 
Tightly-Coupled Processes 
TCP (Low Bandwidth Flows and Utilization) 
ROMA (High Bandwidth Flows and Utilization) 
High Jitter Tolerance 
Low Jitter Tolerance 
Oversubscribed Topologies 
Nonblocking Topologies 
Heterogeneous Traffic, Statistical Multi-Pathing 
Bursty Network Capacity, Predictive Performance ...Al Workloads Require an Al Fabric 
Control / User Access Network (N-S) 
Al Fabric (E-W) 
Loosely-Coupled Applications 
Tightly-Coupled Processes 
TCP (Low Bandwidth Flows and Utilization) 
ROMA (High Bandwidth Flows and Utilization) 
High Jitter Tolerance 
Low Jitter Tolerance 
Oversubscribed Topologies 
Nonblocking Topologies 
Heterogeneous Traffic, Statistical Multi-Pathing 
Bursty Network Capacity, Predictive Performance

Ethernet and Infiniband Network

What Is InfiniBand? 
Connecting more than 50 percent of the TOP500 supercomputing list 
. InfiniBand is a networking technology that features high throughput, low latency with low processing overhead. 
. The InfiniBand specification is maintained by the InfiniBand® Trade Association (IBTA). 
Server / 
Compute 
Storage 
InfiniBand 
800 Gbps 
Switch 
InfiniBand 
800 Gbps 
--- 
--- 
...... 
= 
--- 
--- 
--- 
--- ...What Is InfiniBand? 
Connecting more than 50 percent of the TOP500 supercomputing list 
. InfiniBand is a networking technology that features high throughput, low latency with low processing overhead. 
. The InfiniBand specification is maintained by the InfiniBand® Trade Association (IBTA). 
Server / 
Compute 
Storage 
InfiniBand 
800 Gbps 
Switch 
InfiniBand 
800 Gbps 
--- 
--- 
...... 
= 
--- 
--- 
--- 
---

What is RoCE? 
Accelerating Al, Storage, and Big Data Applications over Ethernet Networks 
. RDMA over Converged Ethernet (RoCE) is a technology which allows RDMA over Ethernet networks. 
· ROCE uses the InfiniBand packet header and encapsulates it with a UDP header. 
· ROCE is an open source and formal InfiniBand Trade Association (IBTA) standard. 
· ROCE is fundamental to accelerating Al, storage, and big data applications. 
INFINIBAND" 
+ ROCE 
TRADE ASSOCIATION ...What is RoCE? 
Accelerating Al, Storage, and Big Data Applications over Ethernet Networks 
. RDMA over Converged Ethernet (RoCE) is a technology which allows RDMA over Ethernet networks. 
· ROCE uses the InfiniBand packet header and encapsulates it with a UDP header. 
· ROCE is an open source and formal InfiniBand Trade Association (IBTA) standard. 
· ROCE is fundamental to accelerating Al, storage, and big data applications. 
INFINIBAND" 
+ ROCE 
TRADE ASSOCIATION

Ethernet Enhancements 
ROCE Adaptive Routing 
· A fine-grained load balancing technology. 
. Dynamically reroutes RDMA data to avoid congestion. 
· Provides optimal load balancing. 
. Improves network utilization by selecting forwarding paths based on the state of the switch. 
Server 
Spectrum-4 
BlueField-3 
Adaptive Routing 
In-order Data Delivery 
Application 
Application 
18 
BlueField-3 
BlueField-3 
= 
Application 
Application 
BlueField-3 
...... 
BlueField-3 
Server 
Server ...Ethernet Enhancements 
ROCE Adaptive Routing 
· A fine-grained load balancing technology. 
. Dynamically reroutes RDMA data to avoid congestion. 
· Provides optimal load balancing. 
. Improves network utilization by selecting forwarding paths based on the state of the switch. 
Server 
Spectrum-4 
BlueField-3 
Adaptive Routing 
In-order Data Delivery 
Application 
Application 
18 
BlueField-3 
BlueField-3 
= 
Application 
Application 
BlueField-3 
...... 
BlueField-3 
Server 
Server
