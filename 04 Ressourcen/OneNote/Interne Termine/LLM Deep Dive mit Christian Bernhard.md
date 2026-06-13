---
tags: [onenote, aivengers]
---

# LLM Deep Dive mit Christian Bernhard

Prompt Structering 
Systemprompt (z.B. 200 Tokens): 
You are a heplful Assistant for the company Cancom. Your goal is to provide helpful and friendly 
answer .... 
This is the user question: 
{USER QUESTION} 
This is the previous conversation, so you know what the user was talking about previously: 
{ALLE VORHERIGEN FRAGE/ANTWORT PAARE} 
Here might be additional content from a websearch: 
{WEBSEARCH} 
Here might be additional content from a RAG query: 
{TOP-k-CHUNKS RAG} 
Here might be additional content from a document the user uploaded: 
{ASK A DOCUMENT} 
1 
response. usage. total_tokens 
C 
CompletionUsage(completion_tokens=3254, prompt_tokens=27, total_tokens=3281, 
Klassifizierung: 
completion_tokens_details=CompletionTokensDetails(reasoning_tokens=3008)) ...Prompt Structering 
Systemprompt (z.B. 200 Tokens): 
You are a heplful Assistant for the company Cancom. Your goal is to provide helpful and friendly 
answer .... 
This is the user question: 
{USER QUESTION} 
This is the previous conversation, so you know what the user was talking about previously: 
{ALLE VORHERIGEN FRAGE/ANTWORT PAARE} 
Here might be additional content from a websearch: 
{WEBSEARCH} 
Here might be additional content from a RAG query: 
{TOP-k-CHUNKS RAG} 
Here might be additional content from a document the user uploaded: 
{ASK A DOCUMENT} 
1 
response. usage. total_tokens 
C 
CompletionUsage(completion_tokens=3254, prompt_tokens=27, total_tokens=3281, 
Klassifizierung: 
completion_tokens_details=CompletionTokensDetails(reasoning_tokens=3008))

Variable kosten tokens

Fixkosten sind cloud

Cloud vs. On-Prem 
Pricing: 
Fix (netto): 
- Cloud 
- Cancom initial Fee: 4950€ 
- On Prem 
- Cancom monthly Fee: 1490€* 
*Monatlich für Wartung, Weiterentwicklung und Support (inkl. frist Level Hotline) ...Cloud vs. On-Prem 
Pricing: 
Fix (netto): 
- Cloud 
- Cancom initial Fee: 4950€ 
- On Prem 
- Cancom monthly Fee: 1490€* 
*Monatlich für Wartung, Weiterentwicklung und Support (inkl. frist Level Hotline)

Hostingkosten

Tokens vernachlässigbar

Cloud vs. On-Prem 
Pricing: 
Cloud 
Fix (netto): 
- Cancom initial Fee: 4950€ 
- On Prem 
- Cancom monthly Fee: 1490€* 
Cloud: 
*Monatlich für Wartung, Weiterentwicklung und Support (inkl. frist Level Hotline) 
- Models are accessible via API Endpoint out of the box 
- You can pick Closed Source Models e.g. ChatGPT-40 = great performance 
- Cost: 
- Infrastructure e.g. 800€/month: where we host our code 
- Tokens e.g. 100€/month: based on how many user requests ...Cloud vs. On-Prem 
Pricing: 
Cloud 
Fix (netto): 
- Cancom initial Fee: 4950€ 
- On Prem 
- Cancom monthly Fee: 1490€* 
Cloud: 
*Monatlich für Wartung, Weiterentwicklung und Support (inkl. frist Level Hotline) 
- Models are accessible via API Endpoint out of the box 
- You can pick Closed Source Models e.g. ChatGPT-40 = great performance 
- Cost: 
- Infrastructure e.g. 800€/month: where we host our code 
- Tokens e.g. 100€/month: based on how many user requests

Why would anyone go on-prem? Reason: 
- 100% data security 
- So much usage, cheaper than cloud margine (still hard to compete due to 
mass efficiency scalings) 
CKlassifizierung ...Why would anyone go on-prem? Reason: 
- 100% data security 
- So much usage, cheaper than cloud margine (still hard to compete due to 
mass efficiency scalings) 
CKlassifizierung

