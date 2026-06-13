---
tags: [onenote, aivengers]
---

# Knowledge Distillation

Knowledge Distillation ist eine Technik, bei der ein „Lehrermodell“ (ein großes, komplexes Modell) verwendet wird, um ein „Schülermodell“ (ein kleineres, einfacheres Modell) zu trainieren. Das Schülermodell wird so trainiert, dass es die gleichen Vorhersagen wie das Lehrermodell trifft, wobei es von der „Weisheit“ des großen Modells lernt, um effizienter zu werden.

Ein großes, gut trainiertes Modell (Lehrermodell) wird verwendet, um weiche Wahrscheinlichkeiten (Soft Labels) für jedes Beispiel zu erzeugen, die anstelle oder zusätzlich zu den harten Labels (z. B. 0 oder 1) verwendet werden.

Das kleinere Schülermodell wird darauf trainiert, diese Soft Labels nachzuahmen, was oft dazu führt, dass das Schülermodell besser generalisiert und ähnliche Ergebnisse wie das Lehrermodell liefert, aber mit viel weniger Ressourcen.

Wie funktioniert Knowledge Distillation?

Effizienz: Ermöglicht es, komplexe Modelle auf einfacheren Hardware-Setups zu deployen.

Kompromiss: Ermöglicht eine gute Balance zwischen Modellgröße, Rechenzeit und Genauigkeit.

Vorteile der Knowledge Distillation:

Knowledge Distillation wird oft in mobilen Anwendungen verwendet, bei denen Speicher- und Rechenressourcen begrenzt sind, aber dennoch hohe Modellleistung gefordert wird.

Anwendungsbeispiele:

Knowledge Distillation nutzt ein großes Modell, um ein kleineres Modell zu trainieren, das ähnlich gute Ergebnisse bei deutlich reduzierter Komplexität erzielt. Beide Techniken sind entscheidend für den Einsatz maschineller Lernmodelle in ressourcenbeschränkten Umgebungen wie mobilen Geräten oder eingebetteten Systemen.
