---
tags: [onenote, aivengers]
---

# Technical Workshop HPE PCAI Demo at Cancom

OS 
KS 
VW 
Eva Dölle 
Speder, Olaf (TC - SSD Germany) (Ext ... 
Sharief, Kashif (Professional Servi ... 
Wenzel, Vanessa (Extern) 
AP 
Yannik Schäfer 
Gregor von Stangen 
Putzich, Andreas (Extern) 
Siraj Hasan 
RD 
TS 
MS 
Damera, Raj Kumar (Professional Servi ... 
Schrade, Tanja (Extern) & 
Streiber, Mario (Extern) ...OS 
KS 
VW 
Eva Dölle 
Speder, Olaf (TC - SSD Germany) (Ext ... 
Sharief, Kashif (Professional Servi ... 
Wenzel, Vanessa (Extern) 
AP 
Yannik Schäfer 
Gregor von Stangen 
Putzich, Andreas (Extern) 
Siraj Hasan 
RD 
TS 
MS 
Damera, Raj Kumar (Professional Servi ... 
Schrade, Tanja (Extern) & 
Streiber, Mario (Extern)

0 
I 
- 
B 
D 
E 
G 
H 
U 
1 
2>Type of transceivers and cables. Racks support up to 4 network uplinks per switch of 10, 25, 40, 100 or 200 Gb. 
2 
Cells in Yellow should be filled/validated by customer 
Attribute 
Planned 
Value 
Instructions 
Owner 
Status 
Actual Complet 
Open/Closed 
Completion Date 
Date 
5 
Section 1: Physical Connectivity Details 
Identified the specific location within the customer's premises where the PCAI 
6 
1 rack will be installed. 
The value should be Yes/No/Not Known. 
Manufacturer of customer switch 
Cisco 
If not HPE, then Cable Type must be Optical Transceivers. This is the switch 
17 
where L2 Links will be connected on cutomer network. 
N 
3 Model of customer switch 
Nexus 93180YC-FX 
If the upstream switch is not Aruba/Nvidia/Mellanox, then recommended 
Cable Type 
Optical Transceivers 
transceiver is Optical Transceiver. Additional fiber cables will be required with 
9 
Optical Transceiver. 
If not NVIDIA/Mellanox, then Cable Type must be Optical Transceivers or be 
one of the cables listed at the following URL (which has to be supported on the 
Transceiver Manufacturer 
customer switches as well). https://www.nvidia.com/en- 
10 
us/networking/ethernet-switching/hardware-compatibility-list/ 
11 
6 Transceiver Model 
QSFP-100G-CWDM4 
HPE QSA28 (QSFP28 to SFP28) adapter (845970-B21) is required to convert a 
Network Transceiver Type 
QSFP28 
QSFP28 slot to a single SFP28 or SFP+ slot for 1G, 10G, or 25G specified 
7 
operation with this switch model. 
12 
13 
8 Link Aggregation Port Mode 
Trunk 
Should be a trunk port allowing the Managemnet & Production VLANS 
14 
9 Link Aggregation Protocol Type 
Active LACP 
Port Speed (Gbps) 
400 
The actual capacity of the links will affect the network bandwidth. We do 
15 
10 
recommend at least 100Gb total bandwidth (Maximum throughput 400Gb/s) 
16 
11 Distance from PCAI Rack to Customer Switch (in Meters) 
17 
12 Total Uplinks count (PCAI rack to Customer Network) 
4 
Min of 2, max of 4 
Racks are default configured for bottom fed power. Please indicate Top or 
PDU- Power Feed Position 
Bottom power feed. Power feed needs to be finalized before the order is 
18 
13 
released to the factory. 
19 
Section 2: SCID Details 
20 
MGMTVLAN [Except 110,102,103,99,69] 
101 
The default VLAN is 101. However, if it conflicts with the customer's network, 
the customer should provide an alternative VLAN. 
MGMT Subnet /24 [Except 172.28.2.0/24, 172.16.0.0/18 & 172.17.0.0/16, 
The default IP range will be 172.28.1.0/24. If there is a conflict with the 
21 
172.28.255.0/29] 
172.28.1.0/24 
customer's network, the customer should provide an alternative /24 IP range. 
3 
Customer Facing Network details 
PCAI Internal Network 
Uplink Connection Diagram 
PDU information 
+ ...0 
I 
- 
B 
D 
E 
G 
H 
U 
1 
2>Type of transceivers and cables. Racks support up to 4 network uplinks per switch of 10, 25, 40, 100 or 200 Gb. 
2 
Cells in Yellow should be filled/validated by customer 
Attribute 
Planned 
Value 
Instructions 
Owner 
Status 
Actual Complet 
Open/Closed 
Completion Date 
Date 
5 
Section 1: Physical Connectivity Details 
Identified the specific location within the customer's premises where the PCAI 
6 
1 rack will be installed. 
The value should be Yes/No/Not Known. 
Manufacturer of customer switch 
Cisco 
If not HPE, then Cable Type must be Optical Transceivers. This is the switch 
17 
where L2 Links will be connected on cutomer network. 
N 
3 Model of customer switch 
Nexus 93180YC-FX 
If the upstream switch is not Aruba/Nvidia/Mellanox, then recommended 
Cable Type 
Optical Transceivers 
transceiver is Optical Transceiver. Additional fiber cables will be required with 
9 
Optical Transceiver. 
If not NVIDIA/Mellanox, then Cable Type must be Optical Transceivers or be 
one of the cables listed at the following URL (which has to be supported on the 
Transceiver Manufacturer 
customer switches as well). https://www.nvidia.com/en- 
10 
us/networking/ethernet-switching/hardware-compatibility-list/ 
11 
6 Transceiver Model 
QSFP-100G-CWDM4 
HPE QSA28 (QSFP28 to SFP28) adapter (845970-B21) is required to convert a 
Network Transceiver Type 
QSFP28 
QSFP28 slot to a single SFP28 or SFP+ slot for 1G, 10G, or 25G specified 
7 
operation with this switch model. 
12 
13 
8 Link Aggregation Port Mode 
Trunk 
Should be a trunk port allowing the Managemnet & Production VLANS 
14 
9 Link Aggregation Protocol Type 
Active LACP 
Port Speed (Gbps) 
400 
The actual capacity of the links will affect the network bandwidth. We do 
15 
10 
recommend at least 100Gb total bandwidth (Maximum throughput 400Gb/s) 
16 
11 Distance from PCAI Rack to Customer Switch (in Meters) 
17 
12 Total Uplinks count (PCAI rack to Customer Network) 
4 
Min of 2, max of 4 
Racks are default configured for bottom fed power. Please indicate Top or 
PDU- Power Feed Position 
Bottom power feed. Power feed needs to be finalized before the order is 
18 
13 
released to the factory. 
19 
Section 2: SCID Details 
20 
MGMTVLAN [Except 110,102,103,99,69] 
101 
The default VLAN is 101. However, if it conflicts with the customer's network, 
the customer should provide an alternative VLAN. 
MGMT Subnet /24 [Except 172.28.2.0/24, 172.16.0.0/18 & 172.17.0.0/16, 
The default IP range will be 172.28.1.0/24. If there is a conflict with the 
21 
172.28.255.0/29] 
172.28.1.0/24 
customer's network, the customer should provide an alternative /24 IP range. 
3 
Customer Facing Network details 
PCAI Internal Network 
Uplink Connection Diagram 
PDU information 
+

INTERNET 
Customer Environment 
Control Nodes 
console greenlake.hpe.com 
console -< geox,data.cloud.hpe.com 
tunne <pros.data.cloud.hpe.com 
<pep>. data cloud hpe.com 
device.cloud.hpe.com 
common.cloud hpe.com 
h30589 www3.hpe.com 
marketplace.usd greenlake-hpe.com 
midway.ext.h 
subscription.ihn.redhat.com 
sascription. ihsm.redhat.com 
cdn.redhat.com 
solutionhub.metadata s3.us-east.1.amazonaws.com 
minas depages.53 us-west-2.amazonaws.com/ 
Customer Infrastructure and users 
github.com/HPEEzmeral 
DNS 
pypiorg/ 
NTP 
3x HPE ProLiant DL 325 
us-docker.pkg.dev 
docs. opsramp.com 
DNS Search Domain 
Worker Nodes 
CALICO 
10.224.0.0/16 
Customer Managed Firewalls 
Customer Network Switches 
Management/Storage/Production 
WEST 
PRODUCTION 
00000000000 
...... 
/LAN: XXX 
4*25 
K8s CLUSTER 
P: 10.X.X.0/24 
LAG 
10.96.0.0/12 
MGMT 
Customer Managed switches 
VLAN: XXX 
IP: 10.X.X.0/24 
2x Nvidia SN4600cM 
EAST 
2x HPE ProLiant DL380a 
Firewalls 
DATA STORAGE 
172.28.2.0/24 
Management 
UPLINK 
GLFS Storage 
PDU 
INTERNAL STORAGE 
172.16.0.0/18 
GLFS DOCKER 
172.17.0.0/16 
2x HPE Aruba 6300M 
2x HPE Aruba 8325 
2x Alletra MP 
Enlogic by 
nVent g3 ...INTERNET 
Customer Environment 
Control Nodes 
console greenlake.hpe.com 
console -< geox,data.cloud.hpe.com 
tunne <pros.data.cloud.hpe.com 
<pep>. data cloud hpe.com 
device.cloud.hpe.com 
common.cloud hpe.com 
h30589 www3.hpe.com 
marketplace.usd greenlake-hpe.com 
midway.ext.h 
subscription.ihn.redhat.com 
sascription. ihsm.redhat.com 
cdn.redhat.com 
solutionhub.metadata s3.us-east.1.amazonaws.com 
minas depages.53 us-west-2.amazonaws.com/ 
Customer Infrastructure and users 
github.com/HPEEzmeral 
DNS 
pypiorg/ 
NTP 
3x HPE ProLiant DL 325 
us-docker.pkg.dev 
docs. opsramp.com 
DNS Search Domain 
Worker Nodes 
CALICO 
10.224.0.0/16 
Customer Managed Firewalls 
Customer Network Switches 
Management/Storage/Production 
WEST 
PRODUCTION 
00000000000 
...... 
/LAN: XXX 
4*25 
K8s CLUSTER 
P: 10.X.X.0/24 
LAG 
10.96.0.0/12 
MGMT 
Customer Managed switches 
VLAN: XXX 
IP: 10.X.X.0/24 
2x Nvidia SN4600cM 
EAST 
2x HPE ProLiant DL380a 
Firewalls 
DATA STORAGE 
172.28.2.0/24 
Management 
UPLINK 
GLFS Storage 
PDU 
INTERNAL STORAGE 
172.16.0.0/18 
GLFS DOCKER 
172.17.0.0/16 
2x HPE Aruba 6300M 
2x HPE Aruba 8325 
2x Alletra MP 
Enlogic by 
nVent g3
