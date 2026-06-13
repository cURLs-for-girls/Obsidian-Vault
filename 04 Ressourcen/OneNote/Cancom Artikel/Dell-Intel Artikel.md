---
tags: [onenote, aivengers]
---

# Dell/Intel Artikel

„Mehr Workloads, weniger Watt: 3 Gründe für Ihren (Datacenter-)Refresh“

These: 2025 ist der Zeitpunkt für einen Datacenter-Refresh – nicht wegen Hype, sondern wegen Regulierung, Abwärme durch KI und effizienteren CPUs.

Format: „3 Gründe, jetzt zu refreshen“ → am Ende eine konkrete Lösungsskizze: Dell Cooling (DLC/eRDHx) + PowerEdge mit Intel Xeon 6 für schnelle, messbare Effekte.

Grobes Gerüst (aus dem Meeting kondensiert)

DE EnEfG: Reporting & Mindeststandards für RZ; PUE-Grenzwerte (Neu-RZ ≤ 1,2 nach Inbetriebnahme; Bestand ≤ 1,5 ab 01.07.2027, ≤ 1,3 ab 01.07.2030) und Abwärmenutzungs-Staffel für neue RZ (≥ 10 % ab 07/2026, ≥ 15 % ab 07/2027, ≥ 20 % ab 07/2028). DentonsDLA PiperBitkom e. V.

EU-EED 2023/1791: verpflichtendes Monitoring/Reporting (PUE, WUE, CUE, u. a.) in EU-Datenbank; KPIs per Delegierter VO (EU) 2024/1364. Nationale Umsetzung bis 11.10.2025. Energycov.comSoftExpert Blog

Was kommt:

Was es bedeutet: „Compliance by design“ im RZ – Refresh spart Bußgelder, reduziert Audit-Aufwand und schafft Planungssicherheit.

Grund 1 – Regulatorischer Druck (EnEfG & EED)

Realität im Rack: Dichte KI/VM-Workloads → mehr Abwärme pro Rack, traditionelle Luftkühlung wird schnell zum Flaschenhals. Rack-nahe Flüssigkühlung fängt die Wärme dort ab, wo sie entsteht. (Bild: „Autokühler an der Rack-Tür“). Dell

Dell-Update: PowerCool eRDHx (enclosed Rear-Door-HX): selbstentkoppelter Luftpfad, warmwasserfähig (→ weniger Chiller-Abhängigkeit), schnelle Nachrüstbarkeit über IR7000/IRSS-Ökosystem. Dell positioniert spürbare Cooling-Energie-Einsparungen und höhere Rack-Dichten. Dell+1

Grund 2 – KI treibt Lastdichte & Abwärme

Xeon 6 (P- & E-Cores): E-Cores = Kerndichte & Performance-pro-Watt für „Massentransport“, P-Cores = breite Performance für anspruchsvolle Workloads. Intel bewirbt deutlich bessere Effizienz und Konsolidierungsraten gegenüber Alt-Generationen. (Bild: „Lieferflotte vs. Sportwagen“). Intel+2Intel+2Newsroom

Praxis-Pfad: PowerEdge-Generationen mit Xeon 6 als Drop-in-Upgrade → weniger Server bei gleicher Leistung, geringere Strom- & Kühlkosten, schneller ROI. Intel

Grund 3 – Neue Prozessoren = mehr Effizienz (Xeon 6)

Lösungsskizze (konkret & pragmatisch)

Schneller Retrofit: Dell PowerCool eRDHx an Hot-Racks → Wärme am Rack abführen, Warmwasser nutzen, Cooling-OPEX sofort senken; integrierbar über IRSS/IR7000. Dell

Für höchste Dichten: Direct Liquid Cooling (DLC) mit Cold-Plates auf Server-/GPU-Ebene (z. B. XE9640/XE9785L-Familie) – Lüfter-Leistungsaufnahme sinkt, dichteres Packing möglich. Dell+1

Compute-Refresh: PowerEdge + Intel Xeon 6 passend zum Workload-Mix (E-Core-lastig für dichte Virtualisierung; P-Core für anspruchsvolle KI/DB/HPC). Intel

Mini-CTA: 2-stufiger Refresh-Quickcheck (PUE/WUE-Baseline & Hot-Spot-Messung) → TCO-Skizze (36 Monate) → POC: 1× eRDHx an Hot-Rack + 1× Xeon-6-Server im Ziel-Workload.

„DLC-Rack von Dell mit Xeon 6“ – so setzt du’s um:

PowerCool eRDHx: enclosed RDHx, warmwasserfähig, IRSS-integriert; Dell nennt reduzierten Cooling-Energiebedarf & Dichtegewinne (Dell Tech World 2025 Coverage). DellTechRadar

Liquid- & Air-Cooled PowerEdge-Optionen quer über AI-Serverlinien (inkl. XE9785/XE9785L). Dell

Dell – „neu am Markt“ (für die Storyline)

„3 Gründe, 2025 dein Datacenter zu refreshen: Regulierung, KI-Abwärme, Xeon 6.“

„Weniger Watt, mehr Workloads: 3 Gründe für den Refresh mit Dell Cooling & Xeon 6.“

„Compliance trifft Effizienz: 3 Gründe für den RZ-Refresh mit PowerEdge & Xeon 6.“

