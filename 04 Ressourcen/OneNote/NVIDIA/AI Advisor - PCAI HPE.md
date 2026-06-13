---
tags: [onenote, aivengers]
---

# AI Advisor - PCAI HPE

Dirk Derichsweiler

Gen 2 - PCAI - haben jetzt auch einzelne Nodes drin anstatt ganzes Rack

How did you do the sizing for this? Did yu have use cases as blueprint

Slide 4 : Runs in 4 days - is this marketing or is this a real benchmark? do you always stick to that plan?

Did you change logic? - is this gen 2? Because now S is only one node - Yes, this is Gen 2

Mix AMD / Intel - why?

Medium = was Small war, still no re-racking

Orchestration Platform is VM Essentials and Morpheus included

Spectrum X Switch integration is automaticlly done

Greenlake storage - entweder selbst gemanaged oder durch hpe gemanaged - 50/50 - capex - opex

Demo

AI Essentials

Open Source Tools - good but missing Auditlog

Tools & Frameworks - von Nvidia geoffert - gibt’s auch auf Huggung Face

Airflow für Konvertieung

EzPresto -  leistungsstarke SQL-Abfrage-Engine

Spark Operator -

Kubeflow - Juipyter Notebook usw.

MLFlow how model is working

HPE MLIS - Machine Learning Inference Software - pendant zu triton inference server

MLIS ermöglicht die einfache Integration und Bereitstellung von Modellen aus Quellen wie Hugging Face, NVIDIA NGC und HPE AI Essentials.

Gelb markiert heißt nicht included

--------------------------------------------------------------------------------------------------------------

Co-Engineering HPE & NVIDIA

HPE PCAI ist eine vollständig vorintegrierte Lösung, gemeinsam mit NVIDIA entwickelt. Ziel ist eine Cloud-ähnliche AI-Experience im eigenen Rechenzentrum. Es handelt sich nicht nur um Server mit GPUs, sondern um ein abgestimmtes Gesamtsystem inklusive Software-Stack (z. B. AI Essentials, ML Ops) für produktive AI-Arbeitslasten.

Architekturübersicht & Skalierung

DevKit: 2x H100 GPUs, 32 TB Storage – nicht für Produktion geeignet

Small: produktionsfähig, 2–4 GPUs, integrierter NVMe-Speicher

Medium: 2 Server je 4 GPUs (erweiterbar auf 24 GPUs), 9 TB AI-optimierter Storage, NVIDIA Spectrum Networking (100 Gbit)

Large: Start bei 16 GPUs, erweiterbar auf >64 GPUs, Verbrauch bis zu 12 kW pro Rack

Es werden drei Größen (Kits) vorgestellt:

Alle Varianten sind rackoptimiert (inkl. Netzwerktechnik, Switches, Stromversorgung). Speicherlösungen sind direkt auf AI-Workloads zugeschnitten (NVIDIA GPUDirect, NVMe-basiert).

NVIDIA Spectrum Switches für AI-Datenverkehr

Aruba Switches für Management

GPU-optimiertes Netzwerkdesign (100G, redundant, konfigurierbar)

Einbindung in Kundennetzwerk über Standard-Uplinks (z. B. Spine-Leaf oder Top-of-Rack möglich)

Remote- und Onsite-Integration über HPE-Konsolen und Tools

Netzwerk- und Infrastrukturkomponenten

Software & AI Essentials

AI Essentials: Tools für Datenaufbereitung, ML Pipeline Management (Airflow, DVC, Superset, MLflow, Kubeflow)

Monitoring & Management: Verbrauch, Zustand, Logging

GreenLake Integration: Wahlweise PAYG oder vollständig gemanagt

Security & Governance: Zero Trust, SSO, Helm-basierte Deployments

Die Lösung enthält ein vollständiges Softwarepaket:

Besonderheit: Komponenten wie Spark, Superset und MLflow sind out-of-the-box vorintegriert, inklusive GPU-Skalierungslogik.

ML Inference & Deployment

automatische Skalierung (GPU On/Off)

Integration mit NGC, S3, Registry

API-gesteuertes Deployment mit Helm und YAML

Ziel: Reduktion von GPU-Leerlauf, automatisches Hoch-/Runterskalieren

Mit MLIS (ML Inference Service) wird modellbasiertes Inferencing ermöglicht:

HPE bietet eine 3-monatige kostenfreie Handholding-Phase für Kundenprojekte

Unterstützung bei Use Case Definition, Deployment, Training

Bereitstellung eines dedizierten AI-Experten (z. B. Jan Schwöbel), Fokus auf schnellen Go-Live

Kundenunterstützung & Services

Fazit

Standardisierte Racks (Dev–Large)

AI-optimiertes Storage & Netzwerk

Vorinstallierte Software-Stacks

Automatisierte Installation & Management

Support durch HPE AI-Architekten

HPE PCAI ist eine durchgängig integrierte AI-Plattform für das Rechenzentrum, mit Fokus auf:
