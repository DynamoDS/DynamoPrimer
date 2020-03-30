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

# REJSTŘÍK UZLŮ

##### Tento rejstřík nabízí dodatečné informace o všech uzlech použitých v této příručce a také dalších komponentách, které mohou být užitečné. Jedná se pouze o představení některých z 500 uzlů dostupných v aplikaci Dynamo.

## Vestavěné funkce

||||
| -- | -- | -- |
|![OBRÁZEK](images/A-2/Count.Large.png)|**Počet**<br>Vrací počet položek v určeném seznamu.|![OBRÁZEK](images/nodes/Count.png)|
|![OBRÁZEK](images/A-2/Flatten.Large.png)|**Vyrovnat**<br>Vrací vyrovnaný jednorozměrný seznam vytvořený z vícerozměrného vstupního seznamu.|![OBRÁZEK](images/nodes/Flatten.png)|
|![OBRÁZEK](images/A-2/Map.Large.png)|**Mapa**<br>Mapuje hodnotu do vstupního rozsahu.|![OBRÁZEK](images/nodes/Map.png)|

## Tvárník

#### Core.Color

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Umožňuje vytvořit barvu pomocí alfa, červené, zelené a modré složky.|![OBRÁZEK](images/nodes/Color.ByARGB.png)|
|![OBRÁZEK](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Rozsah barev**<br>Vrací barvu z barevného gradientu mezi počáteční a koncovou barvou.|![OBRÁZEK](images/nodes/ColorRange.png)|
||AKCE||
|![OBRÁZEK](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Vrací hodnotu jasu této barvy.|![OBRÁZEK](images/nodes/Color.Brightness.png)|
|![OBRÁZEK](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Zobrazí seznam složek barvy v pořadí: alfa, červená, zelená a modrá.|![OBRÁZEK](images/nodes/Color.Components.png)|
|![OBRÁZEK](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Vrací hodnotu sytosti této barvy.|![OBRÁZEK](images/nodes/Color.Saturation.png)|
|![OBRÁZEK](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>Vrací hodnotu odstínu této barvy.|![OBRÁZEK](images/nodes/Color.Hue.png)|
||DOTAZ||
|![OBRÁZEK](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Umožňuje najít alfa složku barvy, 0 až 255.|![OBRÁZEK](images/nodes/Color.Alpha.png)|
|![OBRÁZEK](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Umožňuje najít modrou složku barvy, 0 až 255.|![OBRÁZEK](images/nodes/Color.Blue.png)|
|![OBRÁZEK](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Umožňuje zjistit zelenou složku barvy, 0 až 255.|![OBRÁZEK](images/nodes/Color.Green.png)|
|![OBRÁZEK](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Umožňuje najít červenou složku barvy, 0 až 255.|![OBRÁZEK](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Zobrazit geometrii v barvě.|![OBRÁZEK](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Booleovský**<br>Výběr mezi hodnotami true a false.|![OBRÁZEK](images/nodes/Boolean.png)|
|![OBRÁZEK](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Blok kódu**<br>Umožňuje přímou tvorbu kódu DesignScript.|![OBRÁZEK](images/nodes/CodeBlock.png)|
|![OBRÁZEK](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**<br>Umožňuje vybrat adresář v systému a načíst jeho cestu.|![OBRÁZEK](images/nodes/DirectoryPath.png)|
|![OBRÁZEK](images/A-2/DSCore.File.Filename.Large.png)|**Cesta souboru**<br>Umožňuje vybrat soubor v systému, jehož název chcete získat.|![OBRÁZEK](images/nodes/FilePath.png)|
|![OBRÁZEK](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**<br>Posuvník, který vytváří celočíselné hodnoty.|![OBRÁZEK](images/nodes/IntegerSlider.png)|
|![OBRÁZEK](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Počet**<br>Vytvoří číslo.|![OBRÁZEK](images/nodes/Number.png)|
|![OBRÁZEK](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider**<br>Posuvník, který vytváří číselné hodnoty.|![OBRÁZEK](images/nodes/NumberSlider.png)|
|![OBRÁZEK](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**Řetězec**<br>Vytvoří řetězec.|![OBRÁZEK](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Vytvoří nový seznam ze zadaných vstupů.|![OBRÁZEK](images/nodes/List.Create.png)|
|![OBRÁZEK](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Použije kombinátor na každý prvek ve dvou posloupnostech.|![OBRÁZEK](images/nodes/List.Combine.png)|
|![OBRÁZEK](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Rozsah čísel**<br>Vytvoří posloupnost čísel v zadaném rozsahu.|![OBRÁZEK](images/nodes/NumberRange.png)|
|![OBRÁZEK](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Posloupnost čísel**<br>Vytvoří posloupnost čísel.|![OBRÁZEK](images/nodes/NumberSequence.png)|
||AKCE||
|![OBRÁZEK](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Rozdělí seznam do sady seznamů, z nichž každý obsahuje dané množství položek.|![OBRÁZEK](images/nodes/List.Chop.png)|
|![OBRÁZEK](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Vrací počet položek uložených v daném seznamu.|![OBRÁZEK](images/nodes/List.Count.png)|
|![OBRÁZEK](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Vyrovná vnořený seznam seznamů o určitou hodnotu.|![OBRÁZEK](images/nodes/List.Flatten.png)|
|![OBRÁZEK](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Filtruje posloupnost na základě vyhledávání příslušných indexů v samostatném seznamu logických hodnot.|![OBRÁZEK](images/nodes/List.FilterByBoolMask.png)|
|![OBRÁZEK](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Vrací položku z daného seznamu, která se nachází na určeném indexu.|![OBRÁZEK](images/nodes/List.GetItemAtIndex.png)|
|![OBRÁZEK](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Použije funkci na všechny prvky v seznamu, čím z výsledků vytvoří nový seznam.|![OBRÁZEK](images/nodes/List.Map.png)|
|![OBRÁZEK](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Vytvoří nový seznam obsahující položky daného seznamu, ale v obráceném pořadí.|![OBRÁZEK](images/nodes/List.Reverse.png)|
|![OBRÁZEK](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Nahradí položku z daného seznamu, která se nachází na daném indexu.|![OBRÁZEK](images/nodes/List.ReplaceItemAtIndex.png)|
|![OBRÁZEK](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Posune indexy v seznamu doprava o zadané množství.|![OBRÁZEK](images/nodes/List.ShiftIndices.png)|
|![OBRÁZEK](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Načte položky ze zadaného seznamu na indexech, které jsou násobky dané hodnoty s daným odsazením.|![OBRÁZEK](images/nodes/List.TakeEveryNthItem.png)|
|![OBRÁZEK](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Prohodí řádky a sloupce v seznamu seznamů. Pokud jsou některé řádky kratší než jiné, budou jako zástupné znaky do výsledného pole vloženy hodnoty null, tak aby pole stále bylo pravoúhlé.|![OBRÁZEK](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**Podmínka**<br>Podmíněný výraz. Zkontroluje booleovskou hodnotu testovacího vstupu. Pokud má testovací vstup hodnotu true, výsledný výstup bude mít hodnotu true, v opačném případě bude mít hodnotu false.|![OBRÁZEK](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Vrací kosinus úhlu.|![OBRÁZEK](images/nodes/Math.Cos.png)|
|![OBRÁZEK](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Převede úhel ve stupních na úhel v radiánech.|![OBRÁZEK](images/nodes/Math.DegreesToRadians.png)|
|![OBRÁZEK](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Umocní číslo na danou mocninu.|![OBRÁZEK](images/nodes/Math.Pow.png)|
|![OBRÁZEK](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Převede úhel v radiánech na úhel ve stupních.|![OBRÁZEK](images/nodes/Math.RadiansToDegrees.png)|
|![OBRÁZEK](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Upraví rozsah seznamu čísel při zachování poměru rozložení.|![OBRÁZEK](images/nodes/Math.RemapRange.png)|
|![OBRÁZEK](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Najde sinus úhlu.|![OBRÁZEK](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Určuje, zda má zadaný objekt hodnotu null.|![OBRÁZEK](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/DSCore.Scripting.Formula.Large.png)|**Vzorec**<br>Vyhodnocuje matematické vzorce. K vyhodnocení používá NCalc. Viz web [http://ncalc.codeplex.com](http://ncalc.codeplex.com)|![OBRÁZEK](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Zřetězí více řetězců do jediného řetězce.|![OBRÁZEK](images/nodes/String.Concat.png)|
|![OBRÁZEK](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Určuje, zda zadaný řetězec obsahuje daný dílčí řetězec.|![OBRÁZEK](images/nodes/String.Contains.png)|
|![OBRÁZEK](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Zřetězí více řetězců do jediného řetězce, přičemž vloží daný oddělovač mezi každý spojený řetězec.|![OBRÁZEK](images/nodes/String.Join.png)|
|![OBRÁZEK](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Rozdělí jeden řetězec na seznam řetězců, s dělením určeným podle daných oddělovacích řetězců.|![OBRÁZEK](images/nodes/String.Split.png)|
|![OBRÁZEK](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Převádí řetězec na celé číslo nebo hodnotu typu double.|![OBRÁZEK](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Vizualizuje výstup uzlu.|![OBRÁZEK](images/nodes/Watch.png)|
|![OBRÁZEK](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Zobrazí dynamický náhled geometrie.|![OBRÁZEK](images/nodes/Watch3D.png)|

## Geometrie

#### Geometry.Circle

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Vytvoří kružnici se zadaným středem a poloměrem v globální rovině XY, s rovinou Z jako normálou.|![OBRÁZEK](images/nodes/Circle.ByCenterPointRadius.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>Vytvoří kružnici vystředěnou na počátku vstupní roviny (kořenu), ležící ve vstupní rovině, se zadaným poloměrem.|![OBRÁZEK](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Vytvoří systém CoordinateSystem s počátkem ve vstupním bodu, s osami X a Y nastavenými jako osy X a Y v GSS.|![OBRÁZEK](images/nodes/CoordinateSystem.ByOrigin.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Vytvoří systém CoordinateSystem v zadaných válcových souřadnicových parametrech s ohledem na zadaný souřadnicový systém.|![OBRÁZEK](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths** (origin)<br>Vytvoří kvádr vystředěný na vstupním bodu, s určenou šířkou, délkou a výškou.|![OBRÁZEK](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (distance)<br>Vysune křivku ve směru normálového vektoru.|![OBRÁZEK](images/nodes/Curve.Extrude_Distance.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Získá bod na křivce v určeném parametru mezi objekty StartParameter() a EndParameter().|![OBRÁZEK](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||AKCE||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Získá vzdálenost od této geometrie k jiné.|![OBRÁZEK](images/nodes/Geometry.DistanceTo.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Rozdělí složené nebo neoddělené prvky do součástí jejich komponent.|![OBRÁZEK](images/nodes/Geometry.Explode.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>Seznam importovaných geometrií|![OBRÁZEK](images/nodes/Geometry.ImportFromSAT.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Otočí objekt kolem počátku roviny a normály o zadaný počet stupňů.|![OBRÁZEK](images/nodes/Geometry.Rotate_BasePlane.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Posune libovolný typ geometrie o zadanou vzdálenost v daném směru.|![OBRÁZEK](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Vytvoří čáru nejlépe aproximující rozptýlené vykreslení bodů.|![OBRÁZEK](images/nodes/Line.ByBestFitThroughPoints.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Vytvoří přímou čáru od počátečního bodu, která se prodlouží ve směru vektoru o zadanou délku.|![OBRÁZEK](images/nodes/Line.ByStartPointDirectionLength.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Vytvoří rovnou čáru mezi dvěma vstupními body.|![OBRÁZEK](images/nodes/Line.ByStartPointEndPoint.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Vytvoří tečnu ke vstupní křivce, umístěnou v bodu parametru vstupní křivky.|![OBRÁZEK](images/nodes/Line.ByTangency.png)|
||DOTAZ||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>Směr křivky.|![OBRÁZEK](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||Definuj||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Pomocí explicitních řídicích bodů vytvoří objekt BSplineCurve.|![OBRÁZEK](images/nodes/NurbsCurve.ByControlPoints.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Vytvoří objekt BSplineCurve pomocí interpolace mezi body.|![OBRÁZEK](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||Definuj||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Vytvoří objekt NurbsSurface pomocí explicitních řídicích bodů se zadanými stupni U a V.|![OBRÁZEK](images/nodes/NurbsSurface.ByControlPoints.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Vytvoří objekt NurbsSurface s určenými interpolovanými body a stupni U a V. Výsledný povrch bude procházet všemi body.|![OBRÁZEK](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Vytvoří rovinu vystředěnou na kořenový bod pomocí vstupního normálového vektoru.|![OBRÁZEK](images/nodes/Plane.ByOriginNormal.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Vytvoří rovinu v prostoru XY.|![OBRÁZEK](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Vytvoří bod v daném souřadnicovém systému pomocí 3 kartézských souřadnic.|![OBRÁZEK](images/nodes/Point.ByCartesianCoordinates.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2d) <br>Vytvoří bod v rovině XY pomocí dvou kartézských souřadnic. Komponenta Z je 0.|![OBRÁZEK](images/nodes/Point.ByCoordinates_2D.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3d)<br>Vytvoří bod daný 3 kartézskými souřadnicemi.|![OBRÁZEK](images/nodes/Point.ByCoordinates_3D.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Získá bod počátku (0,0,0).|![OBRÁZEK](images/nodes/Point.Origin.png)|
||AKCE||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Přidá k bodu vektor. Stejné jako Translate (Vector).|![OBRÁZEK](images/nodes/Point.Add.png)|
||DOTAZ||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Získá komponentu X bodu.|![OBRÁZEK](images/nodes/Point.X.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Získá komponentu Y bodu.|![OBRÁZEK](images/nodes/Point.Y.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Získá komponentu Z bodu.|![OBRÁZEK](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Vytvoří objekt PolyCurve z posloupnosti čar propojujících body. U uzavřené křivky by měl poslední bod být ve stejném umístění jako počáteční bod.|![OBRÁZEK](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (Plane)<br>Vytvoří obdélník vystředěný na kořen vstupní roviny se vstupní šířkou (délka osy X roviny) a délkou (délka osy Y roviny).|![OBRÁZEK](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Vytvoří těleso (kouli) vystředěné na vstupní bod se zadaným poloměrem.|![OBRÁZEK](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Vytvoří povrch pomocí šablonování mezi křivkami vstupního příčného řezu.|![OBRÁZEK](images/nodes/Surface.ByLoft.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Vytvoří povrch vyplněním vnitřní části uzavřené hranice definované vstupními křivkami.|![OBRÁZEK](images/nodes/Surface.ByPatch.png)|
||AKCE||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Odsadí povrch ve směru normály povrchu o zadanou vzdálenost.|![OBRÁZEK](images/nodes/Surface.Offset.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Vrátí bod v zadaných parametrech U a V.|![OBRÁZEK](images/nodes/Surface.PointAtParameter.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Zesílí povrch na těleso vysunutím ve směru normál povrchu na obou stranách povrchu.|![OBRÁZEK](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Vytvoří prvek UV ze dvou hodnot typu double.|![OBRÁZEK](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||VYTVOŘIT||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**<br>Vytvoří vektor pomocí 3 euklidovských souřadnic.|![OBRÁZEK](images/nodes/Vector.ByCoordinates.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Získá kanonický vektor osy X (1,0,0).|![OBRÁZEK](images/nodes/Vector.XAxis.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Získá kanonický vektor osy Y (0,1,0).|![OBRÁZEK](images/nodes/Vector.YAxis.png)|
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Získá kanonický vektor osy Z (0,0,1).|![OBRÁZEK](images/nodes/Vector.ZAxis.png)|
||AKCE||
|![OBRÁZEK](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>Získá normalizovanou verzi vektoru.|![OBRÁZEK](images/nodes/Vector.Normalized.png)|

## Operátory

||||
| -- | -- | -- |
|![OBRÁZEK](images/A-2/add.Large.png)|**+**<br>Součet|![OBRÁZEK](images/nodes/Addition.png)|
|![OBRÁZEK](images/A-2/sub.Large.png)|**-**<br>Rozdíl|![OBRÁZEK](images/nodes/Subtraction.png)|
|![OBRÁZEK](images/A-2/mul.Large.png)|*****<br>Součin|![OBRÁZEK](images/nodes/Multiplication.png)|
|![OBRÁZEK](images/A-2/div.Large.png)|**/**<br>Podíl|![OBRÁZEK](images/nodes/Division.png)|
|![OBRÁZEK](images/A-2/mod.Large.png)|**%**<br>Modulární dělení nalezne zbytek prvního vstupu po dělení druhým vstupem.|![OBRÁZEK](images/nodes/ModularDivision.png)|
|![OBRÁZEK](images/A-2/lt.Large.png)|**<**<br>Menší než|![OBRÁZEK](images/nodes/LessThan.png)|
|![OBRÁZEK](images/A-2/gt.Large.png)|**>**<br>Větší než|![OBRÁZEK](images/nodes/GreaterThan.png)|
|![OBRÁZEK](images/A-2/eq.Large.png)|**==**<br>Zkoušky rovnosti pro rovnost mezi dvěma hodnotami.|![OBRÁZEK](images/nodes/Equality.png)|

