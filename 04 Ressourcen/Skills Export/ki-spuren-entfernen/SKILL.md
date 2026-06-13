---
name: ki-spuren-entfernen
description: Use when text sounds AI-generated and needs to match Eva's voice — triggers on "KI-Spuren entfernen", "klingt nach ChatGPT", "Text humanisieren", "natürlicher machen", "entkünstlichen", "zu glatt", "zu formell", or when reviewing text for human feel. Focused on German AI patterns.
---

# KI-Spuren im deutschen Text entfernen

Dieser Skill identifiziert und entfernt typische Muster KI-generierter deutscher Texte und ersetzt sie durch Evas authentische Stimme. Deutschsprachige Modelle haben andere Tells als englischsprachige — Übersetzungen englischer "Signs of AI writing"-Listen helfen oft nur halb.

---

## PRIORITÄT 1 — Interpunktion: vor allem anderen prüfen

Das sind die stärksten KI-Indikatoren. Sie werden **als erstes** gesucht und **ohne Ausnahme** entfernt — bevor der Rest des Texts auch nur angeschaut wird.

### Gedankenstrich (– oder —) als Satztrenner

Jeder Gedankenstrich der Satzteile verbindet oder einen Einschub markiert wird zu zwei Sätzen, einem Komma oder einer Klammer umgebaut. Kein Einzelfall. Keine Ausnahme.

| Vorher | Nachher |
|--------|---------|
| „Storage ist das Fundament – ohne das läuft nichts." | „Storage ist das Fundament. Ohne das läuft nichts." |
| „Der Agent durchsucht Quellen – Berichte, YouTube, Websites – und liefert ein Sizing." | „Der Agent durchsucht Berichte, YouTube und Websites. Das Ergebnis ist ein fertiges Sizing." |
| „Das ist kein Recherche-Tool – das verändert alles." | „Das ist kein Recherche-Tool. Das verändert alles." |

**Faustregel:** Jeden Strich im Text suchen (`–`, `—`, ` - `). Alle umbauen. Fertig.

---

### Semikolon (;) mitten im Satz

Semikolons mitten im Satz sind im natürlichen deutschen Schreiben unüblich. KI setzt sie als Kompromiss zwischen Komma und Punkt.

| Vorher | Nachher |
|--------|---------|
| „Das System ist schnell; es verarbeitet Millionen Anfragen." | „Das System ist schnell. Es verarbeitet Millionen Anfragen." |
| „Wir optimieren die Prozesse; dabei berücksichtigen wir die Anforderungen." | „Wir optimieren die Prozesse und berücksichtigen dabei die Anforderungen." |

**Faustregel:** Jedes Semikolon wird zu einem Punkt oder einem Komma. Immer.

---

### Doppelpunkt als dramatische Pause

Doppelpunkte die eine Pointe "enthüllen" oder Spannung erzeugen sollen sind ein KI-Stilmittel. Erlaubt sind Doppelpunkte nur vor Listen und direkten Zitaten.

| Vorher | Nachher |
|--------|---------|
| „Was mich beschäftigt: Wie gut du den Kunden kennst, kann kein Agent sagen." | „Wie gut du den Kunden kennst, kann kein Agent sagen." |
| „Das Ergebnis: ein kompletter Ausfall." | „Das Ergebnis war ein kompletter Ausfall." |
| „Mein Fazit: Das lohnt sich nicht." | „Das lohnt sich nicht." |

**Faustregel:** Doppelpunkt vor Liste oder Zitat — fine. Doppelpunkt vor einer Aussage die auch ohne ihn stehen könnte — raus.

---

### Checkliste Interpunktion (vor jedem anderen Schritt abhaken)

- [ ] Alle `–` und `—` im Text gefunden und umgebaut?
- [ ] Alle ` - ` (Bindestrich mit Leerzeichen) als Satztrenner gefunden?
- [ ] Alle Semikolons (`;`) entfernt?
- [ ] Alle dramatischen Doppelpunkte entfernt?

Erst wenn diese vier Punkte abgehakt sind, weiter mit den restlichen Mustern.

---

## Eva-spezifisch — Stimme und Stil

**Primäre Stilreferenz:** `[[00 Kontext/Schreibstil.md]]`

