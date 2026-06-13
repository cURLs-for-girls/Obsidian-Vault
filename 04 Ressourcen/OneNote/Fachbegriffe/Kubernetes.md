---
tags: [onenote, aivengers]
---

# Kubernetes

🏗️ Die Ebenen in Kubernetes

YAML ist eine Datei mit Anweisungen, z. B. „baue ein Haus mit 3 Zimmern“.

In Kubernetes: YAML beschreibt Ressourcen (Pod, Deployment, Service …).👉 Ohne YAML weiß Kubernetes nicht, was es starten oder verbinden soll.

1. YAML = Bauplan

kubectl ist das Werkzeug, um diese YAML-Pläne an den „Bauleiter“ (Kubernetes API) zu übergeben.

Befehle wie kubectl apply -f haus.yaml → „Bitte bau dieses Haus“.

2. kubectl = Bauarbeiter mit Funkgerät

Ein Helm Chart ist eine Sammlung von YAMLs + Vorlagen.

Du musst nicht alle Baupläne selbst zeichnen, sondern bekommst ein fertiges Set: „Haus mit Küche, Bad, Garage“.

Beispiel: helm install wordpress bitnami/wordpress → startet komplette WordPress-App inkl. Datenbank.

3. Helm Chart = Fertighaus-Bausatz

Ein Operator ist ein Spezialist in Softwareform, der eine bestimmte Anwendung in Kubernetes betreut.

Beispiel: Kafka Operator → kümmert sich um Kafka-Cluster (Installation, Updates, Fehlerbehebung).

Du musst nur sagen: „Ich will ein Kafka-Cluster mit 3 Brokern“, der Operator macht den Rest.

4. Operator = Hausmeister/Architekt

YAML → einzelne Baupläne (Pod, Service, Config).

kubectl → Werkzeug, um Pläne einzureichen.

Helm Chart → kompletter Bausatz aus mehreren YAMLs.

Operator → Spezialist, der eine komplexe Anwendung managt.

🎯 Vergleich in einem Satz
