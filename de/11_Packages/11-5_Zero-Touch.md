<style>
table{box-shadow: 2px 2px 2px #BBBBBB;max-width:75%;display:block;margin-left: auto;   margin-right: auto }
thead {display: none}
img{display:block;margin-left: auto;   margin-right: auto }
</style>

## Was ist Zero-Touch?

Unter Zero-Touch-Import versteht man ein einfaches Verfahren zum Importieren von C#-Bibliotheken durch Zeigen und Klicken. Dynamo liest die öffentlichen Methoden einer *DLL*-Datei und konvertiert sie in Dynamo-Blöcke. Sie können mithilfe von Zero-Touch Ihre eigenen benutzerdefinierten Blöcke und Pakete entwickeln sowie externe Bibliotheken in die Dynamo-Umgebung importieren.

![](images/11-5/annotate.jpg)

Mit Zero-Touch können Sie Bibliotheken importieren, die nicht unbedingt für Dynamo entwickelt wurden, und Suites mit neuen Blöcken erstellen. Die aktuelle Zero-Touch-Funktion zeigt das plattformübergreifende Konzept des Dynamo-Projekts.

In diesem Abschnitt wird gezeigt, wie Sie mithilfe von Zero-Touch externe Bibliotheken importieren können. Informationen zum Entwickeln eigener Zero-Touch-Bibliotheken finden Sie auf der [Dynamo-Wiki-Seite](https://github.com/DynamoDS/Dynamo/wiki/Zero-Touch-Plugin-Development).

### Zero-Touch-Pakete

Zero-Touch-Pakete sind eine gute Ergänzung für benutzerdefinierte Blöcke. In der folgenden Tabelle sind einige Pakete angegeben, in denen C#-Bibliotheken verwendet werden. Genauere Informationen über die Pakete finden Sie im [Abschnitt zu Paketen](../Appendix/A-3_packages.md) im Anhang.


<table width="100%">
    <tr>
    <td width="20%"><b>Logo/Abbildung</b></td>
    <td><b>Name</b></td>
</tr>
  <tr>
    <td><img src="images/11-5/toolkit.jpg"></img></td>
    <td><a href="https://github.com/DynamoDS/Dynamo/wiki/Dynamo-Mesh-Toolkit">Mesh Toolkit</td></a>
  </tr>
  <tr>
    <td><img src="images/11-5/unfold.jpg"></img></td>
    <td><a href="http://dynamobim.com/dynamounfold/">Dynamo Unfold</td></a>
  </tr>
  <tr>
    <td><img src="images/11-5/rhynamo.jpg"></img></td>
    <td><a href="http://www.case-inc.com/blog/what-is-rhynamo">Rhynamo</td></a>
  </tr>
  <tr>
    <td><img src="images/11-5/optimo.jpg"></img></td>
    <td><a href="https://github.com/BPOpt/Optimo">Optimo</td></a>
  </tr>
</table>

### Fallstudie – Importieren von AForge

In dieser Fallstudie wird der Import der externen [AForge](http://www.aforgenet.com/)-*DLL*-Bibliothek gezeigt. AForge ist eine zuverlässige Bibliothek mit einem breiten Spektrum von Funktionen, angefangen mit der Bildbearbeitung und bis hin zu künstlicher Intelligenz. Hier referenzieren Sie die Bildverarbeitungsklasse von AForge für die im weiteren Verlauf dieses Abschnitts folgenden Übungen zur Bildverarbeitung.

> Laden Sie die zu dieser Übungslektion gehörigen Beispieldateien herunter (durch Rechtsklicken und Wahl der Option "Save Link As..."). Eine vollständige Liste der Beispieldateien finden Sie im Anhang. [Zero-Touch-Examples.zip](datasets/11-5/Zero-Touch-Examples.zip).

> 1. Beginnen Sie, indem Sie AForge herunterladen. Wählen Sie auf der [Download-Seite von AForge](http://www.aforgenet.com/framework/downloads.html) die Option *[Download Installer]*. Wenn der Download abgeschlossen ist, installieren Sie das Programm.

![Übung](images/11-5/import.jpg)

> 1. Erstellen Sie in Dynamo eine neue Datei und wählen Sie *Datei > Bibliothek importieren*.

![Übung](images/11-5/folder.jpg)

> 1. Navigieren Sie im Popup-Fenster zum Release-Ordner in Ihrer AForge-Installation. Dies ist wahrscheinlich ein Ordner wie der folgende: *C:\Program Files (x86)\AForge.NET\Framework\Release*.
2. **AForge.Imaging.dll**: Für diese Fallstudie benötigen Sie nur diese eine Datei aus der AForge-Bibliothek. Wählen Sie diese *DLL*-Datei aus und klicken Sie auf *Öffnen*.

![Übung](images/11-5/library.jpg)

> 1. In Dynamo sollte im Werkzeugkasten der Bibliothek jetzt eine Gruppe von Blöcken namens *AForge* hinzugekommen sein. Damit haben Sie innerhalb des visuellen Programms Zugriff auf die AForge-Bildbearbeitungsbibliothek.

### Übung 1 – Kantenerkennung

Nachdem Sie die Bibliothek importiert haben, beginnen Sie mit der ersten einfachen Übung. Sie führen einige einfache Bildverarbeitungsvorgänge an einem Beispielbild durch, um die Funktionsweise der Bildfilter in AForge zu demonstrieren. Dabei zeigen Sie die Ergebnisse in einem *Watch Image*-Block an und wenden in Dynamo Filter an, die denen von Photoshop ähnlich sind.

> Laden Sie die zu dieser Übungslektion gehörigen Beispieldateien herunter (durch Rechtsklicken und Wahl der Option "Save Link As..."). Eine vollständige Liste der Beispieldateien finden Sie im Anhang. [ZeroTouchImages.zip](datasets/11-5/ZeroTouchImages.zip)

Nachdem Sie die Bibliothek importiert haben, beginnen Sie mit der ersten einfachen Übung (*01-EdgeDetection.dyn*). Sie führen einige einfache Bildverarbeitungsvorgänge an einem Beispielbild durch, um die Funktionsweise der Bildfilter in AForge zu demonstrieren. Dabei zeigen Sie die Ergebnisse in einem *Watch Image*-Block an und wenden in Dynamo Filter an, die denen von Photoshop ähnlich sind.

![Übung](images/11-5/Exercise/AForge- 23.jpg)

> Als Erstes importieren Sie das Bild, mit dem Sie arbeiten möchten. Fügen Sie einen *File Path*-Block im Ansichtsbereich hinzu und wählen Sie die Datei "soapbubbles.jpg" aus dem heruntergeladenen Übungsordner (Foto: [flickr](https://www.flickr.com/photos/wwworks/667298782)).

![Übung](images/11-5/Exercise/AForge- 21.jpg)

> 1. Im File Path-Block wird lediglich der Pfad zum ausgewählten Bild als Zeichenfolge angegeben. Diesen Pfad müssen Sie in ein Bild in der Dynamo-Umgebung konvertieren.
2. Verbinden Sie den File Path-Block mit einem File.FromPath-Block.
3. Um diese Datei in ein Bild zu konvertieren, verwenden Sie den Image.ReadFromFile-Block.
4. Schließlich zeigen Sie das Ergebnis an. Fügen Sie einen Watch Image-Block in den Ansichtsbereich ein und verbinden Sie ihn mit dem Image.ReadFromFile-Block. Sie haben AForge noch nicht verwendet, aber das Bild erfolgreich in Dynamo importiert.

![Übung](images/11-5/Exercise/AForge- 18.jpg)

> Unter AForge.Imaging.AForge.Filters (im Navigationsmenü) stehen zahlreiche Filter zur Verfügung. Sie reduzieren mithilfe eines dieser Filter die Farbsättigung des Bildes anhand von Schwellenwerten.

> 1. Fügen Sie drei Schieberegler in den Ansichtsbereich ein und ändern Sie ihre Bereiche in 0 bis 1 und ihre Schrittwerte in 0,01.
2. Fügen Sie den Grayscale.Grayscale-Block in den Ansichtsbereich ein. Dies ist ein AForge-Filter, der einen Graustufenfilter auf das Bild anwendet. Verbinden Sie die drei Schieberegler aus Schritt 1 mit cr, cg und cb. Legen Sie im oberen und unteren Schieberegler jeweils den Wert 1 und im mittleren den Wert 0 fest.
3. Damit der Graustufenfilter angewendet wird, benötigen Sie eine Aktion für das Bild. Verwenden Sie hierfür IFilter.Apply. Verbinden Sie das Bild mit der image-Eingabe und Grayscale.Grayscale mit der iFilter-Eingabe.
4. Wenn Sie hier einen Watch Image-Block verbinden, erhalten Sie ein entsättigtes Bild.

![Übung](images/11-5/Exercise/AForge- 19.jpg)

> Sie können mithilfe von Schwellenwerten für Rot, Grün und Blau steuern, wie das Bild entsättigt werden soll. Diese Werte werden über die Eingaben des Grayscale.Grayscale-Blocks definiert. Das Bild wirkt recht dunkel. Der Grund dafür ist, dass im Schieberegler für den Grün-Wert auf 0 eingestellt ist.

> 1. Legen Sie im oberen und unteren Schieberegler jeweils den Wert 0 und im mittleren den Wert 1 fest. Auf diese Weise erhalten Sie deutlicheres entsättigtes Bild.

![Übung](images/11-5/Exercise/AForge- 17.jpg)

> Als Nächstes wenden Sie einen zusätzlichen Filter auf das entsättigte Bild an. Das entsättigte Bild weist einen gewissen Kontrast auf. Testen Sie daher jetzt die Kantenerkennung.

> 1. Fügen Sie im Ansichtsbereich einen SobelEdgeDetector.SobelEdgeDetector-Block hinzu. Verbinden Sie diesen als IFilter mit einem neuen IFilter-Block und das entsättigte Bild mit der image-Eingabe des IFilter-Blocks.
2. Die Sobel-Kantenerkennung hebt in einem neuen Bild die Kanten hervor.

![Übung](images/11-5/Exercise/AForge- 16.jpg)

> Die vergrößerte Darstellung zeigt, dass die Kantenerkennung die Umrisse der Blasen mit Pixeln markiert. In der AForge-Bibliothek stehen Werkzeuge zur Verfügung, mit denen Sie aus Ergebnissen wie diesem Dynamo-Geometrie erstellen können. Dies wird in der nächsten Übung genauer betrachtet.

### Übung 2 – Rechtecke erstellen

> Laden Sie die zu dieser Übungslektion gehörigen Beispieldateien herunter (durch Rechtsklicken und Wahl der Option "Save Link As..."). Eine vollständige Liste der Beispieldateien finden Sie im Anhang. [ZeroTouchImages.zip](datasets/11-5/ZeroTouchImages.zip)

Nach dieser Einführung in die einfache Bildverarbeitung wird hier gezeigt, wie Sie ein Bild dazu verwenden können, um Dynamo-Geometrie zu steuern. In dieser Übung führen Sie mithilfe von AForge und Dynamo einen einfachen *Live Trace*-Vorgang für ein Bild durch. Dieses Beispiel ist relativ einfach: Aus einem Referenzbild werden Rechtecke extrahiert. In AForge stehen jedoch auch Werkzeuge für komplexere Operationen zur Verfügung. Sie arbeiten mit der Datei *02-RectangleCreation.dyn* aus den heruntergeladenen Übungsdateien.

![Übung](images/11-5/Exercise/AForge- 15.jpg)

> 1. Navigieren Sie im File Path-Block zu grid.jpg im Übungsordner.
2. Verbinden Sie die übrigen Blöcke der oben gezeigten Folge, um ein durch Verlaufsparameter definiertes Raster anzuzeigen.

Im nächsten Schritt sollen die weißen Quadrate in diesem Bild referenziert und in Dynamo-Geometrie konvertiert werden. AForge bietet eine Vielfalt leistungsstarker Computer Vision-Werkzeuge. Hier verwenden Sie ein besonders wichtiges Werkzeug in der Bibliothek: [BlobCounter](http://www.aforgenet.com/framework/docs/html/d7d5c028-7a23-e27d-ffd0-5df57cbd31a6.htm).

![Übung](images/11-5/Exercise/AForge- 14.jpg)

> 1. Nachdem Sie einen BlobCounter-Block im Ansichtsbereich hinzugefügt haben, benötigen Sie eine Funktion zur Verarbeitung des Bildes (ähnlich dem IFilter-Werkzeug in der vorigen Übung). Der Process Image-Block ist jedoch nicht direkt in der Dynamo-Bibliothek sichtbar. Der Grund hierfür ist, dass die Funktion eventuell nicht im AForge-Quellcode sichtbar ist. Dies müssen Sie mit einer Umgehungslösung beheben.

![Übung](images/11-5/Exercise/AForge- 13.jpg)

> 1. Fügen Sie im Ansichtsbereich einen Python-Block hinzu.

```
import clr
clr.AddReference('AForge.Imaging')
from AForge.Imaging import *

bc= BlobCounter()
bc.ProcessImage(IN[0])
OUT=bc
```

> Fügen Sie den oben gezeigten Code in den Python-Block ein. Dieser Code importiert die AForge-Bibliothek und verarbeitet dann das importierte Bild.

![Übung](images/11-5/Exercise/AForge- 11.jpg)

> Indem Sie die image-Ausgabe mit der Eingabe des Python-Blocks verbinden, erhalten Sie ein AForge.Imaging.BlobCounter-Ergebnis aus dem Python-Block.

Die Vorgänge in den nächsten Schritten setzen eine gewisse Kenntnis der [AForge-Imaging-API](http://www.aforgenet.com/framework/docs/html/d087503e-77da-dc47-0e33-788275035a90.htm) voraus. Für die Arbeit mit Dynamo müssen Sie diese nicht komplett erlernen. Dies dient mehr zur Demonstration der Arbeit mit externen Bibliotheken innerhalb der Dynamo-Umgebung mit ihrer großen Flexibilität.

![Übung](images/11-5/Exercise/AForge- 10.jpg)

> 1. Verbinden Sie die Ausgabe des Python-Skripts mit BlobCounterBase.GetObjectRectangles. Dieser Block liest Objekte in einem Bild anhand eines Schwellenwerts und extrahiert quantifizierte Rechtecke aus dem Pixelraum.

![Übung](images/11-5/Exercise/AForge- 09.jpg)

> 1. Fügen Sie einen weiteren Python-Block in den Ansichtsbereich ein, verbinden Sie ihn mit GetObjectRectangles und geben Sie den unten stehenden Code ein. Dadurch erhalten Sie eine strukturierte Liste von Dynamo-Objekten.

```
OUT = []
for rec in IN[0]:
subOUT=[]
subOUT.append(rec.X)
subOUT.append(rec.Y)
subOUT.append(rec.Width)
subOUT.append(rec.Height)
OUT.append(subOUT)
```

![Übung](images/11-5/Exercise/AForge- 06.jpg)

> 1. Vertauschen Sie die Listenebenen aus der Ausgabe des Python-Blocks aus dem vorigen Schritt mithilfe von Transpose. Dadurch erhalten Sie vier Listen, jeweils mit den x-, y-, Breiten- und Höhenwerten der einzelnen Rechtecke.
2. Mithilfe eines Codeblocks ordnen Sie die Daten in einer für den Rectangle.ByCornerPoints-Block geeigneten Struktur (mithilfe des folgenden Codes).

```
recData;
x0=List.GetItemAtIndex(recData,0);
y0=List.GetItemAtIndex(recData,1);
width=List.GetItemAtIndex(recData,2);
height=List.GetItemAtIndex(recData,3);
x1=x0+width;
y1=y0+height;
p0=Autodesk.Point.ByCoordinates(x0,y0);
p1=Autodesk.Point.ByCoordinates(x0,y1);
p2=Autodesk.Point.ByCoordinates(x1,y1);
p3=Autodesk.Point.ByCoordinates(x1,y0);
```

![Übung](images/11-5/Exercise/AForge- 05.jpg)

> Die verkleinerte Darstellung zeigt eine Reihe aus Rechtecken, die die weißen Quadrate aus dem Bild darstellen. Durch diese Programmierung haben Sie einen Vorgang durchgeführt, der der Live Trace-Funktion von Illustrator recht nahe kommt.

![Übung](images/11-5/Exercise/AForge- 04.jpg)

> Das Ergebnis muss jedoch noch bereinigt werden. Die vergrößerte Darstellung zeigt, dass einige unerwünschte kleine Rechtecke vorhanden sind.

![Übung](images/11-5/Exercise/AForge- 03.jpg)

> 1. Sie entfernen die unerwünschten Rechtecke, indem Sie einen weiteren Python-Block zwischen dem GetObjectRectangles-Block und dem bestehenden Python-Block einfügen. Der Code für diesen Block wird unten gezeigt. Er entfernt alle Rechtecke, die kleiner als die angegebene Größe sind.

```
rectangles=IN[0]
OUT=[]
for rec in rectangles:
if rec.Width>8 and rec.Height>8:
OUT.append(rec)
```

![Übung](images/11-5/Exercise/AForge- 01.jpg)

> Damit haben Sie die überflüssigen Rechtecke beseitigt. Erstellen Sie jetzt interessehalber eine Oberfläche aus diesen Rechtecken und extrudieren Sie diese um eine Entfernung in Abhängigkeit von ihrer Fläche.

![Übung](images/11-5/Exercise/AForge- 00.jpg)

> 1. Ändern Sie zum Schluss die both_sides-Eingabe in "false". Damit erhalten Sie eine Extrusion in nur eine Richtung. Tauchen Sie diese Form in Kunstharz, um den perfekten Tisch für Nerds zu erhalten!

Die hier gezeigten Beispiele sind relativ einfach, die beschriebenen Konzepte jedoch lassen sich auf faszinierende reale Anwendungen übertragen. Computer Vision kann für eine Vielzahl von Prozessen verwendet werden. Hierzu gehören, um nur einige Beispiele zu nennen, Barcode-Scanner, Perspective-Matching, [Projektionsmapping](https://www.youtube.com/watch?v=XSR0Xady02o) und [erweiterte Realität](http://aforgenet.com/aforge/articles/gratf_ar/). Erweiterte Themen mit AForge für diese Übung finden Sie in [diesem Artikel](http://aforgenet.com/articles/shape_checker/).

