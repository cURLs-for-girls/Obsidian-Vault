---
tags: [onenote, aivengers]
---

# CXL 2.0

Schnittstellenprotokoll basierend auf PCIe

Verbessert die Kommunikation zwischen einzelnen HW-Komponenten, zB. CPU und GPU

Also der jeweilige Speicher kann direkt genutzt werden ohne, dass Daten erst kopiert und verschoben werden müssen

Man könnte es als offenes Pendant zu Nvlink verstehen

CXL 2.0 (Compute Express Link) ist ein Schnittstellenprotokoll, das entwickelt wurde, um eine effizientere Kommunikation zwischen CPUs, GPUs, Speicher und anderen Hardware-Komponenten zu ermöglichen. Es verwendet die PCIe-Infrastruktur, bietet jedoch geringere Latenzen und eine höhere Effizienz, insbesondere bei der Arbeit mit geteiltem Speicher.

Einfaches Beispiel:

Stell dir vor, du hast einen Hochleistungsserver mit einer CPU und einer GPU. Bei einem traditionellen Ansatz kommunizieren CPU und GPU hauptsächlich über den PCIe-Bus und haben jeweils ihren eigenen, separaten Arbeitsspeicher (RAM). Wenn die CPU Daten bearbeiten möchte, die auf dem RAM der GPU liegen, muss sie diese Daten hin- und herkopieren, was Zeit und Rechenleistung kostet.

Was CXL 2.0 macht:

CXL 2.0 erlaubt es, dass die CPU und die GPU denselben Speicher direkt und ohne Kopieroperationen nutzen können. Sie müssen also nicht ständig Daten zwischen ihren eigenen Speicherbereichen hin- und herschieben. Das spart viel Zeit und Rechenaufwand.

Die CPU bearbeitet eine Aufgabe und benötigt dazu Daten von der GPU. Sie muss die Daten erst vom GPU-Speicher in den CPU-Speicher kopieren, die Aufgabe ausführen und die Daten wieder zurückschicken. Das verursacht Verzögerungen.

Ohne CXL 2.0:

Die CPU kann direkt auf den GPU-Speicher zugreifen und die Aufgabe ausführen, ohne Daten zu kopieren. Beide arbeiten effizienter, weil sie auf denselben Speicherbereich zugreifen.

Mit CXL 2.0:

Beispiel:

Geteilter Speicher: Mehrere Komponenten (CPU, GPU, Beschleuniger) können den gleichen Speicher nutzen, was schneller und effizienter ist.

Erweiterter Speicherzugriff: Systeme können mehr Speicher hinzufügen und flexibler nutzen, als es bei traditionellen Methoden möglich ist.

Kosteneinsparung: Da weniger redundanter Speicher nötig ist und die Kommunikation schneller wird, werden Ressourcen effizienter genutzt.

Vorteile von CXL 2.0:

CXL 2.0 eignet sich besonders gut für moderne Workloads, wie KI-Modelle, Datenanalyse und Cloud-Anwendungen, bei denen viele verschiedene Komponenten auf denselben Speicher zugreifen müssen.
