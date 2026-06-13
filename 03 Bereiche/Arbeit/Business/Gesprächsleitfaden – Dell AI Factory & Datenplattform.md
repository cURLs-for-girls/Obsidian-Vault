---
tags:
  - dell
  - ai-factory
  - datenplattform
  - nexaris
  - gesprächsleitfaden
  - intern
erstellt: 2026-06-12
---

# Gesprächsleitfaden — Internes BU-Gespräch: Datenplattform

> **Ziel:** In zwei Steps klären, wo wir uns überschneiden — und welche Lösung für welchen Kunden passt.
> **Kollege:** AI-BU (Cloud-fokussiert, Datenplattformen für KI-Workloads)
> **Ich:** Infrastruktur-BU (On-Prem/Hybrid — GPU-Cluster, Storage, Kubernetes, Networking)

---

## Das Bild dahinter: Wir bauen dieselbe Sache, von verschiedenen Stockwerken

```
┌─────────────────────────────────────────────────┐
│        KI-Anwendungen & Agenten (Use Cases)     │
├─────────────────────────────────────────────────┤
│  Datenplattform        ← Kollege (AI-BU)        │  Dell AI Data Platform
│  (Datenschicht, RAG,   ← auch ich               │  oder Nexaris
│   Vektoren, Governance)                         │
├─────────────────────────────────────────────────┤
│  Infrastruktur         ← Ich (Infra-BU)         │  GPU-Cluster, Storage,
│  (On-Prem/Hybrid)                               │  Kubernetes, Networking
└─────────────────────────────────────────────────┘
```

Die Datenplattform läuft auf meiner Infra — das ist die Verbindung.

---

## Step 1 — Was macht wer? Schnittpunkte finden

### Mein Part: Was ich einbringe (5 Min)

> *„Wir stellen das Fundament bereit, auf dem KI-Workloads laufen: GPU-Cluster (NVIDIA, on-prem), Storage — z. B. Dell PowerScale für unstrukturierte Daten in großem Maßstab —, Kubernetes-Umgebungen für Container-Workloads und latenzarmes Networking. Kurz: die Schienen, auf denen eure Datenplattform fährt."*

> *„Was mich interessiert: Eure Workloads — Training, Inferenz, RAG — haben massive Anforderungen an Durchsatz und Datenbewegung. Meine Infra-Entscheidungen beeinflussen direkt eure Performance. Ich will verstehen, wo ihr gerade steht."*

> *„Und noch etwas, das vielleicht interessant ist: Wir haben in München ein Demolab mit echter Infrastruktur — GPU-Cluster, Storage, Kubernetes — wo wir Szenarien aufsetzen und live testen können. Du bist herzlich eingeladen, das zu nutzen. Falls es einen Use Case gibt, den ihr konkret ausprobieren wollt, können wir das dort durchspielen — ohne dass ihr dafür eigene Ressourcen bereitstellen müsst."*

### Fragen, die ich stellen kann (während er redet)

- *„Läuft das bei euch eher Cloud-nativ oder ist On-Prem schon ein Thema?"*
- *„Welche Use Cases stehen gerade im Vordergrund — RAG, Training, Inference, alles?"*
- *„Was ist der größte Pain Point — Datenzugriff, Latenz, Governance, Cost?"*
- *„Habt ihr schon Kunden, wo Compliance oder Datensouveränität ein Thema ist?"*

### Typische Schnittpunkte — je nach Antwort

| Thema | Sein Part | Mein Part |
|---|---|---|
| **RAG on-prem** | Vektor-DB, Embedding-Pipelines, RAG-Stack | Storage-Throughput (PowerScale), GPU für Inference |
| **Data Governance / Compliance** | Datenkatalog, Lineage, Zugriffsregeln | On-prem = Daten bleiben im Haus, Sovereign Cloud |
| **Hybrid Data Mobility** | Daten zwischen Cloud und On-prem bewegen | Netzwerk-Bandbreite, Latenz, APEX |
| **Cost Control** | Cloud-Kosten steigen bei hoher Auslastung | On-prem GPU-Cluster günstiger bei konstanter Last |
| **Training-Infrastruktur** | ML-Pipelines, Datasets, Datenaufbereitung | GPU-Cluster, schnelles Storage für Trainingsdaten |

---

