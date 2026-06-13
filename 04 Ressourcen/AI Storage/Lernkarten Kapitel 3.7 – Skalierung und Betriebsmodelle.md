---
tags:
  - lernkarten
  - ai-storage
  - storage-architektur
  - skalierung
  - betriebsmodelle
status: aktiv
erstellt: 2026-06-04
hersteller:
  - Dell
  - NetApp
  - Pure Storage
  - WEKA
  - IBM
---

# Lernkarten – Kapitel 3.7: Skalierung und Betriebsmodelle

---

## 🔵 Warum Skalierung von Anfang an mitdenken?

Warum muss die Storage-Architektur in KI-Umgebungen Wachstum von Anfang an mitdenken?
?
- KI-Infrastrukturen **wachsen** kontinuierlich:
  - Modelle werden größer
  - Wissensbasen werden umfangreicher
  - Nutzeranfragen werden häufiger
- **Ziel der Architektur:** Wachstum abfangen, ohne dass jede Erweiterung ein **Architektur-Redesign** erfordert
- **Konsequenz:** Skalierung ist keine Spätfrage, sondern eine frühe Designentscheidung

---

## 📈 Scale-up vs. Scale-out ⚠️ *wiederholen*

Was unterscheidet Scale-up von Scale-out, und welcher Ansatz wird im AI-Kontext bevorzugt – warum?
?
- **Scale-up:**
  - Bestehendes System durch **mehr Laufwerke, mehr RAM oder einen leistungsfähigeren Controller** erweitern
  - Einfach, aber **begrenzt** – jedes System hat eine physische Obergrenze
  - **Kein linearer Performance-Zuwachs**: Controller-Engpässe bleiben bestehen
- **Scale-out:**
  - **Zusätzliche Nodes** (Knoten) werden zum Cluster hinzugefügt
  - **Kapazität und Performance wachsen gemeinsam**
  - Beispiele: Dell PowerScale, WEKA, NetApp StorageGRID, IBM Spectrum Scale
- **Im AI-Kontext bevorzugt:** **Scale-out**, da sowohl Datenmenge als auch Anfragelast mit den KI-Projekten wachsen
- **Praxis-Empfehlung:** Wer heute mit zwei GPU-Nodes startet und in zwölf Monaten zehn betreiben will → **von Anfang an Scale-out-fähige Storage-Architektur** planen

| Aspekt | Scale-up | Scale-out |
|--------|---------|----------|
| Erweiterung | Mehr Laufwerke/RAM/Controller | Zusätzliche Nodes |
| Performance-Zuwachs | Nicht linear, Controller-Limit | Linear, wächst mit Knoten |
| Obergrenze | Physisch durch System | Praktisch unbegrenzt |
| AI-Eignung | Eingeschränkt | Bevorzugt |

---

## 🏢 On-Premises, Hybrid und Cloud ⚠️ *wiederholen*

Welche drei Betriebsmodelle gibt es, und welche Stärken/Schwächen haben sie?
?

| Modell | Stärken | Schwächen |
|--------|---------|----------|
| **On-Premises** | Volle Kontrolle, Datenlokalität, keine Egress-Kosten, Compliance einfacher | Hohe Anfangsinvestitionen, Betriebsaufwand |
| **Cloud-native** | Schnell startklar, elastisch skalierbar, kein Wartungsaufwand | Höhere Latenz, Egress-Kosten, Datenschutz-Anforderungen komplex |
| **Hybrid** | Kombination aus Kontrolle und Elastizität, Daten on-prem, Burst in Cloud | Komplexere Architektur, Datensynchronisation erfordert Planung |

- **Egress-Kosten:** Gebühren für Datenabfluss aus der Cloud – ein häufig unterschätzter Kostenfaktor bei datenintensiven AI-Workloads
- **Burst in Cloud:** Lastspitzen werden temporär in die Cloud ausgelagert, Basis bleibt on-prem

---

## 🇩🇪 Warum On-Premises im deutschen Mittelstand dominiert

Warum bleibt On-Premises im deutschen Mittelstand und in regulierten Branchen die dominierende Wahl?
?
- **Sensible Daten:** Unternehmensdaten, Kundendaten, Forschungsdaten – sollen das Haus nicht verlassen
- **Compliance-Anforderungen:**
  - DSGVO
  - Branchen-Regulierung (Finanzwesen, Gesundheit, Energie)
  - Geheimnisschutz (Geschäftsgeheimnisse, IP)
- **Praktische Folge:** Selbst wenn Cloud technisch eleganter wäre, ist On-Premises häufig die einzige **rechtlich tragbare** Option
- **Konsequenz:** Storage-Architektur muss auf On-Prem-Skalierbarkeit ausgelegt sein – Cloud-Bursting nur als Ergänzung

---

## ⚙️ Betriebskomplexität von Scale-out

Welche zusätzliche Komplexität bringt ein Scale-out-System mit, und wie adressieren Hersteller das?
?
- **Scale-out bringt mehr Flexibilität, aber auch mehr Komplexität:**
  - **Netzwerkkonfiguration** wird aufwendiger
  - **Balancing** zwischen Nodes muss überwacht werden
  - **Firmware-Updates** über mehrere Nodes hinweg
  - **Monitoring** wird komplexer
- **Antwort der Hersteller: Integrierte Observability + Cloud-basiertes Management** (auch für On-Prem-Systeme):
  - **Dell APEX**
  - **NetApp BlueXP**
  - **Pure1**
- **Trend:** Storage-Management wird zunehmend als **Managed Service** angeboten – **unabhängig davon, wo die Hardware physisch steht**
- **Merksatz:** Die Hardware bleibt im RZ, das Management wandert in die Cloud

---

## 🔄 Überleitung: Vom RZ in den produktiven Betrieb

Was schließt Kapitel 3 ab, und was kommt in Kapitel 4?
?
- **Kapitel 3 hat gezeigt:**
  - Wie Storage-Systeme im Rechenzentrum **strukturiert sind** (sechs Bausteine)
  - Wie sie **zusammenwirken** (Hosts, Netzwerk, Systeme, Datenpfade, Schutz, Skalierung)
- **Aber:** Architektur ist kein Selbstzweck – sie existiert, um **konkrete Workloads** zu bedienen
- **Nächste Frage (Kapitel 4):**
  - Welche Anforderungen stellen **KI-Modelle in Echtzeit** an Speicher?
  - Was ändert sich bei **RAG**, wenn auf externe Wissensdokumente zugegriffen wird?
- **Kapitel 4 beschreibt:** Inferenz und Retrieval-Augmented Generation als die **produktiven Betriebsmodi**, für die die Infrastruktur aus Kapitel 2 und 3 gebaut wird

---

## 📊 Überblick: Skalierung und Betrieb

| Dimension | Frage | AI-Antwort |
|-----------|-------|-----------|
| Skalierungsstrategie | Scale-up oder Scale-out? | **Scale-out** – wächst mit GPU-Nodes |
| Betriebsmodell | On-Prem, Hybrid oder Cloud? | **On-Prem dominiert** im DACH-Mittelstand |
| Betriebskomplexität | Wie wird Scale-out beherrschbar? | **Cloud-basiertes Management** auch für On-Prem |
| Wachstumsplanung | Wann skalieren? | Von Anfang an – nicht nachträglich |
