---
tags: [onenote, aivengers]
---

# Keynote 2026

CUDA Flywheel

Ge Force Consumer GPUs 4090/5090

Computer graphics - idee zgx cyber punk über steam

Unstrucuted data folie

Algorithm compoany = nvidia

Moores law ist tot - new law gerade

NVLInk neuerung neues chassis - rubin ultra

NemoClaw

NVIDIA CEO Jensen Huang hat in der GTC 2026 Keynote drei große Themen gesetzt: CUDA‑X als Softwarebasis, neue Plattformen wie AI Factories und eine massive Inference‑Welle, die zu Billionen‑Investitionen in Rechenzentren führen soll.

•	NVIDIA positioniert sich klar als Plattform‑Unternehmen mit drei Ebenen: CUDA‑X (Software/Bibliotheken), Systeme (GPU‑Server, DGX, NVL‑Systeme) und neu „AI Factories“ – ganze Rechenzentrums‑Fabriken für Token‑Produktion statt nur Hardware‑Verkauf.

•	Die 20 Jahre CUDA‑Entwicklung und der riesige installierte GPU‑Footprint gelten als Kern des „Flywheels“: große Basis → viele Developer → neue Algorithmen/Anwendungen → neue Märkte → noch größere Basis.

•	CUDA‑X bleibt das Herzstück: Hunderte spezialisierte Bibliotheken (z.B. cuDNN, cuOpt, cuLitho, cuEquiVariance, Aerial, Warp, ParaBricks) sollen jede vertikale Industrie mit fertigen Algorithmen bedienen.

1. Plattform-Story: Von CUDA zu „AI Factories“

•	NVIDIA definiert strukturierte (SQL/DataFrames) und unstrukturierte Daten (Vektordatenbanken, PDFs, Video, Audio) als „Ground Truth“ für vertrauenswürdige KI und führt zwei zentrale Bibliotheken hervor: cuDF für DataFrames und cuVS für Vektor‑/Embedding‑Stores.

•	Mit IBM wird Watsonx.data GPU‑beschleunigt: Nestlé erhält laut Beispiel 5‑fach höhere Geschwindigkeit und ca. 83% niedrigere Kosten für ihren Order‑to‑Cash‑Datenmart im Vergleich zur CPU‑Plattform.

•	Mit Dell entsteht ein AI Data Platform‑Stack auf Basis CUDA/cuBLAS; mit Google Cloud wird BigQuery beschleunigt, was etwa bei Snapchat die Computing‑Kosten um ~80% reduziert.

2. Datenplattform: cuDF, cuVS und Partnerschaften (IBM, Dell, Google Cloud)

•	Google Cloud: NVIDIA beschleunigt Vertex AI, BigQuery und Frameworks wie JAX/XLA und PyTorch, und liefert die Plattform für Kunden wie Stripe, Salesforce, BaseTen u.a.

•	AWS: Tiefe Integration in EMR, SageMaker, Bedrock; OpenAI‑Workloads sollen künftig auch auf AWS laufen und enorme Cloud‑Kapazität verbrauchen.

•	Microsoft Azure: Frühe A100‑Supercomputer‑Deployments, Basis der OpenAI‑Partnerschaft; heute werden zahlreiche Azure‑Dienste auf NVIDIA‑GPUs beschleunigt.

Zentrale Cloud‑Partnerschaften

•	Im Grafikbereich kündigt Huang „neural rendering“ als nächste Generation nach RTX an – eine Fusion aus klassischer 3D‑Grafik (strukturierte, deterministische Welten) und generativer KI (probabilistische, realistische Inhalte).

•	Ziel ist kontrollierbare, aber KI‑generierte Inhalte: strukturierte 3D‑Daten geben Kontrolle und Zweck vor, generative Modelle liefern Detail und Realismus; dieser Ansatz soll laut Huang in vielen Branchen (nicht nur Gaming) wiederkehren.

3. Neue Rendering‑Generation: „Neural Rendering“

•	NVIDIA zeigt GTC als Treffpunkt eines riesigen Ökosystems: ~450 Sponsoren, 1.000 technische Sessions, 2.000 Speaker; praktisch alle Ebenen des „AI‑Stacks“ sind abgedeckt.

•	Branchen, die besonders adressiert werden:

•	Automotive/Autonomous Vehicles

•	Financial Services (Algorithmic Trading, von klassischen Modellen hin zu Deep Learning/LLMs)

•	Healthcare/Life Sciences (AI‑Biologie, Drug Discovery, ChatGPT‑Momente in der Medizin)

•	Industrie/Robotik (AI‑Fabriken, Fabrik‑ und Produktionsdigitalisierung, >100 Roboter auf der Messe)

•	Medien/Gaming (Realtime‑AI, Übersetzung, Broadcast‑Support)

•	Telekommunikation (Edge‑AI in Funkmasten, Plattform „Aerial AI Brain“ mit Partnern wie Nokia, T‑Mobile).

•	NVIDIA betont die vertikale Integration der eigenen Stack‑Kompetenz (von Algorithmen über Bibliotheken bis Hardware), aber mit offener horizontaler Integration in Clouds, OEMs und Softwareanbieter.

4. Branchen‑Ökosystem & CUDA‑X‑Bibliotheken

•	Huang beschreibt eine massive „Inference‑Inflection“: KI hat sich von Wahrnehmung → Generierung → Reasoning → Agenten entwickelt (Beispiele: ChatGPT, Modelle wie O1/O3, agentische Coding‑Modelle wie Claude‑Code etc.) und verrichtet nun produktive Arbeit, was die Inference‑Last explodieren lässt.

•	Er argumentiert, dass der Rechenbedarf durch mehr Kontexttokens, längeres „Denken“ und agentische Workflows in zwei Jahren faktisch um Größenordnungen gestiegen sei; SemiAnalysis‑Daten für Blackwell/Blackwell Ultra zeigen bis zu 50‑fach bessere Tokens‑pro‑Watt und bis zu 35‑fach niedrigere Kosten pro Token vs. Hopper.

•	Auf dieser Basis spricht Huang von mind. 1 Billion US‑Dollar an sichtbarer Nachfrage nach NVIDIA‑Systemen (Blackwell, Rubin/„Vera Rubin“) bis 2027 und bezeichnet NVIDIA‑Systeme als niedrigste Kostenbasis für KI‑Infrastruktur mit langer Nutzungsdauer.

5. Inference‑Inflection, Token‑Ökonomie und 1‑Billion‑$‑Ausblick

•	Der „Year of Inference“‑Fokus 2025 führte zur massiven Re‑Architektur mit Grace‑Blackwell‑Systemen, NVLink‑Skalierung und neuen Numerik‑Formaten wie NVFP4, die für Inferenz ohne Genauigkeitsverlust und sogar für Training genutzt werden können.

•	NVIDIA investiert Milliarden in DGX‑Cloud‑Supercomputer, um Kernels, Compiler und den gesamten Software‑Stack für Inferenz zu optimieren; Ergebnis sind große Sprünge bei Tokens‑pro‑Watt und Kosten‑pro‑Token, die SemiAnalysis mit bis zu 50x/35x gegenüber Hopper beziffert.

Grace Blackwell, NVFP4 und Inference‑Optimierung
