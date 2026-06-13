---
tags: [onenote, aivengers]
---

# Pruning

Pruning vereinfacht neuronale Netze, indem es unnötige Parameter entfernt, was zu einer geringeren Komplexität und schnelleren Inferenzzeiten führt.

Ein trainiertes neuronales Netz wird analysiert, um festzustellen, welche Verbindungen (Gewichte) oder Neuronen einen geringen oder keinen Einfluss auf das Endergebnis haben.

Diese unnötigen Verbindungen werden dann „gepruned“ (beschnitten), d.h., sie werden entfernt oder auf Null gesetzt.

Das Ergebnis ist ein kleineres Modell, das sparsamer in Bezug auf Berechnung und Speicher ist, aber immer noch eine akzeptable Genauigkeit erreicht.

Wie funktioniert Pruning?

Magnitude Pruning: Entfernt Gewichte mit den geringsten Werten, da sie den geringsten Einfluss auf das Modell haben.

Structured Pruning: Entfernt ganze Filter, Kanäle oder Neuronen, um die Struktur des Modells zu vereinfachen.

Unstructured Pruning: Entfernt einzelne Gewichte unabhängig von ihrer Position im Netzwerk.

Arten von Pruning:

Pruning ist eine Methode zur Reduktion der Komplexität eines neuronalen Netzes, indem unnötige oder wenig nützliche Parameter entfernt werden. Das Ziel ist es, ein kleineres, schnelleres Modell zu erzeugen, das weniger Rechenleistung und Speicherplatz benötigt, aber dennoch ähnlich gute Ergebnisse liefert.
