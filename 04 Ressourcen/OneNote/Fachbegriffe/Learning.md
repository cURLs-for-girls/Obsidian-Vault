---
tags: [onenote, aivengers]
---

# Learning

Algorithmus 
Typ 
Stärke 
Schwäche 
PCA 
Linear 
Schnell, deterministisch, global 
Erkennt keine nichtlinearen 
Strukturen 
t-SNE 
Nichtlinear 
Tolle lokale Cluster- 
Langsam bei großen Daten, 
Visualisierung 
nicht deterministisch 
UMAP 
Nichtlinear 
Schneller als t-SNE, besser 
Komplexere Hyperparameter 
globale Struktur 
Autoencoder 
Deep Learning 
Sehr flexibel, auch für 
Braucht viel Training und Daten 
Rekonstruktion 
LDA 
Linear (supervised) 
Maximiert Klassentrennung 
Braucht Labels, nur linear 
Isomap 
Nichtlinear 
Geodätische Abstände -> gut 
Sensibel gegenüber Rauschen 
für "Manifolds" ...Algorithmus 
Typ 
Stärke 
Schwäche 
PCA 
Linear 
Schnell, deterministisch, global 
Erkennt keine nichtlinearen 
Strukturen 
t-SNE 
Nichtlinear 
Tolle lokale Cluster- 
Langsam bei großen Daten, 
Visualisierung 
nicht deterministisch 
UMAP 
Nichtlinear 
Schneller als t-SNE, besser 
Komplexere Hyperparameter 
globale Struktur 
Autoencoder 
Deep Learning 
Sehr flexibel, auch für 
Braucht viel Training und Daten 
Rekonstruktion 
LDA 
Linear (supervised) 
Maximiert Klassentrennung 
Braucht Labels, nur linear 
Isomap 
Nichtlinear 
Geodätische Abstände -> gut 
Sensibel gegenüber Rauschen 
für "Manifolds"

Aktivierungsfunktionen im Überblick 
Funktion 
Formel 
Output-Range 
Typischer Einsatz 
Sigmoid 
o(x) = 
1 
0 bis 1 
Binäre Klassifikation (Output- 
1+ e-x 
Layer) 
Tanh 
tanh(x) = 
er - ex 
-1 bis 1 
Hidden Layers, RNNs 
er + e-x 
ReLU 
f(x)=max(0,x) 
O bis œ 
Hidden Layers in Deep 
Networks (CNNs, MLPs) 
Softmax 
o(xi) = 
€™i 
0 bis 1 (Summe = 1) 
Multi-Class-Klassifikation 
(Output-Layer) ...Aktivierungsfunktionen im Überblick 
Funktion 
Formel 
Output-Range 
Typischer Einsatz 
Sigmoid 
o(x) = 
1 
0 bis 1 
Binäre Klassifikation (Output- 
1+ e-x 
Layer) 
Tanh 
tanh(x) = 
er - ex 
-1 bis 1 
Hidden Layers, RNNs 
er + e-x 
ReLU 
f(x)=max(0,x) 
O bis œ 
Hidden Layers in Deep 
Networks (CNNs, MLPs) 
Softmax 
o(xi) = 
€™i 
0 bis 1 (Summe = 1) 
Multi-Class-Klassifikation 
(Output-Layer)

Das Grundprinzip: Boosting 
XGBoost baut sequenziell viele schwache Entscheidungsbäume auf, wobei jeder neue Baum die Fehler des vorherigen 
korrigiert: 2 
1. Trainiere den ersten Baum auf den Daten 
2. Berechne die Fehler (Residuen) 
3. Trainiere den nächsten Baum auf diesen Fehlern 
4. Wiederhole - bis das Ensemble stark genug ist 
Am Ende werden alle Bäume zusammenaddiert zu einem einzigen, starken Modell. ...Das Grundprinzip: Boosting 
XGBoost baut sequenziell viele schwache Entscheidungsbäume auf, wobei jeder neue Baum die Fehler des vorherigen 
korrigiert: 2 
1. Trainiere den ersten Baum auf den Daten 
2. Berechne die Fehler (Residuen) 
3. Trainiere den nächsten Baum auf diesen Fehlern 
4. Wiederhole - bis das Ensemble stark genug ist 
Am Ende werden alle Bäume zusammenaddiert zu einem einzigen, starken Modell.

Supervised Learning - Überblick 
Beim Supervised Learning wird ein Modell mit gelabelten Trainingsdaten trainiert - d.h. jeder Eingabe ist bereits die 
richtige Antwort zugeordnet. Das Ziel ist, eine Funktion zu lernen, die auch bei neuen, unbekannten Daten genaue 
Vorhersagen liefert. Es gibt zwei Hauptaufgaben: Classification und Regression. 
1 
2 
Classification (Klassifikation) 
Das Modell ordnet eine Eingabe einer diskreten Klasse/Kategorie zu. Der Output ist ein Label, kein Zahlenwert. 3 
· Binäre Klassifikation: nur 2 Klassen (z.B. Spam / kein Spam) 
4 
. Multiclass: mehr als 2 Klassen (z.B. Bildklassifikation: Katze, Hund, Vogel) 
4 
. Typische Algorithmen: Logistische Regression, SVM, k-NN, Decision Tree, Neuronales Netz 
5 
· Beispiele: Spam-Filter, Betrugserkennung, Krankheitsdiagnose 
Regression 
Das Modell sagt einen kontinuierlichen numerischen Wert voraus. Der Output ist eine Zahl auf einer Skala. 4 
· Lineare Regression: eine unabhängige Variable -> Gerade durch Punktwolke 
4 
· Multiple lineare Regression: mehrere unabhängige Variablen 
4 
· Polynomiale Regression: nicht-linearer Zusammenhang 
4 
. Typische Algorithmen: Lineare Regression, Decision Tree, Random Forest, SVR, Neuronales Netz 5 
· Beispiele: Hauspreisvorhersage, Wetterprognose, Umsatzschätzung 
3 ...Supervised Learning - Überblick 
Beim Supervised Learning wird ein Modell mit gelabelten Trainingsdaten trainiert - d.h. jeder Eingabe ist bereits die 
richtige Antwort zugeordnet. Das Ziel ist, eine Funktion zu lernen, die auch bei neuen, unbekannten Daten genaue 
Vorhersagen liefert. Es gibt zwei Hauptaufgaben: Classification und Regression. 
1 
2 
Classification (Klassifikation) 
Das Modell ordnet eine Eingabe einer diskreten Klasse/Kategorie zu. Der Output ist ein Label, kein Zahlenwert. 3 
· Binäre Klassifikation: nur 2 Klassen (z.B. Spam / kein Spam) 
4 
. Multiclass: mehr als 2 Klassen (z.B. Bildklassifikation: Katze, Hund, Vogel) 
4 
. Typische Algorithmen: Logistische Regression, SVM, k-NN, Decision Tree, Neuronales Netz 
5 
· Beispiele: Spam-Filter, Betrugserkennung, Krankheitsdiagnose 
Regression 
Das Modell sagt einen kontinuierlichen numerischen Wert voraus. Der Output ist eine Zahl auf einer Skala. 4 
· Lineare Regression: eine unabhängige Variable -> Gerade durch Punktwolke 
4 
· Multiple lineare Regression: mehrere unabhängige Variablen 
4 
· Polynomiale Regression: nicht-linearer Zusammenhang 
4 
. Typische Algorithmen: Lineare Regression, Decision Tree, Random Forest, SVR, Neuronales Netz 5 
· Beispiele: Hauspreisvorhersage, Wetterprognose, Umsatzschätzung 
3

Classification vs. Regression auf einen Blick 
Merkmal 
Classification 
Regression 
Output 
Diskrete Klasse 
Kontinuierlicher Wert 
Frage 
„Was ist es?" 
„Wie viel / wie viele?" 
Beispiel 
Spam oder kein Spam? 
Wie teuer ist das Haus? 
Loss-Funktion 
Cross-Entropy 
Mean Squared Error (MSE) 
Bewertungsmetrik 
Accuracy, F1-Score 
RMSE, MAE 
2 
Confusion Matrix 
Die Confusion Matrix bewertet Classification-Modelle und zeigt, wie oft das Modell richtig/falsch liegt. Sie besteht aus 4 
Zellen: 
6 
Vorhergesagt: Positiv 
Vorhergesagt: Negativ 
Tatsächlich: Positiv 
TP (True Positive) 
FN (False Negative) X 
Tatsächlich: Negativ 
FP (False Positive) 
X 
TN (True Negative) ...Classification vs. Regression auf einen Blick 
Merkmal 
Classification 
Regression 
Output 
Diskrete Klasse 
Kontinuierlicher Wert 
Frage 
„Was ist es?" 
„Wie viel / wie viele?" 
Beispiel 
Spam oder kein Spam? 
Wie teuer ist das Haus? 
Loss-Funktion 
Cross-Entropy 
Mean Squared Error (MSE) 
Bewertungsmetrik 
Accuracy, F1-Score 
RMSE, MAE 
2 
Confusion Matrix 
Die Confusion Matrix bewertet Classification-Modelle und zeigt, wie oft das Modell richtig/falsch liegt. Sie besteht aus 4 
Zellen: 
6 
Vorhergesagt: Positiv 
Vorhergesagt: Negativ 
Tatsächlich: Positiv 
TP (True Positive) 
FN (False Negative) X 
Tatsächlich: Negativ 
FP (False Positive) 
X 
TN (True Negative)

