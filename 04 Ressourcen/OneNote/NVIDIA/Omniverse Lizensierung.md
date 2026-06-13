---
tags: [onenote, aivengers]
---

# Omniverse Lizensierung

Relevante Fragen zur Lizenzwahl 
· Wie viele Nutzer sollen mit Omniverse arbeiten? (Anzahl der User im Team, z.B. Entwickler, Reviewer, 
Admins) 
1 
2 
· Werden die Nutzer gleichzeitig (parallel) arbeiten - wie hoch ist die maximale Anzahl gleichzeitiger 
Nutzer? (Concurrence vs. Named User Lizenz) 
1. 
· Welche Rollen werden benötigt? (z.B. Creator für Erstellung und Simulation, Reviewer für Freigabe 
und Ansicht, Nucleus für zentrale Daten und Kollaboration) 
1 
· Welche Workloads/Features werden genutzt? (Rendering, KI-basierte Simulation, Echtzeit- 
Collaboration, Batch-Prozesse) 
3 
4 
· Welche Anwendungen/Integrationen sind geplant? (Verbindung zu Drittsystemen, spezielle 
Erweiterungen/Microservices) 
· Wie sieht die IT-Struktur aus? (Nutzung ausschließlich über die Cloud, hybride Umgebung, 
Integration in bestehende Systeme) 
· Gibt es spezielle Anforderungen hinsichtlich Sicherheit und Support? (Enterprise-Support, SSO, 
Verschlüsselung) 
4 
· Wird die Lösung für eigene Zwecke oder als Teil einer Multi-Mandanten-Plattform für mehrere 
externe Kunden genutzt? (Wichtig für die Lizenzierung; ggf. Absprache mit NVIDIA nötig) 5. ...Relevante Fragen zur Lizenzwahl 
· Wie viele Nutzer sollen mit Omniverse arbeiten? (Anzahl der User im Team, z.B. Entwickler, Reviewer, 
Admins) 
1 
2 
· Werden die Nutzer gleichzeitig (parallel) arbeiten - wie hoch ist die maximale Anzahl gleichzeitiger 
Nutzer? (Concurrence vs. Named User Lizenz) 
1. 
· Welche Rollen werden benötigt? (z.B. Creator für Erstellung und Simulation, Reviewer für Freigabe 
und Ansicht, Nucleus für zentrale Daten und Kollaboration) 
1 
· Welche Workloads/Features werden genutzt? (Rendering, KI-basierte Simulation, Echtzeit- 
Collaboration, Batch-Prozesse) 
3 
4 
· Welche Anwendungen/Integrationen sind geplant? (Verbindung zu Drittsystemen, spezielle 
Erweiterungen/Microservices) 
· Wie sieht die IT-Struktur aus? (Nutzung ausschließlich über die Cloud, hybride Umgebung, 
Integration in bestehende Systeme) 
· Gibt es spezielle Anforderungen hinsichtlich Sicherheit und Support? (Enterprise-Support, SSO, 
Verschlüsselung) 
4 
· Wird die Lösung für eigene Zwecke oder als Teil einer Multi-Mandanten-Plattform für mehrere 
externe Kunden genutzt? (Wichtig für die Lizenzierung; ggf. Absprache mit NVIDIA nötig) 5.

Inception program?

Ja, wenn ein Kunde eine NVIDIA Omniverse Lizenz über das Cloudportal wie NGC (NVIDIA GPU Cloud) 
nutzen möchte, muss er tatsächlich schauen, welche und wie viele GPUs in den jeweiligen Cloud- 
Instanzen verwendet werden, da die Lizenzierung pro GPU erfolgt 1 2 3 
4 
Der typische Ablauf sieht so aus: 
· Im Cloudportal (z.B. NGC oder auf Azure/AWS/Google Cloud) erkennt man, wie viele GPU- 
Instanzen für das Omniverse-Projekt im Einsatz sind und welche GPU-Typen (A100, V100, T4, RTX 
u.s.w.) genutzt werden 5 
6 
· Für die Lizenzierung der Omniverse Enterprise Software muss jeder dieser eingesetzten GPUs über 
NGC registriert werden - also die entsprechenden GPU-Seriennummern im NGC Portal eintragen, 
um die Lizenz aktivieren und die Berechtigung für die Software-Nutzung erhalten zu können 
4 
· Die Lizenz gilt jeweils für die eingelöste, registrierte GPU und dauert meist ein Jahr pro GPU, 
inklusive Enterprise-Support 1 2. ...Ja, wenn ein Kunde eine NVIDIA Omniverse Lizenz über das Cloudportal wie NGC (NVIDIA GPU Cloud) 
nutzen möchte, muss er tatsächlich schauen, welche und wie viele GPUs in den jeweiligen Cloud- 
Instanzen verwendet werden, da die Lizenzierung pro GPU erfolgt 1 2 3 
4 
Der typische Ablauf sieht so aus: 
· Im Cloudportal (z.B. NGC oder auf Azure/AWS/Google Cloud) erkennt man, wie viele GPU- 
Instanzen für das Omniverse-Projekt im Einsatz sind und welche GPU-Typen (A100, V100, T4, RTX 
u.s.w.) genutzt werden 5 
6 
· Für die Lizenzierung der Omniverse Enterprise Software muss jeder dieser eingesetzten GPUs über 
NGC registriert werden - also die entsprechenden GPU-Seriennummern im NGC Portal eintragen, 
um die Lizenz aktivieren und die Berechtigung für die Software-Nutzung erhalten zu können 
4 
· Die Lizenz gilt jeweils für die eingelöste, registrierte GPU und dauert meist ein Jahr pro GPU, 
inklusive Enterprise-Support 1 2.

Multi tenant?

Ja, es ist sinnvoll und sogar wichtig, den Kunden zu Multi-Tenancy zu befragen, insbesondere wenn er 
plant, die Omniverse-Plattform mehreren externen Parteien oder Mandanten bereitzustellen 1 2. Die 
Standard-Omniverse-Lizenz erlaubt in der Regel die Nutzung durch ein Unternehmen bzw. einen 
Mandanten, aber Multi-Tenancy - also die Bereitstellung für verschiedene, unabhängige 
Organisationen/Kunden - ist meist lizenzrechtlich beschränkt oder benötigt eine Sondervereinbarung 
mit NVIDIA 1 
2. 
Die Klärung dieser Frage hilft, unerwartete lizenzrechtliche Probleme, Kosten oder Compliance-Risiken 
für den Kunden auszuschließen und die passende Lizenzgröße und Vertragsart zu definieren 1 2. 
Multi-Tenancy ist ein zentrales Thema bei SaaS-Services, Cloud-Plattformen und bei hybrider Nutzung 
über mehrere Organisationen hinweg. ...Ja, es ist sinnvoll und sogar wichtig, den Kunden zu Multi-Tenancy zu befragen, insbesondere wenn er 
plant, die Omniverse-Plattform mehreren externen Parteien oder Mandanten bereitzustellen 1 2. Die 
Standard-Omniverse-Lizenz erlaubt in der Regel die Nutzung durch ein Unternehmen bzw. einen 
Mandanten, aber Multi-Tenancy - also die Bereitstellung für verschiedene, unabhängige 
Organisationen/Kunden - ist meist lizenzrechtlich beschränkt oder benötigt eine Sondervereinbarung 
mit NVIDIA 1 
2. 
Die Klärung dieser Frage hilft, unerwartete lizenzrechtliche Probleme, Kosten oder Compliance-Risiken 
für den Kunden auszuschließen und die passende Lizenzgröße und Vertragsart zu definieren 1 2. 
Multi-Tenancy ist ein zentrales Thema bei SaaS-Services, Cloud-Plattformen und bei hybrider Nutzung 
über mehrere Organisationen hinweg.

https://resources.nvidia.com/en-us-omniverse-enterprise/nvidia-omniverse-ent
