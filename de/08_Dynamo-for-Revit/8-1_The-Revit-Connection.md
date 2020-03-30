

## Verbindung zu Revit

![Verbindung](images/8-1/link.png)<br xmlns="http://www.w3.org/1999/xhtml"/>Dynamo for Revit ergänzt die Gebäudemodellierung (Building Information Modelling) um die Daten- und Logikumgebung eines grafischen Algorithmeneditors. Die Flexibilität dieser Umgebung eröffnet zusammen mit einer robusten Revit-Datenbank neue Perspektiven für BIM.

Dieses Kapitel behandelt die Dynamo-Arbeitsabläufe für BIM. Die einzelnen Abschnitte enthalten im Wesentlichen Übungen, da sich ein grafischer Algorithmeneditor für BIM am besten anhand konkreter Projekte vorstellen lässt. Zunächst erhalten Sie hier jedoch eine Einführung in die Ursprünge dieses Programms.

### #

#### Kompatibilität mit Revit-Versionen

Da sich sowohl Revit als auch Dynamo laufend weiterentwickeln, bemerken Sie möglicherweise, dass Ihre Revit-Version nicht mit der auf Ihrem Computer installierten Version von Dynamo for Revit kompatibel ist. Weiter unten wird erläutert, welche Versionen von Dynamo for Revit mit Revit kompatibel sind.

|Revit-Version|Erste stabile Version von Dynamo|Letzte unterstützte Version von Dynamo for Revit|
| -- | -- | -- |
|2013|[0.6.1](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall0.6.1.exe)|[0.6.3](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall0.6.3.exe)|
|2014|[0.6.1](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall0.6.1.exe)|[0.8.2](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall0.8.2.exe)|
|2015|[0.7.1](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall0.7.1.exe)|[1.2.1](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall1.2.1.exe)|
|2016|[0.7.2](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall0.7.2.exe)|[1.3.2](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall1.3.2.exe)|
|2017|[0.9.0](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall0.9.0.exe)|[1.3.4](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall1.3.4.exe) / [2.0.3](https://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall2.0.3.exe)|
|2018|[1.3.0](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall1.3.0.exe)|[1.3.4](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall1.3.4.exe) / [2.0.3](https://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall2.0.3.exe)|
|2019|[1.3.3](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall1.3.3.exe)|[1.3.4](http://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall1.3.4.exe) / [2.0.3](https://dyn-builds-data.s3-us-west-2.amazonaws.com/DynamoInstall2.0.3.exe)|
|2020|2.1.0 (Revit 2020 enthält jetzt Dynamo. Dynamo wird entsprechend aktualisiert.)|-|

### #

#### Entwicklung von Dynamo

![Geschichte](images/8-1/earlyScreenshot.jpg)

> Ein spezialisiertes Entwicklerteam und eine engagierte Community haben dafür gesorgt, dass das Projekt seit seinen Anfängen kaum wiederzuerkennen ist.

Dynamo wurde ursprünglich zur Beschleunigung von AEC-Arbeitsabläufen in Revit entwickelt. In Revit wird für jedes Projekt eine robuste Datenbank erstellt. Für den durchschnittlichen Benutzer kann jedoch der Zugriff auf diese Informationen außerhalb der Benutzeroberfläche problematisch sein. In Revit steht eine umfassende API (Application Program Interface) zur Verfügung, über die externe Entwickler eigene Werkzeuge erstellen können. Programmierer nutzen diese API schon seit Jahren. Textbasierte Skripterstellung ist jedoch nicht für jeden Benutzer möglich. Dynamo soll die Arbeit mit Revit-Daten gewissermaßen demokratisieren, indem ein leichter verständlicher grafischer Algorithmeneditor bereitgestellt wird.

Die Core-Dynamo-Blöcke ermöglichen es dem Benutzer in Verbindung mit benutzerdefinierten Revit-Blöcken, parametrische Arbeitsabläufe für Interoperabilität, Dokumentation, Analyse und Erstellung erheblich zu erweitern. Mit Dynamo können Sie lästige Arbeitsabläufe automatisieren und erfolgreich mit Entwürfen experimentieren.

### Ausführen von Dynamo in Revit

![Verbindung](images/8-1/01.jpg)

> 1. Navigieren Sie in einem Revit-Projekt oder im Familieneditor zu Zusatzmodule und klicken Sie auf *Dynamo*. Beachten Sie: Dynamo wird nur in der Datei ausgeführt, in der es geöffnet wurde.

![Verbindung](images/8-1/00.jpg)

> 1. Wenn Sie Dynamo in Revit öffnen, wird eine neue Kategorie namens *"Revit"* angezeigt. In dieser umfassenden Erweiterung der Benutzeroberfläche stehen spezielle Blöcke für Revit-Arbeitsabläufe zur Verfügung.*

**Anmerkung: Da die für Revit spezifische Familie von Blöcken verwendet wird, funktioniert das Dynamo-Diagramm nur, wenn Sie es in Dynamo for Revit öffnen. Wenn Sie ein Diagramm aus Dynamo for Revit beispielsweise in Dynamo Sandbox öffnen, fehlen die Revit-Blöcke.*

### Anhalten von Blöcken

Revit ist eine Plattform mit robusten Funktionen zum Projektmanagement. Aus diesem Grund sind parametrische Operationen in Dynamo eventuell komplex und ihre Berechnung kann viel Zeit beanspruchen. Falls die Berechnung von Blöcken in Dynamo sehr lange dauert, können Sie die Blockfunktionen anhalten ("einfrieren") und damit die Ausführung von Revit-Vorgängen unterbrechen, während Sie Ihr Diagramm entwickeln. Weitere Informationen zum Anhalten von Blöcken finden Sie im entsprechenden Abschnitt im Kapitel [Körper](../05_Geometry-for-Computational-Design/5-6_solids.md#freezing).

### Community

Da Dynamo ursprünglich für AEC erstellt wurde, bietet seine große und weiter wachsende Community ausgezeichnete Ressourcen, die es ermöglichen, von Experten der Branche zu lernen und sich mit ihnen auszutauschen. Die Dynamo-Community setzt sich zusammen aus Architekten, Ingenieuren, Programmierern und Designern, denen die Leidenschaft für Austausch und Entwicklung gemeinsam ist.

Dynamo ist ein Open Source-Projekt und entwickelt sich daher ständig weiter. Ein großer Teil dieser Entwicklungen steht in Verbindung mit Revit. Wenn Sie neu hinzugekommen sind, können Sie damit beginnen, im Diskussionsforum [Fragen zu stellen](http://dynamobim.org/forums/forum/dyn/). Programmierer, die sich an der Entwicklung von Dynamo beteiligen möchten, finden auf der [GitHub-Seite](https://github.com/DynamoDS/Dynamo) das Nötige. Eine hervorragende Ressource für Bibliotheken externe Bibliotheken ist auch der [Dynamo Package Manager](http://dynamopackages.com/). Viele dieser Pakete werden für die Verwendung mit AEC entwickelt. In diesem Kapitel werden solche extern entwickelten Pakete für die Unterteilung von Oberflächen in Felder vorgestellt.

![Blog](images/8-1/blog.png)

> Für Dynamo steht auch ein aktives [Blog](http://dynamobim.com/blog/) zur Verfügung. Lesen Sie die neuesten Posts, um sich über neue Entwicklungen auf dem Laufenden zu halten.

