---
tags: [onenote, aivengers]
---

# Frontend / Backend Switche

Funktion: Diese Switches sind für die Verbindung zwischen Endgeräten (wie Workstations, Servern oder Desktops) und dem Netzwerk verantwortlich. Sie befinden sich an der "Peripherie" des Netzwerks, also nah an den Geräten, die auf das Netzwerk zugreifen. Sie stellen sicher, dass Daten von den Endgeräten zu den Back-End-Switches oder direkt ins Netzwerk gelangen.

Aufgabe: Sie verteilen den Datenverkehr lokal und leiten ihn weiter zu den Back-End-Switches oder direkt zu einem Router, je nach Netzwerkarchitektur. Sie sind oft Layer-2-Switches, die sich auf die Weiterleitung von Ethernet-Frames anhand von MAC-Adressen konzentrieren.

Beispiel: In einem Büro könnte ein Front-End-Switch die Verbindung der Arbeitsplätze mit dem zentralen Netzwerk herstellen.

1. Front-End Switches:

Funktion: Diese Switches befinden sich im "Kern" des Netzwerks und sind für die Aggregation und Verwaltung des Datenverkehrs verantwortlich, der von den Front-End-Switches und Servern kommt. Sie kümmern sich um die Verteilung der Datenpakete innerhalb des Rechenzentrums, oft zwischen verschiedenen Netzwerksegmenten oder zwischen Netzwerk- und Speichereinheiten (wie SANs).

Aufgabe: Sie sorgen für Hochgeschwindigkeitsverbindungen innerhalb des Rechenzentrums und übernehmen oft die Lastverteilung und Redundanz, um Ausfälle zu verhindern. Back-End-Switches arbeiten oft auf Layer-3 und ermöglichen die Weiterleitung von IP-Paketen anhand von Routing-Tabellen.

Beispiel: Ein Back-End-Switch würde die Kommunikation zwischen verschiedenen Server-Racks und den Speichernetzwerken (z.B. NAS, SAN) im Rechenzentrum handhaben.

2. Back-End Switches:

Skalierbarkeit: Front-End-Switches ermöglichen eine einfache Erweiterung des Netzwerks, indem sie zusätzliche Geräte hinzufügen, während Back-End-Switches für eine effiziente Verwaltung großer Datenströme sorgen.

Datenaggregation: Die Verteilung und Aggregation des Datenverkehrs verbessert die Effizienz. Front-End-Switches aggregieren den Verkehr von mehreren Endgeräten und leiten ihn an Back-End-Switches weiter, die die Daten dann intelligent im Rechenzentrum verteilen.

Sicherheit und Redundanz: Die Trennung in Front-End und Back-End Switches verbessert die Sicherheit und bietet zusätzliche Redundanz für Netzwerkverbindungen. Sollte ein Front-End-Switch ausfallen, bleibt das restliche Netzwerk weitgehend unberührt.

Warum braucht man beide?

Funktion: Layer-2 Switches arbeiten auf der Data Link Layer (Schicht 2) des OSI-Modells. Sie basieren auf MAC-Adressen (Media Access Control), um Datenpakete (Ethernet-Frames) zu den entsprechenden Geräten im Netzwerk weiterzuleiten.

Einsatz: Ideal für lokale Netzwerke (LANs), wo keine komplexen Routing-Entscheidungen notwendig sind. Layer-2 Switches ermöglichen grundlegendes Netzwerk-Switching auf der Basis von MAC-Adressen.

Layer-2 Switches:

Funktion: Layer-3 Switches arbeiten auf der Network Layer (Schicht 3) des OSI-Modells und basieren auf IP-Adressen. Diese Switches kombinieren die Funktionen eines Routers und eines Switches. Sie können sowohl den Netzwerkverkehr basierend auf IP-Adressen routen als auch Pakete zwischen verschiedenen Netzwerken weiterleiten.

Einsatz: Sie sind ideal für große Netzwerke, in denen verschiedene Netzsegmente miteinander verbunden werden müssen, wie etwa in Rechenzentren oder Unternehmensnetzwerken.

Layer-3 Switches:
