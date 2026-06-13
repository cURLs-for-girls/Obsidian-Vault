---
tags: [linkedin, ideen, inbox]
status: aktiv
erstellt: 2026-06-02
---

# LinkedIn Funken

Ideen-Sammlung für LinkedIn-Posts. Claudian wirft hier still Funken rein, während wir an Projekten oder Themen arbeiten. Beim Ausarbeiten das Template unten verwenden.

**Standard-Hashtags (immer):** `#TeamCANCOM #AIInfrastructure #AIAgents`
Themenspezifische Hashtags je nach Post zusätzlich (z.B. `#AIStorage`, `#GPU`, `#RAG`).

---

## Offene Funken

<!-- Neue Funken kommen oben drauf. Format pro Eintrag:
### YYYY-MM-DD
- **Hook:** [Einzeiler, der den Post tragen könnte]
  **Kontext:** [woher kam die Idee — Projekt/Datei verlinken mit [[wikilink]]]
  **Warum interessant:** [1 Satz Presales-Relevanz]
-->

### 2026-06-02
- **Hook:** "AI Factories baut man künftig zweimal — einmal digital, dann erst echt."
  **Kontext:** NVIDIA DSX Air (GTC 2026 vorgestellt) — Full-Stack-Simulation einer AI Factory (Compute, Netzwerk, Storage, Orchestrierung) bevor auch nur ein Server bestellt ist. Andockpunkt an [[02 Projekte/Vortrag Referenzarchitekturen]] (AI Factory Summit) — perfekter Echo-Post nach dem Vortrag, der die Kernbotschaft "validierte Designs" konsequent zu Ende denkt.
  **Warum interessant:** Frischer Hebel im Presales: Kunden-Architektur als Digital Twin zeigen statt nur Slides. De-Risking-Argument für Großkunden, Compete-Vorteil. Eva-Superpower: komplexe Tech anschaulich machen — "wir bauen sie zweimal" ist ein perfektes Bild dafür.

- **Hook:** "Warum ich meinen KI-Agenten nicht mehr in der Cloud baue — und was Hermes besser macht als der übliche Stack"
  **Kontext:** Setup eines Hybrid-Agentensystems mit Hermes Agent (Nous Research) auf einer Dell GB10, lokal orchestriert, Reasoning hybrid via Claude API + Perplexity API + lokalem OSS-Modell. Kanban-Dashboard als visueller Anker. Use Case: privates Bunker-Loft-Projekt.
  **Warum interessant:** Presales-Aufhänger für "wie baut man On-Prem AI Agents wirklich" — perfekte Brücke von AI Infrastructure (GB10 Hardware) zu Agent Architecture. Kanban-Screenshot + 1-2 coole Features = visueller Post mit hoher Wiedererkennung. Differenzierung gegenüber "ich nutze ChatGPT".

## Ausgearbeitete Posts

<!-- Fertige Posts nach Template landen hier mit Datum. -->

### 2026-06-04 — Sommer, Sonne, Homelab: OpenClaw zu Hermes

> Sommer, Sonne, Homelab. Was macht man bei so schönem Wetter? Natürlich drin sitzen und am Setup schrauben.
>
> Heute war OpenClaw dran. Runter damit, Hermes drauf (damit ist nicht der Lieferdienst gemeint, der meine Zalando-Pakete bringt). Meine DGX Spark läuft jetzt mit dem Agenten von Nous Research, und ich bin ehrlich gesagt mehr begeistert als ich erwartet hatte.
>
> Hermes schreibt sich seine Skills selbst. Du erklärst ihm eine Aufgabe einmal, er speichert sich die Fähigkeit und ruft sie beim nächsten Mal direkt wieder ab. OpenClaw fing jedes Mal bei null an, das nervte irgendwann einfach.
>
> Dazu kommt das hermes-kanban-Plugin für Obsidian. Hermes legt ein Kanban-Board direkt in meinen Vault, zerlegt jedes Projekt in Karten und schiebt sie selbst durch die Spalten. Daily Standup und Wochenreview macht er gleich mit. Fühlt sich an wie ein Projektmanager, der nie schläft.
>
> Der eigentliche Knaller ist aber die Verkettung. Mein Vault liegt per Obsidian Git Plugin auf GitHub. Über das Claude-Plugin in Obsidian und Hermes' GitHub-Connector ziehen sich beide Agenten genau die Dateien, die sie gerade brauchen, statt jedes Mal den halben Vault als Kontext mitzuschleppen. Stell dir vor, du bestellst dir im Restaurant nur den einen Gang, den du wirklich willst, statt das ganze Menü mitzunehmen. Spart absurd viele Tokens und macht die Agenten gleichzeitig schneller.
>
> OpenClaw war ein netter Einstieg in lokale Agenten. Aber das hier ist das erste Homelab-Setup, bei dem ich nicht mehr das Gefühl habe, ich bastle nur rum.
>
> #TeamCANCOM #AIInfrastructure #AIAgents #LocalAI #Obsidian #DGXSpark #Homelab

---

## Post-Template (zum Kopieren)

```
**[Hook — 1 Zeile, max. 2. Klare Aussage oder provokante Frage]**

Letzte Woche habe ich mich mit [Thema] beschäftigt.
[1 Satz: was war der konkrete Anlass / Kundensituation / Projekt]

Warum das spannend ist:
[2-3 Sätze: das Problem, das du beim Kunden / im Markt siehst.
Ohne Buzzwords. Lieber konkret, z.B. "GPU steht 40% der Zeit still,
weil der Storage nicht hinterherkommt."]

Was ich gelernt habe:
[Die Lösung oder Erkenntnis. Wenn möglich eine bildhafte Analogie.
"Stell dir vor, du hast einen Ferrari, tankst aber mit dem Gartenschlauch.
Genau das passiert, wenn..."]

Was das im Alltag bedeutet:
[1-2 Sätze: konkreter Mehrwert für Business oder Technik.
"Heißt: 30% weniger Trainingszeit, ohne dass du eine neue GPU kaufst."]

[Optional: Soft CTA oder Frage an die Community]
Wie löst ihr das bei euch?

#TeamCANCOM #AIInfrastructure #AIAgents [#themenspezifisch]
```

### Stil-Regeln (aus [[00 Kontext/Schreibstil]])

- Duzen, nie siezen
- Kurze Sätze, keine Gedankenstriche oder Semikolons
- Keine Buzzword-Aufzählungen
- Bildhafte Vergleiche statt Tech-Jargon
- Komplexes einfach erklären ist das Ziel, nicht Wissen demonstrieren
