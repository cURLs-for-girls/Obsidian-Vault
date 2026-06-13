---
tags: [onenote, aivengers]
---

# VLM Kölassifikation

Keine konkrete Nennung der Referenz

Aber dieser Use Case zeigt perfekt, warum eine AI Factory nötig ist

Prüfung von fast 3000 Dokumenten:

Um was ging es? Der Kunde hat das Problem, dass händisch fast 3000 Dokumente pro Monat klassifiziert und geprüft werden müssen. Enormer Zeitfaktor.

Was sollten wir tun? Wir sollten die Machbarkeit testen. Einmal mit on-prem HW und einmal mit Cloudressourcen.

Was haben wir herausgefunden:

Modell: es kommt auf das passende Modell an --> VLM statt LLM: statt einem klassischen Sprachmodell wie Sie das von ChatGPT & Co. kennen musste eines her, das auch Bilder versteht. Hierbei musste der Sweet Spot gefunden werden: kleinere modelle sind schneller aber ungenauer. Reasoning erhöht die Richtigkeits­trefferquote, braucht dafür aber mehr Verarbeitungszeit pro Anfrage.

Infrastruktur: Hardware schlägt Cloud

Cloud-Anbieter hatten unerklärlicherweise Rate-Limits: sie hätten eigentlich besser performen müssen (auf dem Papier) – haben sie aber nicht – die on-prem Varianten haben ganz deutlich gewonnen

Bei den GPUs enorme Perfromanceunterschiede:

auf gewisser HW, war der Durchsatz 2,3 x so hoch, bei einer besseren Grafikkarte sogar 40-50% besserer Durchsatz: nicht jede Grafikkarte ist gleich – es kommt hier komplett auf den Workload an. Wenn man vermeintlich denkt bei einer GPU Geld zu sparen (Bild: es bringt Ihnen ja nichts einen Smart zu fahren, wenn auf der Autobahn durchgehend 250 fahren wollen)

Mit dem ausgewählten modell wurde 95% Accuracy bei 100% Precision - kein Dokument wurde fälschlicherweise als gültig klassifiziert

Auslastung der GPU:

Die Dokumente kommen auf einmal und nicht gleichverteilt. Zu anderen zeiten liegt die GPU "brach" - was machen wir in der zeit mit der GPU?

Ausblick:

Die Frage war am Ende nicht nur: Welches Modell funktioniert auf welcher Infrastruktur? Die eigentliche Frage ist: Unter welchen Zielwerten für Genauigkeit, Antwortzeit und Kosten soll der Use Case produktiv betrieben werden? Und genau dort setzt die AI Factory an – sie macht diese Zielwerte messbar und steuerbar.
