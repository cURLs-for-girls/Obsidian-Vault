---
tags: [onenote, aivengers]
---

# Abstimmung Frank zu BMG POC

Mathias hatte Konzepte geschrieben

Selinka und Assenmacher Account

Termin durch Sandro

CC Assistant pitchen

Demoumgebung bereitstellen - hat nicht geklappt bisher

Fragenkatalog BMG konnte nicht geliefert werden von intern

5.3. 11 Uhr Abteilungsleiter Demo aus der Cloud heraus

On-prem gewünscht - brauch aber Abänderung der DB usw.

Haben Server an verschiedenen Stellen stehen

Anforderungen sind noch unklar

Yiannis DevOps Consultant Kubernetes - hat den Draht zu den Entwicklern

Grüne Wiese: Appliance ins RZ - 100 User am Anfang - bis 1000-10000 Dokumente im Fileserver - auf dieser pizzabox mit dieser gpu mit diesem storage - mit llama deployen - Hochskalierung mit betrachten

Training / Inferenz?

Wie viele Parameter soll das LLM haben?

Welche spezifischen Modelle und LLMs mit welcher Parametergröße planen Sie zu betreiben (z. B. Llama 3.1 mit 8B oder 70B Parametern)? Oder Mistral, Falcon usw.

Modellpräzision? - 8 Bit Integer oder FP / BF 16 usw.

Welches GPU-Modell / Hersteller möchte der Kunde

Wie viele User?  Wie viele gleichzeitige Nutzer oder Anfragen pro Sekunde werden erwartet?

Welche Latenzanforderungen (also wie schnell soll es antworten)

Batchsize

Input Token

Output Token

Welcher Serverhersteller kommen in Frage?

Was soll im ersten Schritt angeboten werden? Nur Server oder auch dedizierter Storage?

Darf der Server wassergekühlt sein?

Da es ein LLM sein soll das genutzt wird, sollte es eine H100 oder H200 sein

Bis 5 Mrd Parameter L40S ok - gute Verfügbarkeit

Darüber ist H100 oder H200 besser - im HGX Format - alternativ auch gaudi 3 /MI300X  - nur dann ist der software stack open source

Projekt Neo.pdf

Docker wäre Alternative fürs BMG perspektivisch

Kubernetes Container

3 DB Container

Front End und Backend - 5 Container

Welche Ressourcen brauchen sie, bei welchem Anbieter kriegen sie es unter

Fix und Fertig Paket das sie dann deployen

Konkurrenz zu CGI sind wir

Nur Infererenz machen

RAG-Workflow - 10.000 Dokumente / 100 Nutzern

Demoumgebung

5 Container - CPU/GPU Verbrauch? -

125 GB RAM wäre schon sehr groß

1 Serviceteil - 4 GB Container

Frontend Backend

Mongo DB

Chroma / Cudra für RAG bisschen RAM

MongoDB

ChromaDB

qdrantDB

Frontend

Backend

RAM: 4GB Minimum (we recommend at least 8GB)

CPU: 2 Minimum (we recommend at least 4CPU)

Hpe - dl380a gen 11

Storage

Apollo bu server - storage server

32 cores - 48 cores - dl345 dl340 intel

L4 24 gb /l40s

Dl340 gen 12 mit l40s

Halb voll 8 speicherriegel 16 gb - oder 32 gb - 512 gb

Fibre channel -

Raid controller

Ssds - redundant raid 1 -

Quad port karte redfundant frontend

Redundant backend

+ Fibre channel karte

Mgmt über ilo - kein dediziertes mgmt

Robert vasenda - avatare bauen - julienne nvidia - lizensierung avatare

Würde gerne eine ai enterprise - jemand der sagen kann wer ihn beraten wie kommen an die lizenzen
