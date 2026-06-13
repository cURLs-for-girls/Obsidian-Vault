---
tags: [onenote, aivengers]
---

# RAG

🧠 Die drei Haupttypen von RAG

Einfachste Form

Arbeitet mit Schlüsselwortsuche (Keyword Search)

Gut für klar strukturierte Texte (z. B. Gesetzestexte, FAQs)

1. Naïve RAG

Vorteil: Schnell, leicht zu implementieren

Nachteil: Versteht keine semantischen Zusammenhänge

Nutzt Vektorsuche (Embeddings + Cosine Similarity)

Optional mit Indexierung

Erkennt inhaltliche Nähe, auch wenn keine gleichen Wörter vorkommen

2. Advanced RAG

Beispiel: „Wie kündige ich mein Abo?“ → findet auch Dokumente mit „Vertragsbeendigung“

Kombiniert naive + advanced Methoden

Menschlichem Feedback

Maschinellem Lernen

Multimodalität (z. B. Bilder + Text)

Optional erweiterbar mit:

3. Modular RAG

Ziel: Maximale Flexibilität und Genauigkeit

📦 Wichtige Begriffe anschaulich erklärt

Ein Embedding ist die Übersetzung eines Begriffs oder Texts in einen Zahlen-Vektor, der die Bedeutung kodiert.

🔢 Embedding

🧠 Denk an ein Wörterbuch im Kopf des LLMs, das jedem Wort eine Position im Raum zuweist.

"Auto" → [0.8, 0.1, ...]

"Fahrzeug" liegt dann ganz in der Nähe.

Beispiele:

Nutzen: So erkennt das System auch semantisch ähnliche Begriffe.

Eine Vektordatenbank speichert nicht den Text, sondern die Zahlen-Vektoren (Embeddings) der Texte.

🧮 Vektordatenbank

wird sie auch als Vektor dargestellt,

dann wird der nächstgelegene Vektor in der Datenbank gesucht (Cosine Similarity).

🔍 Wenn eine Frage gestellt wird:

Analogie:

Wie ein Museum für Bedeutungen – man sucht nicht nach exakten Begriffen, sondern nach „ähnlichen Gedanken“.

Beispiele: Pinecone, Chroma, Deep Lake

Eine Maßzahl, wie ähnlich zwei Vektoren (also Bedeutungen) sind.

🧲 Cosine Similarity

1.0 = identisch

0.0 = orthogonal (keine Ähnlichkeit)

Wertbereich:

Wird genutzt, um die besten Antworten aus der Vektordatenbank zu wählen.

Enhanced Similarity?

Problem bei Naïve RAG:

Es zählt nur exakt gleiche Wörter (z. B. „Vertrag“ ≠ „Kündigung“).

Die Suchbegriffe werden um Synonyme erweitert (z. B. mit WordNet).

Zusätzlich werden Stopwörter entfernt, Wörter lemmatisiert (z. B. „läuft“ → „laufen“).

Die Texte werden dann vektorisiert (meist per TF-IDF).

Danach kommt wieder Cosine Similarity, aber nun auf den semantisch erweiterten Texten.

Lösung mit Enhanced Similarity:

Bildlich erklärt:

Naïve RAG findet nur Dokumente mit dem exakten Wort „Auto“.

Enhanced Similarity denkt mit: „Auto = Fahrzeug = Wagen = PKW“ – und sucht auch nach diesen Begriffen.

Stell dir vor, du suchst in einem Archiv nach „Auto“.

Das funktioniert über ein „Wörterbuch der Bedeutungen“ im Hintergrund (z. B. WordNet oder spaCy).

🧭 Entscheidung: RAG oder Fine-Tuning?

Fine-Tuning

Für dynamische Daten (News etc.)

Für statische, domänenspezifische Daten

Kein Modelltraining nötig

Trainingskosten + Aufwand

Flexibel, sofort nutzbar

Schneller bei wiederholten Aufgaben

Oft ist eine Kombination aus beiden sinnvoll (z. B. fine-tuning auf Basisdaten + RAG für aktuelle Inhalte).

Indexbasierte Suche:

Bei Advanced/Modular RAG gibt es oft tausende bis Millionen Embeddings.

FAISS (Facebook AI Similarity Search)

ScaNN, Annoy, HNSW etc.

Diese werden nicht linear durchsucht, sondern in strukturierten Indizes organisiert:

Diese Indizes ermöglichen sehr schnelle Approximate Nearest Neighbor (ANN)-Suche.

Stell dir eine Bibliothek mit Millionen Texten vor.

Du könntest jede Seite einzeln lesen (= lineare Suche).

Oder du nutzt ein strukturiertes Register, das dich in wenigen Schritten zum Ziel bringt (= indexbasierte Suche).

📌 Was ist Feature Extraction?

Definition:

Extraction meint das gezielte Herausziehen von relevanten Informationen aus einem Dokument – typischerweise nach der Suche.