Evas Grundton: **locker, direkt, humorvoll. Auf Augenhöhe** — egal ob Entwickler, Manager oder Endkunde.

| Regel | Konkret |
|-------|---------|
| Immer duzen | Kein "Sie", auch nicht bei Kunden oder Management |
| Kurze Sätze | Lieber einen Punkt setzen als weiterschreiben |
| Bildhafte Vergleiche | Kompliziertes über Analogien erklären, die jeder versteht (nicht nur Techies) |
| IT-Fachbegriffe okay | Storage, GPU, Workload, Inference sind fine. Buzzword-Bingo nicht. |
| Kein Corporate-Speak | Keine gestelzte Sprache, keine aufgeblasene Bedeutungszuschreibung |

**Beispiel für Evas Analogiestil:**
> Statt "distributed inference across heterogeneous GPU clusters" → "wie ein Staffellauf: jeder GPU-Node übernimmt einen Teil der Strecke."

**Weitere Verbote (zusätzlich zu den Interpunktionsregeln oben):**
- Aufzählungen von Buzzwords ohne Substanz
- „In einer Welt wo…", „Es ist wichtig zu verstehen dass…", „Letztendlich…"

---

## Arbeitsweise

Wenn ein Text zur Humanisierung vorliegt:

0. **Interpunktion zuerst** — alle Gedankenstriche, Semikolons und dramatischen Doppelpunkte suchen und entfernen (Checkliste oben). Kein weiterer Schritt vor diesem.
1. **Weitere Muster erkennen** — Text systematisch gegen die Kategorien unten scannen
2. **Umschreiben** — problematische Stellen durch natürlichere Alternativen ersetzen
3. **Bedeutung bewahren** — Kernaussage bleibt erhalten
4. **Stimme halten** — Evas Ton: locker, direkt, humorvoll, auf Augenhöhe
5. **Stimme hinzufügen** — bloßes Entfernen reicht nicht. Guter Text hat einen Menschen dahinter.
6. **Finaler KI-Check** — nach dem ersten Durchgang fragen: "Was daran klingt immer noch nach KI?", die verbleibenden Tells benennen und eine zweite, entschärfte Version liefern.

---

## Warum es nicht reicht, nur Muster zu entfernen

Ein Text kann alle unten genannten Muster vermeiden und trotzdem nach KI klingen — nämlich dann, wenn er keine Persönlichkeit hat. Zeichen für seelenlosen, wenn auch "sauberen" Text:

- Alle Sätze gleich lang und gleich gebaut
- Keine Haltung, nur neutrales Referieren
- Keine Widersprüche, keine Ambivalenz, kein Zweifeln
- Keine Ich-Form, wo sie passen würde
- Kein Humor, keine Kante, keine Ecken
- Liest sich wie ein Wikipedia-Artikel, auch wenn es keiner ist

### Wie Stimme entsteht

**Eine Haltung haben.** Nicht nur berichten, sondern reagieren. "Ich weiß ehrlich nicht, was ich davon halten soll" ist menschlicher als eine ausgewogene Pro-Contra-Liste.

**Rhythmus variieren.** Kurze Sätze. Dann längere Sätze, die sich mehr Zeit lassen, bis sie zum Punkt kommen. Mischen.

**Ambivalenz zulassen.** Echte Menschen haben gemischte Gefühle. "Das ist beeindruckend und gleichzeitig unheimlich" schlägt "Das ist beeindruckend."

**Ich-Form, wo sie passt.** Erste Person ist nicht unprofessionell, sondern ehrlich. "Mich beschäftigt dabei…" oder "Was mir nicht aus dem Kopf geht…" signalisieren, dass da jemand denkt.

**Unordnung erlauben.** Perfekte Struktur wirkt algorithmisch. Nebenbemerkungen, halbfertige Gedanken, kleine Abschweifungen sind menschlich.

**Konkret über Gefühle sprechen.** Nicht "das ist besorgniserregend", sondern "es hat was Gespenstisches, dass diese Systeme nachts durchlaufen, ohne dass jemand zuschaut".

**Bei Eva: Analogien nutzen.** Technisches Konzept schwer zu greifen? Eine Alltagsanalogie ist fast immer besser als der Fachbegriff.

---

## Inhaltliche Muster

### 1. Aufgeblasene Bedeutungszuschreibung

