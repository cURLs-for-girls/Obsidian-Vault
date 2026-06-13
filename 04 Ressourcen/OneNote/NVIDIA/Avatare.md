---
tags: [onenote, aivengers]
---

# Avatare

1. Welche NVIDIA-Technologien brauchst du?

NVIDIA bietet mehrere Bausteine für KI-Avatare:

• NVIDIA Riva – für Sprachsynthese (TTS) und Spracherkennung (ASR)

• NVIDIA Omniverse Audio2Face – für Gesichtsanimation basierend auf Sprache

• NVIDIA Tokkio – ein Komplett-Framework für KI-gestützte Avatare (noch nicht allgemein verfügbar)

• NVIDIA AI Enterprise – enthält optimierte KI-Software für Rechenzentren (z. B. für Riva)

2. Lizenzmodell von NVIDIA AI Enterprise

Damit du NVIDIA AI Enterprise nutzen kannst, brauchst du eine Lizenz. Das Modell sieht ungefähr so aus:

• Pro GPU pro Jahr – du zahlst eine Jahresgebühr pro GPU

• On-Premise oder in der Cloud – du kannst es lokal auf NVIDIA-zertifizierter Hardware betreiben oder über Cloud-Anbieter wie AWS, Azure oder Google Cloud

• Lizenzen über Partner – NVIDIA AI Enterprise wird nicht direkt verkauft, sondern über NVIDIA-Partner

3. Lizenzierungsschritte

1. Hardware prüfen

• NVIDIA AI Enterprise ist für NVIDIA-Certified GPUs gedacht (z. B. L40, A100, H100).

• Du brauchst eine kompatible GPU in deinem Server oder mietest eine Cloud-Instanz.

2. Lizenzen erwerben

• Du kannst NVIDIA AI Enterprise über Partner wie Tech Data, Ingram Micro oder Arrow kaufen.

• Falls du eine Cloud-Lösung nutzt, bieten AWS und Azure NVIDIA AI Enterprise als Subscription-Modell an.

3. Software-Stack aufsetzen

• NVIDIA AI Enterprise wird mit NVIDIA License System (NLS) verwaltet.

• Du bekommst eine Lizenzdatei oder Cloud-Subscription, die du im NVIDIA License Server aktivierst.

• Dann kannst du Riva, Omniverse Audio2Face oder andere Module auf deinem Server oder in der Cloud nutzen.

4. Alternative ohne NVIDIA AI Enterprise?

Falls du Riva oder Audio2Face nur testen willst, kannst du auch die Open-Source-Variante von Riva verwenden. Diese benötigt keine AI Enterprise-Lizenz, ist aber nicht offiziell für den Produktivbetrieb optimiert.

Brauchst du Hilfe bei der Wahl der passenden Hardware oder willst du das Ganze eher on-premise oder in der Cloud betreiben?

1. Lizenzoptionen für den Kunden klären

NVIDIA AI Enterprise wird in verschiedenen Lizenzmodellen angeboten:

• Perpetual License + Support Subscription (unbefristet, aber mit jährlichem Support)

• Annual Subscription (jährlich erneuerbare Lizenz)

• Cloud Subscription (z. B. über NVIDIA LaunchPad, AWS, Azure, Google Cloud)

Je nach Kundenanforderung musst du klären, welche Variante am besten passt.

2. Lizenzen als NVIDIA-Partner beziehen

Als offizieller NVIDIA-Partner hast du Zugriff auf das NVIDIA Partner Network (NPN). Dort kannst du:

• Lizenzen über Autorisierte Distributoren (z. B. Tech Data, Ingram Micro, Arrow) kaufen.

• Lizenzen direkt über das NVIDIA License System (NLS) verwalten.

Falls du noch keinen Zugang zum Lizenzsystem hast, musst du dich über das NVIDIA Enterprise Licensing Portal (ELP) registrieren.

3. Lizenzen dem Kunden bereitstellen

1. Lizenz über das Partner-Portal bestellen

• Du erhältst nach dem Kauf eine Lizenzdatei (.bin oder .txt) für den Kunden.

2. NVIDIA License Server einrichten

• Falls der Kunde die Lizenz lokal nutzen möchte, benötigt er einen NVIDIA License Server (NLS).

• Alternativ kann die Lizenz über Cloud-Abonnements aktiviert werden.

3. Lizenz an den Kunden übertragen

• Falls on-premise: Die Lizenzdatei an den Kunden weitergeben und ihm helfen, sie im NVIDIA License Server zu aktivieren.

• Falls in der Cloud: Dem Kunden Zugang zu NVIDIA AI Enterprise über seinen Cloud-Anbieter gewähren.

4. Support & Verlängerungen verwalten

• Kunden benötigen regelmäßige Renewals für Subscription-Modelle oder Support-Verlängerungen für Perpetual Lizenzen.

• Falls gewünscht, kannst du auch Managed Services für den Kunden anbieten.

Welche GPU? (vermutlich die L40s)

Wie viele GPU’s werden dazu eingesetzt?

Omniverse wird übrigens genau wie AI-Enterprise pro GPU lizensiert. Ich kann über den Kundennamen auch die Entitlements einsehen, wenn Ihr diesen nennt.

Worin Ich eine Anpassung sehe, ist sein zukünftiges LLM:

Welches Community Model soll genutzt werden oder handelt es sich um eine eigene Entwicklung?

Wie groß ist dieses Model?

Wie groß will er darin skalieren? Anzahl der User.

Dies hilft uns entscheidend beim Sizing auf eine H200 NVL (AI Enterprise Subscription ist inkl.) oder je nach Karte, NVAIE aufzustocken.

Onprem? Cloud?

Wo betreibt er die infrastruktur?

Bei sich oder beim kunden?