## Step 2 — Lösungsbewertung: Dell AI Data Platform vs. Nexaris

### Auf einen Blick

| | **Dell AI Data Platform** | **Nexaris** |
|---|---|---|
| **Positionierung** | Enterprise-Standard, eng mit Dell-Hardware verzahnt | Open Platform, newcomer, modular |
| **Kernprodukte** | Storage Engines (PowerScale/ObjectScale) + Data Engines + Orchestration Engine (Dataloop) | iiDrak (Datenverwaltung) + Wa-sul AI Studio (RAG, VectorDB) + Guardiuum (Governance) |
| **RAG-Fähigkeit** | Ja — über NVIDIA-beschleunigte Data Engines | Ja — Wa-sul AI Studio hat built-in VectorDB for RAG |
| **Governance** | Vorhanden, über Orchestration Engine | Stark — Guardiuum als eigenständiges Modul (PII, GDPR, Audit) |
| **Deployment** | On-prem & Hybrid (Cloud-fähig) | On-prem oder Cloud |
| **Hardware-Bindung** | Stark — läuft am besten auf Dell-Infra (PowerScale, NVIDIA) | Herstellerneutral / open |
| **Preismodell** | Enterprise Pricing (kein öffentlicher Listenpreis) | Kein öffentlicher Preis — Demo-Anfrage, aber als „günstig" positioniert |
| **Reife / Track Record** | >4.000 Enterprise-Kunden, 2 Jahre AI Factory | Newcomer — wenig öffentliche Referenzen |
| **Support** | Dell Enterprise Support | Unklar / noch aufbauend |

---

### Wann Dell AI Data Platform? Wann Nexaris?

**Dell passt besser wenn:**
- Kunde ist bereits in der Dell-Infrastruktur (PowerEdge, PowerScale)
- High-Performance-Anforderungen (NVIDIA GPU-Integration, 3× SQL-Speed, 12× Vektorindizierung)
- Kein Vendor-Lock-in-Bedenken, Wert auf Enterprise-Support
- Skalierung ist das Thema (Pilot → Produktion)

**Nexaris passt besser wenn:**
- Kunde will keine Hardware-Bindung / möchte vendor-neutral bleiben
- Governance und Compliance stehen im Vordergrund (Guardiuum ist stark)
- Budget ist eng, man will erst mal starten ohne großes Commitment
- Cloud-first oder Hybrid, kein On-prem-Fokus

---

### Mögliche Gesprächspositionierung zu Step 2

> *„Was wir gerade evaluieren: Auf der einen Seite die Dell AI Data Platform — eng verzahnt mit unserer Infra, NVIDIA-beschleunigt, bewährt bei über 4.000 Kunden. Auf der anderen Seite Nexaris — ein Newcomer, modular, herstellerneutral, mit starkem Governance-Modul. Die Frage ist: Wer ist der richtige Kunde für welche Lösung — und gibt es Kunden, die wir gemeinsam adressieren können?"*

---

## Mögliche Next Steps nach dem Call

- **PoC-Scope** für einen konkreten gemeinsamen Kunden definieren
- **Lösungsvergleich** mit realem Kundenfall durchspielen (wer hat RAG + Compliance-Bedarf?)
- **Stakeholder erweitern** — wen braucht ihr/wir noch im Raum?
- **Demo** — Dell AI Data Platform oder Nexaris konkret zeigen (Demolab München?)

---

## Quellen

- [nexaris.ai — Solutions](https://nexaris.ai/solutions.php)
- [Dell AI Data Platform — März 2026](https://www.dell.com/en-us/dt/corporate/newsroom/announcements/detailpage.press-releases~usa~2026~03~dell-ai-data-platform-with-nvidia-supercharges-enterprise-ai-with-breakthrough-data-orchestration-and-storage-innovations.htm)
- [Dell AI Factory with NVIDIA — GTC 2026](https://www.dell.com/en-us/dt/corporate/newsroom/announcements/detailpage.press-releases~usa~2026~03~dell-ai-factory-with-nvidia-delivers-proven-path-to-enterprise-ai-roi.htm)
- [Dell Blog: "AI at Scale Starts with Your Data"](https://www.dell.com/en-us/blog/ai-at-scale-starts-with-your-data-introducing-the-supercharged-dell-ai-data-platform-with-nvidia/)