**Signalwörter:** "spielt eine entscheidende / wichtige / zentrale Rolle", "von zentraler Bedeutung", "nicht zu unterschätzen", "ein wesentlicher Aspekt", "stellt einen Meilenstein dar", "markiert einen Wendepunkt", "wegweisend", "bahnbrechend", "prägend"

**Problem:** KI-Texte pumpen arbiträre Sachverhalte zu historischen Weichenstellungen auf.

**Vorher:**
> Die Gründung des Vereins im Jahr 1978 markiert einen wichtigen Wendepunkt in der Entwicklung des regionalen Breitensports und spielt bis heute eine zentrale Rolle für die lokale Sportlandschaft.

**Nachher:**
> Der Verein wurde 1978 gegründet und organisiert seitdem die jährliche Regionalmeisterschaft.

---

### 2. Nominalstil-Überdosis

**Signal:** Hohe Dichte an Substantiven auf -ung, -heit, -keit, -tion, -ismus, kombiniert mit schwachen Verben (durchführen, erfolgen, stattfinden, gewährleisten).

**Problem:** Deutsch neigt ohnehin zum Nominalstil. KI-Texte übertreiben das. Ergebnis: schwerfällig, abstrakt, gesichtslos.

**Vorher:**
> Die Durchführung einer Optimierung der Prozesse erfolgt unter Berücksichtigung der Anforderungen zur Gewährleistung einer erfolgreichen Umsetzung.

**Nachher:**
> Wir optimieren die Prozesse und berücksichtigen dabei die Anforderungen.

---

### 3. KI-Lieblingswörter

**Hochfrequente Wörter:** zudem, darüber hinaus, ferner, des Weiteren, insbesondere, wesentlich, essenziell, entscheidend, maßgeblich, umfassend, fundiert, vielfältig, ganzheitlich, facettenreich, zukunftsweisend, leistungsstark, robust, nahtlos, innovativ, spannend, beeindruckend, vielschichtig, nachhaltig (inflationär), Synergie, Mehrwert (als Füllwort)

**Problem:** Diese Wörter kommen in Texten nach 2023 signifikant häufiger vor und treten gehäuft gemeinsam auf.

**Vorher:**
> Zudem bietet die Plattform eine umfassende, nahtlose Integration und stellt insbesondere durch ihren innovativen Ansatz einen entscheidenden Mehrwert dar.

**Nachher:**
> Die Plattform lässt sich ohne Umwege in bestehende Systeme einbinden. Neu ist vor allem die automatische Konfliktauflösung beim Datenabgleich.

---

### 4. Werbesprache in Sachtexten

**Signalwörter:** idyllisch gelegen, eingebettet in, beherbergt, glänzt mit, zeichnet sich aus durch, besticht durch, lockt mit, verzaubert, atemberaubend, beeindruckend, ein absolutes Muss, einzigartig (inflationär), erstklassig, hochwertig, exklusiv

**Vorher:**
> Das idyllisch im Herzen der Altstadt gelegene Hotel besticht durch seine einzigartige Architektur und verzaubert seine Gäste mit einem atemberaubenden Ausblick.

**Nachher:**
> Das Hotel liegt in der Altstadt in einem Gebäude aus dem 18. Jahrhundert. Die Zimmer zum Innenhof sind ruhiger, die zur Straße haben Blick auf den Dom.

---

### 5. Vage Zuschreibungen und Schwammwörter

**Signalwörter:** Expertinnen und Experten zufolge, Fachleute gehen davon aus, Studien zeigen (ohne Quelle), vielfach wird betont, nicht selten, häufig, tendenziell

**Vorher:**
> Studien zeigen, dass Experten zunehmend davon ausgehen, dass Remote-Arbeit einen erheblichen Einfluss auf die Produktivität hat.

**Nachher:**
> Eine Stanford-Studie von 2023 mit 16.000 Teilnehmern fand eine 13 % höhere Produktivität bei vollständig remote arbeitenden Angestellten (Bloom et al., 2023).

---

### 6. Scheintiefe durch Partizipialphrasen

**Signal:** Hauptsatz endet, dann folgt ein Partizip-I-Anhang: "…unterstreichend", "…verdeutlichend", "…darstellend", "…widerspiegelnd".

**Problem:** Aus dem Englischen übernommenes Muster ("-ing"). Wirkt im Deutschen noch künstlicher.

