---
tags: [onenote, aivengers]
---

# Generative AI Masterclass

NIMs

Customer POC shapen

Deploy Blueprint

Zusammenfassungen:

🧠 1. Masterclass: NIMs, Blueprints & Launchables (Referent: Igor)

Ziel:

Einführung in NVIDIA NIMs (Inference Microservices), Launchables und Blueprints als Grundlage für skalierbare GenAI-Anwendungen in Unternehmen.

AI Factory-Konzept: Vergleichbar mit einer Fertigungsstraße – Daten rein, AI-Ergebnisse raus.

Containerisiertes LLM-Inferencing via Standard-API (OpenAI-kompatibel).

Optimierung nach GPU (z. B. H100, B100) und Umgebung (z. B. AirGap, Cloud, On-Prem).

Vorteile: massive Performance-Steigerung, niedrigere TCO, einfacher Betrieb (1 Befehl für Deployment), Security durch regelmäßige Patches.

NIM (NVIDIA Inference Microservice):

NIMO: Layer für Feintuning, Guardrailing und Evaluierung von LLMs. Grundlage für Customization.

Referenzarchitekturen für konkrete GenAI-Use-Cases.

Kombination aus NVIDIA-Tools, OSS und Partnerlösungen.

Beispiel: PDF → Podcast, Videoanalyse, RAG, Digital Humans etc.

Blueprints:

Vorgefertigte Deployments, mit einem Klick in Cloudumgebungen ausführbar (AWS, GCP etc.).

Anpassbar und nutzbar für Demos und POCs.

Launchables:

Kernthemen:

Massive Beschleunigung gegenüber OSS-Serving (z. B. 2x Token/s).

Einheitliches Framework für Entwicklung, Betrieb, Skalierung.

Prototyping kostenlos bis 16 GPUs + Free-Tiers über API/Launchables.

Vorteile:

🛰️ 2. Masterclass: NVIDIA COSMOS (Referent: Mateusz)

Einführung in NVIDIA COSMOS als physikalisch fundiertes Multimodell-Framework für synthetische Trainingsdaten (insbesondere für Robotics, AV, Digital Twin etc.).

Trainiert auf >20 Mio. Stunden Video (~9.000 Bio. Token), mit 10.000 H100s über >2000 Stunden.

Versteht physikalische Dynamiken, Objekte, Interaktionen etc.

COSMOS = "World Model":

Kerninhalte:

COSMOS Predict: Video-Vervollständigung & Extrapolation.

COSMOS Transfer: Videogenerierung aus Sensordaten (LiDAR, Maps, etc.).

COSMOS Reason: Visuelles Reasoning, z. B. Objektverhalten, Zukunftsprognosen.

COSMOS-Varianten:

Synthetic Data Generation für AV-Edge-Cases (z. B. Wetter, Verkehr, Kinder auf Straße).

Robotics: visuelles Lernen aus Omniverse-Simulationen.

Szenariobasierte Validierung, massive Datenerweiterung bei minimalem realem Input.

Use Cases:

NEMO Curator: Petabyte-fähiges Pipeline-System für Videoannotation, Vektorsuche (z. B. „Kind überquert Straße mit Hund“).

Video Tokenizer: 12x effizienter als OSS-Alternativen.

Fertige Inferencing-Container mit bis zu 40 % Speedup gegenüber OSS.

Sicherheitsfeatures wie NSFW-Filter, Face Blurring, Watermarking.

Deployment via NIM:

Infrastruktur:

Weboberfläche über build.nvidia.com mit Launchables für COSMOS.

Integration mit Omniverse, potenziell auch Unreal Engine etc.

Noch keine Audio-Unterstützung – wird geprüft.

Plattform & Integration:

NIMs vereinfachen Deployment, Skalierung und Wartung von GenAI-Anwendungen massiv.

COSMOS ermöglicht qualitativ hochwertige synthetische Datensätze für komplexe physikalische Use Cases.

Kombination aus beidem bildet eine skalierbare, sichere und flexible AI-Produktionsumgebung, vom Datensatz bis zum Live-Inferencing.

🔚 Fazit (beide Sessions):
