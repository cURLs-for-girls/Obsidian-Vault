---
tags: [onenote, aivengers]
---

# Gesprächsfluss Vortrag

Vorstellung Dieter, dann Eric (duzen)

Dieter fragt was denn ein Comp. Center ist und was seine Rolle hierin ist

Eric: Ich bespiele das Thema Hybrid Cloud Platform (+ kurze genauere Erklärung). Jeder in unserem Team ist mit einem anderen Layer aus dieser Gesamtstrategie „beauftragt“, das jeweilige Thema voranzutreiben. Insgesamt steht Automatisierung absolut im Vordergrund unserer gesamten Strategie. In Bezug auf eine Hybrid Cloud Platform ist vor allem der Gedanke des Software Defined Datacenter wichtig (kurz SDDC).

Dieter: Software Defined Datacenter ? Was soll das heißen? Klingt irgendwie ein bisschen nach einem Buzzword für mich..

Eric: Ja das verstehe ich. Ein SDDC ist aktuell State-of-the-Art in einem Rechenzentrum. SDDC bedeutet, dass alles (also Netzwerk, Storage und Compute) nicht mehr hardwarebasiert sind, sondern softwarebasiert. Ein einfaches Beispiel: Stell dir dein Rechenzentrum wie eine Restaurantküche vor: Früher hast du für jeden Teller selbst in der Küche gestanden: Zutaten suchen, Herd an, alles von Hand machen. Im Software Defined Datacenter hast du eine Bestell-App: Du tippst nur noch die Bestellung ‘3 neue Server für Fachbereich X’ ein, und im Hintergrund kümmert sich die Küche automatisch um die richtige Menge Herdplatten (Compute), Vorratskammer (Storage) und Wege zum Tisch (Netzwerk). Du kannst dich also aufs Bedienen konzentrieren. Gedanklich übersetzt heißt das: Die Hardware steht noch da, aber gesteuert wird alles zentral über Software und „Rezepte“ aka Policies statt Handarbeit.

Dieter: Ahhh, verstehe! Dann habe ich ja eine Säule sozusagen schon umgesetzt: ich habe virtualisierte Server mit VMWare vSphere!

Eric: Exakt! Aber, um komplett automatisiert, also "software-defined" zu werden, benötigst du die anderen beiden Säulen.

Dieter: Ok, und wie komme ich dahin?

Eric: Genau das bietet dir VMWare Cloudfoundation (Erklärung) Eine Plattform blablabla

Dieter: Hmmm also hat das gar nichts, damit zu tun, dass ich mir die Cloud ins Haus hole? Wir sind nämlich nicht so cloudaffin. Ehrlich gesagt ist unserem Geschäftsführer Souveränität extrem wichtig.

Eric: Sehr guter Punkt. Cloud ist in dem Fall nicht die Hyperscalercloud, die du meinst. Cloud ist ein Betriebsmodell (siehe Folie 5) - Buzzwords der Folie mit 2 Beispielen erklären (zB Agilität oder Selfservice).Und Souveränität ist auch uns wichtig! Wir haben sogar eine eigene Definition hiervon (Erklärung  Folie 6)

Dieter: Wenn ich das so höre, geht es ja gar nicht nur um „On-Prem oder Hyperscaler“, sondern darum, ob ich Herr der Lage bleibe – technisch, vertraglich und wirtschaftlich. Und Ihre Erklärung mit dem Cloud Betriebsmodell leuchtet ein. Nur eine Sache stört mich. Ich finde, dass VMWare seit der Broadcom Übernahme sehr teuer geworden ist. Ich habe hier auch schon von Alternativen wie Proxmox gehört und überlegt zu wechseln.

Eric: Ja, diesen Einwand höre ich immer wieder. Teuer ist eben relativ. Bevor du daran denkst direkt zu wechseln und alles komplett neu zu machen: es kommt immer darauf an, was du geboten bekommst. Den ersten Schritt, um in deinem RZ das SDDC umzusetzen, hast du ja schon! Um das komplett umzusetzen, brauchst du gewisse Features und diese kosten eben Geld. Aber den Mehrwert, den du um Ende rausbekommst ist eben eine vollautomatisierte Infrastruktur, die super zu managen ist. Du sparst extrem viel Zeit und händische Arbeit - was wiederum bares Geld ist.