**Vorher:**
> Das Farbkonzept greift Rot, Gold und Grün auf, die regionale Tradition widerspiegelnd und die Verbundenheit mit dem Ort unterstreichend.

**Nachher:**
> Das Farbkonzept greift Rot, Gold und Grün auf. Die Architektin sagt, sie habe damit die Stadtfarben aufgegriffen.

---

### 7. Kopula-Vermeidung

**Signalwörter:** stellt dar, fungiert als, dient als, bildet die Grundlage, nimmt die Rolle ein, verkörpert, repräsentiert

**Problem:** KI-Texte vermeiden einfache "ist"/"sind"-Konstruktionen.

**Vorher:**
> Der Workshop stellt eine wichtige Möglichkeit für Teilnehmende dar und fungiert als Plattform für den fachlichen Austausch.

**Nachher:**
> Der Workshop ist ein offenes Format. Die Teilnehmenden tauschen sich über ihre aktuellen Projekte aus.

---

### 8. "Nicht nur / sondern auch"-Parallelismen

**Typische Formen:** "Nicht nur X, sondern auch Y", "Es geht nicht nur um X, sondern auch um Y", "Keine Frage des Ob, sondern des Wann"

**Vorher:**
> Es geht nicht nur um die technische Umsetzung, sondern auch um die kulturelle Veränderung im Unternehmen.

**Nachher:**
> Technisch ist das lösbar. Schwerer ist, die Leute mitzunehmen.

---

### 9. Dreierfiguren

**Problem:** KI-Texte zwingen Aufzählungen in Dreiergruppen, auch wenn nur zwei Punkte gehaltvoll sind. Oft sind alle drei Begriffe Synonyme voneinander.

**Vorher:**
> Das Tool ist schnell, einfach und effizient — und bietet Klarheit, Struktur und Übersicht.

**Nachher:**
> Das Tool ist schnell. Die Bedienung ist in zehn Minuten gelernt.

---

### 10. Synonymzwang

**Problem:** KI-Modelle haben eingebaute Strafen gegen Wortwiederholung. Im dritten Satz heißt der Protagonist plötzlich "der Held", dann "die zentrale Figur", dann "der Hauptakteur".

**Vorher:**
> Die Protagonistin steht vor vielen Herausforderungen. Die Hauptfigur muss Hindernisse überwinden. Die zentrale Akteurin triumphiert am Ende. Die Heldin kehrt zurück.

**Nachher:**
> Die Protagonistin steht vor einer Reihe von Herausforderungen, überwindet sie und kehrt am Ende zurück.

---

### 11. Falsche Spannweiten

**Problem:** "Von X bis Y"-Konstruktionen, bei denen X und Y nicht auf einer Skala liegen.

**Vorher:**
> Die Reise führt uns vom Urknall bis zur dunklen Materie, vom ersten Stern bis zum kosmischen Netz.

**Nachher:**
> Das Buch behandelt den Urknall, die Sternentstehung und aktuelle Theorien zur dunklen Materie.

---

### 12. Hohle Einleitungsfloskeln

**Typische Formen:** "In der heutigen schnelllebigen Welt…", "Im digitalen Zeitalter…", "In einer zunehmend vernetzten Welt…", "Gerade in Zeiten wie diesen…"

**Vorher:**
> In der heutigen schnelllebigen digitalen Welt gewinnt die Fähigkeit, fokussiert zu arbeiten, zunehmend an Bedeutung.

**Nachher:**
> Fokussiert arbeiten ist schwerer geworden, seit das Handy permanent vibriert.

---

## Stilistische Muster

### 13. Gedankenstrich-Flut

**Problem:** KI-Texte setzen Halbgeviertstriche (–) und Geviertstriche (—) deutlich häufiger als menschliche Texte. Bei Eva: kompromisslos raus, immer, ausnahmslos — laut `[[00 Kontext/Schreibstil.md]]` explizit verboten.

**Vorher:**
> Der Begriff wird vor allem von Institutionen geprägt – nicht von den Betroffenen selbst. Man sagt ja auch nicht "Deutschland, Europa" als Adresse – trotzdem hält sich die Bezeichnung – selbst in offiziellen Dokumenten.

