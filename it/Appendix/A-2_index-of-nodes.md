<style>
td {background-color:#F9F9F9; vertical-align:top}
td img{width:100%}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(1){width:50px;padding-right:2px;padding-left: 2px;vertical-align: top}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(2){width:575px;}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(3){width:175px;padding:5px;vertical-align: middle}
.book .book-body .page-wrapper .page-inner section.normal table{box-shadow: 2px 2px 2px #BBBBBB}
/*td:nth-child(3) img{box-shadow: 2px 2px 5px #BBBBBB}*/
thead {display: none}
</style>

# INDICE DEI NODI

##### In questo indice sono fornite informazioni aggiuntive su tutti i nodi utilizzati in questa guida introduttiva, nonché su altri componenti che potrebbero risultare utili. Questa è solo un'introduzione ad alcuni dei 500 nodi disponibili in Dynamo.

## Funzioni incorporate

||||
| -- | -- | -- |
|![IMMAGINE](images/A-2/Count.Large.png)|**Conteggio**<br>Restituisce il numero di voci dell'elenco specificato.|![IMMAGINE](images/nodes/Count.png)|
|![IMMAGINE](images/A-2/Flatten.Large.png)|**Livella**<br>Restituisce l'elenco unidimensionale non nidificato dell'elenco di input multidimensionale.|![IMMAGINE](images/nodes/Flatten.png)|
|![IMMAGINE](images/A-2/Map.Large.png)|**Mappa**<br>Mappa un valore in un intervallo di input.|![IMMAGINE](images/nodes/Map.png)|

## Punzone

#### Core.Color

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Crea un colore in base ai componenti alfa, rosso, verde e blu.|![IMMAGINE](images/nodes/Color.ByARGB.png)|
|![IMMAGINE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Intervallo colori**<br>Restituisce un colore da una sfumatura di colore compresa tra un colore iniziale e uno finale.|![IMMAGINE](images/nodes/ColorRange.png)|
||AZIONI||
|![IMMAGINE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Restituisce il valore di luminosità del colore.|![IMMAGINE](images/nodes/Color.Brightness.png)|
|![IMMAGINE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Elenca i componenti del colore nell'ordine seguente: alfa, rosso, verde, blu.|![IMMAGINE](images/nodes/Color.Components.png)|
|![IMMAGINE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Restituisce il valore di saturazione del colore.|![IMMAGINE](images/nodes/Color.Saturation.png)|
|![IMMAGINE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>Restituisce il valore di tonalità del colore.|![IMMAGINE](images/nodes/Color.Hue.png)|
||QUERY||
|![IMMAGINE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Individua il componente alfa di un colore, da 0 a 255.|![IMMAGINE](images/nodes/Color.Alpha.png)|
|![IMMAGINE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Individua il componente blu di un colore, da 0 a 255.|![IMMAGINE](images/nodes/Color.Blue.png)|
|![IMMAGINE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Individua il componente verde di un colore, da 0 a 255.|![IMMAGINE](images/nodes/Color.Green.png)|
|![IMMAGINE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Individua il componente rosso di un colore, da 0 a 255.|![IMMAGINE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Visualizza la geometria con un colore.|![IMMAGINE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Booleano**<br>Possibile selezione: true o false.|![IMMAGINE](images/nodes/Boolean.png)|
|![IMMAGINE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Blocco codice**<br>Consente la creazione diretta di codice DesignScript.|![IMMAGINE](images/nodes/CodeBlock.png)|
|![IMMAGINE](images/A-2/DSCore.File.Directory.Large.png)|**Percorso di directory**<br>Consente di selezionare una directory del sistema per ottenere il relativo percorso.|![IMMAGINE](images/nodes/DirectoryPath.png)|
|![IMMAGINE](images/A-2/DSCore.File.Filename.Large.png)|**Percorso file**<br>Consente di selezionare un file nel sistema per ottenere il relativo nome file.|![IMMAGINE](images/nodes/FilePath.png)|
|![IMMAGINE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Dispositivo di scorrimento numero intero**<br>Dispositivo di scorrimento che genera numeri interi.|![IMMAGINE](images/nodes/IntegerSlider.png)|
|![IMMAGINE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Numero** <br>Crea un numero.|![IMMAGINE](images/nodes/Number.png)|
|![IMMAGINE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Dispositivo di scorrimento numero** <br>Dispositivo di scorrimento che genera valori numerici.|![IMMAGINE](images/nodes/NumberSlider.png)|
|![IMMAGINE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**<br>Crea una stringa.|![IMMAGINE](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Crea un nuovo elenco in base agli input specificati.|![IMMAGINE](images/nodes/List.Create.png)|
|![IMMAGINE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Applica un combinatore ad ogni elemento in due sequenze.|![IMMAGINE](images/nodes/List.Combine.png)|
|![IMMAGINE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Intervallo di numeri**<br>Crea una sequenza di numeri nell'intervallo specificato.|![IMMAGINE](images/nodes/NumberRange.png)|
|![IMMAGINE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Sequenza numerica**<br>Crea una sequenza di numeri.|![IMMAGINE](images/nodes/NumberSequence.png)|
||AZIONI||
|![IMMAGINE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Suddivide un elenco in un gruppo di elenchi, ognuno con il numero di voci impostato.|![IMMAGINE](images/nodes/List.Chop.png)|
|![IMMAGINE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Restituisce il numero di elementi memorizzati nell'elenco dato.|![IMMAGINE](images/nodes/List.Count.png)|
|![IMMAGINE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Riduce di un determinato numero di livelli la nidificazione di una lista di elenchi.|![IMMAGINE](images/nodes/List.Flatten.png)|
|![IMMAGINE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Consente di applicare un filtro ad una sequenza sulla base di indici corrispondenti in un elenco di valori booleani separato.|![IMMAGINE](images/nodes/List.FilterByBoolMask.png)|
|![IMMAGINE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Restituisce un elemento dall'elenco dato, situato in corrispondenza dell'indice specificato.|![IMMAGINE](images/nodes/List.GetItemAtIndex.png)|
|![IMMAGINE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Applica una funzione a tutti gli elementi di un elenco, generando un nuovo elenco dai risultati.|![IMMAGINE](images/nodes/List.Map.png)|
|![IMMAGINE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Crea un nuovo elenco con gli elementi dell'elenco dato disposti in ordine inverso.|![IMMAGINE](images/nodes/List.Reverse.png)|
|![IMMAGINE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Sostituisce una voce posizionata in corrispondenza dell'indice specificato nell'elenco dato.|![IMMAGINE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMMAGINE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Sposta indici nell'elenco verso destra, in base al valore specificato.|![IMMAGINE](images/nodes/List.ShiftIndices.png)|
|![IMMAGINE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Ricava voci dall'elenco in corrispondenza di indici multipli del valore dato, dopo l'offset indicato.|![IMMAGINE](images/nodes/List.TakeEveryNthItem.png)|
|![IMMAGINE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Scambia righe e colonne in una lista di elenchi. Se alcune righe sono più corte di altre, nella matrice risultante vengono inseriti valori null come segnaposto, per ottenere sempre una matrice rettangolare.|![IMMAGINE](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>Istruzione condizionale. Verifica il valore booleano dell'input di prova. Se l'input del test è true, il risultato produce l'input reale, altrimenti il risultato genera l'input false.|![IMMAGINE](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Restituisce il coseno di un angolo.|![IMMAGINE](images/nodes/Math.Cos.png)|
|![IMMAGINE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Converte un angolo in gradi in un angolo in radianti.|![IMMAGINE](images/nodes/Math.DegreesToRadians.png)|
|![IMMAGINE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Eleva un numero alla potenza specificata.|![IMMAGINE](images/nodes/Math.Pow.png)|
|![IMMAGINE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Converte un angolo in radianti in un angolo in gradi.|![IMMAGINE](images/nodes/Math.RadiansToDegrees.png)|
|![IMMAGINE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Regola l'intervallo di un elenco di numeri, mantenendo il rapporto di distribuzione.|![IMMAGINE](images/nodes/Math.RemapRange.png)|
|![IMMAGINE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Determina il seno di un angolo.|![IMMAGINE](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Determina se l'oggetto dato è nullo.|![IMMAGINE](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/DSCore.Scripting.Formula.Large.png)|**Formula**<br>Valuta le formule matematiche. Utilizza NCalc per la valutazione. Vedere [http://ncalc.codeplex.com](http://ncalc.codeplex.com)|![IMMAGINE](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Concatena più stringhe in un'unica stringa.|![IMMAGINE](images/nodes/String.Concat.png)|
|![IMMAGINE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Determina se la stringa data contiene la sottostringa data.|![IMMAGINE](images/nodes/String.Contains.png)|
|![IMMAGINE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Concatena più stringhe in un'unica stringa, inserendo il separatore dato tra le stringhe concatenate.|![IMMAGINE](images/nodes/String.Join.png)|
|![IMMAGINE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Suddivide una singola stringa in un elenco di stringhe, in corrispondenza delle stringhe separatore date.|![IMMAGINE](images/nodes/String.Split.png)|
|![IMMAGINE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Converte una stringa in un intero o un valore Double.|![IMMAGINE](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Visualizza l'output del nodo.|![IMMAGINE](images/nodes/Watch.png)|
|![IMMAGINE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Visualizza un'anteprima dinamica della geometria.|![IMMAGINE](images/nodes/Watch3D.png)|

## Geometria

#### Geometry.Circle

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Crea un cerchio con un punto centrale di input e un raggio dati nel piano XY globale, con l'asse Z globale come normale.|![IMMAGINE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>Crea un cerchio con centro nell'origine del piano di input (radice), posto sul piano di input, con il raggio specificato.|![IMMAGINE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Crea un CoordinateSystem con origine nel punto di input. Gli assi X e Y sono impostati come assi WCS X e Y.|![IMMAGINE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Crea un CoordinateSystem in corrispondenza dei parametri di coordinata cilindrica specificati, rispetto al sistema di coordinate specificato.|![IMMAGINE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths** (origine)<br>Crea un cuboide con centro nel punto di input e con la larghezza, lunghezza e altezza specificate.|![IMMAGINE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (distanza)<br>Estrude una curva nella direzione del vettore normale.|![IMMAGINE](images/nodes/Curve.Extrude_Distance.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Ottiene un punto sulla curva in corrispondenza di un parametro specificato, incluso tra StartParameter() e EndParameter().|![IMMAGINE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||AZIONI||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Restituisce la distanza tra la geometria corrente e un'altra geometria.|![IMMAGINE](images/nodes/Geometry.DistanceTo.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Separa gli elementi composti o non separati nei rispettivi componenti.|![IMMAGINE](images/nodes/Geometry.Explode.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>Elenco delle geometrie importate|![IMMAGINE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Ruota un oggetto di un numero di gradi specificato intorno all'origine del piano e alla normale.|![IMMAGINE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Applica la traslazione a qualsiasi tipo di geometria, con la distanza e la direzione specificate.|![IMMAGINE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Crea la linea di approssimazione ottimale tra i punti di un insieme diffuso.|![IMMAGINE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Crea una linea retta a partire dal punto, che si estende nella direzione del vettore per la lunghezza specificata.|![IMMAGINE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Crea una linea retta tra due punti di input.|![IMMAGINE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Crea una linea tangente alla curva di input, posizionata nel punto della curva corrispondente al parametro.|![IMMAGINE](images/nodes/Line.ByTangency.png)|
||QUERY||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>Direzione della curva.|![IMMAGINE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||Crea||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Crea una curva BSpline mediante punti di controllo espliciti.|![IMMAGINE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Crea una curva BSpline tramite interpolazione tra i punti.|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||Crea||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Crea una NurbsSurface utilizzando punti di controllo espliciti con i gradi U e V specificati.|![IMMAGINE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Crea una NurbsSurface con i punti interpolati e i gradi U e V specificati. La superficie risultante passa attraverso tutti i punti.|![IMMAGINE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Crea un piano centrato nel punto radice, con il vettore normale di input.|![IMMAGINE](images/nodes/Plane.ByOriginNormal.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Crea un piano nel piano XY globale.|![IMMAGINE](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Definisce un punto da tre coordinate cartesiane nel sistema di coordinate dato.|![IMMAGINE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2D) <br>Definisce un punto nel piano XY da due coordinate cartesiane. Il componente Z è 0.|![IMMAGINE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3D)<br>Definisce un punto da tre coordinate cartesiane.|![IMMAGINE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Ottiene il punto di origine (0,0,0).|![IMMAGINE](images/nodes/Point.Origin.png)|
||AZIONI||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Aggiunge un vettore ad un punto. Analoga a Translate(Vector).|![IMMAGINE](images/nodes/Point.Add.png)|
||QUERY||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Ottiene il componente X di un punto.|![IMMAGINE](images/nodes/Point.X.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Ottiene il componente Y di un punto.|![IMMAGINE](images/nodes/Point.Y.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Ottiene il componente Z di un punto.|![IMMAGINE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Crea una PolyCurve dalla sequenza di linee che collegano i punti. Per la curva chiusa l'ultimo punto dovrebbe trovarsi nella stessa posizione del punto iniziale.|![IMMAGINE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (piano)<br>Crea un rettangolo centrato nel punto di origine del piano di input, con larghezza (lunghezza asse X del piano) e lunghezza (lunghezza asse Y del piano) di input.|![IMMAGINE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Crea una sfera solida centrata nel punto di input, con il raggio dato.|![IMMAGINE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Crea una superficie mediante loft tra curve di sezione trasversale di input.|![IMMAGINE](images/nodes/Surface.ByLoft.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Crea una superficie mediante il riempimento di un contorno chiuso definito da curve di input.|![IMMAGINE](images/nodes/Surface.ByPatch.png)|
||AZIONI||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Applica un offset alla superficie in direzione della normale e in base ad una distanza specificata.|![IMMAGINE](images/nodes/Surface.Offset.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Restituisce il punto in corrispondenza dei parametri U e V specificati.|![IMMAGINE](images/nodes/Surface.PointAtParameter.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Ispessisce una superficie e crea un solido. L'estrusione avviene nella direzione delle normali su entrambi i lati della superficie.|![IMMAGINE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Crea un UV da due valori Double.|![IMMAGINE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||CREAZIONE||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**Definisce un vettore a partire da tre coordinate euclidee.|![IMMAGINE](images/nodes/Vector.ByCoordinates.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Ottiene il vettore asse X canonico (1,0,0).|![IMMAGINE](images/nodes/Vector.XAxis.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Ottiene il vettore asse Y canonico (0,1,0).|![IMMAGINE](images/nodes/Vector.YAxis.png)|
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Ottiene il vettore asse Z canonico (0,0,1).|![IMMAGINE](images/nodes/Vector.ZAxis.png)|
||AZIONI||
|![IMMAGINE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>Ottiene la versione normalizzata di un vettore.|![IMMAGINE](images/nodes/Vector.Normalized.png)|

## Operatori

||||
| -- | -- | -- |
|![IMMAGINE](images/A-2/add.Large.png)|**+**<br>Addizione|![IMMAGINE](images/nodes/Addition.png)|
|![IMMAGINE](images/A-2/sub.Large.png)|**-**<br>Sottrazione|![IMMAGINE](images/nodes/Subtraction.png)|
|![IMMAGINE](images/A-2/mul.Large.png)|*****<br>Moltiplicazione|![IMMAGINE](images/nodes/Multiplication.png)|
|![IMMAGINE](images/A-2/div.Large.png)|**/**<br>Divisione|![IMMAGINE](images/nodes/Division.png)|
|![IMMAGINE](images/A-2/mod.Large.png)|**%**<br>La divisione modulare trova il resto del primo input dopo la divisione per il secondo input.|![IMMAGINE](images/nodes/ModularDivision.png)|
|![IMMAGINE](images/A-2/lt.Large.png)|**<**<br>Minore di|![IMMAGINE](images/nodes/LessThan.png)|
|![IMMAGINE](images/A-2/gt.Large.png)|**>**<br>Maggiore di|![IMMAGINE](images/nodes/GreaterThan.png)|
|![IMMAGINE](images/A-2/eq.Large.png)|**==**<br>L'uguaglianza verifica la parità tra due valori.|![IMMAGINE](images/nodes/Equality.png)|

