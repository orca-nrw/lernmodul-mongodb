![EILD.nrw](https://github.com/orca-nrw/plsql-trainer/raw/main/app/src/img/Logo-mitSchrift-v2.png)

# Lernmodul MongoDB

In diesem Lernmodul soll verdeutlicht werden wie aus der NoSQL Datenbank MongoDB Daten effizient ausgelesen werden können, um diese zu bearbeiten. Datensätze liegen nicht immer als CSV Datei vor oder liegen in einem verteilten System aus Datenbanken. Die Daten direkt aus der Datenbank anzufragen, korrekt aufzubereiten und Zusammenhänge zwischen den Daten herauszufiltern soll verdeutlicht werden. Diese Daten direkt aus der Datenbank auszulesen und mit effektiven Werkzeugen wie dem Aggregations-Framework zu strukturieren ist das Ziel dieses Notebooks.

Schlagworte: EILD.nrw, Datenbanksysteme, Datenbank, Jupyter Notebook, Python, MongoDB

## Lektion mit MongoDB starten: 

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/orca-nrw/lernmodul-mongodb/HEAD?urlpath=notebooks%2Findex.ipynb)

## Lernmodul über Docker starten

Mithilfe der folgenden Befehle kann das Lernmodul auch lokal in einem Docker Container gestartet werden:

```
docker build -t lernmodulmongo:1.0 .
docker run -p 8888:8888 lernmodulmongo:1.0
```


### Über dieses Lernmodul

Dieses Lernmodul wurde im Rahmen des EILD.nrw-Projektes von Michel Schwarz an der Hochschule Düsseldorf erstellt, nähre Informationen unter [eild.nrw](https://eild.nrw). Das Lernmodul kann unter foldender [Lizenz](LICENSE) genutzt werden.

![logos.jpg](https://github.com/orca-nrw/lm-database-with-python/raw/master/logos.jpg)
