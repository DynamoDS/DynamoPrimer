

## Erstellen eines benutzerdefinierten Blocks

Dynamo bietet mehrere unterschiedliche Methoden zum Erstellen benutzerdefinierter Blöcke. Sie können benutzerdefinierte Blöcke neu, aus bestehenden Diagrammen oder explizit in C# erstellen. In diesem Abschnitt wird die Erstellung eines benutzerdefinierten Blocks in der Benutzeroberfläche von Dynamo aus einem bestehenden Diagramm beschrieben. Dieses Verfahren eignet sich ausgezeichnet dazu, den Arbeitsbereich übersichtlicher zu gestalten und Gruppen von Blöcken zur Wiederverwendung zusammenzufassen.

### Benutzerdefinierte Blöcke für die UV-Zuordnung

In der unten gezeigten Abbildung wird ein Punkt aus einer Oberfläche mithilfe von UV-Koordinaten einer anderen zugeordnet. Nach diesem Prinzip erstellen Sie eine in Elemente aufgeteilte Oberfläche, die Kurven in der xy-Ebene referenziert. In diesem Fall erstellen Sie viereckige Elemente für die Unterteilung, nach derselben Logik können Sie jedoch mithilfe der UV-Zuordnung eine große Vielfalt von Elementen erstellen. Es bietet sich an, hier einen benutzerdefinierten Block zu entwickeln, da Sie auf diese Weise ähnliche Vorgänge in diesem Diagramm oder in anderen Dynamo-Arbeitsabläufen leichter wiederholen können.

![](images/9-2/uvMap2-01-01.jpg)

### Erstellen eines benutzerdefinierten Blocks aus einem bestehenden Diagramm

> Laden Sie die Beispieldateien für diese Übungslektion herunter (durch Rechtsklicken und Wahl von Save Link As) und extrahieren Sie sie. Eine vollständige Liste der Beispieldateien finden Sie im Anhang. [UV-CustomNode.zip](datasets/9-2/UV-CustomNode.zip)

Sie beginnen mit einem Diagramm, das in einem benutzerdefinierten Block verschachtelt werden soll. In diesem Beispiel erstellen Sie ein Diagramm, mit dem Polygone aus einer Basisoberfläche mithilfe von UV-Koordinaten einer Zieloberfläche zugeordnet werden. Diese UV-Zuordnung wird häufig verwendet. Sie bietet sich daher für einen benutzerdefinierten Block an. Weitere Informationen zu Oberflächen und zum UV-Raum finden Sie in Abschnitt 5.5. Das vollständige Diagramm ist *UVmapping_Custom-Node.dyn* aus der ZIP-Datei, die Sie heruntergeladen haben.

![Exercise](images/9-2/UVmapping01.png)

> 1. **Code Block**: Erstellen Sie in einem Codeblock einen Bereich mit 10 Zahlen zwischen 45 und -45.
2. **Point.ByCoordinates**: Verbinden Sie die Ausgaben des Codeblocks mit den x- und y-Eingaben und legen Sie Kreuzprodukt als Vergitterung fest. Sie haben nun ein Raster von Punkten.
3. **Plane.ByOriginNormal**: Verbinden Sie die *Point*-Ausgabe mit der *origin*-Eingabe, um an jeder der Punktpositionen eine Ebene zu erstellen. Dabei wird der vorgegebene Normalenvektor (0,0,1) verwendet.
4. **Rectangle.ByWidthLength**: Verbinden Sie die Ebenen aus dem vorigen Schritt mit der *plane*-Eingabe und legen Sie mithilfe eines Codeblocks jeweils *10* für die Breite und Länge fest.

Daraufhin müsste ein Raster aus Rechtecken angezeigt werden. Diese Rechtecke ordnen Sie mithilfe von UV-Koordinaten einer Zieloberfläche zu.

![Exercise](images/9-2/UVmapping02.png)

> 1. **Polygon.Points**: Verbinden Sie die Rectangle-Ausgabe aus dem vorigen Schritt mit der *polygon*-Eingabe, um die Eckpunkte der einzelnen Rechtecke zu extrahieren. Diese Punkte sollen der Zieloberfläche zugeordnet werden.
2. **Rectangle.ByWidthLength**: Legen Sie mithilfe eines Codeblocks mit dem Wert *100* die Breite und Länge eines Rechtecks fest. Dies definiert die Begrenzung der Basisfläche.
3. **Surface.ByPatch**: Verbinden Sie das Rechteck aus dem vorigen Schritt mit der *closedCurve*-Eingabe, um eine Basisoberfläche zu erstellen.
4. **Surface.UVParameterAtPoint**: Verbinden Sie die *Point*-Ausgabe des *Polygon.Points*-Blocks und die *Surface*-Ausgabe des *Surface.ByPatch*-Blocks, um die UV-Parameter an den einzelnen Punkten zu erhalten.

Damit haben Sie eine Basisoberfläche und einen Satz UV-Koordinaten erstellt. Jetzt können Sie eine Zieloberfläche importieren und die Punkte auf den Oberflächen zuordnen.

![Exercise](images/9-2/UVmapping03.png)

> 1. **File Path**: Wählen Sie den Dateipfad der Oberfläche aus, den Sie importieren möchten. Die Datei muss eine SAT-Datei sein. Klicken Sie auf die Schaltfläche *Durchsuchen* und navigieren Sie zur Datei *UVmapping_srf.sat* aus der im oben beschriebenen Schritt heruntergeladenen ZIP-Datei.
2. **Geometry.ImportFromSAT**: Verbinden Sie den Dateipfad, um die Oberfläche zu importieren. Die importierte Oberfläche sollte in der Geometrievorschau angezeigt werden.
3. **UV**: Verbinden Sie die Ausgabe der UV-Parameter mit einem *UV.U*- und einem *UV.V*-Block.
4. **Surface.PointAtParameter**: Verbinden Sie die importierte Oberfläche sowie die U- und V-Koordinaten. Damit sollte ein Raster von 3D-Punkten auf der Zieloberfläche angezeigt werden.