On-Prem 
NVIDIA NIM 
Standard Als 
NVIDIA Dynama-Triton 
NVIDIA TensorRT and TensarRT-LLM 
Completion 
Postprocessing Decoder 
Cloud-Native Stack 
Optimized Model 
Single CPU. Mul: - GPU, Mal-Noch 
Prompt 
Customization Cache 
Enterprise Management 
Chat-Einstellungen 
Kubernetes 
01.07.25, 1536 
Nachricht eingeben ... 
wer ist die cancom in einem satz 
CUDA 
01.07.25, 11:36 
CANCOM ist ein führendes IT-Dienstleistungsunternehmen in Deutschland, das 
Websuche 
Bild 
+ Dokument 
Unternehmen bei der Digitalisierung und Implementierung innovativer IT-Lösungen 
unterstützt. 
meta 
llama-3.3-70b-instruct 
Advanced LLM for reasoning, math, general 
knowledge, and function calling 
reasoning 
code generation 
+4 ...On-Prem 
NVIDIA NIM 
Standard Als 
NVIDIA Dynama-Triton 
NVIDIA TensorRT and TensarRT-LLM 
Completion 
Postprocessing Decoder 
Cloud-Native Stack 
Optimized Model 
Single CPU. Mul: - GPU, Mal-Noch 
Prompt 
Customization Cache 
Enterprise Management 
Chat-Einstellungen 
Kubernetes 
01.07.25, 1536 
Nachricht eingeben ... 
wer ist die cancom in einem satz 
CUDA 
01.07.25, 11:36 
CANCOM ist ein führendes IT-Dienstleistungsunternehmen in Deutschland, das 
Websuche 
Bild 
+ Dokument 
Unternehmen bei der Digitalisierung und Implementierung innovativer IT-Lösungen 
unterstützt. 
meta 
llama-3.3-70b-instruct 
Advanced LLM for reasoning, math, general 
knowledge, and function calling 
reasoning 
code generation 
+4

NIMs kommen out of the box

Application Architecture (Cloud) 
Frontend 00 
Backend 
RAG 
Chat 
Document Parsing 
Gerneral Chat 
Personal Bots 
REST API 
Docling 
Company Bots 
User Authentifizierung 
CRUD 
A 
Storage 
Scrape Websources 
Completion 
Index & Chunk Documents 
Redis 
Retrieve top-k Chunks 
Corfig Store; User Sessions 
SearXNG @ 
Al Models 
Websearch 
mongo DB 
A 
Small Language Models 
Large Language Models 
VectorDB 
Unstructured Data 
BLOB Data 
Image Generation Models 
· User-Data 
User Documents e.g. 
Azure OpenAl 
. Chat Conversations 
RAG Documents 
Guardrails 
Vectors 
. Bot Configurations 
from Bots (pdf, .. ) 
Metadata (Filters) 
(Bot Descriptions, 
. Metadata (Access) 
System Prompt, ... ) 
Queue Bot Documents to process 
Redis Queue ...Application Architecture (Cloud) 
Frontend 00 
Backend 
RAG 
Chat 
Document Parsing 
Gerneral Chat 
Personal Bots 
REST API 
Docling 
Company Bots 
User Authentifizierung 
CRUD 
A 
Storage 
Scrape Websources 
Completion 
Index & Chunk Documents 
Redis 
Retrieve top-k Chunks 
Corfig Store; User Sessions 
SearXNG @ 
Al Models 
Websearch 
mongo DB 
A 
Small Language Models 
Large Language Models 
VectorDB 
Unstructured Data 
BLOB Data 
Image Generation Models 
· User-Data 
User Documents e.g. 
Azure OpenAl 
. Chat Conversations 
RAG Documents 
Guardrails 
Vectors 
. Bot Configurations 
from Bots (pdf, .. ) 
Metadata (Filters) 
(Bot Descriptions, 
. Metadata (Access) 
System Prompt, ... ) 
Queue Bot Documents to process 
Redis Queue

