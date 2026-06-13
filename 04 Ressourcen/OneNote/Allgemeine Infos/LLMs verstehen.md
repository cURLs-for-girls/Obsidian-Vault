---
tags: [onenote, aivengers]
---

# LLMs verstehen 

LLMs verstehen

BERT / GPT

BERT ist ein typisches Encoder-Modell. Es verarbeitet den gesamten Input-Text auf einmal und analysiert den Kontext bidirektional – ideal für Aufgaben wie Textklassifizierung oder das Vorhersagen maskierter Wörter (“Lücken füllen”).

•	GPT ist ein typisches Decoder-Modell. Es erzeugt Text schrittweise, betrachtet den bereits generierten Kontext und „entscheidet“, wie es weitergeht. Das macht GPT besonders geeignet für generative Aufgaben wie Textproduktion oder Übersetzungen.

•	Bei BERT wird eine Lücke im Input erstellt, und das Encoder-Modell sagt das fehlende Wort voraus.

•	Bei GPT wird sequentiell Text weiter erzeugt (Decoder), basierend auf dem schon vorhandenen Kontext.

Das Bild zeigt das sehr anschaulich:

•	BERT = Encoder-Modell

•	GPT = Decoder-Modell

BERT steht für “Bidirectional Encoder Representations from Transformers” und ist ein KI-Modell, das von Google entwickelt wurde. Es basiert auf der Transformer-Architektur und ist spezialisiert darauf, Sprache zu verstehen, indem es den Kontext eines Wortes sowohl von links als auch von rechts betrachtet – also bidirektional.

BERT nutzt eine Technik namens “Masked Language Model”: Ein paar Wörter im Text werden ausgeblendet (maskiert), und das Modell versucht, die fehlenden Wörter anhand des gesamten Satzkontexts richtig vorherzusagen. Dadurch kann BERT sehr präzise Bedeutungen, Zusammenhänge und Beziehungen zwischen Wörtern erkennen.

BERT wird vor allem für Aufgaben wie Textklassifizierung, Fragebeantwortung oder die Verbesserung von Suchmaschinen eingesetzt. Seine bidirektionale Analyse hebt es von früheren Sprachmodellen ab, die den Text meist nur in eine Richtung betrachtet haben.

---------------------------------------------

Tokenisierung

•	Tokenization bedeutet, dass der ursprüngliche Text (z.B. ein Satz) in kleinere Einheiten zerlegt wird – meist Wörter oder Wortteile („Tokens“). Jeder Token bekommt eine eindeutige Nummer zugewiesen. Beispiel: Aus „Ich mag KI.“ wird eine Liste wie  (jede Zahl steht für ein Token).

•	Embeddings sind die nächste Stufe: Die Liste der Token-Nummern wird in mathematische Vektoren umgewandelt. Ein Embedding ist also ein Zahlenvektor, der die Bedeutung und die Eigenschaften jedes Tokens so darstellt, dass Maschinen sie weiterverarbeiten können. Für jeden Token entsteht ein Vektor (z.B. eine Liste mit 768 Zahlenwerten), der in den Transformator eingespeist wird und die Informationen zum Token repräsentiert.

Zusammengefasst:

•	Tokenization: Text → Token-Liste (Ganzzahlen)

•	Embeddings: Token-Liste → Vektor-Liste (Zahlenvektoren mit Bedeutung)

-----------------------------------------------------

Byte Pair Encoding (BPE) ist eine Methode zur Tokenisierung, die besonders für große Sprachmodelle wie GPT-2 und GPT-3 beliebt ist.

•	BPE startet mit allen einzelnen Zeichen (oder Bytes) als Tokens.

•	Es zählt, welche aufeinanderfolgenden Zeichen-Paare im Trainingskorpus am häufigsten vorkommen.

•	Das häufigste Paar wird zusammengeführt und als neues Token ins Vokabular aufgenommen.

•	Dieser Vorgang wird wiederholt, bis eine bestimmte Vokabulargröße erreicht ist.

Kurz gesagt:

Dadurch entstehen Tokens, die sehr häufigen Wörter direkt codieren (z.B. „das“, „mit“) und seltene Wörter flexibel als Kombinationen von Unter-Tokens abbilden können.

Das macht BPE besonders effizient für die Verarbeitung vieler Sprachen und bedeutet, dass auch unbekannte oder ungewöhnliche Begriffe sinnvoll zerlegt und dargestellt werden können.

