---
tags: [onenote, aivengers]
---

# D-Fine Omniverse

Welchen Use Case?

Cloud oder on-prem?

Welche GPU? (vermutlich die L40s)

Wie viele GPU’s werden dazu eingesetzt?

Definitiv die Frage der GPU klären:

Omniverse wird übrigens genau wie AI-Enterprise pro GPU lizensiert. Ich kann über den Kundennamen auch die Entitlements einsehen, wenn Ihr diesen nennt.

Welches Community Model soll genutzt werden oder handelt es sich um eine eigene Entwicklung?

Wie groß ist dieses Model?

Wie groß will er darin skalieren? Anzahl der User.

Worin Ich eine Anpassung sehe, ist sein zukünftiges LLM:

Dies hilft uns entscheidend beim Sizing auf eine H200 NVL (AI Enterprise Subscription ist inkl.) oder je nach Karte, NVAIE aufzustocken.

--------------------------------------------------------------------------------------------------------------------

Im Grundsatz sind es 3 Workflows, die berücksichtigt werden können:

Agent – LLM RAG (NVIDIA AI Enterprise)

Renderer – 3D Rendering, 2D LivePortrait & 3D Unreal Engine (Omniverse)

Scale – Anzahl der Stream per Node (NVIDIA L40s GPU)

Am Beispiel unseres Digital Human Blueprint, nutzen wir alle der o.g. Workflows mit diversen NIM’s aus der AI Enterprise, sowie Omniverse Plattform zum rendern der Avatare: https://build.nvidia.com/nvidia/digital-humans-for-customer-service/blueprintcard

Wenn er nicht rendern möchte, reicht Avatar Cloud Engine – ACE und somit die NV AI Enterprise Lizenz, welche pro GPU lizensiert wird.