Der letzte Schritt besteht darin, mithilfe der 3D-Punkte rechteckige Oberflächenelemente zu erstellen.

![Exercise](images/9-2/UVmapping04.png)

> 1. **PolyCurve.ByPoints**: Verbinden Sie die Punkte auf der Oberfläche, um eine durch die Punkte verlaufende Polykurve zu konstruieren.
2. **Boolean**: Fügen Sie im Ansichtsbereich einen Boolean-Block hinzu, verbinden Sie ihn mit der *connectLastToFirst*-Eingabe und legen Sie True fest, um die Polykurven zu schließen. Die Oberfläche sollte jetzt in rechteckige Felder unterteilt sein.
3. **Surface.ByPatch**: Verbinden Sie die Polykurven mit der *closedCurve*-Eingabe, um die Oberflächenfelder zu erstellen.

Als Nächstes wählen Sie die Blöcke aus, die in einem benutzerdefinierten Block verschachtelt werden sollen, wobei Sie berücksichtigen, welche Ein- und Ausgaben Sie für Ihren Block benötigen. Der benutzerdefinierte Block soll so flexibel wie möglich sein, d. h., es sollten nicht nur Rechtecke, sondern beliebige Polygone zugeordnet werden können.

![Exercise](images/9-2/UVmapping05.png)

> Wählen Sie (beginnend mit *Polygon.Points*) die oben gezeigten Blöcke aus, klicken Sie mit der rechten Maustaste in den Ansichtsbereich und wählen Sie *Block aus Auswahl erstellen*.

![Exercise](images/9-2/UVmapping06.png)

> Weisen Sie im Dialogfeld Eigenschaften für benutzerdefinierten Block dem benutzerdefinierten Block einen Namen, eine Beschreibung und eine Kategorie zu.

![Exercise](images/9-2/UVmapping07.png)

> Der Ansichtsbereich ist mit dem benutzerdefinierten Block wesentlich übersichtlicher. Den Namen der Ein- und Ausgaben wurden die entsprechenden Angaben aus den Originalblöcken zugrunde gelegt. Bearbeiten Sie den benutzerdefinierten Block, um aussagekräftigere Namen zu erhalten.

![Exercise](images/9-2/UVmapping08.png)

> Doppelklicken Sie auf den benutzerdefinierten Block, um ihn zu bearbeiten. Dadurch öffnen Sie einen Arbeitsbereich mit gelbem Hintergrund, der darauf hinweist, dass Sie im Inneren eines Blocks arbeiten.

> 1. **Eingaben**: Ändern Sie die Namen der Eingaben in *baseSurface* und *targetSurface*.
2. **Ausgabe**: Fügen Sie eine zusätzliche Ausgabe für die zugeordneten Polygone hinzu.
> Speichern Sie den benutzerdefinierten Block, und kehren Sie zur Ausgangsansicht zurück.

![Exercise](images/9-2/UVmapping09.png)

> Im **MapPolygonsToSurface**-Block wurden die eben vorgenommenen Änderungen übernommen.

Um den benutzerdefinierten Block noch zuverlässiger zu gestalten, können Sie außerdem **benutzerdefinierte Kommentare** hinzufügen. Kommentare können Aufschluss über den Typ der Ein- und Ausgaben geben oder Erläuterungen zur Funktionsweise des Blocks enthalten. Sie werden angezeigt, wenn der Benutzer den Cursor auf eine Eingabe oder Ausgabe eines benutzerdefinierten Blocks setzt.

![Custom Comment](images/9-2/UVmapping_Custom1.jpg)

> Doppelklicken Sie auf den benutzerdefinierten Block, um ihn zu bearbeiten. Dadurch wird erneut der Arbeitsbereich mit dem gelben Hintergrund geöffnet.

> 1. Beginnen Sie mit der Bearbeitung des Codeblocks für die Eingabe. Um mit einem Kommentar zu beginnen, geben Sie "//" und anschließend den Kommentartext ein. Geben Sie Informationen ein, die das Verständnis des Blocks erleichtern können. In diesem Fall wird *targetSurface* beschrieben.
2. Legen Sie außerdem den Vorgabewert für *inputSurface* fest, indem Sie als Eingabetyp einen Wert vorgeben. In diesem Fall wird als Vorgabewert die ursprüngliche Surface.ByPatch angegeben.

![Custom Comment](images/9-2/UVmapping_Custom1_.jpg)

> Kommentare können auch für Ausgaben angewendet werden. Beginnen Sie mit der Bearbeitung des Texts im Codeblock für die Ausgabe. Um mit einem Kommentar zu beginnen, geben Sie "//" und anschließend den Kommentartext ein. In diesem Fall werden die Ausgaben *Polygons* und *surfacePatches* mit ausführlicheren Beschreibungen erläutert.

![Custom Comment](images/9-2/UVmapping_Custom2.jpg)

> 1. Setzen Sie den Cursor auf die Eingaben des benutzerdefinierten Blocks, um die Kommentare anzuzeigen.
2. Da für *inputSurface* ein Vorgabewert festgelegt ist, können Sie die Definition auch ohne Eingabewert für die Oberfläche ausführen.

