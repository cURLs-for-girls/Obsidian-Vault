---
tags: [onenote, aivengers]
---

# NemoClaw

NemoClaw = übergeordneter Stack, der alles zusammenhält

OpenClaw = der KI-Agent selbst (Persönlichkeit, Verhalten, Fähigkeiten)

NVIDIA OpenShell = Laufzeitumgebung, die den Agenten in einer sicheren Sandbox isoliert

Die Guardrails kommen von NemoClaw. Das ist der sogenannte "Agent Harness", der OpenClaw mit policy-basierten Guardrails umschließt. OpenShell setzt diese Guardrails dann technisch außerhalb des Agenten-Prozesses durch. Und genau das ist das entscheidende Security Feature.

Der entscheidende Gedanke dahinter ist: Die Guardrails sitzen außerhalb des Agenten, nicht darin. OpenClaw selbst „weiß” also gar nicht, dass er eingeschränkt wird. Die Kontrolle passiert eine Ebene tiefer, durch NemoClaw und OpenShell. Das macht den Ansatz besonders sicher, denn ein manipulierter oder kompromittierter Agent kann seine eigenen Grenzen nicht einfach abschalten.

Ein einfaches Bild: OpenClaw ist der Hund, NemoClaw das Geschirr, und OpenShell der eingezäunte Garten – es gibt trotzdem nur einen Hund.

-------------------------------------------------------------

Ebene 
Komponente 
Aufgabe 
Was der Agent tut 
OpenClaw 
Denken, antworten, Aktionen 
ausführen 
Was der Agent darf 
NemoClaw Guardrails 
Richtlinien & Verhaltensregeln 
durchsetzen 
Wo der Agent läuft 
OpenShell Sandbox 
Technische Isolation vom 
restlichen System ...Ebene 
Komponente 
Aufgabe 
Was der Agent tut 
OpenClaw 
Denken, antworten, Aktionen 
ausführen 
Was der Agent darf 
NemoClaw Guardrails 
Richtlinien & Verhaltensregeln 
durchsetzen 
Wo der Agent läuft 
OpenShell Sandbox 
Technische Isolation vom 
restlichen System

Wie funktioniert das technisch?

Die Kernidee nennt sich Out-of-Process Policy Enforcement – die Guardrails laufen in einem separaten Prozess außerhalb des Agenten . Das funktioniert so:

1. Sandbox-IsolationOpenShell startet OpenClaw in einem isolierten Container. Der Agent läuft dort drin – kann aber nicht selbst bestimmen, was er darf .

2. Policy EngineJede Aktion des Agenten – Dateizugriff, Netzwerkanfrage, Prozessstart – wird bevor sie ausgeführt wird vom OpenShell Policy Engine geprüft. Der Agent selbst ist dabei außen vor .

3. Inference ProxyAlle Modellanfragen verlassen die Sandbox nicht direkt. OpenShell fängt sie ab und leitet sie erst weiter, wenn die Policy das erlaubt .

Warum ist das so wichtig?

„Guardrails living inside the same process they’re supposed to be guarding” – das ist der kritische Fehler bei klassischen Ansätzen.

Das trifft den entscheidenden Punkt :

Ein Agent, der seine eigenen Guardrails mitbringt, könnte sie theoretisch selbst umgehen – zum Beispiel durch Prompt Injection oder selbst installierten Code. Bei NemoClaw/OpenShell ist das strukturell unmöglich, weil die Kontrolle vollständig außerhalb des Agenten-Prozesses liegt – ähnlich wie Browser-Tabs voneinander isoliert sind .
