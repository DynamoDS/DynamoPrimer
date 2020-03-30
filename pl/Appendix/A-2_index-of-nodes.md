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

# INDEKS WĘZŁÓW

##### Ten indeks zawiera dodatkowe informacje o wszystkich węzłach zawartych w tym elementarzu, a także o pozostałych składnikach, które mogą być przydatne. Podano w nim tylko część z około 500 węzłów dostępnych w programie Dynamo.

## Funkcje wbudowane

||||
| -- | -- | -- |
|![OBRAZ](images/A-2/Count.Large.png)|**Count**<br>Zwraca liczbę elementów z określonej listy.|![OBRAZ](images/nodes/Count.png)|
|![OBRAZ](images/A-2/Flatten.Large.png)|**Flatten**<br>Zwraca spłaszczoną listę 1D listy wielowymiarowej danych wejściowych.|![OBRAZ](images/nodes/Flatten.png)|
|![OBRAZ](images/A-2/Map.Large.png)|**Map**<br>Przypisuje wartość do zakresu danych wejściowych.|![OBRAZ](images/nodes/Map.png)|

## Core

#### Core.Color

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Tworzy kolor według składowych: alfa, czerwony, zielony i niebieski.|![OBRAZ](images/nodes/Color.ByARGB.png)|
|![OBRAZ](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Color Range**<br>Pobiera kolor z gradientu między kolorem początkowym i końcowym.|![OBRAZ](images/nodes/ColorRange.png)|
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Pobiera wartość jasności tego koloru.|![OBRAZ](images/nodes/Color.Brightness.png)|
|![OBRAZ](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Wyświetla listę składowych koloru w następującej kolejności: alfa, czerwony, zielony, niebieski.|![OBRAZ](images/nodes/Color.Components.png)|
|![OBRAZ](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Pobiera wartość nasycenia tego koloru.|![OBRAZ](images/nodes/Color.Saturation.png)|
|![OBRAZ](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>Pobiera wartość barwy tego koloru.|![OBRAZ](images/nodes/Color.Hue.png)|
||ZAPYTANIE||
|![OBRAZ](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Znajduje składową alfa koloru, od 0 do 255.|![OBRAZ](images/nodes/Color.Alpha.png)|
|![OBRAZ](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Znajduje niebieską składową koloru, od 0 do 255.|![OBRAZ](images/nodes/Color.Blue.png)|
|![OBRAZ](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Znajduje zieloną składową koloru, od 0 do 255.|![OBRAZ](images/nodes/Color.Green.png)|
|![OBRAZ](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Znajduje czerwoną składową koloru, od 0 do 255.|![OBRAZ](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Wyświetla geometrię za pomocą koloru.|![OBRAZ](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Boolean**<br>Wybór między true i false.|![OBRAZ](images/nodes/Boolean.png)|
|![OBRAZ](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Code Block**<br>Umożliwia bezpośrednie utworzenie kodu DesignScript.|![OBRAZ](images/nodes/CodeBlock.png)|
|![OBRAZ](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**<br>Umożliwia wybranie katalogu w systemie, aby pobrać jego ścieżkę.|![OBRAZ](images/nodes/DirectoryPath.png)|
|![OBRAZ](images/A-2/DSCore.File.Filename.Large.png)|**File Path**<br>Umożliwia wybranie pliku w systemie, aby pobrać jego nazwę.|![OBRAZ](images/nodes/FilePath.png)|
|![OBRAZ](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**<br>Suwak, który generuje wartości całkowite.|![OBRAZ](images/nodes/IntegerSlider.png)|
|![OBRAZ](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Number** <br>Tworzy liczbę.|![OBRAZ](images/nodes/Number.png)|
|![OBRAZ](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider** <br>Suwak pozwalający uzyskać wartości liczbowe.|![OBRAZ](images/nodes/NumberSlider.png)|
|![OBRAZ](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**<br>Tworzy ciąg.|![OBRAZ](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Tworzy nową listę z określonych danych wejściowych.|![OBRAZ](images/nodes/List.Create.png)|
|![OBRAZ](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Stosuje kombinator do każdego elementu w dwóch sekwencjach.|![OBRAZ](images/nodes/List.Combine.png)|
|![OBRAZ](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Number Range**<br>Tworzy sekwencję liczb w określonym zakresie.|![OBRAZ](images/nodes/NumberRange.png)|
|![OBRAZ](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Number Sequence**<br>Tworzy sekwencję liczb.|![OBRAZ](images/nodes/NumberSequence.png)|
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Dzieli listę na zestaw list, z których każdy zawiera zadaną liczbę elementów.|![OBRAZ](images/nodes/List.Chop.png)|
|![OBRAZ](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Pobiera liczbę elementów przechowywanych w danej liście.|![OBRAZ](images/nodes/List.Count.png)|
|![OBRAZ](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Zrównuje zagnieżdżony wykaz list o określoną wartość.|![OBRAZ](images/nodes/List.Flatten.png)|
|![OBRAZ](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Filtruje sekwencję, sprawdzając odpowiadające indeksy w osobnej liście wartości logicznych.|![OBRAZ](images/nodes/List.FilterByBoolMask.png)|
|![OBRAZ](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Pobiera element z danej listy, który znajduje się w określonym indeksie.|![OBRAZ](images/nodes/List.GetItemAtIndex.png)|
|![OBRAZ](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Stosuje funkcję do wszystkich elementów listy, generując z wyników nową listę.|![OBRAZ](images/nodes/List.Map.png)|
|![OBRAZ](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Tworzy nową listę zawierającą elementy z danej listy, ale w odwrotnej kolejności.|![OBRAZ](images/nodes/List.Reverse.png)|
|![OBRAZ](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Zastępuje element z danej listy, który znajduje się w określonym indeksie.|![OBRAZ](images/nodes/List.ReplaceItemAtIndex.png)|
|![OBRAZ](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Przesuwa indeksy na liście w prawo o podaną wartość.|![OBRAZ](images/nodes/List.ShiftIndices.png)|
|![OBRAZ](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Pobiera elementy z danej listy w indeksach, które są wielokrotnością danej wartości, po uwzględnieniu podanego odsunięcia.|![OBRAZ](images/nodes/List.TakeEveryNthItem.png)|
|![OBRAZ](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Zamienia wiersze z kolumnami na liście list. Jeśli niektóre wiersze są krótsze niż inne, w tablicy wynikowej są wstawiane wartości null jako elementy zastępcze, tak aby zawsze uzyskać prostokąt.|![OBRAZ](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>Instrukcja warunkowa. Sprawdza wartość logiczną danych wejściowych przekazanych do sprawdzenia. Jeśli dane wejściowe są prawdziwe, generuje wartość wyjściową true. W przeciwnym razie generuje wartość wyjściową false.|![OBRAZ](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Oblicza cosinus kąta.|![OBRAZ](images/nodes/Math.Cos.png)|
|![OBRAZ](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Konwertuje wartość kąta w stopniach na wartość w radianach.|![OBRAZ](images/nodes/Math.DegreesToRadians.png)|
|![OBRAZ](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Podnosi liczbę do określonej potęgi.|![OBRAZ](images/nodes/Math.Pow.png)|
|![OBRAZ](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Konwertuje wartość kąta w radianach na wartość w stopniach.|![OBRAZ](images/nodes/Math.RadiansToDegrees.png)|
|![OBRAZ](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Dostosowuje zakres listy liczb, zachowując współczynnik rozkładu.|![OBRAZ](images/nodes/Math.RemapRange.png)|
|![OBRAZ](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Oblicza sinus kąta.|![OBRAZ](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Określa, czy podany obiekt ma wartość null.|![OBRAZ](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCore.Scripting.Formula.Large.png)|**Formula**<br>Oblicza wartość wzoru matematycznego. Korzysta z funkcji NCalc. Zobacz [http://ncalc.codeplex.com](http://ncalc.codeplex.com).|![OBRAZ](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Łączy wiele ciągów w jeden.|![OBRAZ](images/nodes/String.Concat.png)|
|![OBRAZ](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Określa, czy dany ciąg zawiera dany podciąg.|![OBRAZ](images/nodes/String.Contains.png)|
|![OBRAZ](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Łączy wiele ciągów w jeden, wstawiając podany separator między poszczególnymi ciągami.|![OBRAZ](images/nodes/String.Join.png)|
|![OBRAZ](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Dzieli pojedynczy ciąg na listę ciągów, z podziałami wyznaczanymi przez podane ciągi — separatory.|![OBRAZ](images/nodes/String.Split.png)|
|![OBRAZ](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Konwertuje ciąg na liczbę całkowitą lub zmiennoprzecinkową o podwójnej dokładności.|![OBRAZ](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Wizualizuje dane wyjściowe węzła.|![OBRAZ](images/nodes/Watch.png)|
|![OBRAZ](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Wyświetla dynamiczny podgląd geometrii.|![OBRAZ](images/nodes/Watch3D.png)|

## Geometry

#### Geometry.Circle

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Tworzy okrąg ze środkiem i promieniem wejściowym w płaszczyźnie globalnej XY, ze współrzędną globalną Z jako normalną.|![OBRAZ](images/nodes/Circle.ByCenterPointRadius.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>Tworzy okrąg ze środkiem w początku płaszczyzny wejściowej (głównym), leżący w płaszczyźnie wejściowej, o podanym promieniu.|![OBRAZ](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Tworzy układ współrzędnych z początkiem w punkcie wejściowym, z osiami X i Y ustawionymi jako osie X i Y GUW.|![OBRAZ](images/nodes/CoordinateSystem.ByOrigin.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Tworzy układ współrzędnych o określonych parametrach współrzędnych walcowych względem określonego układu współrzędnych.|![OBRAZ](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths** (początek układu współrzędnych)<br>Tworzy prostopadłościan wyśrodkowany w punkcie wejściowym, z określoną szerokością, długością i wysokością.|![OBRAZ](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (odległość)<br>Wyciąga krzywą w kierunku wektora normalnego.|![OBRAZ](images/nodes/Curve.Extrude_Distance.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Pobiera punkt na krzywej o określonym parametrze między StartParameter() a EndParameter().|![OBRAZ](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||DZIAŁANIA||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Wyznacza odległość od tej geometrii do innej.|![OBRAZ](images/nodes/Geometry.DistanceTo.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Rozdziela złożone (nierozdzielone) elementy na części składowe.|![OBRAZ](images/nodes/Geometry.Explode.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>Lista zaimportowanych geometrii.|![OBRAZ](images/nodes/Geometry.ImportFromSAT.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Obraca obiekt wokół początku układu współrzędnych i wektora normalnego o kąt określony w stopniach.|![OBRAZ](images/nodes/Geometry.Rotate_BasePlane.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Przekształca geometrię dowolnego typu o podaną odległość w podanym kierunku.|![OBRAZ](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Tworzy linię najdokładniej przybliżającą do wykresu punktowego punktów.|![OBRAZ](images/nodes/Line.ByBestFitThroughPoints.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Tworzy linię prostą, zaczynając od punktu początkowego i wydłużając w kierunku wektora o określoną długość.|![OBRAZ](images/nodes/Line.ByStartPointDirectionLength.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Tworzy linię prostą między dwoma punktami wejściowymi.|![OBRAZ](images/nodes/Line.ByStartPointEndPoint.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Tworzy linię styczną do krzywej wejściowej, umieszczoną w punkcie parametru krzywej wejściowej.|![OBRAZ](images/nodes/Line.ByTangency.png)|
||ZAPYTANIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>Kierunek krzywej.|![OBRAZ](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||Tworzenie||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Tworzy obiekt BSplineCurve przy użyciu jawnie podanych punktów sterujących.|![OBRAZ](images/nodes/NurbsCurve.ByControlPoints.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Tworzy obiekt BSplineCurve przez interpolację między punktami.|![OBRAZ](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||Tworzenie||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Tworzy powierzchnię NURBS przy użyciu jawnie podanych punktów sterujących oraz kątów U i V podanych w stopniach.|![OBRAZ](images/nodes/NurbsSurface.ByControlPoints.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Tworzy powierzchnię NURBS przy użyciu interpolacji podanych punktów oraz kątów U i V podanych w stopniach. Powierzchnia wynikowa przecina wszystkie te punkty.|![OBRAZ](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Tworzy płaszczyznę wyśrodkowaną w punkcie głównym i mającą wejściowy wektor normalny.|![OBRAZ](images/nodes/Plane.ByOriginNormal.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Tworzy płaszczyznę w globalnej płaszczyźnie XY.|![OBRAZ](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Tworzy punkt w podanym układzie współrzędnych z trzema współrzędnymi kartezjańskimi.|![OBRAZ](images/nodes/Point.ByCartesianCoordinates.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2D) <br>Tworzy punkt na płaszczyźnie XY zadanej przez dwie współrzędne kartezjańskie. Składnik Z wynozi 0.|![OBRAZ](images/nodes/Point.ByCoordinates_2D.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3D)<br>Tworzy punkt na podstawie trzech współrzędnych kartezjańskich.|![OBRAZ](images/nodes/Point.ByCoordinates_3D.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Pobiera punkt początku układu współrzędnych (0,0,0).|![OBRAZ](images/nodes/Point.Origin.png)|
||DZIAŁANIA||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Dodaje wektor do punktu. Działa podownie jak Translate (Vector).|![OBRAZ](images/nodes/Point.Add.png)|
||ZAPYTANIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Pobiera składową X punktu.|![OBRAZ](images/nodes/Point.X.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Pobiera składową Y punktu.|![OBRAZ](images/nodes/Point.Y.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Pobiera składową Z punktu.|![OBRAZ](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Tworzy krzywą złożoną z sekwencji linii łączących punkty. Aby powstała krzywa zamknięta, ostatni punkt powinien być w tym samym miejscu co punkt początkowy.|![OBRAZ](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (Plane)<br>Tworzy prostokąt ze środkiem w głównym punkcie na płaszczyźnie wejściowej, o szerokości wejściowej (długość osi X) i długości (długość osi Y).|![OBRAZ](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Tworzy bryłę sferyczną ze środkiem w punkcie wejściowym, o podanym promieniu.|![OBRAZ](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Tworzy powierzchnię przez wyciągnięcie między krzywymi wejściowymi przekroju poprzecznego.|![OBRAZ](images/nodes/Surface.ByLoft.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Tworzy powierzchnię przez wypełnienie wnętrza zamkniętej obwiedni określonej przez krzywe wejściowe.|![OBRAZ](images/nodes/Surface.ByPatch.png)|
||DZIAŁANIA||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Odsuwa powierzchnię w kierunku normalnej powierzchni o określoną odległość.|![OBRAZ](images/nodes/Surface.Offset.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Zwraca punkt dla określonych parametrów U i V.|![OBRAZ](images/nodes/Surface.PointAtParameter.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Pogrubia powierzchnię w celu utworzenia bryły, wyciągając w kierunku normalnych powierzchni po obu stronach powierzchni.|![OBRAZ](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Tworzy UV z dwóch wartości podwojonych.|![OBRAZ](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||TWORZENIE||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**<br>Tworzy wektor z trzech współrzędnych euklidesowych.|![OBRAZ](images/nodes/Vector.ByCoordinates.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Pobiera kanoniczny wektor osi X (1,0,0).|![OBRAZ](images/nodes/Vector.XAxis.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Pobiera kanoniczny wektor osi Y (0,1,0).|![OBRAZ](images/nodes/Vector.YAxis.png)|
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Pobiera kanoniczny wektor osi Z (0,0,1).|![OBRAZ](images/nodes/Vector.ZAxis.png)|
||DZIAŁANIA||
|![OBRAZ](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>Pobiera znormalizowaną wersję wektora.|![OBRAZ](images/nodes/Vector.Normalized.png)|

## Operatory

||||
| -- | -- | -- |
|![OBRAZ](images/A-2/add.Large.png)|**+**<br>Dodawanie|![OBRAZ](images/nodes/Addition.png)|
|![OBRAZ](images/A-2/sub.Large.png)|**-**<br>Odejmowanie|![OBRAZ](images/nodes/Subtraction.png)|
|![OBRAZ](images/A-2/mul.Large.png)|*****<br>Mnożenie|![OBRAZ](images/nodes/Multiplication.png)|
|![OBRAZ](images/A-2/div.Large.png)|**/**<br>Dzielenie|![OBRAZ](images/nodes/Division.png)|
|![OBRAZ](images/A-2/mod.Large.png)|**%**<br>Dzielenie modulo. Oblicza resztę z dzielenia pierwszej wartości wejściowej przez drugą.|![OBRAZ](images/nodes/ModularDivision.png)|
|![OBRAZ](images/A-2/lt.Large.png)|**<**<br>Mniejsze niż|![OBRAZ](images/nodes/LessThan.png)|
|![OBRAZ](images/A-2/gt.Large.png)|**>**Większe niż|![OBRAZ](images/nodes/GreaterThan.png)|
|![OBRAZ](images/A-2/eq.Large.png)|**==**<br>Test równości między dwiema wartościami.|![OBRAZ](images/nodes/Equality.png)|