Dieter: Das klingt schon sehr sinnvoll! Entschuldige mir meinen Vorbehalt, ich kenne diesen "Zoo an Features" leider von anderen Herstellern...

Eric: Stichwort Zoo - das stelle ich dir gerne bildlich dar: Erklärung Folie 9.

Dieter: Interessant! Und was passiert mit meinen alten Kauflizenzen. Verfallen die, wenn ich mich auf VCF "einlasse"?

Eric: Nein, sei unbesorgt..(Erklärung).

Dieter: Das klingt alles schon sehr aufschlussreich. Kann ich mit VCF auch das Thema AI angehen? Das ist eine der großen Themen, die unser GF sich dieses Jahr auf die Fahne geschrieben hat. Wir haben auch schon 3 Kollegen die kleine AI Anwendungen bauen. Leider in der Cloud, uns wäre eine souveräne Infrastruktur lieber.

Eric: Natürlich hat VCF auch dieses Thema auf dem Schirm (Erklärung Folie 10). Wenn Sie sagen, dass Sie lieber souverän entwickeln wollen und Sie Wert darauf lagen, dass nach der Entwicklung alles "production-ready" ist, dann kann ich dir unsere AI T-Shirt Sizes ans Herz legen. Das sind KI Server … Erklärung Folie 12

Dieter: Super, das macht es für mich wirklich zu einer Plattform. Und mit den AI T-Shirt Sizes hätte ich ja die passende Infrastruktur. Nur eine Frage habe ich jetzt: wie gehe das strukturiert an? Es muss ja geschaut werden, was ich alles habe und was alles gebraucht wird, um meine Architektur "betriebsbereit" zu machen.

Eric: Dafür gibt es den Adoption Plan (Erklärung Folie 11)

Dieter: Super danke, wann könnten Sie den Adoption Plan mit mir abstimmen?

Quizrunde -

Frage 1: Was ist die Cloud im Zusammenhang mit VCF? --> Betriebsmodell

Frage 2: Wie nennt man ein Rechenzentrum, das softwarebasiert ist? --> SDDC

Frage 3: Mit welchem Tool gelingt die Umsetzung von VCF? --> Adoption Plan

(Frage 4: Was sind die AI T Shirt Sizes? --> (vorkonfigurierte) KI-Server)

Gewinn: Buzzer + Ente

Yiannis wegen Kub. Plattform fragen

Gemini Restaurantküche mit kabeln

Vergleich:

Restaurantküche

Klassisches RZ: du bist eine one man show. Du kochst, nimmst die bestellung auf und bedienst. Alles sehr aufwändig.

Software defined RZ: du hast ein team. Es gibt eine bestell app.

•	Handgeschriebene Bestellungen, manuelle Wege, starre Abläufe.

•	Feste Kochstationen, wenig flexible Auslastung.

•	Lagerverwaltung auf Zuruf und per Blick in den Kühlschrank.

Klassisches Datacenter:

•	Bestellung per App, automatische Weiterleitung an die passende Station (SDN).

•	Intelligente Zuordnung der Gerichte zu verfügbaren Kochstationen (Software‑Defined Compute).

•	Vorratskammer als smarter Pool, der durch Bestelldaten weiß, was gebraucht wird und sich automatisch auffüllt (Software‑Defined Storage).

•	Klare Zonen und Richtlinien (Küche, Gastraum, Hygiene‑Bereiche) = Security‑Policies und Netzwerk‑Segmente.

Modernes SDDC

Hallo zusammen, wäre super wenn ihr den AI HW Sizing Workshop am 30.3. von Christian und mir nochmal bisschen in euren Regionen unter eurem Solution Design promotet (und allen die iwie mit m
