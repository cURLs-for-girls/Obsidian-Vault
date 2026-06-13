---
tags: [onenote, aivengers]
---

# Hackathon

Intro Folien - 20 Min

Ihr bringt was mit - wir schauen es uns an

Wir zeigen Showcases

Entwickler zusammen zum Tisch

5 Kisten - 3-4 gute Modelle

16.30 Einlass

17.00 Start

17.30 Spark Installation Demo - also entweder lokal mit Maus / Tastatur oder per SSH Sync Manager - welche Möglichkeiten der Nutzung habe ich?

18.00 Start Coding Session (2h)

20.00 Diskussionsrunde

Challenge: via ComfyUI Bild oder Video zu gewissem Thema generieren lassen

Verbinden Sie sich von einem 
Zum ersten Mal hier? 
anderen Computer aus 
Probieren Sie diese Entwickler-Schnellstarts aus 
Fang mit NVIDIA Sync an 
VS Code 
5 min 
VS Code lokal oder remote installieren und verwenden 
-------- 
rariation and Catso 
DGX Dashboard 
30 min 
Überwachen Sie Ihr DGX-System und starten Sie JupyterLab 
Open WebUl mit Ollama 
9 15 min 
Einrichten des lokalen Netzwerkzugangs 
Installiere Open WebUI und nutze Ollama, um mit Modellen auf deinem 
Spark zu chatten 
NVIDIA Sync hilft bei der Einrichtung und Konfiguration des SSH- 
Zugriffs 
Bequeme Benutzeroberfläche 
45 min 
5 minuten 
Installiere und nutze Comfy UI, um Bilder zu generieren 
Jetzt konfigurieren > 
Alle Spielbücher entdecken ...Verbinden Sie sich von einem 
Zum ersten Mal hier? 
anderen Computer aus 
Probieren Sie diese Entwickler-Schnellstarts aus 
Fang mit NVIDIA Sync an 
VS Code 
5 min 
VS Code lokal oder remote installieren und verwenden 
-------- 
rariation and Catso 
DGX Dashboard 
30 min 
Überwachen Sie Ihr DGX-System und starten Sie JupyterLab 
Open WebUl mit Ollama 
9 15 min 
Einrichten des lokalen Netzwerkzugangs 
Installiere Open WebUI und nutze Ollama, um mit Modellen auf deinem 
Spark zu chatten 
NVIDIA Sync hilft bei der Einrichtung und Konfiguration des SSH- 
Zugriffs 
Bequeme Benutzeroberfläche 
45 min 
5 minuten 
Installiere und nutze Comfy UI, um Bilder zu generieren 
Jetzt konfigurieren > 
Alle Spielbücher entdecken

Settings 
X 
Apps 
Custom 
Devices 
DGX Dashboard 
Available 
Pre-installed app on your DGX Spark that provides easy access to system updates, 
metrics, settings, and a managed Jupyterlab instance. 
Show App 
Al Workbench 
Unavailable 
A free development environment manager for data scientists and developers to 
create, customize, and collaborate on Al applications on GPU systems. 
Download and install, then restart Sync to detect the change. 
Terminal 
Available 
Connect to your Device via the command line. ...Settings 
X 
Apps 
Custom 
Devices 
DGX Dashboard 
Available 
Pre-installed app on your DGX Spark that provides easy access to system updates, 
metrics, settings, and a managed Jupyterlab instance. 
Show App 
Al Workbench 
Unavailable 
A free development environment manager for data scientists and developers to 
create, customize, and collaborate on Al applications on GPU systems. 
Download and install, then restart Sync to detect the change. 
Terminal 
Available 
Connect to your Device via the command line.

NGC API

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

docker run -it --rm --name=$CONTAINER_NAME \

--gpus all \

--shm-size=16GB \

-e NGC_API_KEY=$NGC_API_KEY \

-v "$LOCAL_NIM_CACHE:/opt/nim/.cache" \

-u $(id -u) \

-p 8000:8000 \

$IMG_NAME

Aufgabe: NIM XYZ deployen und über OpenWebUI einbinden - dann Code generieren lassen für kleine Anwendung

NIM on Spark 
₾ 30 min 
Deploy a NIM on Spark 
dgx 
spark ...NIM on Spark 
₾ 30 min 
Deploy a NIM on Spark 
dgx 
spark

curl -X 'POST' \

'http://192.168.178.127:8000/v1/chat/completions' \

-H 'accept: application/json' \

-H 'Content-Type: application/json' \

-d '{

"model": "meta/llama-3.1-8b-instruct",

"messages": [

{

"role":"system",

"content":"detailed thinking on"

},

"role":"user",

"content":"Can you write me a song?"

}

],

"top_p": 1,

"n": 1,

"max_tokens": 15,

"frequency_penalty": 1.0,

"stop": ["hello"]

}'
