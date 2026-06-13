---
tags: [onenote, aivengers]
---

# CC & CSO Präsenzmeeting

Awards: FAZ Innovative Leaders. Platz 2, Beitrag Daniel Handelsblatt 27.5., AI as a Service Provider von Vogel IT-Medien GmbH 2. platz, Dell Excellence in AI Award, Pure Storage Innovation Award für Würzburg, Microsoft Visionary Award für KIRA

CDC Solu Design Leiter sammeln ihre Mitarbeiter für einen insgesamten CDC-Verteiler --> wäre eine Info für Nadine & Daniel

Skillmatrix Daniel erstmal on hold - Daniel checkt bestehende Datenbank

Welcome Days zu wenig Comp. Center lastig

Salesforce Pipeline pro Comp. Center Thema - ongoing

-----------------------------------------------

Cancom Managed Services (CMS)

Vorstellung Cloud Portal durch Christian Teichert von MaSE inkl. Demo

Ziel: Nutzung unserer Cloud Services durch Kunden oder CDC-MA

Zugang kriegt man von MaSe

Zielkunde: klassisches Outsourcing Mittelstand

------------------------------------------------------

Net App

Ontap - SW-defined Storage - datenmgmt software // A-Serie für höchste Latenz // C-Serie für etwas weniger Latenz  aber auch günstiger // dediziertes Portfolio für Blockkunden // NAS-Bereich 62% - SAN-Bereich ist noch optimierbar

Blue XP - datenmgmt plattform

Pqc - post quantum cryptography (Quantencomputing) - mechanismen wie RSA können geknackt werden!

EU AI Act - Wokrloads klassifizieren in eine von 4 stufen der kritikalität - muss die daten mit denen er modelle trainiert hat archivieren -> ansatz für netapp

AI Pod Mini

Offenes modell für AI workloads - branches - bis 10 concucrrent users - pred. Maintenance als use case

Ingo nach weiteren infos fragen - wie sieht die infrastruktur aus? Wie claime ich das thema bei intel?

KI-projekt startet in cloud - mit ontap switch zu onprem einfach

Nda session netapp - zertifizierung

--------------------------------------------------------------------------------------------------

AI Security Experten : Nis, Thomas Bernady, Neo, Trainee Björn, Trainee Stuttgart

CANCOM CMS:

Cancom Managed Services (CMS) bietet IT-Outsourcing, Managed Services und Cloud-Infrastruktur (Datacenter, Netzwerk, Compute, Storage).

Problem: Langsame Umsetzung von Kundenprojekten, da viele manuelle Tickets nötig waren (z. B. 17 Einzeltickets für eine VM).

🔧 Ausgangssituation

🧩 Lösung: Cancom Cloud Portal

Zentrale Self-Service-Plattform zur Automatisierung von Infrastrukturservices:

Zugangspunkt für Kunden (Onboarding, Buchung von Subscriptions – z. B. Azure, Dynamic Cloud).

Aktuell noch mit Assisted Sales, aber perspektivisch mehr Automatisierung.

Cancom Cloud Marketplace

Verwaltung und Buchung von Ressourcen (VMs, Container, DNS, Zertifikate etc.).

API-first/only-Design – auch über Terraform nutzbar.

Self-Service: z. B. Cluster anlegen, Buckets erstellen, VPN-Zugänge generieren.

Cloud Portal (GUI/API-basiert)

Bereitgestellte Dienste (Container, Object Storage, Datenbanken etc.).

Integration mit Identity Access Management, Event Bridge, Monitoring.

Serviceschicht

Bestandteile:

Anlage eines Kubernetes-Clusters in der Dynamic Cloud (OpenStack-basiert).

Zugriff auf Rancher-UI über SSO (Keycloak).

Erzeugung eines S3-Buckets mit verschiedenen Storage-Klassen (Single/Multi-Datacenter).

Preisübersicht über Metering Engine inkl. Verbrauch, Forecast und Einzelpreise.

🖥 Live-Demo-Highlights

Compute: VMware & OpenStack

Storage: NetApp (inkl. StorageGRID für S3)

Container: Kubernetes + Rancher

API: Vollständig dokumentiert und über Terraform Registry verfügbar

IAM: Tenant-spezifische Rechtevergabe, SSO

Monitoring/Audit: Volle Nachvollziehbarkeit von Änderungen (Audit Logs)

📦 Technische Basis

Automatisierte Reports (SLA, Backup, Intune, Datenbanken etc.)

Immutable Buckets: Schutz gegen Löschen (inkl. WORM/Retention-Funktionen)

Backup-as-a-Service: NetApp-Integration, Deduplizierung, Airgap-Fähigkeit

📁 Zusatzfunktionen

Full Outsourcing oder Co-Management

Deutscher Infrastruktur (souveräne Cloud)

Integrierten Services (S3 + AI + Container etc.)

Unternehmen mit Wunsch nach:

Nicht geeignet für reine Preiskämpfer (z. B. reiner AWS-S3-Ersatz)

🎯 Zielgruppen & Use Cases

Stack: OpenShift AI + NVIDIA Enterprise + performantem S3

Ziel: Komplettbetriebener AI-Stack aus Deutschland via Cloud Portal

Integration von AI-as-a-Service:

Ausbau der Self-Service- und Automatisierungskomponenten

🚀 Zukunftspläne

Austausch mit NetApp geplant (tief integrierte Storage-Nutzung)

Sales Enablement durch Roadshows, Portale (Seismic), neue Schulungsunterlagen

📢 Sonstiges

-------------------------------------------------------------------------------------------------------

Netapp

NetApp versteht sich als "Intelligent Data Company", nicht nur als Storage-Anbieter.

Der Fokus liegt auf Datenmanagement, Security, Effizienz und Multicloud-Fähigkeit.

Zentrales Betriebssystem ist weiterhin ONTAP, das kontinuierlich weiterentwickelt wird.

🧠 Überblick & Strategie

💾 Produkte & Technologie

ONTAP als Software-Defined Storage, Appliance oder Hyperscaler-native Lösung (Azure, AWS etc.).

Multiprotokoll-Unterstützung (NFS, SMB, Block, Object)

Snapshots, Cloning, AirGap-Kopien

Anti-Ransomware Protection (ML-basiert, kostenlos aktivierbar)

Post-Quantum-Kryptographie (PQC, NetApp als Vorreiter)

Features:

ONTAP & Storage-Angebote

AFF-Serie: High-End All-Flash Systeme

C-Serie: Kostenoptimiertes All-Flash-Portfolio für Midrange

ASA-Serie: Block-only Systeme für klassische SAN-Kunden (Active/Active, hohe Verfügbarkeit)

Hardware-Portfolios

DORA: „Data Extraction Strategy“ – ONTAP ermöglicht Cloud-Exit

NIS2: Data Classification, Reporting, Recovery – unterstützt durch BlueXP

AI Act: Trainingsdaten müssen archiviert werden → S3/ONTAP mit Archivfunktionalität

Beispiele:

Regulatorische Treiber: DORA, NIS2, AI Act

Anti-Ransomware, Immutable Snapshots, Audit-Log

Wiederherstellungsservice (80h PS bei erfolgter Ransomware trotz Schutz)

„Hardening“- und Inspection-Services (Potenzial für Partnerleistungen)

Security-Funktionalitäten:

🔐 Security & Compliance

Zentrale Datenmanagementplattform für OnPrem, Cloud, Hybrid

Rollenmodell, Mandantenfähigkeit

Klassifikation, DSGVO-Auskunft, Access Rights Audit

Automatisierte DR-Tests (VMware), Reporting

Workload Factory (z. B. für AI in Azure), API-basiert

Funktionen:

☁️ Plattform & Management: BlueXP

FlexPod for AI, SuperPod, AI Portal Mini (Xeon-basierte KI-Infrastruktur)

Zusammenarbeit mit NVIDIA & Intel:

Ziel: Training in Cloud, Inferenz OnPrem – unterstützt durch Snapshots, Cloning etc.

Neue Marktchancen durch AI Act → Datenarchivierungspflicht

⚙️ AI & Use Cases

Marktführer im NAS (62 % Weltmarktanteil)

Starke Position im All-Flash-Markt in Deutschland (33 %)

Neue Ansprachemodelle, Incentives, Teamstruktur mit dedizierten Ansprechpartnern (z. B. Alex Stein für Süddeutschland)

Ausbau im Midmarket (CMS-Segment):

📊 Marktposition & Go-to-Market

Rückvergütungen (bis 40 %) z. B. bei HP/Dell-Ablöse

Deal-Registrierung wichtig (über Distribution oder NetApp direkt)

NDA-Workshops, Schulungen, Zertifizierungsoffensiven

Lifecycle Services (24/7, höchste Zertifizierungsstufe seit 2009)

💰 Partnerprogramme & Incentives

Data Center Modernisierung inkl. Incentives

Security-Readiness Audits (DORA/NIS2)

Hybrid-Cloud-Projekte mit VMware

AI-Projekte inkl. Datenarchivierung (AI Act)

Onboarding einfacher durch NetApp GUI & zentralisierte BlueXP-Sicht

Nutzung bestehender CANCOM-Angebote wie Cloud Infrastructure Service zur Workload-Analyse

🔧 Konkrete Hebel für CANCOM
