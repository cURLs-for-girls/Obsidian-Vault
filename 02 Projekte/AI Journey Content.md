---
tags: [projekt, ai-journey, presales]
status: aktiv
erstellt: 2026-05-15
---

# AI Journey Content

## Ziel

Die AI Journey neu strukturieren: **drei Stufen**, die logisch zur **AI Factory** führen. T-Shirt Sizes und Bundles als Konzepte überarbeiten oder ablösen.

Zusätzlich: Serverangebote von Dell und HPE regelmäßig aktualisieren als Preisgrundlage.

---

## TO DO: AI Journey neu aufbauen

> [!todo] AI Journey → AI Factory als Endstufe
> Die Journey so bauen, dass jede Stufe die nächste vorbereitet. Die AI Factory ist das Ziel – nicht nur "groß", sondern eine spezifische Architektur. Die bisherigen T-Shirt Sizes und Bundles passen nicht ganz in diese Logik (sie denken in Größe, nicht in Reife und Architektur).

### Warum T-Shirt Sizes nicht zur AI Factory passen

T-Shirt Sizes denken in **Menge**: Wie viel Hardware willst du kaufen?
Die AI Factory braucht aber eine **spezifische Architektur**: bestimmtes Networking (InfiniBand/NVLink), bestimmte Storage-Tier (parallele Dateisysteme), bestimmte Compute-Dichte.
Man kann nicht einfach eine XL T-Shirt-Size "weiterscalen" zur AI Factory – man muss auf sie **hinarchitekten**.

Deshalb: Stufen nach **Reifegrad und Fähigkeit**, nicht nach Größe.

---

## Konzeptvorschlag: 3-Stufen-Journey

### Stufe 1 — AI Starter
**Tagline:** *Erste Use Cases. Kein großes Commitment.*

- **Wer:** Unternehmen, die AI erkunden wollen. BYOL-Kandidaten. Opensource-Einsteiger.
- **Infrastruktur:** Einzelsystem oder kleine Konfiguration (DGX Spark passt hier perfekt als Einstiegsprodukt)
- **Compute:** 1–8 GPUs
- **Storage:** Standard
- **Networking:** Standard Ethernet
- **Software:** BYOL-Option, Opensource-Modelle, einfache Inferenz
- **Kernbotschaft:** Niedrige Einstiegshürde. AI-Wert für den ersten Use Case beweisen.
- **Architektonische Vorbereitung auf Stufe 2:** Modularer Aufbau, der sich erweitern lässt

### Stufe 2 — AI Platform
**Tagline:** *AI läuft produktiv. Mehrere Use Cases. Dedizierte Infrastruktur.*

- **Wer:** Unternehmen mit validiertem Use Case, bereit für operative AI
- **Infrastruktur:** Kleiner GPU-Cluster, dedizierte AI-Infrastruktur
- **Compute:** 8–64 GPUs (mehrere Systeme)
- **Storage:** Dedizierter AI-Storage-Tier (All-Flash NVMe), erste Parallelisierung
- **Networking:** Enhanced Ethernet oder erstes InfiniBand
- **Software:** NVAIE, NIMs, MLOps, Kubernetes/Orchestrierung, Monitoring, Observability
- **Kernbotschaft:** AI als produktiver Unternehmensprozess. Hardware + Software + Services.
- **Architektonische Vorbereitung auf Stufe 3:** Networking-Topologie, Storage-Tier und Cluster-Design already factory-ready

### Stufe 3 — AI Factory
**Tagline:** *AI als Kernprozess. Industrielle Produktion. Eigene Modelle.*

- **Wer:** Unternehmen, für die AI ein strategischer Wettbewerbsvorteil ist
- **Infrastruktur:** Großer GPU-Cluster (100+ GPUs), Data-Center-Grade
- **Compute:** Massive GPU-Dichte, DGX-Cluster oder vergleichbar
- **Storage:** Parallele Dateisysteme (WEKA, VAST, IBM Spectrum Scale)
- **Networking:** InfiniBand / NVLink Switch für GPU-zu-GPU-Kommunikation
- **Software:** Vollständige MLOps-Pipelines, automatisiertes Training + Fine-Tuning + Inferenz, Enterprise Governance
- **Kernbotschaft:** AI produziert kontinuierlich Wert – wie eine Fabrik Güter produziert.
- **Anbieter:** NVIDIA AI Factory Referenzarchitektur, Dell AI Factory, HPE AI

---

## Offene Fragen zur Ausarbeitung

- [ ] Wie nennen wir Stufe 1 und 2 final? (AI Starter / AI Platform ist ein Vorschlag)
- [ ] Was passiert mit dem "AI Framework"-Begriff aus der alten Folie – fällt er weg oder wird er zu Stufe 2?
- [ ] Brauchen wir einen visuellen Übergang zwischen den Stufen (Pfeil-Logik in der Folie)?
- [ ] Welche konkreten Produkte/SKUs landen in welcher Stufe?

---

## Was vom alten Konzept bleibt

| Alt | Neu | Warum |
|-----|-----|-------|
| AI T-Shirt Sizes | Teilweise in Stufe 1 | Flexible Bausteine-Logik bleibt, aber kein Hauptkonzept mehr |
| AI Bundles | Teilweise in Stufe 2 | Hardware + Software aus einer Hand – passt in Platform |
| AI Framework | Fällt weg oder wird Stufe 2/3 | Begriff zu unklar für die neue Logik |

## Recurring Task: Dell & HPE Angebote

> [!warning] Alle paar Wochen aktualisieren
> Neue Serverangebote bei **Dell** und **HPE** anfragen – Preise und Konfigurationen ändern sich regelmäßig.

| Datum       | Dell angefragt | HPE angefragt | Notizen |
|-------------|----------------|---------------|---------|
| 2026-05-15  | ☐              | ☐             | Initial erfasst |

**Kontakte / Ansprechpartner:**
- Dell: (ergänzen)
- HPE: (ergänzen)

## Ressourcen

- [[02 Projekte/DGX Spark Kundentermin 2026-05-15]]
- [[03 Bereiche/Arbeit/Technical/Technical]]

## Nächste Schritte

- [ ] Dell: aktuelle Server-Angebote anfragen
- [ ] HPE: aktuelle Server-Angebote anfragen
- [ ] T-Shirt Sizes auf Basis neuer Angebote aktualisieren
- [ ] AI Bundles Preise aktualisieren
