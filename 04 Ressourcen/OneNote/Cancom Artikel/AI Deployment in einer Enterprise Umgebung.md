---
tags: [onenote, aivengers]
---

# AI Deployment in einer Enterprise Umgebung

Große Frage: warum sollte ich überhaupt onprem deployen?

-> cost per token viel geringer

-> souverän

Methoden vorstellen: Baremetal vs. containerisiert

Baremetal :

•	Bare Metal Deployment:Direkte Installation und Betrieb von Modellen auf physischer Hardware, ohne zusätzliche Virtualisierung oder Container-Layer. Typische Beispiele: Ollama, LM Studio, llama.cpp, oder manuelle Installation per Python/Pip auf Workstations oder Servern.

Vorteile: super easy zu deployen, auf kleinster HW, schon daheim auf dem Mac

Nachteile: nicht enterprise ready

•	Erschwerte Skalierung: Das Hinzufügen weiterer Modelle oder Nutzer ist aufwendig, z. B. durch Neuinstallation oder Umschichtung von Hardware.

•	Ressourcenbindung: Hardware ist oft einem bestimmten Modell oder Task fest zugeordnet, wodurch Ressourcen schlechter ausgelastet werden.

•	Update- und Wartungsaufwand: Software-Updates, Security-Patching und Fehlerbehebung benötigen direkten Zugang und tiefe Systemkenntnis.

•	Schwierige Automatisierung/Testbarkeit: CI/CD, Rollbacks und automatisiertes Testing von Änderungen sind kaum möglich.

•	Abhängigkeit vom Host-System: Unterschiedliche Umgebungen (z. B. Dev vs. Prod) lassen sich nur schwer replizieren.

Geringe Flexibilität: Änderungen am Setup erfordern oft manuelle Eingriffe, Betriebssysteminstallationen oder Neuaufsetzen ganzer Maschinen.

Ollama

Open web ui

Lm studio

Containerisiert:

•	Container-basiertes Deployment:Betrieb von Modellen in Docker-/Podman-Containern oder als orchestrierter Service (meistens mit Kubernetes oder vergleichbarer Lösung). Hierzu zählen auch NIMs, vLLM-Instanzen im Container, Seldon Core/KServe, Custom-Container und alle kubernetes-basierten Lösungen. Skalierbarkeit, Ausfallsicherheit und Multi-User-Fähigkeit werden darüber realisiert.

Vorteile:

•	Einfache und schnelle Skalierung: Neue Instanzen können per Orchestrator (z. B. Kubernetes) automatisiert hinzugefügt oder entfernt werden.

•	Besserer Ressourcen-Einsatz: Ressourcen können dynamisch zugewiesen werden (z. B. GPU/CPU-Sharing, Multi-Tasking), Overhead wird reduziert.

•	Automatisierung/CI/CD: Updates, Rollbacks und Releases sind automatisierbar; Infrastructure-as-Code ist Standard.

•	Sicherheit und Isolation: Fehler oder Angriffe in einem Container beeinflussen andere nicht direkt (Stichwort Multitenancy).

•	Leichtere Integration: Monitoring, Logging, Netzwerk und Security-Lösungen sind für Container/Cluster optimiert.

•	Schnelle Testbarkeit: Neue Deployments oder Konfigurationen lassen sich mit minimalem Risiko ausprobieren und zurückrollen.

•	Hohe Portabilität: Container laufen konsistent auf jedem System mit passender Runtime (egal ob on-prem oder Cloud).

NIMs

vLLM

--> was ist daran gut?

Kosten pro Token deutlich niedriger

Souveränität, volle Kontrolle über Daten, Compliance, Governance

Predictable Latency und garantierte Verfügbarkeit (kein throttling, kein rate limiting)

Integration in interne Systeme ohne externen Datenabfluss (Aufbau eigenes RAG -> verweis auf daniels artikel)

1. Warum überhaupt on-prem KI/LLMs deployen?

2. Deployment-Modelle: Bare Metal vs. Containerisiert

2.1 Bare-Metal Deployment

Definition + typische Tools

Vorteile

Nachteile

2.2 Containerisiertes Deployment

Nachteile (GPU-Scheduling-Komplexität, Kubernetes-Know-how nötig, etc.)

3. Wann eignet sich was? (Empfehlungsteil)

Das fehlt noch – macht den Artikel runder.

Baremetal: Einzelnutzer, PoCs, kleine Node-Llama.cpp-Setups, lokaler Entwickler-Workflow.

