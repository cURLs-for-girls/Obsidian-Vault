---
tags: [onenote, aivengers]
---

# NVAIE

Schiene = Update-Kanal für NVIDIA-Images/Treiber/Operatoren. Du wählst sie pro Umgebung (Dev/Test/Prod).

Feature: schnellster Kanal, neueste Features, häufige Änderungen → für Dev/PoC.

Production: stabiler Kanal mit planbaren Updates/Patches → Standard für Prod.

LTS: minimaler Änderungsdruck, lange Laufzeit → regulierte/langfristige Prod.

Kurz-Cheat-Sheet „Branches/Schienen“:

Schiene wählen je Umgebung.

Images pinnen (Tag/Digest) innerhalb dieser Schiene.

Patchen = neuen Digest (gepatchtes Image) bewusst ausrollen – ideal via GitOps/PR.

So nutzt du’s:

Stellt die kuratierten Schienen inkl. Security-Fixes, kompatiblen Builds und SLA-Support bereit.

Open-Source-Operatoren reichen für „läuft“, NVAIE liefert „läuft stabil & supportet“.

NVIDIA AI Enterprise Product Lifecycle 
Flexibility with Security for different use cases 
Application Software: Frameworks, Libraries, SDKs, NIM Microservices 
Long-Term Support Branch 
Feature Branch 
Production Branch 
For highly regulated industries 
Latest top of tree features 
API Stability 
20€ 
Includes all supported software 
Includes foundational tools and frameworks 
1 branch / month with 1-month lifetime 
2 branches / year with 9-month lifetime 
Includes 
CVE patches & bug fixes in roll forward 
3-month overlap between 2 PBs 
· Foundational tools and frameworks 
release 
Monthly CVE patches & bug fixes 
· Drivers and Kubernetes Operators 
Infrastructure Software 
1 branch / 3 years with 3-year lifetime 
6-month overlap between 2 LTSBs 
Drivers, Kubernetes Operators, Cluster Management 
Quarterly CVE patches & bug fixes 
Two releases / year 
Quarterly updates ...NVIDIA AI Enterprise Product Lifecycle 
Flexibility with Security for different use cases 
Application Software: Frameworks, Libraries, SDKs, NIM Microservices 
Long-Term Support Branch 
Feature Branch 
Production Branch 
For highly regulated industries 
Latest top of tree features 
API Stability 
20€ 
Includes all supported software 
Includes foundational tools and frameworks 
1 branch / month with 1-month lifetime 
2 branches / year with 9-month lifetime 
Includes 
CVE patches & bug fixes in roll forward 
3-month overlap between 2 PBs 
· Foundational tools and frameworks 
release 
Monthly CVE patches & bug fixes 
· Drivers and Kubernetes Operators 
Infrastructure Software 
1 branch / 3 years with 3-year lifetime 
6-month overlap between 2 LTSBs 
Drivers, Kubernetes Operators, Cluster Management 
Quarterly CVE patches & bug fixes 
Two releases / year 
Quarterly updates

Enterprise software provides API stability with security 
Example of vulnerability accumulation over time 
Tag 
Architecture 
Tag 
Architecture 
> 
24.03-py3 
v 
arm64 
24.03.09-py3 
amd64 
> 
> 
~9 months 
~9 months 
Scan Details 
after release 
Scan Details 
after release 
Scan Result 
Policy Bundle 
Scan Status 
Last Scanned 
Scan Result 
Policy Bundle 
Scan Status 
Last Scanned 
C 
NGC Policy 
Scan Complete 
12/31/2024 4:23 
AAA 
NGC Policy 
Scan Complete 
12/19/2024 6:57 
Bundle 
PM 
Bundle 
PM 
Image Digest 
Image Digest 
sha256:4716df4bcbbf0e4b4cbeebcf00d2dd110f6c5cd0c0a78c38db3d36f73772aedc 
sha256:1dOccab81c669955e9079f3bff770fb50231feb6f270ca660f99ecc6aac2e41d 
Vulnerabilities 
Scanned By anchore 
Vulnerabilities 
Scanned By anchore 
All 
Critical 
High 
Medium 
Low 
All 
Critical 
High 
Medium 
Low 
229 
1 
19 
209 
0 
72 
0 
0 
72 
0 
Open-Source Version of PyTorch 24.03 
Production Branch version of PyTorch 24.03 
1 Critical and 19 High vulnerabilities identified after 9 months 
Patched monthly 
>nVID ...Enterprise software provides API stability with security 
Example of vulnerability accumulation over time 
Tag 
Architecture 
Tag 
Architecture 
> 
24.03-py3 
v 
arm64 
24.03.09-py3 
amd64 
> 
> 
~9 months 
~9 months 
Scan Details 
after release 
Scan Details 
after release 
Scan Result 
Policy Bundle 
Scan Status 
Last Scanned 
Scan Result 
Policy Bundle 
Scan Status 
Last Scanned 
C 
NGC Policy 
Scan Complete 
12/31/2024 4:23 
AAA 
NGC Policy 
Scan Complete 
12/19/2024 6:57 
Bundle 
PM 
Bundle 
PM 
Image Digest 
Image Digest 
sha256:4716df4bcbbf0e4b4cbeebcf00d2dd110f6c5cd0c0a78c38db3d36f73772aedc 
sha256:1dOccab81c669955e9079f3bff770fb50231feb6f270ca660f99ecc6aac2e41d 
Vulnerabilities 
Scanned By anchore 
Vulnerabilities 
Scanned By anchore 
All 
Critical 
High 
Medium 
Low 
All 
Critical 
High 
Medium 
Low 
229 
1 
19 
209 
0 
72 
0 
0 
72 
0 
Open-Source Version of PyTorch 24.03 
Production Branch version of PyTorch 24.03 
1 Critical and 19 High vulnerabilities identified after 9 months 
Patched monthly 
>nVID

Warum NVAIE?