Warum Metriken bei Regression? 
Bei Regression gibt es keinen simplen „richtig/falsch“-Vergleich wie bei Classification - das Modell sagt kontinuierliche 
Werte voraus, daher misst man den durchschnittlichen Fehler zwischen Vorhersage y und tatsächlichem Wert y. Die vier 
Kern-Metriken sind MAE, MSE, RMSE und R2. 
1 
MAE - Mean Absolute Error 
Der Durchschnitt der absoluten Abweichungen - robust gegenüber Ausreißern: 2 
MAE = - 
I 
yi 
n 
· Wert 0 = perfekt; je kleiner, desto besser 
3 
· Einheit = gleiche Einheit wie Zielgröße (z.B. €, ℃) 
· Vorteil: leicht interpretierbar, Ausreißer werden nicht übergewichtet 
· Nachteil: gibt keinen Hinweis, ob Fehler groß oder klein relativ zur Skala sind 
MSE - Mean Squared Error 
Wie MAE, aber die Fehler werden quadriert - große Fehler werden stärker bestraft: 
4 
MSE = 
n 
i= 
· 
Vorteil: bestraft Ausreißer stark -> sinnvoll, wenn große Fehler kritisch sind 
. Nachteil: Einheit ist quadriert (z.B. €2) - schwer direkt interpretierbar 2 
RMSE - Root Mean Squared Error 
Die Wurzel aus MSE - bringt den Fehler zurück in die Originaleinheit: 5 
RMSE = VMSE 
· Die am häufigsten verwendete Regression-Metrik 3 
· Wenn RMSE = 15, liegen Vorhersagen typischerweise ~15 Einheiten daneben 
· Wie MSE sensitiv gegenüber Ausreißern, aber besser interpretierbar ...Warum Metriken bei Regression? 
Bei Regression gibt es keinen simplen „richtig/falsch“-Vergleich wie bei Classification - das Modell sagt kontinuierliche 
Werte voraus, daher misst man den durchschnittlichen Fehler zwischen Vorhersage y und tatsächlichem Wert y. Die vier 
Kern-Metriken sind MAE, MSE, RMSE und R2. 
1 
MAE - Mean Absolute Error 
Der Durchschnitt der absoluten Abweichungen - robust gegenüber Ausreißern: 2 
MAE = - 
I 
yi 
n 
· Wert 0 = perfekt; je kleiner, desto besser 
3 
· Einheit = gleiche Einheit wie Zielgröße (z.B. €, ℃) 
· Vorteil: leicht interpretierbar, Ausreißer werden nicht übergewichtet 
· Nachteil: gibt keinen Hinweis, ob Fehler groß oder klein relativ zur Skala sind 
MSE - Mean Squared Error 
Wie MAE, aber die Fehler werden quadriert - große Fehler werden stärker bestraft: 
4 
MSE = 
n 
i= 
· 
Vorteil: bestraft Ausreißer stark -> sinnvoll, wenn große Fehler kritisch sind 
. Nachteil: Einheit ist quadriert (z.B. €2) - schwer direkt interpretierbar 2 
RMSE - Root Mean Squared Error 
Die Wurzel aus MSE - bringt den Fehler zurück in die Originaleinheit: 5 
RMSE = VMSE 
· Die am häufigsten verwendete Regression-Metrik 3 
· Wenn RMSE = 15, liegen Vorhersagen typischerweise ~15 Einheiten daneben 
· Wie MSE sensitiv gegenüber Ausreißern, aber besser interpretierbar

R2 - Coefficient of Determination 
Misst nicht den Fehler, sondern wie viel der Varianz der Daten das Modell erklärt: 3 
R2 = 1 - 
SSE 
SST 
· R2 = 1 -> Modell erklärt alles (perfekt) 
· R2 = 0 -> Modell ist so gut wie der Mittelwert 
· R2 < 0 -> Modell ist schlechter als simpler Mittelwert 
6 
· Beispiel: R2 = 0.75 -> Modell erklärt 75% der Varianz 
7 
Schnellvergleich 
Metrik 
Formel-Kern 
Einheit 
Ausreißer-sensitiv 
Zielwert 
MAE 
Ø absoluter Fehler 
Original 
Nein 
MSE 
Ø quadrierter Fehler 
Quadriert 
Ja 
RMSE 
VMSE 
Original 
Ja 
> 0 
R2 
Varianzanteil erklärt 
Einheitenlos 
Nein 
-> 1 
· Faustregel: RMSE wenn Ausreißer wichtig sind, MAE wenn Robustheit gefragt ist, R2 um das Modell im 
Gesamtkontext zu beurteilen. 
1 
4 ...R2 - Coefficient of Determination 
Misst nicht den Fehler, sondern wie viel der Varianz der Daten das Modell erklärt: 3 
R2 = 1 - 
SSE 
SST 
· R2 = 1 -> Modell erklärt alles (perfekt) 
· R2 = 0 -> Modell ist so gut wie der Mittelwert 
· R2 < 0 -> Modell ist schlechter als simpler Mittelwert 
6 
· Beispiel: R2 = 0.75 -> Modell erklärt 75% der Varianz 
7 
Schnellvergleich 
Metrik 
Formel-Kern 
Einheit 
Ausreißer-sensitiv 
Zielwert 
MAE 
Ø absoluter Fehler 
Original 
Nein 
MSE 
Ø quadrierter Fehler 
Quadriert 
Ja 
RMSE 
VMSE 
Original 
Ja 
> 0 
R2 
Varianzanteil erklärt 
Einheitenlos 
Nein 
-> 1 
· Faustregel: RMSE wenn Ausreißer wichtig sind, MAE wenn Robustheit gefragt ist, R2 um das Modell im 
Gesamtkontext zu beurteilen. 
1 
4

Was ist Unsupervised Learning? 
Im Gegensatz zu Supervised Learning arbeitet Unsupervised Learning ohne gelabelte Daten - der Algorithmus sucht 
selbstständig nach versteckten Mustern, Strukturen und Gruppierungen. Es gibt drei Haupt-Methoden: Clustering, 
Dimensionsreduktion und Assoziationsanalyse. 
2 
1. Clustering 
Daten werden in natürliche Gruppen (Cluster) eingeteilt, ohne vorher zu wissen, wie viele oder welche Gruppen existieren. 
Datenpunkte innerhalb eines Clusters sind sich ähnlich, zwischen Clustern verschieden. 3 
Algorithmus 
Funktionsweise 
K-Means 
Teilt Daten in k Gruppen; jeder 
Punkt -> nächstgelegener 
Mittelpunkt 
3 
Hierarchisches Clustering 
Baut einen Baum (Dendrogram) 
von Ähnlichkeiten auf - kein 
festes k nötig 
4 
DBSCAN 
Findet Cluster beliebiger Form; 
erkennt Ausreißer automatisch 
4 
· Anwendung: Kundensegmentierung, Dokumentengruppierung, Bildkompression 5 ...Was ist Unsupervised Learning? 
Im Gegensatz zu Supervised Learning arbeitet Unsupervised Learning ohne gelabelte Daten - der Algorithmus sucht 
selbstständig nach versteckten Mustern, Strukturen und Gruppierungen. Es gibt drei Haupt-Methoden: Clustering, 
Dimensionsreduktion und Assoziationsanalyse. 
2 
1. Clustering 
Daten werden in natürliche Gruppen (Cluster) eingeteilt, ohne vorher zu wissen, wie viele oder welche Gruppen existieren. 
Datenpunkte innerhalb eines Clusters sind sich ähnlich, zwischen Clustern verschieden. 3 
Algorithmus 
Funktionsweise 
K-Means 
Teilt Daten in k Gruppen; jeder 
Punkt -> nächstgelegener 
Mittelpunkt 
3 
Hierarchisches Clustering 
Baut einen Baum (Dendrogram) 
von Ähnlichkeiten auf - kein 
festes k nötig 
4 
DBSCAN 
Findet Cluster beliebiger Form; 
erkennt Ausreißer automatisch 
4 
· Anwendung: Kundensegmentierung, Dokumentengruppierung, Bildkompression 5