**Nachher:**
> Der Begriff wird vor allem von Institutionen geprägt, nicht von den Betroffenen selbst. Niemand schreibt "Deutschland, Europa" als Adresse, trotzdem taucht die Bezeichnung in offiziellen Dokumenten auf.

**Regel: Null Gedankenstriche. Kein Einzelfall, keine Ausnahme. Jeden Strich umbauen.**

---

### 14. Fettschrift-Inflation

**Problem:** KI-Texte fetten Schlüsselbegriffe mechanisch. Nach dem dritten fettgedruckten Wort pro Absatz trägt die Hervorhebung keine Information mehr.

**Vorher:**
> Es kombiniert **OKRs (Objectives and Key Results)**, **KPIs** und visuelle Strategietools wie den **Business Model Canvas** und die **Balanced Scorecard**.

**Nachher:**
> Es kombiniert OKRs, KPIs und visuelle Strategietools wie den Business Model Canvas und die Balanced Scorecard.

---

### 15. Bullet-Point-Tic mit fetten Labels

**Problem:** KI-Outputs brechen alles in Bullet-Listen, in denen jeder Punkt mit einem fettgedruckten Label und Doppelpunkt startet — auch wo Fließtext natürlicher wäre.

**Vorher:**
> - **Nutzererfahrung:** Die Nutzererfahrung wurde durch ein neues Interface deutlich verbessert.
> - **Performance:** Die Performance wurde durch optimierte Algorithmen gesteigert.
> - **Sicherheit:** Die Sicherheit wurde durch Ende-zu-Ende-Verschlüsselung erhöht.

**Nachher:**
> Das Update bringt eine neue Oberfläche, lädt durch optimierte Algorithmen schneller und verschlüsselt jetzt Ende-zu-Ende.

---

### 16. Emojis in Überschriften und Bullets

**Problem:** KI-Modelle dekorieren Überschriften und Aufzählungen mit Emojis — besonders 🚀, 💡, ✅, 📌, ⚡, 🎯.

**Vorher:**
> 🚀 **Launch-Phase:** Das Produkt startet im Q3

**Nachher:**
> Das Produkt startet im Q3.

---

### 17. Typografische Anführungszeichen

Für deutschen Fließtext sind „Text" (unten-oben) oder »Text« zu bevorzugen. In technischem Kontext "normale" beibehalten. Wichtig: Konsistenz im Dokument.

---

## Kommunikationsmuster

### 18. Chatbot-Reste im Text

**Signalwörter:** "Gerne!", "Natürlich!", "Selbstverständlich!", "Hier ist eine Übersicht…", "Ich hoffe, das hilft", "Lass mich wissen, wenn…", "Gerne erweitere ich das auf Wunsch"

**Vorher:**
> Hier ist ein Überblick zur Französischen Revolution. Ich hoffe, das hilft! Lass mich wissen, wenn ich einen Abschnitt vertiefen soll.

**Nachher:**
> Die Französische Revolution begann 1789, als Finanzkrise und Brotknappheit zusammen mit politischer Unzufriedenheit zur Erstürmung der Bastille führten.

---

### 19. Wissens-Cut-Off-Disclaimer

**Signalwörter:** "Nach meinem letzten Trainingsstand…", "Basierend auf den mir verfügbaren Informationen…", "Soweit öffentlich bekannt…"

**Vorher:**
> Basierend auf den mir verfügbaren Informationen scheint das Unternehmen irgendwann in den 1990er Jahren gegründet worden zu sein.

**Nachher:**
> Das Unternehmen wurde laut Handelsregistereintrag 1994 gegründet.

---

### 20. Übertriebene Höflichkeit und Zustimmung

**Problem:** Ein devoter, gefällig-zustimmender Tonfall.

**Vorher:**
> Das ist eine sehr gute Frage! Sie haben absolut recht, dass dieses Thema komplex ist.

**Nachher:**
> Die wirtschaftlichen Faktoren sind hier tatsächlich der entscheidende Punkt.

---

## Füllwörter und Absicherung

### 21. Füllphrasen

