

## Was ist eine Liste?

Eine Liste ist eine Sammlung von Elementen oder Einträgen. Ein Beispiel kann z. B. ein Bündel Bananen sein. Jede Banane ist ein Eintrag in der Liste (bzw. im Bündel). Ein Bündel Bananen ist leichter aufzuheben als die einzelnen Bananen. Dasselbe gilt für die Gruppierung von Elementen durch parametrische Beziehungen in einer Datenstruktur.

![Bananas](images/6-1/Bananas_white_background_DS.jpg)

> Foto [Augustus Binu](https://commons.wikimedia.org/wiki/File:Bananas_white_background_DS.jpg?fastcci_from=11404890&c1=11404890&d1=15&s=200&a=list).

Beim Einkaufen packen Sie alle gekauften Artikel in eine Tasche. Auch diese Tasche ist eine Liste. Angenommen, Sie benötigen drei Bündel Bananen, um (eine *große Menge*)Bananenbrot zu backen. Damit stellt die Tasche eine Liste mit Bananenbündeln und jedes Bündel eine Liste mit Bananen dar. Die Tasche ist eine Liste von Listen (zweidimensional) und jedes Bananenbündel ist eine Liste (eindimensional).

In Dynamo sind Listendaten geordnet und der erste Eintrag in einer Liste hat immer den Index "0". Weiter unten wird beschrieben, wie Listen in Dynamo definiert werden und welche Beziehungen zwischen mehreren Listen möglich sind.

## Nullbasierte Indizes

Auf den ersten Blick scheint es ungewohnt, dass der erste Index einer Liste immer 0 und nicht 1 lautet. Wenn also vom ersten Eintrag in einer Liste die Rede ist, ist damit der Eintrag mit dem Index 0 gemeint.

Wenn Sie etwa die Finger an Ihrer rechten zählen, würden Sie von 1 bis 5 zählen. In einer Liste in Dynamo hätten Ihre Finger jedoch die Indizes 0–4. Für Einsteiger in die Programmierung ist dies eventuell zunächst ungewohnt. Nullbasierte Indizes sind jedoch die in den meisten Rechensystemen gebräuchliche Praxis.

![items](images/6-1/items.jpg)

Beachten Sie, dass die Liste nach wie vor 5 Einträge enthält, sie werden nur beginnend mit 0 gezählt. Die Einträge in Listen müssen nicht unbedingt Zahlen sein. Vielmehr können alle in Dynamo unterstützten Datentypen verwendet werden: Punkte, Kurven, Oberflächen, Familien usw.

Die einfachste Möglichkeit, den Typ der in einer Liste enthaltenen Daten sichtbar zu machen, besteht oft darin, einen Watch-Block mit der Ausgabe eines anderen Blocks zu verbinden. Im Watch-Block werden per Vorgabe alle Indizes automatisch links und die Datenelemente rechts in der Liste angezeigt.

Diese Indizes sind ein entscheidendes Element bei der Arbeit mit Listen.

### Eingaben und Ausgaben

Ein- und Ausgaben behandeln Listen abhängig vom verwendeten Block unterschiedlich. In diesem Beispiel wird die ausgegebene Liste mit fünf Punkten mit zwei verschiedenen Dynamo-Blöcken verbunden: *PolyCurve.ByPoints* und *Circle.ByCenterPointRadius*:

![Input Examples](images/6-2/PolyCurve.Inputs.jpg)

> 1. Die *points*-Eingabe von *PolyCurve.ByPoints* sucht nach *"Point[]"*. Dies entspricht einer Liste von Punkten.
2. Die Ausgabe von *PolyCurve.ByPoints* ist eine einzelne PolyCurve, die aus den fünf Punkten aus der Liste erstellt wird.
3. Die *centerPoint*-Eingabe für *Circle.ByCenterPointRadius* verlangt *"Point"*.
4. Die Ausgabe für *Circle.ByCenterPointRadius* ist eine Liste mit fünf Kreisen, deren Mittelpunkte den Punkten aus der ursprünglichen Liste entsprechen.

In *PolyCurve.ByPoints* und in *Circle.ByCenterPointRadius* wurden dieselben Daten eingegeben; mit PolyCurve erhalten Sie jedoch nur eine Polykurve, während der Circle-Block fünf Kreise um die einzelnen Punkte ausgibt. Intuitiv ist dies einleuchtend: Die Polykurve wird als Kurve gezeichnet, die die fünf Punkte verbindet, bei den Kreisen hingegen wird um jeden Punkt ein eigener Kreis erstellt. Was geschieht dabei mit den Daten?

Wenn Sie den Mauszeiger auf die *points*-Eingabe von *Polycurve.ByPoints* setzen, sehen Sie, dass *"Point[]"* als Eingabe verlangt wird. Beachten Sie die Klammern am Ende. Dies steht für eine Liste von Punkten. Um eine einzelne Polykurve zu erstellen, wird eine Liste benötigt. Das bedeutet, dass dieser Block jede eingegebene Liste zu einer PolyCurve zusammenfasst.

Im Gegensatz dazu verlangt die *centerPoint*-Eingabe für *Circle.ByCenterPointRadius* den Typ *"Point"*. Dieser Block sucht nach einem einzelnen Punkt als einem eigenständigen Eintrag, um den Mittelpunkt des Kreises zu definieren. Aus diesem Grund erhalten Sie fünf Kreise aus den Eingabedaten. Die Kenntnis dieser Unterschiede bei den Eingaben in Dynamo erleichtert das Verständnis der Funktionsweise der Blöcke bei der Verarbeitung von Daten.

### Vergitterung

Für die Zuordnung von Daten gibt es keine eindeutige Lösung. Dieses Problem tritt auf, wenn in einem Block Eingaben von unterschiedlicher Größe verwendet werden. Die Verwendung unterschiedlicher Algorithmen zur Datenzuordnung kann zu äußerst unterschiedlichen Ergebnissen führen.

Angenommen, ein Block erstellt Liniensegmente zwischen Punkten (Line.ByStartPointEndPoint). Hierfür werden zwei Eingabeparameter verwendet. Beide stellen Punktkoordinaten bereit:

![Input Examples](images/6-1/laceBase.jpg)

Es ist leicht zu erkennen, dass es mehrere Möglichkeiten gibt, Linien zwischen diesen Punktgruppen zu zeichnen. Um die Vergitterungsoptionen aufzurufen, klicken Sie mit der rechten Maustaste in die Mitte eines Blocks und wählen das Menü Vergitterung.

### Basisdatei

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option Save Link As): [Lacing.dyn](datasets/6-1/Lacing.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

Zur Demonstration der unten beschriebenen Vergitterungsoptionen werden anhand dieser Basisdatei die kürzeste und die längste Liste sowie das Kreuzprodukt definiert.

![Input Examples](images/6-1/lacing.jpg)

> 1. Dabei ändern Sie die Vergitterung für *Point.ByCoordinates*, nehmen jedoch keine weiteren Änderungen im oben gezeigten Diagramm vor.

#### Kürzeste Liste

Die einfachste Möglichkeit besteht darin, jedem Wert genau einen Wert aus der anderen Eingabe zuzuordnen, bis das Ende einer der Folgen erreicht ist. Dieser Algorithmus wird als "Kürzeste Liste" bezeichnet. Dies ist das vorgegebene Verhalten in Dynamo-Blöcken:

![Input Examples](images/6-1/shortestListDiagram.jpg)

![Input Examples](images/6-1/shortestList.jpg)

> Mit der Vergitterung *Kürzeste Liste* erhalten Sie eine einfache diagonale Linie durch fünf Punkte. Die kürzere Liste umfasst fünf Einträge. Aus diesem Grund endet die Vergitterung Kürzeste Liste, sobald das Ende dieser Liste erreicht ist.

#### Längste Liste

Der Algorithmus "Längste Liste" verbindet weiterhin Eingaben und verwendet gegebenenfalls Elemente mehrfach, bis alle Folgen aufgebraucht sind.

![Input Examples](images/6-1/longestListDiagram.jpg)

![Input Examples](images/6-1/longestList.jpg)

> Mit der Vergitterung *Längste Liste* erhalten Sie eine diagonale Linie, die vertikal endet. Der letzte Eintrag in der 5 Einträge langen Liste wird genau wie im Übersichtsdiagramm so lange wiederholt, bis auch das Ende der längeren Liste erreicht ist.

#### Kreuzprodukt

Mit der Methode "Kreuzprodukt" werden sämtliche möglichen Verbindungen hergestellt.

![Input Examples](images/6-1/crossProductDiagram.jpg)

![Input Examples](images/6-1/crossProduct.jpg)

> Bei der Vergitterung *Kreuzprodukt* erhalten Sie jede mögliche Kombination der beiden Listen. Dadurch entsteht ein Raster aus 5 x 10 Punkten. Diese Datenstruktur entspricht der Darstellung des Kreuzprodukts im Übersichtsdiagramm oben, allerdings wurden die Daten dabei in eine Liste von Listen umgewandelt. Durch Verbinden einer PolyCurve wird sichtbar, dass jede Liste durch ihren x-Wert definiert ist. Damit entsteht eine Reihe mit fünf vertikalen Linien.