1 
Der Transformator besteht aus zwei Hauptkomponenten: 
dem Transformator und dem Decoder. 
2 
Unter Einbettung versteht man das Konzept der Umwandlung von 
Daten in ein Vektorformat. 
3 
Tokenisierung ist der Prozess der Zerlegung von Text in einzelne 
Einheiten, die von einem maschinellen Lernmodell verarbeitet 
werden können. 
4 
Byte Pair Encoding (BPE) ist ein ausgefeilteres 
Tokenisierungsschema, das zum Trainieren von LLMs verwendet 
wird . 
5 
Die Kontextlänge eines Sprachmodells bezieht sich auf die 
maximale Anzahl von Token, die das Modell in einer einzigen 
Eingabe verarbeiten kann. ...1 
Der Transformator besteht aus zwei Hauptkomponenten: 
dem Transformator und dem Decoder. 
2 
Unter Einbettung versteht man das Konzept der Umwandlung von 
Daten in ein Vektorformat. 
3 
Tokenisierung ist der Prozess der Zerlegung von Text in einzelne 
Einheiten, die von einem maschinellen Lernmodell verarbeitet 
werden können. 
4 
Byte Pair Encoding (BPE) ist ein ausgefeilteres 
Tokenisierungsschema, das zum Trainieren von LLMs verwendet 
wird . 
5 
Die Kontextlänge eines Sprachmodells bezieht sich auf die 
maximale Anzahl von Token, die das Modell in einer einzigen 
Eingabe verarbeiten kann.

-----------------------

Parametereffiziente Feinabstimmung (PEFT) bedeutet, dass man große vortrainierte KI-Modelle nicht komplett neu trainiert, sondern nur einen kleinen Teil der Modellparameter gezielt anpasst. Statt das gesamte Netz auf die neue Aufgabe abzustimmen, werden meist spezielle Zusatzschichten (z. B. Adapter, LoRA, Low-Rank Modules) oder ausgewählte Parametergruppen modifiziert.

Dadurch kann ein Modell schnell und ressourcenschonend an neue Aufgaben, Datensätze oder Sprachen angepasst werden, ohne den gesamten Speicherbedarf oder Trainingsaufwand eines vollumfänglichen Finetunings.

ZERO-SHOT- 
EINGABEAUFFO 
EINGABEAUFFO 
RDERUNG MIT 
ANREGUNG ZUR 
KONTEXTBEZO 
WENIGEN 
GEDANKENKET 
GENES LERNEN 
RDERUNG 
AUFNAHMEN 
TE (COT) 
(ICL) 
In-Context-Learning (ICL) beinhaltet die Bereitstellung von Kontext innerhalb 
von Eingabeaufforderungen, der in Form von Beispielen (Few-Shot- 
Eingabeaufforderungen) oder zusätzlichen Informationen erfolgen kann. Dieser 
Ansatz ermöglicht es vortrainierten LLMs, neues Wissen zu assimilieren. 
ICL wird verwendet, wenn Sie: 
· Sie möchten, dass das Modell eine Aufgabe besser versteht und ausführt. 
· versuchen, die Fähigkeit des Modells, angemessene und genaue Ausgaben zu 
generieren, erheblich zu verbessern. ...ZERO-SHOT- 
EINGABEAUFFO 
EINGABEAUFFO 
RDERUNG MIT 
ANREGUNG ZUR 
KONTEXTBEZO 
WENIGEN 
GEDANKENKET 
GENES LERNEN 
RDERUNG 
AUFNAHMEN 
TE (COT) 
(ICL) 
In-Context-Learning (ICL) beinhaltet die Bereitstellung von Kontext innerhalb 
von Eingabeaufforderungen, der in Form von Beispielen (Few-Shot- 
Eingabeaufforderungen) oder zusätzlichen Informationen erfolgen kann. Dieser 
Ansatz ermöglicht es vortrainierten LLMs, neues Wissen zu assimilieren. 
ICL wird verwendet, wenn Sie: 
· Sie möchten, dass das Modell eine Aufgabe besser versteht und ausführt. 
· versuchen, die Fähigkeit des Modells, angemessene und genaue Ausgaben zu 
generieren, erheblich zu verbessern.

--------------------------

VAE

Ein Variational Autoencoder (VAE) ist ein spezielles spezielles neuronales Netzwerk und ein generatives Modell, das im Machine Learning verwendet wird, um komplexe Daten darzustellen, zu komprimieren und neue, ähnliche Daten zu erzeugen.

Grundprinzip:

•	Encoder: Komprimiert die Eingabedaten in eine verteilungsbasierte, latente Repräsentation (z. B. eine Normalverteilung im latenten Raum).

•	Decoder: Nutzt diese latente Verteilung, um die Eingabedaten möglichst genau zu rekonstruieren oder neue ähnliche Daten zu generieren.

Ein VAE besteht aus zwei Teilen:

Im Unterschied zu herkömmlichen Autoencodern kodiert ein VAE nicht einzelne feste Punkte, sondern Wahrscheinlichkeitsverteilungen im latenten Raum. Dadurch kann es neue, nicht exakt gesehene Daten rendertypisch erzeugen.

VAEs werden u.a. für Bilderzeugung, Anomalieerkennung und Dimensionsreduktion genutzt. Sie sind eine wichtige Grundlage für viele generative KI-Modelle