**Vorher → Nachher:**
- "Um dieses Ziel zu erreichen" → weglassen oder direkt einsteigen
- "Zum jetzigen Zeitpunkt" → "jetzt"
- "Aufgrund der Tatsache, dass" → "weil"
- "Für den Fall, dass" → "falls"
- "Es ist wichtig zu beachten, dass die Zahlen zeigen" → "Die Zahlen zeigen"
- "Es sei an dieser Stelle erwähnt" → weglassen
- "Im Rahmen von X" → "bei X"
- "Zur Verfügung stellen" → "geben" oder "bieten"

---

### 22. Übermäßiges Hedging

**Problem:** Jede Aussage wird dreifach abgesichert.

**Vorher:**
> Es könnte potenziell möglicherweise argumentiert werden, dass die Maßnahme unter Umständen einen gewissen Einfluss auf die Ergebnisse haben könnte.

**Nachher:**
> Die Maßnahme könnte die Ergebnisse beeinflussen.

---

### 23. Gedankenstriche als Struktur-Krücke

**Signal:** Em-Dashes mitten im Satz als Einschübe oder Kontraste.

**Vorher:**
> Der Agent recherchiert öffentliche Quellen — Geschäftsberichte, YouTube, Partnerseiten — und liefert danach ein fertiges Sizing.

**Nachher:**
> Der Agent durchsucht Geschäftsberichte, YouTube-Auftritte und Partnerseiten. Das Ergebnis ist ein fertiges Sizing.

**Regel: Null Gedankenstriche. Kein Einzelfall, keine Ausnahme. Jeden Strich umbauen.**

---

### 24. Doppelpunkt-Dramatik

**Signal:** Sätze, die mit einem Doppelpunkt "enthüllen" — "Was mich beschäftigt: [Erkenntnis]" oder "Das Ergebnis: ein Erfolg."

**Problem:** Erzwungene Tiefe durch Interpunktion statt durch Inhalt. Bei Eva laut `[[00 Kontext/Schreibstil.md]]` explizit verboten.

**Vorher:**
> Was mich beschäftigt: Wie gut du den Kunden kennst, kann dir kein Agent sagen.

**Nachher:**
> Wie gut du den Kunden kennst, kann dir dabei kein Agent sagen.

**Faustregel: Doppelpunkte für Listen und Zitate sind fine. Als rhetorisches Stilmittel zur Spannungserzeugung raus.**

---

### 25. Generische Optimismus-Schlüsse

**Problem:** Vage, aufmunternde Schlussabsätze ohne Inhalt.

**Vorher:**
> Die Zukunft des Unternehmens sieht vielversprechend aus. Spannende Zeiten liegen vor ihm auf dem Weg zur Exzellenz.

**Nachher:**
> Das Unternehmen plant, nächstes Jahr zwei weitere Standorte zu eröffnen.

---

## Ablauf

1. **Interpunktions-Scan zuerst** — alle `–`, `—`, ` - `, `;` und dramatischen `:` suchen, alle vier Checklisten-Punkte abhaken
2. Text sorgfältig lesen
3. Weitere Muster identifizieren (Kategorien unten)
4. Jede problematische Stelle umschreiben — bei Eva immer duzen
5. Kontrolle der überarbeiteten Version:
   - Kein einziger Gedankenstrich, kein Semikolon, kein dramatischer Doppelpunkt?
   - Liest sich laut gelesen natürlich?
   - Satzlängen variieren?
   - Konkrete Details statt vager Ausdrücke?
   - Evas Ton: locker, direkt, humorvoll?
   - Einfache Verben (ist, hat, macht) statt Umschreibungen?
   - Bildhafte Analogie eingebaut wo sinnvoll?
5. Erste überarbeitete Fassung präsentieren
6. Interne Rückfrage: "Was klingt daran noch nach KI?"
7. Verbleibende Tells kurz benennen (falls vorhanden)
8. Zweite, bereinigte Fassung präsentieren
9. Optional: kurze Liste der vorgenommenen Änderungen

---

## Ausgabeformat

1. Erste Überarbeitung
2. "Was klingt daran noch nach KI?" (knappe Stichpunkte)
3. Zweite, finale Überarbeitung
4. Optional: kurze Zusammenfassung der Änderungen

---

## Vollständiges Beispiel