Titelideen (kurz & knackig)

Wenn du magst, schreibe ich daraus jetzt die finale 3-Gründe-Version im CANCOM-Ton (neutral, faktenbasiert) mit kurzen Zahlen-„Belegen“ pro Grund und einem 5-Sätze-Schluss, der zur Quickcheck-Kontaktaufnahme führt.

---------------------------------------------------------------------

„3 Gründe, 2025 Ihr Datacenter zu refreshen“

These: 2025 ist der Zeitpunkt für einen Datacenter-Refresh – nicht wegen Hype, sondern aus pragmatischen Gründen: wegen Regulierung, Abwärme durch KI und Effizienzgewinne neuerer Chips/Server (wie bspw. neue CPUs Xeon 6)

Teaser (1–2 Sätze)

3 Gründe

Grund 1 – Regulatorischer Druck

DE EnEfG: Reporting & Mindeststandards für RZ; PUE-Grenzwerte (Neu-RZ ≤ 1,2 nach Inbetriebnahme; Bestand ≤ 1,5 ab 01.07.2027, ≤ 1,3 ab 01.07.2030) und Abwärmenutzungs-Staffel für neue RZ (≥ 10 % ab 07/2026, ≥ 15 % ab 07/2027, ≥ 20 % ab 07/2028).

EU-EED 2023/1791: verpflichtendes Monitoring/Reporting (PUE, WUE, CUE, u. a.) in EU-Datenbank; KPIs per Delegierter VO (EU) 2024/1364. Nationale Umsetzung bis 11.10.2025.

Auch evtl. aus RZ-Artikel kopieren / Querverweis --> also bisschen abkupfern bzw. leserfreundlicher schreiben: https://www.cancom.info/2025/07/cool-bleiben-trotz-ai-hitze-wie-unternehmen-fuer-energieeffizienz-und-kuehlung-im-rechenzentrum-sorgen/

Grund 2 – KI stellt höhere Anforderungen / mehr Abwärme

Siehe Abschnitt aus RZ-Artikel -> evtl. Querverweis?

Auch hier wie oben --> leserfreundlich abkupfern: https://www.cancom.info/2025/07/cool-bleiben-trotz-ai-hitze-wie-unternehmen-fuer-energieeffizienz-und-kuehlung-im-rechenzentrum-sorgen/

Grund 3 – Effizienzgewinne neuerer Chips/Server

Gleiche Arbeit, weniger Verbrauch: Neue Fertigungsverfahren mit kleineren Nanometer-Strukturen packen mehr Transistoren auf dieselbe Chipfläche – dadurch steigt die Leistung, der Stromverbrauch pro Aufgabe sinkt.

Leistung nur dort, wo sie gebraucht wird: „Starke“ Kerne springen bei Spitzen ein, „sparsame“ laufen im Dauerbetrieb – das senkt den Verbrauch im Alltag.

"Spezialhelfer" an Bord: Häufig genutzte Aufgaben (KI-Berechnungen, Verschlüsselung, Komprimieren) laufen auf eingebauten Beschleunigern stromsparender als früher.

Weniger Geräte nötig: Mehr Leistung pro Server ⇒ ältere Generationen lassen sich zusammenfassen. Das spart Platz, Lizenzen, Wartung und Kühlung.

Zukunftssicher und stabil: Neue Chips sind für aktuelle Software und Sicherheitsfunktionen ausgelegt – weniger Reibungsverluste im Betrieb.

Besser ausgenutzter Speicher: Statt brachzuliegen, wird freier RAM flexibel genutzt – spart Hardware und Energie. (MRDIMM)

Alte Generation = Dieseltransporter im Stadtverkehr; neue Generation = Hybrid-Flotte mit Lastenrad und E-Van. Jeder Auftrag bekommt das effizienteste Gefährt – dadurch sinkt der Gesamtverbrauch.

Lösungsskizze

am Ende eine konkrete Lösungsskizze: Dell Cooling (DLC/eRDHx) + PowerEdge mit Intel Xeon 6 für schnelle, messbare Effekte.

Dell PowerEdge (z. B. R770) mit Intel Xeon 6.

P-/E-Core-Mix passend zum Workload (Leistungsspitzen vs. Dauerlast).

MRDIMM/PCIe 5/CXL 2 je nach vSAN-/GPU-/NIC-Bedarf dimensionieren.

Intel AMX: beschleunigt leichte/kompakte KI-Inference direkt auf der CPU.

Confidential-Computing ready (Intel TDX): Hardware-Isolation & Attestation-Pfad für regulierte Umgebungen (plattformneutral formulierbar).

Compute-Refresh

DLC/eRDHx am Hot-Rack (Retrofit-fähig).

Ziel: höhere Rack-Dichte bei kontrollierter Abwärme; Warmwasser-tauglich, weniger Chiller-Abhängigkeit.

Cooling-Baustein

Dell Cooling (DLC/eRDHx) + PowerEdge mit Intel Xeon 6 → schnelle, messbare Effekte.

-------------------------------

„Warum CANCOM?“

Langjährige Data Center-Projekterfahrung

Zertifizierte Experten

Dell Elite Partner & Intel Elite Partner (richtigen Bezeichnungen raussuchen)

Umfassende Beratung zu IT & Dateninfrastruktur

Branchenspezifische Use Cases & Best Practices