2. Dimensionsreduktion 
Hochdimensionale Daten werden auf weniger Dimensionen reduziert, ohne wichtige Information zu verlieren. Nützlich zur 
Visualisierung und als Vorverarbeitungsschritt. 
5 
Algorithmus 
Beschreibung 
PCA (Principal Component 
Findet die Richtungen größter 
Analysis) 
Varianz und projiziert dort hin 
4 
t-SNE 
Optimiert für 2D/3D- 
Visualisierung 
hochdimensionaler Daten 
5 
NMF (Non-negative Matrix 
Zerlegt Daten in nicht-negative 
Factorization) 
Komponenten, gut für Text/ 
Bilder 
14 
· Anwendung: Feature-Engineering vor ML-Training, Datenvisualisierung, Rauschreduktion 
3. Assoziationsanalyse 
Findet häufig gemeinsam auftretende Muster in großen Datensätzen. 
6 
. Apriori-Algorithmus: Sucht häufige Itemsets schrittweise, klassisch für Warenkorbanalyse 
4 
· FP-Growth: Schnellere Alternative zu Apriori 
4 
· Anwendung: „Kunden, die X kauften, kauften auch Y" > Recommendation Engines, Cross-Selling 6 ...2. Dimensionsreduktion 
Hochdimensionale Daten werden auf weniger Dimensionen reduziert, ohne wichtige Information zu verlieren. Nützlich zur 
Visualisierung und als Vorverarbeitungsschritt. 
5 
Algorithmus 
Beschreibung 
PCA (Principal Component 
Findet die Richtungen größter 
Analysis) 
Varianz und projiziert dort hin 
4 
t-SNE 
Optimiert für 2D/3D- 
Visualisierung 
hochdimensionaler Daten 
5 
NMF (Non-negative Matrix 
Zerlegt Daten in nicht-negative 
Factorization) 
Komponenten, gut für Text/ 
Bilder 
14 
· Anwendung: Feature-Engineering vor ML-Training, Datenvisualisierung, Rauschreduktion 
3. Assoziationsanalyse 
Findet häufig gemeinsam auftretende Muster in großen Datensätzen. 
6 
. Apriori-Algorithmus: Sucht häufige Itemsets schrittweise, klassisch für Warenkorbanalyse 
4 
· FP-Growth: Schnellere Alternative zu Apriori 
4 
· Anwendung: „Kunden, die X kauften, kauften auch Y" > Recommendation Engines, Cross-Selling 6

4. Anomalieerkennung 
Das Modell lernt, wie „normale" Daten aussehen, und schlägt Alarm bei Abweichungen. 6 
. Autoencoders: Neuronales Netz rekonstruiert Daten; hoher Rekonstruktionsfehler = Anomalie 7 
· One-Class SVM: Lernt die Grenze normaler Daten 7 
· Anwendung: Betrugserkennung, IT-Security, Qualitätskontrolle in der Produktion 6 
Supervised vs. Unsupervised - Kern-Unterschied 
Supervised 
Unsupervised 
Daten 
Gelabelt (mit Antworten) 
Ungelabelt (ohne Antworten) 
Ziel 
Vorhersage machen 
Muster entdecken 
Beispiel 
Spam-Erkennung 
Kundensegmentierung 
Evaluation 
Klar (Accuracy, RMSE ... ) 
Schwieriger (subjektiv) 
8 ...4. Anomalieerkennung 
Das Modell lernt, wie „normale" Daten aussehen, und schlägt Alarm bei Abweichungen. 6 
. Autoencoders: Neuronales Netz rekonstruiert Daten; hoher Rekonstruktionsfehler = Anomalie 7 
· One-Class SVM: Lernt die Grenze normaler Daten 7 
· Anwendung: Betrugserkennung, IT-Security, Qualitätskontrolle in der Produktion 6 
Supervised vs. Unsupervised - Kern-Unterschied 
Supervised 
Unsupervised 
Daten 
Gelabelt (mit Antworten) 
Ungelabelt (ohne Antworten) 
Ziel 
Vorhersage machen 
Muster entdecken 
Beispiel 
Spam-Erkennung 
Kundensegmentierung 
Evaluation 
Klar (Accuracy, RMSE ... ) 
Schwieriger (subjektiv) 
8
