---
tags: [ressourcen, referenzarchitektur, dell, nvidia, security, ai-infrastruktur]
status: aktiv
erstellt: 2026-05-21
hersteller: [Dell Technologies]
quelle: "H04511.1 – Oktober 2025"
---

# Dell AI Factory – Security Best Practices for Generative AI

> Begleitdokument zur Dell AI Platform: Bedrohungsszenarien und Mitigationsstrategien für AI-Infrastruktur

📎 [[h04511.1_ai_gen_ai_security_best_practices.pdf]]

---

## Worum geht es?

Dieses Whitepaper beschreibt **Sicherheitsrisiken und Gegenmaßnahmen** für AI-Plattformen (speziell Dell AI Factory). Es ist kein vollständiges Sicherheitsaudit – sondern ein **Praxisleitfaden** für Architekt:innen und Betreiber.

Kernaussage: Sicherheit hängt immer vom **Bedrohungsprofil** ab (Wert der Assets, Wahrscheinlichkeit, Angreifer-Ressourcen). Dell empfiehlt kontextspezifische Analyse.

---

## Bedrohungskategorien im Überblick

### 1. AI-spezifische Bedrohungen

| Bedrohung | Was passiert | Wichtigste Gegenmaßnahme |
|---|---|---|
| **Model Theft** | Modell wird durch wiederholte API-Abfragen rekonstruiert | Access Controls auf Inference API, Model Watermarking |
| **Data Poisoning** | Training-Daten werden manipuliert → falsches Modellverhalten | Data Validation, sichere Datenquellen |
| **Supply Chain Compromise** | GPU-Hardware oder ML-Software kompromittiert | Least Privilege, Hardware-Validierung, Secure Development |
| **Prompt Injection** | Manipulierte Prompts → ungewolltes Verhalten | Input Validation, Prompt Filtering, NLP-basierte Detection |
| **Model Inversion** | Angreifer rekonstruiert Training-Features | Differential Privacy, Encrypted Feature Storage |
| **Excessive Agency** | LLM bekommt zu viele Rechte → unbeabsichtigte Aktionen | RBAC, Least Privilege, Funktionen begrenzen |
| **Insecure RAG** | Falsch konfigurierte RAG-Systeme → Info-Leaks, DoS | Secure Config, WAF, Input Sanitization |
| **Backdoor im Modell** | Angreifer vergiftet Training → versteckte Hintertür | Reproducible Training, Integrity Checks, Digital Signatures |
| **Reinforcement Learning Hacking** | Reward-Funktion wird manipuliert | Robustes Reward-Design, Anomalie-Monitoring |
| **AI DoS** | Eingaben erschöpfen Rechenressourcen | Rate Limiting, Query Optimization, Load Balancing |

### 2. Software-Bedrohungen (Kubernetes-Cluster)

| Bedrohung | Kernrisiko | Hauptmaßnahme |
|---|---|---|
| **Malicious Cluster Actions** | Initial Access → Datendiebstahl | Starke Auth, sichere Container Images |
| **Arbitrary Code Execution** | kubectl exec, Sidecar Injection | kubectl exec einschränken, Patch Management |
| **Persistence** | DaemonSets, CronJobs für Backdoors | Access Controls, Image Validation |
| **Privilege Escalation** | Privileged Containers, hostPath Mounts | Restricted Containers, HostPath-Schutz |
| **Credential Theft** | Kubernetes Secrets, kubeconfig | Secrets Management, Falco/Sysdig Monitoring |
| **Container Escape** | RCE → Host-Zugriff | Least Privilege, Network Segmentation |
| **CI/CD Compromise** | Malware in Build-Pipeline | Image Signing, 2FA, Pipeline Monitoring |
| **Misconfiguration** | Falsche Configs → Angriffsfläche | Hardening, Vulnerability Scanning, Pentest |

### 3. Allgemeine IT-Bedrohungen

| Bedrohung | Maßnahme |
|---|---|
| **DoS-Angriffe** | Rate Limiting, WAF, Load Balancing, IDS |
| **Dateiexfiltration** | DLP, Encryption, Firewall Rules, Monitoring |
| **Unauthoirisiertes Netz-Traversal** | VLANs, Firewalls, Pod-Isolation |
| **Credential-Diebstahl** | MFA, Secure Password Management, Account Lockout |
| **Excessive Privileges** | RBAC, ABAC, Least Privilege |
| **Insecure Data at Rest** | etcd-Verschlüsselung, Key Management |
| **Unzureichendes Logging** | Zentrales Logging (ELK/Fluentd), SIEM, Alerting |

### 4. Hardware-Bedrohungen

| Bedrohung | Maßnahme |
|---|---|
| **Interne Implantate** | Physische Sicherheit, Secure Boot, Firmware-Updates |
| **Service Interface Angriffe** | Authentifizierung, Port-Deaktivierung nach Nutzung |
| **Fault Injection (Strom/Takt)** | Physischer Schutz, Secure Boot, TPM |
| **Debug Interface Missbrauch** | Restricted Access, Firmware Validation, TPM |

---

## Allgemeine Sicherheitskonfiguration

### PKI-Integration
Unternehmen betreiben oft eigene CAs (z.B. für DPI). Die Kubernetes-Nodes müssen der internen CA vertrauen → ConfigMap mit CA-Zertifikat anlegen.

### Registry Mirrors
Internes Container-Mirror → schnellere Downloads, weniger Angriffsfläche, Rate Limit umgehen. Konfiguration in `containerd`.

### Dell Automation Platform (DAP)
DAP-Blueprints automatisieren AI-App-Deployments. Alle Security-Empfehlungen dieses Dokuments gelten auch dort.

---

## Presales-Relevanz

> **Kernbotschaft:** Dell liefert nicht nur Hardware – sondern auch den Security-Rahmen für AI-Infrastruktur.

**Wann dieses Dokument nutzen:**
- Kunde fragt nach Security-Konzept für AI On-Prem
- CISO oder Security-Team ist am Tisch
- Compliance-Anforderungen (z.B. BSI, NIS2)

**Wichtige Punkte für Kunden-Gespräch:**
- AI bringt neue Angriffsvektoren (Prompt Injection, Model Theft, Poisoning)
- Kubernetes-Cluster sind ein beliebtes Angriffsziel (Crypto Mining, Datenklau)
- Dell hat für alle Layer eine Empfehlung – von Hardware bis Applikation
- Kein "One-Size-Fits-All": Maßnahmen hängen vom Threat Profile ab

---

## Verwandte Dokumente

- [[Dell AI Factory with NVIDIA – Spectrum-X]]
- [[04 Ressourcen/Referenzarchitekturen/Referenzarchitekturen]]
