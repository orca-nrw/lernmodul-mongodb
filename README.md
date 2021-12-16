# Lernmodul MongoDB

## Überblick
Dieses Lernmodul bietet anhand von drei JSON Datensätzen einen grundlegenden Überblick über die Interaktion mit der dokumentenorientierten Datenbank MongoDB.
Es wird zu Beginn das theoretische Verständnis für Dokumente, Schlüssel/Wert Paare und die BSON Datentypen gegeben.
Im weiteren Verlauf werden Inhalte wie die MonogDB Operatoren, die Aggregation Pipeline oder das Filesystem GridFS behandelt.
In jedem Kapitel finden sich Aufgabenbereiche wieder, in denen das erlernte Wissen direkt angewendet werden soll.

Das Notebook basiert auf einem Ubuntu 18.04 und einer MongoDB mit der Version 4.2.
Zu beachten ist, dass die MongoDB durch eine mongod.conf gestartet wird und im Home Verzeichnis die notwendigen Berechtigungen für
das Notebook, den DB Ordner und die mongod.conf vorhanden sein müssen.
Diese Implementierungen finden sich im Dockerfile wieder.

## Datensätze
```seh
monogdata/customer.json
```

```sh
monogdata/grocery.json'
```

```sh
monogdata/transaction.json
```

Die beiden Bilder die für das GridFS verwendet wurden unterliegen einer freien Lizenz.

## Starten mit MyBinder
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/git/https%3A%2F%2Fprojectbase.medien.hs-duesseldorf.de%2Feild.nrw-module%2Flernmodul-mongodb/master?filepath=index.ipynb)

[JupyterApp](https://mybinder.org/v2/git/https%3A%2F%2Fprojectbase.medien.hs-duesseldorf.de%2Feild.nrw-module%2Flernmodul-mongodb/master)


## Lokales Ausführen mit Docker

```sh
docker clone https://projectbase.medien.hs-duesseldorf.de/eild.nrw-module/lernmodul-mongodb.git
```

```sh
docker build -t lernmodulmongo:1.0 .
```

```sh
docker run -p 8888:8888 lernmodulmongo:1.0
```

Klicken Sie dann auf den unteren Link der im Terminal angezeigt wird. 
Das Lernmodul wird sich dann in einem Browserfenster öffnen.
```
    To access the notebook, open this file in a browser:
        file:///home/hsd/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://6c2e5becaead:8888/?token=f9a04dd74a45ae98be80c7d78d0b322ad7f886b0ff0daf77
     or http://127.0.0.1:8888/?token=f9a04dd74a45ae98be80c7d78d0b322ad7f886b0ff0daf77
```

Eine umfassende Anleitung wie das Notebook gestartet und Docker installiert werden kann findet sich in dieser [Anleitung](https://projectbase.medien.hs-duesseldorf.de/eild.nrw/eild.nrw-mp/-/wikis/Technik/Jupyter-Notebook-lokal-mit-Docker-starten) 