**Vorher (KI-verdächtig):**
> Gerne! Hier ist ein kurzer Text zum Thema. Ich hoffe, das hilft!
>
> In der heutigen schnelllebigen digitalen Welt stellt KI-gestützte Programmierung einen Meilenstein in der Entwicklung moderner Softwareentwicklung dar und spielt eine zunehmend entscheidende Rolle in der Art, wie Teams Code produzieren. Diese wegweisenden Tools — eingebettet in einen sich rasant wandelnden Technologielandschaft — prägen die Arbeitsweise von Entwicklerinnen und Entwicklern nachhaltig und unterstreichen die wachsende Bedeutung automatisierter Assistenzsysteme.
>
> Im Kern geht es nicht nur um die Automatisierung repetitiver Aufgaben, sondern auch um die Freisetzung kreativer Potenziale. Die Tools fungieren als Partner. Die Systeme bilden die Grundlage für Innovation. Die Assistenten stellen einen Katalysator dar.
>
> Zudem zeigen Studien, dass die Akzeptanz rasant wächst — von einzelnen Enthusiasten bis hin zu ganzen Unternehmen, von kleinen Teams bis zu multinationalen Konzernen.
>
> - 💡 **Geschwindigkeit:** Die Codeerstellung wurde deutlich beschleunigt.
> - 🚀 **Qualität:** Die Qualität wurde durch verbesserte Trainingsmethoden gesteigert.
> - ✅ **Verbreitung:** Die Nutzung wächst kontinuierlich weiter.
>
> Abschließend lässt sich sagen: Die Zukunft sieht vielversprechend aus. Lass mich wissen, wenn ich einen Abschnitt vertiefen soll!

**Erste Überarbeitung:**
> KI-Assistenten beschleunigen manche Arbeit. Nicht alles. Architektur definitiv nicht.
>
> Stark sind sie bei Boilerplate: Konfigs, Testgerüste, stupide Refactorings. Stark sind sie auch darin, richtig zu klingen, obwohl sie daneben liegen. Ich hab schon Vorschläge übernommen, die kompilierten, den Linter passierten und trotzdem an der Aufgabe vorbeigingen.
>
> Die Leute, mit denen ich drüber rede, teilen sich grob in zwei Lager. Die einen benutzen es wie Autocomplete für Fleißarbeit und reviewen jede Zeile. Die anderen schalten's wieder ab, weil ständig Patterns aus abgekündigten internen Libs vorgeschlagen werden.
>
> Die Produktivitätsmetriken sind schwer zu greifen. GitHub sagt, Copilot-Nutzer würden 30 % der Vorschläge übernehmen. Aber Übernahme heißt nicht korrekt, und korrekt heißt nicht wertvoll.

**Was klingt daran noch nach KI?**
- Rhythmus noch zu aufgeräumt, saubere Kontraste
- Schluss noch ein bisschen offen ohne echte Haltung

**Zweite, bereinigte Fassung:**
> KI-Assistenten machen dich beim langweiligen Teil schneller. Nicht bei allem. Architektur definitiv nicht.
>
> Stell dir vor, du hast einen guten Sous-Chef. Schnippeln, Sauce anrühren, Teller anrichten — kein Problem. Entscheiden, was heute auf die Karte kommt — das bist immer noch du.
>
> Ich hab selbst schon Vorschläge angenommen, die kompilierten, durch den Linter kamen und trotzdem das Falsche taten — weil ich aufgehört hatte aufzupassen. Das ist der blinde Fleck dieser Tools.
>
> Die Produktivitätszahlen? Glatt wie Seife. Übernahme heißt nicht korrekt. Korrekt heißt nicht wertvoll. Ohne Tests ist das Rätselraten.

---

## Hinweis

Basiert auf Beobachtungen deutscher KI-Outputs aus ChatGPT, Claude, Gemini und Mistral über 2023–2025. Angelehnt an die Kategorien der Wikipedia-Seite "Signs of AI writing" des englischen WikiProject AI Cleanup, auf deutsche Sprachmuster angepasst.

Kernbeobachtung: Sprachmodelle erzeugen statistisch wahrscheinliche Wortfolgen. Im Deutschen heißt das: hohe Nominalstildichte, aufgeblähter Wortschatz, gleichförmiger Satzbau, stabile Floskelmuster. Humanisierung heißt nicht, Wörter zu tauschen, sondern Stimme und Unregelmäßigkeit zurückzubringen. Bei Eva kommt dazu: eine Analogie, ein Witz, ein direkter Ton der keine Fragen offen lässt.
