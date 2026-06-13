---
tags: [onenote, aivengers]
---

# Full AI Stack

„Was rechnet?“

Server (Bare Metal oder virtualisiert)

GPUs (z. B. NVIDIA A100, H100, L40S oder Intel Gaudi)

Netzwerkinfrastruktur (z. B. InfiniBand, 100/200 Gbit)

Speichersysteme (NVMe, Ceph, etc.)

🧱 1. Hardware Layer

„Wer verwaltet die Infrastruktur?“

Red Hat OpenShift (Kubernetes): Container-Orchestrierung

GPU Operator: Automatisiert Treiberinstallation, CUDA etc.

Monitoring (Prometheus, Grafana), Security (RBAC, Secrets)

MLOps-Komponenten: Jupyter, Tekton, KServe

⚙️ 2. Middleware / Orchestrierung

➡️ Diese Schicht bildet das Betriebssystem der KI-Infrastruktur.

„Was läuft in den Containern?“

CUDA, cuDNN, RAPIDS, TensorRT, Triton Inference Server

Modelle, Tools und optimierte Bibliotheken

NVIDIA AI Enterprise

Eigene/gekaufte Modelle & Frameworks (PyTorch, TensorFlow, Hugging Face, LLMs etc.)

ML Pipelines, Notebooks, Inferenz-Server, API-Endpoints

🧠 3. AI Software Layer

➡️ Diese Schicht ist das eigentliche "KI-Gehirn".
