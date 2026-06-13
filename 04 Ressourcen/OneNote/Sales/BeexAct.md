---
tags: [onenote, aivengers]
---

# BeexAct

Vorstellung

Deutsche glasfaser in italien

Google auto betanken ihre storage pools

Lösung wo der streckenverlauf ausgewertet wird - erkennt pflastersteine

BV hauptsitz

Wesel = Standort Deutschland

IT-Manager = Yagi

VMWAre Isilon Dell vorher gemacht

CTO, CEOs nahe Verknüpfung

Aktuelles Doing

Planung Glasfaserausbau - in D fahren 8 Autos, dort wo Glasfaserausbau benötigt wird

Googleautos reicht meistens nicht aus

Vodafone fragt an - zB Essen - mit deren Beratung Ausbau Essen begonnen -Berlin - Nürnberg -

Sammeln Daten - 6-8 TB - werden nach Mutterkonzern gefahren - dort Data Processing Team - nehmen Festplatten und verarbeiten diese --> brauchen GPU - wegen Ladybug Kamera - um aus den Streamfiles Bilder zu generiern - im Auto wird nur gesammelt - GPS Infos

GPU erst wenn die Daten prozessiert werden

Bilder werden zerstückelt und dann verarbeitet (25-40 MB pro Bild)

Blurring - Bilder werden verarbeitet - unkenntlich machen der Menschen darauf AI H2-Model Pythonskripte, die es geblurrt haben, war ineffektiv - Umbau aktuell - findet auf VMWare virt. Maschine statt (Tesla T4) im Hypervisor

Eigenes Yolo Modell - lassen dieses auf den Processingmaschinen laufen - in 10 Minuten 250 Bilder (150 k Fotos am Ende einer Woche)

Am Ende BeexFormat - da wird wieder CPU genutzt

Läuft auf Dockerbasis in Windows (Ladybug braucht Windows) bleiben erstmal auf windows - ansonsten switch zu linux

Next Step: Blurring wird weiterentwickelt - Segmentation der Oberflächen werden vorgenommen - KI schaut Oberflächen an - welche Oberflächen es gibt - Ziel: aus den Fotos noch mehr Daten extrahieren

Aktuelle Probleme

Basis Dockercontainer stimmt nicht so aktuell - Processing Maschinen i9 20 Cores - 32 GB RAM - SSD

4080 oder 4070 RTX Nvidia drin in Workstation

50-60 Runs kriegen sie fertig

Mit den alten Maschinen brauchen sie ca. 3 Wochen bis alles fertig ist

Aktuell

komplett Italien befahren - hier kommen auch Processing Maschinen (= Workstations / Server?) - bis Ostern 25 sollen es 40 autos sein - 80 TB pro Monat - werden bei den Hubs gelagert

Server werden aus Amerika hierher verschifft

Daten solange wichtig bis sie online sind - exportierte JPEGs brauchen sie dann nur noch - alles davor nicht mehr wichtig

Rom ist dann Hauptstandort mit 2 Racks (Vertraglich 6-7 Racks geplant) - von diesen standorten fahren die autos aus - anbindung 10GB/s - in Rom wird alles gehostet und gewartet --> deswegen 8 Server?

10TB HDD Processing Maschinen - kein RAID Verbund - HDD ist vorgesehen

Was braucht er? - er will verbesserungen - möchte eine skalierbare lösung - in bezug auf serverkomponenten

NetApp A250 als Storage - können noch eine anschließen - bis mitte oktober reicht es ihm

Per copy vom hub spielt er die daten rüber

Tiering macht er noch

Für ROM:

8 Server die sparsam ausgestattet sind

Einfach zum festplatten reinschieben

Mitarbeiter müssen SSDs auspacken können

IC Docs in Nutzung

USB 3.0 Anschluss an den Rechnern

Es muss einfach sein

Er braucht processing maschinen mit nvidia grafikkarten - hat noch alte T4 im einsatz

Wie ist die performance zwischen den 4080ern --> streamfile anschauen - use case ihm bereitstellen

2-3 optionen anbieten

Backup steht auch noch an - hierfür bietet sich aber Netapp an

Anschauen was für server er braucht

Angebot mike anschauen

Meine Fragen:

8 Server weil 6-7 Racks vertraglich geplant sind? Wo werden diese gebraucht, in den Hubs oder in Rom?

Sinnvoll kein RAID zu nutzen?

Wie bewerten wir, ob er wirklich Nvidia GPU braucht?

Was genau sind diese processing maschinen? Server? Workstations?

Wo stehen diese? In den Hubs?

Auswertung läuft dann in Rom?

Zusammenfassung Vorgehen

Autos fahren rum - Sammeln Daten - diese werden in die Hubs gefahren - dort werden die Festplatten (SSDs? - HDDs sind in den Processing Maschinen?) rausgenommen und in die Server gesteckt - dann werden die Bilder (oder Videos?) verschickt und gestückelt (oder umgekehrt?) - dann Blurring - dann Segmentation aus den Daten

GPU Flex von Intel statt Nvidia?

Listenpreise erfragen einzelkarten

Rabattierung akt angebot?

Karten laut Liste mit Preisen vergleichen und prozentual Preis-Leistung ermitteln für Mike, als Übersicht für Jagi
