

## Arbeiten mit Listen

Im vorigen Kapitel wurde definiert, was unter einer Liste zu verstehen ist. Thema des folgenden Kapitels sind die Vorgänge, die für Listen durchgeführt werden können. Eine Liste lässt sich mit einem Stapel Spielkarten vergleichen. Der Stapel ist die Liste und jede Spielkarte steht für ein Element.

![Karten](images/6-2/Playing_cards_modified.jpg)

> Foto von [Christian Gidlöf](https://commons.wikimedia.org/wiki/File:Playing_cards_modified.jpg)

Welche **Abfragen** sind in der Liste möglich? Dies ermöglicht den Zugriff auf vorhandene Eigenschaften.

* Anzahl der Karten im Stapel? 52.
* Anzahl der Farben? 4.
* Material? Papier.
* Länge? 3.5" bzw. 89 mm.
* Breite? 2.5" bzw. 64 mm.

Welche **Aktionen** können für die Liste durchgeführt werden? Diese bewirken Änderungen in der Liste entsprechend der angegebenen Operation.

* Sie können den Stapel neu mischen.
* Sie können den Stapel nach Wert sortieren.
* Sie können den Stapel nach Farben sortieren.
* Sie können den Stapel teilen.
* Sie können den Stapel unterteilen, indem Sie die Karten an verschiedene Spieler ausgeben.
* Sie können eine bestimmte Karte im Stapel auswählen.

In Dynamo sind Blöcke vorhanden, die den oben genannten Vorgängen entsprechen und die Arbeit mit Listen von allgemeinen Daten ermöglichen. Die Lektionen weiter unten demonstrieren einige der grundlegenden Operationen, die für Listen durchgeführt werden können.

## Operationen für Listen

Das folgende Bild zeigt das Basisdiagramm, an dem grundlegende Operationen für Listen gezeigt werden. Dabei wird die Verwaltung von Daten in einer Liste betrachtet, und die visuellen Ergebnisse werden angezeigt.

#### Übungslektion – Operationen für Listen

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option Save Link As): [List-Operations.dyn](datasets/6-2/List-Operations.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

![Übungslektion](images/6-2/Exercise/40.png)

> 1. Beginnen Sie mit einem *Code Block* mit dem Wert ```500```.
2. Verbinden Sie ihn mit der *x*-Eingabe eines *Point.ByCoordinates*-Blocks.
3. Verbinden Sie den Block aus dem vorigen Schritt mit der origin-Eingabe eines *Plane.ByOriginNormal*-Blocks.
4. Verbinden Sie in einem *Circle.ByPlaneRadius*-Block den Block aus dem vorigen Schritt mit dem plane-Eingang.
5. Legen Sie mithilfe eines *Code Block* den Wert ```50;``` als *Radius* fest. Dadurch erstellen Sie den ersten Kreis.
6. Verschieben Sie mithilfe eines *Geometry.Translate*-Blocks den Kreis um 100 Einheiten nach oben in z-Richtung.
7. Definieren Sie mithilfe eines *Code Block*-Blocks einen Bereich von 10 Zahlen zwischen 0 und 1, wobei Sie die folgende Zeile verwenden: ```0..1..#10;```.
8. Verbinden Sie den Codeblock aus dem vorigen Schritt mit der *param*-Eingabe zweier *Curve.PointAtParameter*-Blöcke. Verbinden Sie *Circle.ByPlaneRadius* mit der curve-Eingabe des oberen Blocks und *Geometry.Translate* mit der curve-Eingabe des Blocks darunter.
9. Verbinden Sie in einem *Line.ByStartPointEndPoint* die beiden *Curve.PointAtParameter*-Blöcke.

![Übungslektion](images/6-2/Exercise/38.png)

> 1. Ein *Watch3D*-Block zeigt die Ergebnisse aus *Line.ByStartPointEndPoint* an. Hier werden Linien zwischen zwei Kreisen gezeichnet, um einfache Listenoperationen darzustellen. Dieses Dynamo-Basisdiagramm wird zur Demonstration der unten genannten Listenoperationen verwendet.

### List.Count

![Count](images/6-2/count.png)

> Der Block *List.Count* ist einfach: Er zählt die in einer Liste enthaltenen Werte und gibt ihre Anzahl zurück. Bei der Arbeit mit Listen von Listen gestaltet sich die Verwendung dieses Blocks differenzierter. Dies wird in weiter unten folgenden Abschnitten gezeigt.

#### Übungslektion·– List.Count

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option Save Link As): [List-Count.dyn](datasets/6-2/List-Count.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

![Count](images/6-2/Exercise/35.png)

> 1. Der *List.Count*-Block gibt die Anzahl der Linien aus dem *Line.ByStartPointEndPoint*-Block zurück. In diesem Fall beträgt dieser Wert 10. Dies stimmt mit der Anzahl der Punkte überein, die mithilfe des ursprünglichen *Code Block*-Blocks erstellt wurden.

### List.GetItemAtIndex

![index](images/6-2/index.png)

> *List.GetItemAtIndex* ist ein grundlegendes Verfahren zum Abrufen von Elementen in der Liste. In der Abbildung oben wird mithilfe des Indexwerts *"2"* der Punkt mit der Bezeichnung * "C"* abgerufen.

#### Übungslektion·– List.GetItemAtIndex

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option Save Link As): [List-GetItemAtIndex.dyn](datasets/6-2/List-GetItemAtIndex.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

![Übungslektion](images/6-2/Exercise/33.png)

> 1. Mithilfe von *List.GetItemAtIndex* wird der Index *"0"* bzw. das erste Element in der Liste der Linien ausgewählt.
2. Der *Watch3D*-Block zeigt an, dass genau eine Linie ausgewählt wurde. Anmerkung: Um die Abbildung oben zu erhalten, müssen Sie die Vorschau von *Line.ByStartPointEndPoint* deaktivieren.

### List.Reverse

![reverse](images/6-2/reverse.png)

> *List.Reverse* kehrt die Reihenfolge aller Elemente in der Liste um.

#### Übungslektion – List.Reverse

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option Save Link As): [List-Reverse.dyn](datasets/6-2/List-Reverse.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

![Übungslektion](images/6-2/Exercise/34.png)

> 1. Erstellen Sie für eine deutlichere Darstellung der Linienliste in umgekehrter Reihenfolge weitere Linien, indem Sie den Codeblock in ```0..1..#100;``` ändern.
2. Fügen Sie einen *List.Reverse*-Block zwischen *Curve.PointAtParameter* und *Line.ByStartPointEndPoint* für eine der beiden Punktlisten ein.
3. Die *Watch3D*-Blöcke zeigen zwei unterschiedliche Ergebnisse. Der erste zeigt das Ergebnis ohne umgekehrte Liste. Die Linien verlaufen vertikal und verbinden benachbarte Punkte. Die Umkehrung einer der Listen bewirkt jedoch, dass alle Punkte in entgegengesetzter Reihenfolge mit Punkten in der anderen Liste verbunden werden.

### List.ShiftIndices

![shift](images/6-2/shift.png)

> *List.ShiftIndices* ist ein geeignetes Werkzeug zum Erstellen verdrehter oder schraubenförmiger Muster oder für ähnliche Datenverarbeitungen. Dieser Block verschiebt die Elemente in einer Liste um die angegebene Anzahl von Indexpositionen.

#### Übungslektion – List.ShiftIndices

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option Save Link As): [List-ShiftIndices.dyn](datasets/6-2/List-ShiftIndices.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

![Übungslektion](images/6-2/Exercise/31.png)

> 1. Fügen Sie auf dieselbe Weise wie beim Umkehren der Liste einen *List.ShiftIndices*-Block zwischen *Curve.PointAtParameter* und *Line.ByStartPointEndPoint* ein.
2. Verwenden Sie einen *Code Block*, dem Sie den Wert *"1"* zuweisen, zum Verschieben der Liste um eine Indexposition.
3. Sie erhalten keine extreme Veränderung, aber sämtliche Linien im unteren *Watch3D*-Block wurden bei der Verbindung mit der anderen Punktgruppe um eine Indexposition versetzt.

![Übungslektion](images/6-2/Exercise/32.png)

> 1. Wenn Sie im *Code Block* einen größeren Wert, z. B. *"30"* festlegen, ist ein deutlicher Unterschied in den diagonalen Linien zu erkennen. Die Verschiebung hat in diesem Fall dieselbe Wirkung wie die Irisblende einer Kamera und bewirkt eine Verdrehung der ursprünglichen Zylinderform.

### List.FilterByBooleanMask

![Ausblenden](images/6-2/cull2.png)

> *List.FilterByBooleanMask* entfernt bestimmte Elemente anhand einer Liste boolescher Werte bzw. der Werte "true" oder "false".

#### Übungslektion – List.FilterByBooleanMask

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option Save Link As): [List-FilterByBooleanMask.dyn](datasets/6-2/List-FilterByBooleanMask.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

![Übungslektion](images/6-2/Exercise/30.png)

> Um eine Liste mit true- und false-Werten zu erstellen, sind einige weitere Schritte erforderlich.

> 1. Definieren Sie mithilfe eines *Code Block* einen Ausdruck mit der folgenden Syntax: ```0..List.Count(list);```. Verbinden Sie den *Curve.PointAtParameter*-Block mit der *list*-Eingabe. Diese Einrichtung wird im Kapitel zu Codeblöcken genauer behandelt. In diesem Fall erhalten Sie mit dieser Codezeile eine Liste mit sämtlichen Indizes aus dem *Curve.PointAtParameter*-Block.
2. Fügen Sie einen Modulo-Block (*"%"*) ein und verbinden Sie die Ausgabe des *Code Block* mit der *x*-Eingabe und den Wert *4* mit der *y*-Eingabe. Dadurch erhalten Sie den Rest bei der Division der Indizes in der Liste durch 4. Die Modulo-Funktion ist sehr hilfreich beim Erstellen von Mustern. Alle Werte werden als mögliche Reste für 4 ausgegeben: 0, 1, 2, 3.
3. Aus dem *Modulo*-Block ergibt sich, dass Indizes mit dem Wert 0 durch 4 teilbar sind (0, 4, 8...). Mithilfe eines *"=="*-Blocks kann die Teilbarkeit durch Vergleich mit dem Wert *0* geprüft werden.
4. Der *Watch*-Block zeigt genau dieses Ergebnis, d. h. das folgende true/false-Muster: *true,false,false,false...*.
5. Verbinden Sie die Ausgabe mit diesem true/false-Muster mit der mask-Eingabe zweier *List.FilterByBooleanMask*-Blöcke.
6. Verbinden Sie jeweils den *Curve.PointAtParameter*-Block mit der list-Eingaben des *List.FilterByBooleanMask*-Blocks.
7. Die Ausgaben von *Filter.ByBooleanMask* lauten *"in"* und *"out"*. *"In"* steht für Werte mit dem Maskenwert *"true"*, *"out"* für Werte mit dem Wert *"false"*. Indem Sie die *"in"*-Ausgaben mit den *startPoint*- und *endPoint*-Eingaben eines *Line.ByStartPointEndPoint*-Blocks verbinden, erhalten Sie eine gefilterte Liste von Linien.
8. Im *Watch3D*-Block ist zu erkennen, dass weniger Linien als Punkte vorhanden sind. Durch Filtern ausschließlich der true-Werte wurden lediglich 25 % der Punkte ausgewählt.