Container: Enterprise-Betrieb, Multi-User, MLOps, CI/CD, Sicherheit, Auditing.

Hybride Szenarien: Entwickler lokal, Produktion im Cluster -> Empfehlung an Kunde

Beispiele:

4. Fazit

Kurz und knapp:

Bare-metal = niedrigschwellig, schnell, aber limitiert.

Container = enterprise-ready, skalierbar, aber komplexer.

--------------------------------------------------------------------------------

Enterprise AI Deployment: Welches Betriebsmodell passt wirklich?

Bereitstellung von KI

Deployment von KI - wie mache ich das am besten?

1. Warum überhaupt KI/LLMs on-prem deployen?

Immer mehr Unternehmen ziehen in Betracht, Large Language Models und generative KI direkt im eigenen Rechenzentrum zu betreiben. Die Gründe hierfür liegen auf der Hand: On-prem Deployments ermöglichen deutlich niedrigere Kosten pro Token, insbesondere bei stabiler oder wiederkehrender Inferenz*-Last. Gleichzeitig behalten Unternehmen volle Souveränität und Kontrolle über ihre Daten, was in regulierten Branchen ein zentraler Faktor ist. Die Daten verlassen das Unternehmensnetz nie, Compliance und Governance bleiben vollständig intern abbildbar.

Ein weiterer Vorteil ist die verlässliche Performance. Lokale Deployments unterliegen keinen Rate Limits (Begrenzung der Anfragen) externer Anbieter, keinem Throttling (Drosselung der Geschwindigkeit) und keiner externen API-Verfügbarkeit. Latenzen bleiben konsistent und planbar, was für Integrationen in operative Systeme entscheidend ist. Zudem lassen sich per Retrieval Augmented Generation (RAG) interne Datenquellen direkt einbinden (Verweis auf Daniels Artikel)–, ohne dass sensible Inhalte externe Dienste passieren müssen (Verweis CANCOM Assistant). Das schafft nicht nur Sicherheit, sondern auch eine technische Basis für kontinuierlich wachsende unternehmensinterne Wikis.

*Erklärung Inferenz: „Inferenz bezeichnet in der KI den Prozess, bei dem ein bereits fertig trainiertes Modell (wie ein LLM) neue Daten verarbeitet, um eine Antwort zu generieren. Man kann es mit dem Unterschied zwischen Lernen und Anwenden vergleichen: Das ‘Training’ ist das jahrelange Studium (Wissensaufbau), die ‘Inferenz’ ist die Prüfung oder der Berufsalltag, wo das Wissen abgerufen und auf neue Fragen angewendet wird.“

2. Deployment-Modelle im Überblick

Bare Metal-Deployment,

Virtualisiertes Deployment und

Containerisiertes Deployment.

Unternehmen haben heute drei grundsätzliche Betriebsmodelle zur Auswahl:

Wichtig: Containerisierung ist in der Praxis häufig eine zusätzliche Schicht auf Bare Metal oder auf virtualisierten Hosts – es sind also nicht immer „entweder VM oder Container“, sondern oft Kombinationen.

Beim Bare-Metal Deployment läuft das KI-Modell unmittelbar auf der vorhandenen Hardware, ohne Virtualisierungsschicht dazwischen. Die Maschine steht damit exklusiv einem Workload zur Verfügung. Der Einstieg ist entsprechend unkompliziert: Installieren, Modell laden, loslegen. Werkzeuge wie Ollama / Open WebUI, LM Studio oder AnythingLLM erfreuen sich aktuell großer Beliebtheit bei dieser Form der Bereitstellung, weil diese Tools direkt mit der lokalen GPU arbeiten und praktisch keine zusätzliche Infrastruktur benötigen.

Das macht Bare-Metal ideal für Einzelanwender, Proof-of-Concepts oder Situationen, in denen ein Modell schnell und ohne organisatorischen Aufwand lauffähig sein soll. Die Hardware wird vollständig ausgenutzt, da keine Zwischenebene Ressourcen verbraucht oder Scheduling-Entscheidungen trifft.

Die Nachteile zeigen sich jedoch im Team- oder Unternehmenskontext. Mehrere parallele Nutzer oder unterschiedliche Modellversionen lassen sich nur schwer koordinieren, da jede Änderung manuell eingepflegt werden muss. Sicherheit, Updates, Monitoring und Protokollierung sind nicht zentralisiert und werden schnell unübersichtlich. Auch Skalierung ist eingeschränkt, da jeder Server physisch für genau diesen Zweck betrieben wird und nicht flexibel in eine größere Umgebung eingebettet werden kann.

2.2 Virtualisiertes Deployment

Zwischen klassischem Bare Metal und modernem Containerbetrieb existiert ein weiteres wichtiges Szenario: Virtualisierung, insbesondere die Virtualisierung von GPUs. Dabei werden Ressourcen – CPU, RAM, aber vor allem GPU-Leistung – über Hypervisoren wie VMware vSphere, Citrix, Nutanix AHV oder Microsoft Hyper-V abstrahiert und virtuellen Maschinen zugeteilt.

Hierbei wird die physische GPU mittels vGPU-Technologie oder Partitionierung (z. B. Multi-Instance GPU) logisch unterteilt. Damit können mehrere virtuelle Maschinen gleichzeitig GPU-beschleunigte Workloads ausführen, ohne dass jede VM eine vollständige GPU benötigt. Diese Architektur wird besonders häufig in VDI-Szenarien eingesetzt: Entwickler, Data Scientists oder Knowledge Worker erhalten eine virtuelle Desktopumgebung, in der Modelltraining, Inferenz oder datenintensive Anwendungen GPU-Beschleunigung nutzen können.

Der Vorteil dieses Modells liegt in der flexiblen Zuweisung und besseren Auslastung der Hardware. Unternehmen können GPU-Ressourcen effizienter verteilen, Workloads isolieren und gleichzeitig den Betrieb über bestehende Virtualisierungsplattformen integrieren.

Obwohl GPU-Virtualisierung flexible Zuweisungen ermöglicht, bringt sie mehrere technische Einschränkungen mit sich. Durch die Aufteilung der Ressourcen, wird nur ein Teil der tatsächlichen GPU-Leistung geliefert. Das kann ein limitierender Faktor für anspruchsvollere KI-Modelle sein. Zusätzlich kann das Hypervisor-Scheduling – also die Zuteilung von Rechenzeit durch die Verwaltungsschicht – zu schwankenden Latenzen führen. Wenn mehrere virtuelle Maschinen gleichzeitig GPU-Last erzeugen, entstehen Warteschlangen, die KI-Antwortzeiten unberechenbar machen. Auch Fragmentierung ist ein Problem: Die zugewiesenen GPU-Profile sind oft statisch. Dadurch blockieren einzelne VMs Kapazitäten, die sie im Moment gar nicht nutzen, während anderen Workloads diese Leistung fehlt. Die Hardware wird so ‘zerstückelt’ und verliert ihre Effizienz. Für große oder latenzkritische LLM-Inferenz ist Virtualisierung daher nur bedingt geeignet. Zudem ist die Virtualisierung von Rechenzentrums-GPUs oft mit erheblichen zusätzlichen Software-Lizenzkosten seitens der Hardware-Hersteller verbunden.

2.3 Containerisiertes Deployment

Beim containerisierten Deployment werden KI‑Modelle und ihre Laufzeitumgebungen in isolierten, reproduzierbaren Containern bereitgestellt. Ein Container bringt die wichtigsten Software‑Bausteine gleich mit (z. B. Frameworks und Bibliotheken), damit das Modell auf verschiedenen Servern möglichst gleich funktioniert. Für KI‑Workloads nutzt man dafür oft spezielle Inferenzserver. Diese laufen als Container und stellen eine einheitliche Schnittstelle (API) bereit, über die Anwendungen das Modell ansprechen können (z. B. Triton als separater Modellserver).

Container können einzeln über Docker betrieben oder im größeren Maßstab über Kubernetes orchestriert werden. Dadurch lässt sich dieses Modell sowohl lokal auf einem Server als auch im Cluster im Rechenzentrum oder in der Cloud einsetzen.

Containerbasierte KI‑Inferenz hat viele Vorteile, ist aber nicht automatisch die beste Lösung für jedes Szenario. Ein großer Pluspunkt: Modelle werden zusammen mit ihren Abhängigkeiten als „Paket“ ausgerollt und versioniert, wodurch Updates sauberer planbar sind. Neue Modell‑ oder Software‑Versionen lassen sich als neue Container‑Version ausrollen; Tests, Rollbacks und parallele Versionen werden dadurch einfacher. Mit Kubernetes können solche Services zentral verwaltet, skaliert und überwacht werden; GPU‑Ressourcen lassen sich gezielt einzelnen Diensten zuweisen, um die vorhandene Hardware besser auszunutzen.

Gleichzeitig steigt die Komplexität: Wenn mehrere Container, Modelle und Versionen parallel betrieben werden, braucht es klare Betriebsprozesse für Updates, Zugriff und Störungsbehebung. Zusätzlich muss die Basis auf dem Server stimmen (z. B. passende GPU‑Treiber), sonst funktionieren Container trotz „Paketierung“ nicht zuverlässig. Wenn sich viele Dienste GPUs teilen, können zudem  Antwortzeiten schwanken. Außerdem bringt ein Modellserver über das Netzwerk meist etwas zusätzliche Latenz gegenüber einer rein lokalen Einbettung. Bei der Planung müssen auch Monitoring, Logging und Ablagen für Logs und Metadaten berücksichtigt werden. Und wichtig als Entscheidungskriterium: Für Kubernetes‑Betrieb braucht es in der Regel Plattform- bzw. DevOps-Spezialisten.

3. Fazit: Welches Deployment passt zu mir?

Die Wahl des geeigneten Deployments hängt von der Größe, der Nutzeranzahl, den Sicherheitsanforderungen und dem Reifegrad und nicht zuletzt dem Anwendungsfall der Organisation ab.

Für erste Schritte und klar begrenzte Anwendungsfälle eignet sich ein Bare-Metal-Deployment auf einem einzelnen Server oder einer Workstation – etwa für Proof-of-Concepts, Experimente einzelner Teams oder Szenarien mit stabiler Last und wenigen Nutzenden. Die Umgebung bleibt überschaubar, Änderungen können schnell umgesetzt werden, und der operative Aufwand ist gering, solange nur ein oder wenige Modelle im Einsatz sind.

Bare Metal ist demnach ideal für PoCs, Einzelentwickler, schnelle Experimente und kleine Workloads ohne hohen Betriebsaufwand.

Virtualisierte Deployments sind kein bloßer Zwischenschritt zwischen Bare Metal und Containerisierung, sondern ein eigenständiges Modell für klar umrissene Anwendungsfälle. Besonders geeignet sind sie für Teams, die sich GPU-Ressourcen teilen, etwa Architekten und Ingenieure mit CAD- und 3D-Workloads, die eine leistungsfähige, aber zentral verwaltete Umgebung benötigen. Über Hypervisoren werden eine oder mehrere physische Grafikkarten effizient auf viele virtuelle Desktops aufgeteilt. Gleichzeitig begrenzen geteilte GPU-Profile und Hypervisor-Scheduling die nutzbare Leistung und verursachen teils schwankende Latenzen, was große oder sehr latenzkritische KI-Modelle ausbremst. Entsprechend eignet sich GPU-Virtualisierung vor allem für gemeinsam genutzte grafische Workloads und kollaborative Wissensarbeit, während anspruchsvolle LLM-Inferenz meist besser auf dedizierten GPUs oder in containerisierten Umgebungen aufgehoben ist.

Wenn KI‑Services von vielen Anwendungen genutzt werden und mehrere Modelle parallel laufen, ist ein containerisiertes Deployment meist die beste Wahl. Containerisierte Inferenzserver verpacken Modell und Abhängigkeiten, liefern standardisierte APIs und lassen sich zentral betreiben. Mit Kubernetes können diese Services automatisiert ausgerollt, überwacht und bei Bedarf hoch- oder herunterskaliert werden.

Bare‑Metal- und virtualisierte Ansätze bleiben trotzdem sinnvoll, zum Beispiel für PoCs, kleinere Teams oder klar abgegrenzte Workloads.

Für ein nachhaltiges Enterprise‑Deployment ist eine professionelle Kubernetes‑Plattform in vielen Fällen die passende Basis – alternativ sollte zumindest eine vergleichbar gemanagte Container‑Plattform vorgesehen werden. (Verweis auf unsere DevOps Spezialisten)

Feedback:

Baremetal Deployment: GB10 als Test Environment aufführen

Den Container Teil nochmal nachschärfen: Agilität, CI/CD, schnellstes Time-to-Production fehlt mir hier

Vorteil Virtualisierung: Ideal für Brownfield Ansatz. Nahezu jeder Kunde hat bereits eine Virtualisierung laufen. Er kann direkt starten

Grundsätzlich:

—> Nimm die Bindestriche raus

😉
