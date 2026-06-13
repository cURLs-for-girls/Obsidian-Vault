---
tags: [onenote, aivengers]
---

# Abstimmung D-Fine zu Omniverse

Prüfung der Lizenzsituation beim Kunden „Neue Materialien Bayreuth“→ Sicherstellen, dass die bestehende Nutzung des digitalen Zwillings weiterhin durch die vorhandene Omniverse-Enterprise-Lizenz abgedeckt ist (reine visuelle Darstellung, keine aktive Entwicklung).

Klärung der Lizenzanforderungen für Isaac Sim beim Schweißroboter-Projekt→ Überprüfung, ob für die produktive Nutzung (Online-Pfadberechnung auf Edge/bei Kunden) eine zusätzliche Lizenz nötig ist oder ob dies unter die bestehende Omniverse-Lizenz bzw. Open-Source-Nutzung fällt.

Abklärung der Sonder- bzw. Research-Lizenz für „cuRobo“→ Prüfen, ob die Research-Lizenz kommerziell nutzbar ist oder ob eine gesonderte, ggf. kostenlose kommerzielle Lizenz direkt bei NVIDIA beantragt werden muss.

Lizenztyp: d-fine benötigt eine Omniverse Enterprise Lizenz, um den VDT zu erstellen und zu verwalten.

Showcase-Nutzung: Wenn der VDT nicht für Entwicklungs- oder Betriebszwecke, sondern ausschließlich für Demonstrations- und Werbezwecke genutzt wird, ist keine zusätzliche Lizenz erforderlich.

Öffentliche Werbung: Der Anlagenhersteller darf den VDT öffentlich bewerben, ohne zusätzliche Lizenz, solange keine produktive Nutzung erfolgt.

Cloud-only Betrieb: Falls der VDT cloudbasiert mit nur einer GPU betrieben wird, kann die Lizenz im BYOL-Modell (Bring Your Own License) verwendet werden – es muss dann nur die GPU-Instanz lizenziert werden.

Isaac Sim = Omniverse

Für die produktive Nutzung von Isaac Sim auf Edge-Geräten oder beim Kunden (Schweißroboter, Online-Pfadplanung) wird eine zusätzliche, kommerzielle Lizenz benötigt. Die reine Open-Source-Nutzung oder die Entwicklerlizenz des Developer Programms reicht in diesem Szenario nicht aus.Für die produktive Nutzung von Isaac Sim – etwa für Online-Pfadberechnung auf Edge-Geräten oder beim Kunden – ist eine zusätzliche (kommerzielle) Lizenz von NVIDIA erforderlich und nicht durch die reine Open-Source-Lizenz bzw. eine Standard-Omniverse-Lizenz abgedeckt.

Die Open-Source-Version (Apache 2.0 auf GitHub) erlaubt Entwicklung, Tests und Forschung; sobald Isaac Sim aber in ein Produkt oder in kundennahe, produktive Szenarien integriert wird (wie bei einem Schweißroboter im Feldeinsatz), greifen die kommerziellen Lizenzbedingungen. Dazu zählen auch Komponenten wie Modelle, das Omniverse Kit SDK oder spezielle Add-ons, die nicht rein Open Source sind. Für produktive Nutzung – insbesondere für Edge- oder kundenseitige Deployments – fordert NVIDIA einen Enterprise- oder kommerziellen Lizenzabschluss.

Ohne eine solche Lizenz ist der Einsatz im reinen Produktivbetrieb, speziell beim Kunden, vertraglich ausgeschlossen. Eine Abstimmung mit dem NVIDIA Licensing Team beziehungsweise ein expliziter Enterprise-Lizenzvertrag ist erforderlich, um Compliance und Support sicherzustellen.

Eine gemeinsame oder „übergreifende“ Nutzung einer einzelnen Omniverse-Lizenz für mehrere Kunden oder Projekte ist laut Standard-Lizenzvertrag von NVIDIA nicht zulässig. Für jedes Kundenprojekt beziehungsweise jeden Endkunden ist eine eigene Lizenz erforderlich.

Wird aber eine VM verwendet ohne GPU und das läuft - dann braucht man keine.

Research Lizenz cuRobo

--> Vincenzo fragen - auch Lizenz wenn Kunde nur VM nutzt? Keine GPU

Lizenzanforderungen für Showcase-Nutzung

•	Nutzt der Kunde cuRobo nur zu Evaluations- oder Forschungszwecken (keine Weitergabe, kein Produktiveinsatz beim Endkunden), benötigt er keine separate Lizenz und kann cuRobo kostenlos im Rahmen der Research License verwenden.

•	Sobald cuRobo in einem Produkt, Dienstleistung oder für Dritte (z.B. im Feld bei Kunden) verwendet wird, ist eine kommerzielle Lizenz nötig – diese muss über das auf der NVIDIA-Seite verlinkte Formular beantragt werden, die Konditionen werden dann individuell festgelegt und sind in der Regel kostenpflichtig. --> was sind das für Kosten?

Wichtige Antwort für den Kunden:

Inception program - d-fine zu alt da 2002 gegründet - RM
