---
tags: [onenote, aivengers]
---

# BERT / GPT

Output 
Probabilities 
+ 
Softmax 
1 
Linear 
1 
Add & Norm 
BERT 
Feed 
GPT 
Forward 
Add & Norm 
Add & Norm 
Multi-Head 
Feed 
Attention 
Encoder 
Forward 
1 
Nx 
Decoder 
Nx 
Add & Norm 
Add & Norm 
Masked 
Multi-Head 
Multi-Head 
Attention 
Attention 
Positional 
Positional 
Encoding 
Encoding 
Input 
Output 
Embedding 
Embedding 
1 
1 
Inputs 
Outputs 
Die Architektur des Transformators ...Output 
Probabilities 
+ 
Softmax 
1 
Linear 
1 
Add & Norm 
BERT 
Feed 
GPT 
Forward 
Add & Norm 
Add & Norm 
Multi-Head 
Feed 
Attention 
Encoder 
Forward 
1 
Nx 
Decoder 
Nx 
Add & Norm 
Add & Norm 
Masked 
Multi-Head 
Multi-Head 
Attention 
Attention 
Positional 
Positional 
Encoding 
Encoding 
Input 
Output 
Embedding 
Embedding 
1 
1 
Inputs 
Outputs 
Die Architektur des Transformators

3. Die Hauptunterschiede zwischen Encoder und Decoder

Der Encoder verarbeitet die komplette Eingabesequenz auf einmal und berücksichtigt den vollständigen Kontext eines Satzes – also Wörter davor und danach. Er eignet sich deswegen besonders gut für Aufgaben des Textverständnisses.

Der Decoder verarbeitet dagegen eine Sequenz schrittweise und darf nur auf bereits gesehene Tokens zugreifen. Dadurch eignet er sich ideal zur Textgenerierung.

Der Encoder ist also auf Verstehen optimiert, der Decoder auf Generieren.

BERT ist ein reiner Versteher, GPT ein reiner Generator.

4. Die Funktion der einzelnen Komponenten im Bild

Input/Output Embedding:

Diese Schichten übersetzen Tokens in Vektoren, die für das Modell verarbeitbar sind.

Positional Encoding:

Da ein Transformer keinerlei sequentielles Verständnis hat, fügt diese Komponente Informationen über die Position der Tokens im Satz hinzu.

Multi-Head Attention:

Jede Attention-Schicht berechnet, wie stark ein Token sich auf andere Tokens beziehen soll. Mehrere „Köpfe“ erfassen verschiedene Muster gleichzeitig.

Masked Multi-Head Attention:

Hier wird die Zukunft ausgeblendet. Dadurch kann GPT nur auf bereits erzeugte Tokens zugreifen.

Feed Forward Network:

Ein kleines neuronales Netzwerk pro Token, das Transformationen auf der Token-Repräsentation vornimmt.

Add & Norm:

Residual Connection sorgt für stabilen Gradientfluss, LayerNorm stabilisiert die Werteverteilung.

Linear + Softmax:

Wandelt die interne Repräsentation des Decoders in Wahrscheinlichkeiten für das nächste Token um.