Application Architecture (On Prem) 
Frontend 
Backend 
RAG 
Chat 
Document Parsing 
Gerneral Chat 
Personal Bots 
REST API 
Docling 
(πέος, είν΄, 16, OCP, HITME, AndiDec, ipit, dock, apte, jpeg, png, ang Diff, out, OCRO 
Company Bots 
User Authentifizierung 
CRUD 
Storage 
Scrape Websources 
Completion 
Index & Chunk Documents 
Redi 
Retrieve top-k Chunks 
Config Store: User Sessions 
SearXNG 
Al Models 
Websearch 
mongoDB 
Nvidia NIM 
VectorDB 
Unstructured Data 
BLOB Data 
· User-Data 
· User Documents e.g. 
LLM 
Image 
A 
. Chat Conversations 
RAG Documents 
- 
· Vectors 
· Bot Configurations 
from Bots 
· Metadata (Filters) 
(Bot Descriptions, 
. Metadata (Access) 
System Prompt, ... ) 
SLM 
Embedding 
NVIDIA 
Queue Bot Documents to process 
Redis Queue ...Application Architecture (On Prem) 
Frontend 
Backend 
RAG 
Chat 
Document Parsing 
Gerneral Chat 
Personal Bots 
REST API 
Docling 
(πέος, είν΄, 16, OCP, HITME, AndiDec, ipit, dock, apte, jpeg, png, ang Diff, out, OCRO 
Company Bots 
User Authentifizierung 
CRUD 
Storage 
Scrape Websources 
Completion 
Index & Chunk Documents 
Redi 
Retrieve top-k Chunks 
Config Store: User Sessions 
SearXNG 
Al Models 
Websearch 
mongoDB 
Nvidia NIM 
VectorDB 
Unstructured Data 
BLOB Data 
· User-Data 
· User Documents e.g. 
LLM 
Image 
A 
. Chat Conversations 
RAG Documents 
- 
· Vectors 
· Bot Configurations 
from Bots 
· Metadata (Filters) 
(Bot Descriptions, 
. Metadata (Access) 
System Prompt, ... ) 
SLM 
Embedding 
NVIDIA 
Queue Bot Documents to process 
Redis Queue

Christian nim tag einladen

„Gibt es beim aktuellen Setup unseres Chatbots bereits Ansätze für Context Engineering? Falls ja – wie wird der Kontext übergeben oder gespeichert?“

KI Zusammenfassung

Generiert von KI. Achten Sie darauf, die Genauigkeit zu überprüfen.

Einführung: Christian erklärt, dass das Ziel des Meetings ist, den Teilnehmern zu ermöglichen, den Cancom Assistant und generative KI, insbesondere Sprachmodelle, zu verkaufen. Er betont die Bedeutung des Verständnisses von Fachbegriffen und der Technologie.

Verkauf: Christian betont, dass die Teilnehmer in der Lage sein sollten, den Cancom Assistant und generative KI zu verkaufen, indem sie die Technologie und die Fachbegriffe verstehen.

Technologie: Christian erklärt, dass der Cancom Assistant ein Chatbot ist, der auf generativer KI basiert und dass das Verständnis der Technologie entscheidend ist, um ihn erfolgreich zu verkaufen.

Einführung in den Cancom Assistant: Christian gibt eine Einführung in den Cancom Assistant und erklärt, dass das Ziel ist, dass die Teilnehmer den Cancom Assistant und generative KI, insbesondere Sprachmodelle, verkaufen können. Er betont die Bedeutung von Fachbegriffen und das Verständnis der Technologie.

Agenda: Christian stellt die Agenda des Meetings vor, die einen Überblick über die Funktionsweise von Large Language Models, Retrieval-Augmented Generation (RAG), eine Demo des Cancom Assistant, die Roadmap und die Kostenstruktur umfasst.

Ziele: Christian erklärt, dass das Ziel des Meetings ist, den Teilnehmern ein umfassendes Verständnis der Technologie und der Anwendungsmöglichkeiten des Cancom Assistant zu vermitteln.

Agenda und Ziele des Meetings: Christian stellt die Agenda des Meetings vor, die einen Überblick über die Funktionsweise von Large Language Models, Retrieval-Augmented Generation (RAG), eine Demo des Cancom Assistant, die Roadmap und die Kostenstruktur umfasst.

Grundlagen: Christian erklärt, dass Large Language Models aus drei Teilen bestehen: Eingabe, KI (Blackbox) und Ausgabe. Er vergleicht die KI mit dem menschlichen Gehirn.

Neuronale Netze: Christian erläutert die Bedeutung von neuronalen Netzen und erklärt, dass sie die Grundlage für die Funktionsweise von Large Language Models bilden.

Transformer-Architektur: Christian erklärt die Bedeutung der Transformer-Architektur, die 2017 von Google entwickelt wurde und die Grundlage für die Leistungsfähigkeit von Large Language Models bildet.

Funktionsweise von Large Language Models: Christian erklärt die Funktionsweise von Large Language Models und betont, dass sie aus drei Teilen bestehen: Eingabe, KI (Blackbox) und Ausgabe. Er vergleicht die KI mit dem menschlichen Gehirn und erläutert die Bedeutung von neuronalen Netzen und der Transformer-Architektur.

Training: Christian erklärt, dass das Training von KI-Modellen abgeschlossen ist und dass es sich dabei um einen aufwendigen Prozess handelt, bei dem das Modell auf großen Datenmengen trainiert wird.

Inferenz: Christian erläutert, dass die Inferenz die Phase ist, in der das Modell auf Anfragen reagiert und dass dies der aktuelle Einsatzbereich des Modells ist.

Tokens: Christian erklärt die Bedeutung von Tokens und deren Rolle bei der Vorhersage von Wörtern. Tokens sind Teilwörter, die das Modell verwendet, um Vorhersagen zu treffen.

Training und Inferenz von KI-Modellen: Christian erklärt den Unterschied zwischen dem Training und der Inferenz von KI-Modellen. Er betont, dass das Training abgeschlossen ist und die Inferenz die Phase ist, in der das Modell auf Anfragen reagiert. Er erläutert auch die Bedeutung von Tokens und deren Rolle bei der Vorhersage von Wörtern.

RAG Konzept: Christian erklärt das Konzept von Retrieval-Augmented Generation (RAG) und wie es die Schwächen von statischem Wissen, Halluzinationen und mangelnder Transparenz in KI-Modellen adressiert.

Wissensdatenbank: Christian beschreibt, wie RAG es ermöglicht, während der Inferenz auf eine Wissensdatenbank zuzugreifen und relevante Informationen zu extrahieren.

Vorteile: Christian erläutert die Vorteile von RAG, einschließlich der Fähigkeit, dynamisch auf aktuelle Informationen zuzugreifen und die Genauigkeit der Antworten zu verbessern.

Retrieval-Augmented Generation (RAG): Christian erklärt das Konzept von RAG und wie es die Schwächen von statischem Wissen, Halluzinationen und mangelnder Transparenz in KI-Modellen adressiert. Er beschreibt, wie RAG es ermöglicht, während der Inferenz auf eine Wissensdatenbank zuzugreifen und relevante Informationen zu extrahieren.

Bot Erstellung: Christian zeigt, wie Bots im Cancom Assistant erstellt werden können, einschließlich der Definition von Namen, Beschreibung und System-Prompt.

Bot Nutzung: Christian erklärt, wie Bots im Cancom Assistant genutzt werden können, einschließlich der Unterschiede zwischen Regular Chat, Personal Bots und Company Bots.

Anwendungsfälle: Christian gibt Beispiele für verschiedene Anwendungsfälle von Bots, einschließlich HR-Bots, Übersetzer und Marketing-Bots.

Erstellung und Nutzung von Bots: Christian zeigt, wie Bots im Cancom Assistant erstellt und genutzt werden können. Er erklärt die Unterschiede zwischen Regular Chat, Personal Bots und Company Bots und gibt Beispiele für verschiedene Anwendungsfälle wie HR-Bots, Übersetzer und Marketing-Bots.

Admin-Dashboard: Christian erklärt die Funktionen des Admin-Dashboards, einschließlich der Überwachung von Kennzahlen wie Anzahl der Chats, verbrauchte Tokens und aktive Nutzer.

Nutzungsbestimmungen: Christian betont die Bedeutung von Nutzungsbestimmungen und Do's and Don'ts, um die Nutzung des Cancom Assistant zu steuern.

Admin-Dashboard und Analytics: Christian erläutert die Funktionen des Admin-Dashboards, das es Administratoren ermöglicht, Kennzahlen wie die Anzahl der Chats, die verbrauchten Tokens und die aktiven Nutzer zu überwachen. Er betont die Bedeutung von Nutzungsbestimmungen und Do's and Don'ts.

Fixkosten: Christian erklärt die Fixkosten für das Cloud-Hosting des Cancom Assistant, die etwa 800€ pro Monat betragen.

Variable Kosten: Christian erläutert die variablen Kosten für die verbrauchten Tokens, die in der Regel vernachlässigbar sind.

Infrastrukturkosten: Christian betont, dass die Hauptkosten durch die Infrastruktur entstehen und dass die Tokens nur einen kleinen Teil der Gesamtkosten ausmachen.

Kostenstruktur und Pricing: Christian erklärt die Kostenstruktur des Cancom Assistant, einschließlich der Fixkosten für das Cloud-Hosting und der variablen Kosten für die verbrauchten Tokens. Er betont, dass die Tokens in der Regel vernachlässigbar sind und die Hauptkosten durch die Infrastruktur entstehen.

Cloud vs. On-Premise: Christian erklärt die Unterschiede zwischen Cloud- und On-Premise-Hosting und betont, dass On-Premise-Hosting nur für Kunden sinnvoll ist, die 100% Datensicherheit benötigen.

Technische Anforderungen: Christian erläutert die technischen Anforderungen für das Hosting von Large Language Models vor Ort, einschließlich der benötigten Hardware und Infrastruktur.

Kosten: Christian erklärt die Kosten für das On-Premise-Hosting, einschließlich der hohen Anfangsinvestitionen und der laufenden Betriebskosten.

On-Premise-Hosting: Christian erläutert die Unterschiede zwischen Cloud- und On-Premise-Hosting. Er betont, dass On-Premise-Hosting nur für Kunden sinnvoll ist, die 100% Datensicherheit benötigen, und erklärt die technischen Anforderungen und Kosten für das Hosting von Large Language Models vor Ort.

Erweiterungen: Christian gibt einen Überblick über geplante Erweiterungen des Cancom Assistant, einschließlich Datei-Upload für Excel und Word und Datei-Erstellung als PDF.

Agenten-Integration: Christian erklärt die geplante Integration von Agenten, die es dem Cancom Assistant ermöglichen, verschiedene Tools und Datenquellen zu nutzen.

Konnektoren: Christian erläutert die Entwicklung von Konnektoren für verschiedene Datenquellen, um die Funktionalität des Cancom Assistant zu erweitern.

Roadmap und zukünftige Entwicklungen: Christian gibt einen Überblick über die Roadmap des Cancom Assistant, einschließlich geplanter Erweiterungen wie Datei-Upload für Excel und Word, Datei-Erstellung als PDF, Agenten-Integration und die Entwicklung von Konnektoren für verschiedene Datenquellen.

Bedeutung: Christian betont die Bedeutung von AI Discovery Workshops, um Kunden bei der Identifizierung von Use Cases und der Implementierung von KI-Lösungen zu unterstützen.

Einstiegspunkt: Christian erklärt, dass AI Discovery Workshops als Einstiegspunkt für den Cancom Assistant und individuelle AI-Projekte dienen können.

Vorgehen: Christian erläutert das Vorgehen bei AI Discovery Workshops, einschließlich der Analyse von Kundenanforderungen und der Entwicklung maßgeschneiderter Lösungen.

AI Discovery Workshops: Christian betont die Bedeutung von AI Discovery Workshops, um Kunden bei der Identifizierung von Use Cases und der Implementierung von KI-Lösungen zu unterstützen. Er erklärt, dass diese Workshops als Einstiegspunkt für den Cancom Assistant und individuelle AI-Projekte dienen können.

Besprechungsnotizen:

Zugriff auf Cancom Assistant: Sicherstellen, dass Oliver und das Team Zugang zum Cancom Assistant erhalten. (Christian)

Sharepoint Connector: Entwicklung und Implementierung eines Sharepoint Connectors für den Cancom Assistant vorantreiben. (Christian)

Admin Dashboard Funktionen: Erweiterung des Admin Dashboards um detaillierte Analytics-Features wie Topic Summary und Feedback-Integration. (Christian)

On-Premise Lösung: Überprüfung und Bereitstellung der notwendigen Kubernetes-Umgebung für On-Premise Kunden sicherstellen. (Christian)

Discovery Workshops: Planung und Durchführung von AI Discovery Workshops mit Kunden zur Identifikation von Use Cases und individuellen AI-Projekten. (Christian, Oliver)

Zusammenfassung: Deep Dive CANCOM Assistant 9. Juli

Folgeaufgaben:
