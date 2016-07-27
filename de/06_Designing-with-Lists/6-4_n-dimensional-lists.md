

## n-dimensionale Listen

Sie können der Hierarchie weitere untergeordnete Ebenen hinzufügen. Datenstrukturen können Listen von Listen mit weit mehr als zwei Dimensionen umfassen. Da Listen in Dynamo als Objekte behandelt werden, können Sie Daten mit so vielen Dimensionen erstellen, wie es möglich ist.

Als Metapher für diese Funktionen eignen sich ineinander verschachtelte russische Matrjoschka-Puppen. Jede Liste kann ein Container betrachtet werden, der mehrere Elemente enthält. Jede Liste verfügt über eigene Eigenschaften und wird als eigenständiges Objekt angesehen.

![Dolls](images/6-4/145493363_fc9ff5164f_o.jpg)

> Die verschachtelten Matrjoschka-Puppen (Foto: [Zeta](https://www.flickr.com/photos/beppezizzi/145493363)) sind eine Metapher für n-dimensionale Listen. Jede Ebene steht für eine Liste und jede Liste enthält Elemente. In Dynamo kann jeder Container seinerseits mehrere Container enthalten (die den Elementen der jeweiligen Liste entsprechen).

Die visuelle Veranschaulichung n-dimensionaler Listen ist schwierig. In diesem Kapitel finden Sie jedoch eine Reihe von Übungslektionen für die Arbeit mit Listen, die mehr als zwei Dimensionen enthalten.

## Mapping und Kombinationen

Mapping ist der wohl komplexeste Aspekt der Datenverwaltung in Dynamo. Bei der Arbeit mit komplexen Listenhierarchien kommt ihm besondere Bedeutung zu. In den folgenden Übungslektionen wird gezeigt, wann Mapping und Kombinationen für mehrdimensionale Daten eingesetzt werden sollten.

Eine vorbereitende Einführung zu List.Map und List.Combine finden Sie im vorigen Abschnitt. In der letzten Übungslektion werden diese Blöcke für eine komplexe Datenstruktur angewendet.

### Übungslektion: 2D-Listen – Grundlagen

> Laden Sie die zu dieser Übungslektion gehörigen Beispieldateien herunter (durch Rechtsklicken und Wahl der Option Save Link As). Eine vollständige Liste der Beispieldateien finden Sie im Anhang. 1.[n-Dimensional-Lists.dyn](datasets/6-4/n-Dimensional-Lists.dyn) 2.[n-Dimensional-Lists.sat](datasets/6-4/n-Dimensional-Lists.sat)

Dies ist die erste von drei Übungslektionen zur Strukturierung importierter Geometrie. In den Teilen dieser Übungsreihe werden nach und nach komplexere Datenstrukturen verwendet.

![Übungslektion](images/6-4/Exercise/A/04.png)

> 1. Sie beginnen mit der SAT-Datei aus dem Ordner mit den Übungsdateien. Diese Datei können Sie mithilfe des *File Path*-Blocks abrufen.
2. Mit *Geometry.ImportFromSAT* wird die Geometrie in Form zweier Oberflächen in die Dynamo-Vorschau importiert.

![Übungslektion](images/6-4/Exercise/A/03.png)

> In dieser Übung wird der Einfachheit halber nur eine der Oberflächen verwendet.

> 1. Wählen Sie den Index *1*, um die obere Oberfläche auszuwählen. Verwenden Sie dazu den *List.GetItemAtIndex*-Block.

![Übungslektion](images/6-4/Exercise/A/02.png)

> Im nächsten Schritt unterteilen Sie die Oberfläche mithilfe eines Rasters aus Punkten.

> 1. Fügen Sie in einem *Code Block* die beiden folgenden Codezeilen ein:
```
0..1..#10;
0..1..#5;
```

2. Verbinden Sie in *Surface.PointAtParameter* die beiden Codeblock-Werte mit *u* und *v*. Ändern Sie die *Vergitterung* dieses Knotens in *"Kreuzprodukt "*.
3. In der Ausgabe und in der Dynamo-Vorschau wird die Datenstruktur angezeigt.

![Übungslektion](images/6-4/Exercise/A/01.png)

> 1. Um den Aufbau der Datenstruktur zu verdeutlichen, verbinden Sie einen *NurbsCurve.ByPoints*-Block mit der Ausgabe von *Surface.PointAtParameter*.
2. Sie erhalten zehn Kurven, die vertikal entlang der Oberfläche verlaufen.

![Übungslektion](images/6-4/Exercise/A/00.png)

> 1. Mit einer einfachen *List.Transpose*-Operation vertauschen Sie die Spalten und Zeilen einer Liste von Listen.
2. Indem Sie die Ausgabe des *List.Transpose*-Blocks mit einem *NurbsCurve.ByPoints*-Blocks verbinden, erhalten Sie fünf Kurven, die horizontal auf der Oberfläche verlaufen.

### Übungslektion: 2D-Listen – Weiterführend

In diesem Schritt erhöhen Sie die Komplexität. Angenommen, an den Kurven aus der vorigen Übungslektion soll eine Operation durchgeführt werden. Vielleicht sollen die Kurven auf eine andere Oberfläche bezogen und eine Erhebung zwischen ihnen erstellt werden. Die hierfür erforderliche Datenstruktur erfordert mehr Aufwand, wobei jedoch dieselbe Logik zugrunde liegt.

![Übungslektion](images/6-4/Exercise/B/07.png)

> 1. Beginnen Sie mit demselben Schritt wie in der vorherigen Übung, indem Sie die obere der beiden Oberflächen der importierten Geometrie mithilfe des *List.GetItemAtIndex*-Blocks isolieren.

![Übungslektion](images/6-4/Exercise/B/06.png)

> 1. Versetzen Sie die Oberfläche mithilfe von *Surface.Offset* um den Wert *10*.

![Übungslektion](images/6-4/Exercise/B/05.png)

> 1. Definieren Sie auf dieselbe Weise wie in der vorigen Übung einen *Code Block* mit den folgenden beiden Codezeilen:
```
0..1..#10;
0..1..#5;
```

2. Verbinden Sie diese Ausgaben mit zwei *Surface.PointAtParameter*-Blöcken, jeweils mit der *Vergitterung* *"Kreuzprodukt"*. Verbinden Sie einen dieser Blöcke mit der ursprünglichen und den anderen mit der versetzten Oberfläche.

![Übungslektion](images/6-4/Exercise/B/04.png)

> 1. Verbinden Sie wie in der vorigen Übungslektion die Ausgaben mit zwei *NurbsCurve.ByPoints*-Blöcken.
2. Die Dynamo-Vorschau zeigt zwei Kurvengruppen für die beiden Oberflächen.

![Übungslektion](images/6-4/Exercise/B/03.png)

> 1. Mithilfe von *List.Create* können Sie die beiden Kurvengruppen in einer Liste von Listen kombinieren.
2. Die Ausgabe zeigt zwei Listen mit je zehn Elementen für die beiden Gruppen verbundener Nurbs-Kurven.
3. Mithilfe von *Surface.ByLoft* können Sie diese Datenstruktur visuell verdeutlichen. Mithilfe dieses Blocks verbinden Sie sämtliche Kurven in jeder der beiden Unterlisten durch eine Erhebung.

![Übungslektion](images/6-4/Exercise/B/02.png)

> 1. Mithilfe von *List.Transpose* werden die Spalten und Zeilen vertauscht. Dadurch werden zwei Listen mit je zehn Kurven in zehn Listen mit je zwei Kurven umgewandelt. Damit haben Sie für jede Nurbs-Kurve eine Beziehung zu ihrer Nachbarkurve auf der anderen Oberfläche erstellt.
2. Mit *Surface.ByLoft* erhalten Sie eine gerippte Struktur.

![Übungslektion](images/6-4/Exercise/B/01.png)

> 1. Als Alternative zu *List.Transpose* können Sie *List.Combine* verwenden. Damit wird ein *"Kombinator"* für die beiden Unterlisten ausgeführt.
2. In diesem Fall wird *List.Create* als *"Kombinator"* verwendet, um eine Liste der Elemente innerhalb der Unterlisten zu erstellen.
3. Mithilfe des *Surface.ByLoft*-Blocks erhalten Sie dieselben Oberflächen wie im vorigen Schritt. Transpose ist in diesem Falle einfacher zu verwenden, bei komplexeren Datenstrukturen erweist sich *List.Combine* jedoch als zuverlässiger.

![Übungslektion](images/6-4/Exercise/B/00.png)

> 1. Indem Sie einige Schritte zurückgehen, können Sie die Richtung der Kurven in der gerippten Struktur ändern, indem Sie List.Transpose vor der Verbindung zu *NurbsCurve.ByPoints* einfügen. Dadurch werden Spalten und Zeilen vertauscht und Sie erhalten 5 horizontale Rippen.

### Übungslektion: 3D-Listen

In diesem Abschnitt gehen Sie einen Schritt weiter. Sie arbeiten in dieser Übungslektion mit beiden importierten Oberflächen und erstellen eine komplexe Datenhierarchie. Dabei soll dieselbe Operation nach wie vor unter Verwendung derselben zugrunde liegenden Logik durchgeführt werden.

![Übungslektion](images/6-4/Exercise/C/12.png)

> 1. Beginnen Sie mit der Datei aus der vorherigen Übungslektion.

![Übungslektion](images/6-4/Exercise/C/11.png)

> 1. Verwenden Sie wie in der vorigen Übungslektion den *Surface.Offset*-Block, um einen Versatz mit dem Wert *10* zu erstellen.
2. Die Ausgabe zeigt, dass Sie mithilfe des Versatzblocks zwei Oberflächen erstellt haben.

![Übungslektion](images/6-4/Exercise/C/10.png)

> 1. Definieren Sie auf dieselbe Weise wie in der vorigen Übungslektion einen Codeblock mit den folgenden beiden Codezeilen:
```
0..1..#20;
0..1..#10;
```

2. Verbinden Sie diese Ausgaben mit zwei *Surface.PointAtParameter*-Blöcken, jeweils mit der Vergitterung *"Kreuzprodukt"*. Verbinden Sie einen dieser Blöcke mit den ursprünglichen und den anderen mit den versetzten Oberflächen.

![Übungslektion](images/6-4/Exercise/C/09.png)

> 1. Verbinden Sie wie in der vorigen Übungslektion die Ausgaben mit zwei *NurbsCurve.ByPoints*-Blöcken.
2. Die Ausgabe der *NurbsCurve.ByPoints*-Blöcke ist eine Liste aus zwei Listen mit komplexerer Struktur als bei denjenigen in der vorigen Übungslektion. Die Daten werden durch die zugrunde liegende Oberfläche kategorisiert: Damit haben Sie der Datenstruktur eine weitere Ebene hinzugefügt.
3. Im *Surface.PointAtParameter*-Block ist eine komplexere Struktur zu erkennen: Sie haben eine Liste aus Listen von Listen erstellt.

![Übungslektion](images/6-4/Exercise/C/08.png)

> 1. Führen Sie mithilfe des *List.Create*-Blocks die Nurbs-Kurven zu ein und derselben Datenstruktur zusammen, wobei eine Liste aus Listen von Listen entsteht.
2. Durch Verbinden eines *Surface.ByLoft*-Blocks erhalten Sie eine Version der ursprünglichen Oberflächen, die in ihrer eigenen Liste wie aus der ursprünglichen Datenstruktur erstellt erhalten bleiben.

![Übungslektion](images/6-4/Exercise/C/07.png)

> 1. In der vorigen Übung konnten Sie mithilfe von *List.Transpose* eine gerippte Struktur erstellen. Dies ist hier nicht möglich. Die Funktion Transpose ist für zweidimensionale Listen vorgesehen. Hier liegt eine dreidimensionale Liste vor, die ein "Vertauschen von Spalten und Zeilen" nicht ohne Weiteres zulässt. Da Listen Objekte sind, können mit *List.Transpose* zwar die Listen mit den Unterlisten vertauscht werden, die Nurbs-Kurven, die sich eine Ebene tiefer in der Hierarchie befinden, bleiben dabei jedoch unverändert.

![Übungslektion](images/6-4/Exercise/C/06.png)

> 1. In diesem Fall ist *List.Combine* besser geeignet. Für komplexere Datenstrukturen sollten *List.Map*- und *List.Combine*-Blöcke zum Einsatz kommen.
2. Mit *List.Create * als *"Kombinator"* erhalten Sie eine Datenstruktur, die in diesem Fall besser verwendbar ist.

![Übungslektion](images/6-4/Exercise/C/05.png)

> 1. Die Datenstruktur muss auf der nächsttieferen Ebene der Hierarchie nach wie vor vertauscht werden. Verwenden Sie hierfür *List.Map*. Dies funktioniert auf dieselbe Weise wie *List.Combine*, wobei jedoch nur eine Liste anstelle mehrerer eingegeben wird.
2. Als Funktion für *List.Map* wird *List.Transpose* eingegeben, wodurch die Spalten und Zeilen der Unterlisten innerhalb der Hauptliste vertauscht werden.

![Übungslektion](images/6-4/Exercise/C/04.png)

> 1. Schließlich können Sie die Nurbs-Kurven in der vorgesehenen Datenhierarchie durch eine Erhebung miteinander verbinden und erhalten eine gerippte Struktur.

![Übungslektion](images/6-4/Exercise/C/03.png)

> 1. Fügen Sie der Geometrie mithilfe eines *Surface.Thicken*-Blocks Tiefe hinzu.

![Übungslektion](images/6-4/Exercise/C/02.png)

> 1. Eine Deckschicht an der Rückseite dieser Struktur scheint passend. Wählen Sie daher mithilfe von *List.GetItemAtIndex* die hintere der beiden durch die Erhebung verbundenen Oberflächen aus den vorigen Schritten aus.

![Übungslektion](images/6-4/Exercise/C/01.png)

> 1. Mit der Verstärkung dieser ausgewählten Oberflächen ist die Untergliederung vollständig.

![Übungslektion](images/6-4/Exercise/C/00.png)

> Das Ergebnis ist vielleicht kein sonderlich bequemer Schaukelstuhl, aber er enthält erhebliche Datenmengen.

![Übungslektion](images/6-4/Exercise/C/32.png)

> Im letzten Schritt kehren Sie die Richtung der Rippen um. Bei diesem Vorgang wird in ähnlicher Weise wie in der vorigen Übungslektion die Funktion Transpose verwendet.

> 1. Da in der Hierarchie eine weitere Ebene vorhanden ist, müssen Sie *List.Map* zusammen mit *List.Transpose* als Funktion verwenden, um die Richtung der Nurbs-Kurven zu ändern.

![Übungslektion](images/6-4/Exercise/C/31.png)

> 1. Es ist eventuell sinnvoll, die Anzahl der Rippen zu erhöhen. Ändern Sie daher den Codeblock wie folgt:
```
0..1..#20;
0..1..#10;
```

![Übungslektion](images/6-4/Exercise/C/30.png)

> Während die erste Version des Schaukelstuhls eher elegant wirkte, punktet das zweite Modell durch robuste, sportliche Qualitäten.

