

## Blöcke

In Dynamo stellen **Blöcke** die Objekte dar, die zum Bilden eines visuellen Programms miteinander verbunden werden. Jeder **Block** führt einen Vorgang aus – vom einfachen Speichern einer Zahl bis hin zu komplexen Aktionen wie das Erstellen oder Abfragen von Geometrie.

### Anatomie von Blöcken

In Dynamo setzen sich die meisten Blöcke aus fünf Teilen zusammen. Abgesehen von einigen Ausnahmen (z. B. Eingabeblöcke) kann die Anatomie eines jeden Blocks wie folgt beschrieben werden: ![Aufgliederung eines Point by Coordinates-Blocks](images/3-1/00-AnatomyOfANode.png)

> 1. Name: Der Name des Blocks gemäß Category.Name-Benennungskonvention
2. Hauptbereich: Der Hauptkörper des Blocks. Durch Klicken mit der rechten Maustaste auf diesen Bereich werden Optionen für den gesamten Block angezeigt.
3. Anschlüsse (eingehend und ausgehend): Die Rezeptoren für Drähte, über die die eingegebenen Daten sowie die Ergebnisse von Blockaktionen an Blöcke geliefert werden.
4. Datenvorschau: Zeigt eine QuickInfo mit den Ergebnissen von Blockaktionen durch Bewegen des Cursors oder Klicken an.
5. Symbol Vergitterung: Zeigt die Option Vergitterung an, die für übereinstimmende Listeneingaben angegeben ist (mehr dazu später).

### Anschlüsse

Die Eingaben und Ausgaben für Blöcke werden als Anschlüsse bezeichnet. Sie fungieren als Rezeptoren für Drähte. Daten gelangen über die Anschlüsse auf der linken Seite in Blöcke und strömen auf der rechten Seite wieder aus den Blöcken hinaus, nachdem der entsprechende Vorgang ausgeführt wurde. Anschlüsse erwarten Daten eines bestimmten Typs. Das Verbinden einer Zahl wie *2,75* mit den Anschlüssen eines Point By Coordinates-Blocks führt beispielsweise dazu, dass ein Punkt erfolgreich erstellt wird. Wenn jedoch *"Rot"* an denselben Anschluss geliefert wird, tritt ein Fehler auf.

> Tipp: Bewegen Sie den Cursor auf einen Anschluss, um eine QuickInfo mit dem erwarteten Datentyp aufzurufen.

![Anschlussbezeichnungen – Point by Coordinates](images/3-1/01-Ports.png)

> 1. Anschlussbezeichnung
2. QuickInfo
3. Datentyp

### Status

Dynamo gibt einen Hinweis auf den Status der Ausführung eines visuellen Programms aus, indem Blöcke mit unterschiedlichen Farbschemata basierend auf dem Status der einzelnen Blöcke gerendert werden. Darüber hinaus werden durch Bewegen des Cursors auf den Namen bzw. die Anschlüsse oder durch Klicken mit der rechten Maustaste darauf zusätzliche Informationen und Optionen angezeigt.

![Status](images/3-1/02-States2.png)

> 1. Inaktiv: Graue Blöcke sind inaktiv und müssen mit Drähten verbunden werden, um in den Programmablauf im aktiven Arbeitsbereich integriert zu werden.
2. Aktiv: Blöcke, deren Namen einen dunkelgrauen Hintergrund aufweisen, sind ordnungsgemäß angeschlossen, d. h., alle Eingaben konnten erfolgreich verbunden werden.
3. Warnung: Gelbe Blöcke weisen einen Fehlerzustand auf.
4. Ausgewählt: Aktuell ausgewählte Blöcke weisen eine aquamarinblau hervorgehobenen Rand auf.
5. Vorgabewert: Klicken Sie mit der rechten Maustaste auf einen Eingabeanschluss. Einige Blöcke verfügen über Vorgabewerte, die verwendet werden können, aber nicht verwendet werden müssen.

Wenn Ihr visuelles Programm Warnungen oder Fehler aufweist, gibt Dynamo zusätzliche Informationen zu dem Problem an. Alle Blöcke, die in gelb angezeigt werden, verfügen auch über eine QuickInfo über dem Namen. Bewegen Sie den Cursor auf die QuickInfo, um sie zu erweitern.

> Tipp: Untersuchen Sie vor dem Hintergrund dieser QuickInfo die vorgelagerten Blöcke, um zu sehen, ob der erforderliche Datentyp oder die erforderliche Datenstruktur fehlerhaft ist.

![QuickInfo zu fehlerhaftem Block](images/3-1/03-WarningTooltip.png)

> 1. QuickInfo zu Warnung: "Null" oder keine Daten können nicht als Double verstanden werden, d. h. eine Zahl.
2. Verwenden Sie den Watch-Block, um die Eingabedaten zu untersuchen.
3. Der vorgelagerte Number-Block speichert "Rot", keine Zahl.

