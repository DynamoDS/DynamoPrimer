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


# Index: Blöcke

##### Dieser Index enthält weitere Informationen zu allen in dieser Einführung verwendeten Blöcken sowie zu anderen Komponenten, die für Sie eventuell nützlich sind. Dabei ist dies nur eine Einführung in die über 500 Blöcke, die in Dynamo zur Verfügung stehen.

## Integrierte Funktionen

||||
| -- | -- | -- |
|![IMAGE](images/A-2/Count.Large.png)|**Count**Gibt die Anzahl der Elemente in der angegebenen Liste zurück.|![IMAGE](images/nodes/Count.png)|
|![IMAGE](images/A-2/Flatten.Large.png)|**Flatten**Gibt die vereinfachte 1D-Liste aus der multidimensionalen Eingabeliste zurück.|![IMAGE](images/nodes/Flatten.png)|
|![IMAGE](images/A-2/Map.Large.png)|**Map**Ordnet einen Wert für einen Eingabebereich zu.|![IMAGE](images/nodes/Map.png)|

## Core

#### Core.Color

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**Erstellt eine Farbe über Alpha-, Rot-, Grün- und Blau-Komponenten.|![IMAGE](images/nodes/Color.ByARGB.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Color Range**Ruft eine Farbe aus einem Farbverlauf zwischen einer Anfangs- und einer Endfarbe ab.|![IMAGE](images/nodes/ColorRange.png)|

||Aktionen||

|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**Ruft den Helligkeitswert für die Farbe ab.|![IMAGE](images/nodes/Color.Brightness.png)|
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**Listet die Komponenten für die Farbe in der Reihenfolge Alpha, Rot, Grün, Blau auf.|![IMAGE](images/nodes/Color.Components.png)|
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**Ruft den Sättigungswert für die Farbe ab.|![IMAGE](images/nodes/Color.Saturation.png)|
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**Ruft den Farbtonwert für die Farbe ab.|![IMAGE](images/nodes/Color.Hue.png)|

||Abfrage||

|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**Alpha-Komponente der Farbe ermitteln: 0 bis 255.|![IMAGE](images/nodes/Color.Alpha.png)|
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**Blaue Komponente der Farbe ermitteln: 0 bis 255.|![IMAGE](images/nodes/Color.Blue.png)|
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**Grüne Komponente der Farbe ermitteln: 0 bis 255.|![IMAGE](images/nodes/Color.Green.png)|
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**Rote Komponente der Farbe ermitteln: 0 bis 255.|![IMAGE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**Zeigt die Geometrie mithilfe einer Farbe an.|![IMAGE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Boolean**Auswahl zwischen True und False.|![IMAGE](images/nodes/Boolean.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Code Block**Ermöglicht die direkte Erstellung von DesignScript-Code.|![IMAGE](images/nodes/CodeBlock.png)|
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**Ermöglicht die Auswahl einen Verzeichnisses auf dem System, um seinen Pfad abzurufen.|![IMAGE](images/nodes/DirectoryPath.png)|
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**File Path**Ermöglicht die Auswahl einer Datei auf dem System, um ihren Dateinamen abzurufen.|![IMAGE](images/nodes/FilePath.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**Ein Schieberegler zur Erzeugung ganzzahliger Werte.|![IMAGE](images/nodes/IntegerSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Number** Erstellt eine Zahl.|![IMAGE](images/nodes/Number.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider** Ein Schieberegler zur Erzeugung numerischer Werte.|![IMAGE](images/nodes/NumberSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**Erstellt eine Zeichenfolge.|![IMAGE](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**Erstellt eine neue Liste aus der angegebenen Eingaben.|![IMAGE](images/nodes/List.Create.png)|
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**Wendet einen Kombinator auf jedes Element in zwei Folgen an.|![IMAGE](images/nodes/List.Combine.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Number Range**Erstellt eine Folge von Zahlen im angegebenen Bereich.|![IMAGE](images/nodes/NumberRange.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Number Sequence**Erstellt eine Folge von Zahlen.|![IMAGE](images/nodes/NumberSequence.png)|

||Aktionen||

|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**Zerlegt eine Liste in eine Gruppe von Listen, jeweils mit der angegebenen Anzahl an Einträgen.|![IMAGE](images/nodes/List.Chop.png)|
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**Ruft die Anzahl der Elemente in der angegebenen Liste ab.|![IMAGE](images/nodes/List.Count.png)|
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**Vereinfacht eine verschachtelte Liste von Listen um eine bestimmte Anzahl von Ebenen.|![IMAGE](images/nodes/List.Flatten.png)|
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**Filtert eine Sequenz durch Abrufen entsprechender Indizes in einer separaten Liste boolescher Werte.|![IMAGE](images/nodes/List.FilterByBoolMask.png)|
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**Ruft ein Element aus der angegebenen Liste am angegebenen Index ab.|![IMAGE](images/nodes/List.GetItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**Wendet eine Funktion für alle Elemente einer Liste an und erstellt aus den Ergebnissen eine neue Liste.|![IMAGE](images/nodes/List.Map.png)|
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**Erstellt eine neue Liste mit den Elementen der angegebenen Liste, jedoch in umgekehrter Reihenfolge.|![IMAGE](images/nodes/List.Reverse.png)|
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**Ersetzt ein Element am angegebenen Index in der angegebenen Liste.|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**Verschiebt die Indizes in der Liste um den angegebenen Betrag nach rechts.|![IMAGE](images/nodes/List.ShiftIndices.png)|
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**Ruft unter Einhaltung des angegebenen Versatzes Elemente aus der angegebenen Liste ab, deren Indizes Vielfache des angegebenen Werts sind.|![IMAGE](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**Vertauscht Zeilen und Spalten in einer Liste von Listen. Wenn einige Zeilen kürzer als die übrigen sind, werden Nullwerte als Platzhalter in das resultierende Array eingefügt, sodass dieses immer rechteckig ist.|![IMAGE](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**Bedingte Anweisung. Prüft den Booleschen Wert des eingegebenen Tests. Wenn der eingegebene Test den Wert True hat, wird als Ergebnis der zur Alternative True gehörige Wert ausgegeben, andernfalls der zur Alternative False gehörige Wert.|![IMAGE](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**Ermittelt den Kosinus eines Winkels.|![IMAGE](images/nodes/Math.Cos.png)|
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**Konvertiert einen Winkel in Grad in einen Winkel in Bogenmaß.|![IMAGE](images/nodes/Math.DegreesToRadians.png)|
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**Potenziert eine Zahl mit dem angegebenen Wert.|![IMAGE](images/nodes/Math.Pow.png)|
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**Konvertiert einen Winkel in Bogenmaß in einen Winkel in Grad.|![IMAGE](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**Passt den Bereich einer Liste von Zahlen an, wobei deren Verteilung erhalten bleibt.|![IMAGE](images/nodes/Math.RemapRange.png)|
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**Ermittelt den Sinus eines Winkels.|![IMAGE](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**Bestimmt, ob das angegebene Objekt Null ist.|![IMAGE](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**Formula**Wertet mathematische Formeln aus. Dabei wird NCalc für die Auswertung verwendet. Weitere Informationen finden Sie unter [http://ncalc.codeplex.com](http://ncalc.codeplex.com).|![IMAGE](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**Verkettet mehrere Zeichenfolgen zu einer einzigen Zeichenfolge.|![IMAGE](images/nodes/String.Concat.png)|
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**Bestimmt, ob die angegebene Zeichenfolge die angegebene Teilzeichenfolge enthält.|![IMAGE](images/nodes/String.Contains.png)|
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**Verkettet mehrere Zeichenfolgen zu einer einzigen Zeichenfolge und fügt dabei das angegebene Trennzeichen zwischen den einzelnen verbundenen Zeichenfolgen ein.|![IMAGE](images/nodes/String.Join.png)|
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**Teilt eine einzelne Zeichenfolge in eine Liste von Zeichenfolgen auf, wobei die Unterteilungen durch die angegebenen Trennzeichenfolgen bestimmt werden.|![IMAGE](images/nodes/String.Split.png)|
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**Konvertiert eine Zeichenfolge in einen integer- oder double-Wert.|![IMAGE](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**Visualisierung der Ausgabe des Blocks|![IMAGE](images/nodes/Watch.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**Zeigt eine dynamische Vorschau der Geometrie an.|![IMAGE](images/nodes/Watch3D.png)|

## Geometrie

#### Geometry.Circle

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**Erstellt einen Kreis durch Eingabe von Mittelpunkt und Radius in der XY-Ebene des Weltkoordinatensystems mit Welt-Z als Normaler.|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**Erstellt einen Kreis zentriert am Ursprung der Eingabeebene, innerhalb der Eingabeebene und mit dem angegebenen Radius.|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**Erstellt ein CoordinateSystem mit Ursprung am eingegebenen Punkt mit X- und Y-Achse als X- und Y-Achse des WKS.|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**Erstellt ein CoordinateSystem mit den angegebenen zylindrischen Koordinatenparametern in Bezug auf das angegebene Koordinatensystem.|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths**(Ursprung)Erstellt einen Quader mit Mittelpunkt am Eingabepunkt und Angaben für Breite, Länge und Höhe.|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (Abstand)Extrudiert eine Kurve in Richtung des Normalenvektors.|![IMAGE](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**Ruft einen Punkt auf der Kurve am angegebenen Parameter zwischen StartParameter() und EndParameter() ab.|![IMAGE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |

||Aktionen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**Ruft den Abstand zwischen dieser und anderer Geometrie ab.|![IMAGE](images/nodes/Geometry.DistanceTo.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**Trennt zusammengesetzte oder nicht getrennte Elemente in die Teile, aus denen sie bestehen.|![IMAGE](images/nodes/Geometry.Explode.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**Liste der importierten Geometrien|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)Dreht ein Objekt um einen angegebenen Winkel in Grad um den Ursprung und die Normale der Ebene.|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**Verschiebt Geometrie beliebigen Typs um die angegebenen Entfernung in die angegebene Richtung.|![IMAGE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**Erstellt eine Linie mit der bestmöglichen Annäherung an ein Streudiagramm aus Punkten.|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**Erstellt eine gerade Linie mit der angegebenen Länge vom Startpunkt ausgehend in Vektorrichtung.|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**Erstellt eine gerade Linie zwischen zwei eingegebenen Punkten.|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**Erstellt eine zur eingegebenen Kurve tangentiale Linie am Parameterpunkt der eingegebenen Kurve.|![IMAGE](images/nodes/Line.ByTangency.png)|

||Abfrage||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**Die Richtung der Kurve.|![IMAGE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**Erstellt ein BSplineCurve über explizite Steuerpunkte.|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**Erstellt eine BSplineCurve durch Interpolation zwischen Punkten.|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**Erstellt eine NurbsSurface über explizite Steuerpunkte mit angegebenem U- und V-Grad.|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**Erstellt eine NurbsSurface mit angegebenen interpolierten Punkten und U- und V-Graden. Die resultierende Oberfläche verläuft durch alle Punkte.|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**Erstellt eine am Ursprungspunkt zentrierte Ebene mit eingegebenem Normalenvektor.|![IMAGE](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**Erstellt eine Ebene in der Welt-XY-Ebene.|![IMAGE](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |

||rstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**Legt einen Punkt im angegebenen Koordinatensystem mithilfe dreier kartesischer Koordinaten fest.|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2D) Legt einen Punkt in der XY-Ebene nach Angabe zweier kartesischer Koordinaten fest. Die Z-Komponente hat den Wert 0.|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3D)Legt einen Punkt nach Angabe dreier kartesischer Koordinaten fest.|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**Ruft den Ursprung ab (0,0,0).|![IMAGE](images/nodes/Point.Origin.png)|

||ktionen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**Fügt einem Punkt einen Vektor hinzu. Dies ist identisch mit Translate(Vector).|![IMAGE](images/nodes/Point.Add.png)|

||Abfrage||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**Ruft die X-Komponente des Punkts ab.|![IMAGE](images/nodes/Point.X.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**Ruft die Y-Komponente des Punkts ab.|![IMAGE](images/nodes/Point.Y.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**Ruft die Z-Komponente des Punkts ab.|![IMAGE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |

||Erstellen||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**Erstellt PolyCurve aus einer Folge von Linien durch Verbinden von Punkten. Für geschlossene Kurven muss der letzte Punkt sich an derselben Stelle befinden wie der erste.|![IMAGE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength**(Ebene)Erstellt ein Rectangle zentriert am Ursprung der eingegebenen Plane mit der eingegebenen Breite (X-Achse) und Länge (Y-Achse).|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**Erstellt einen kugelförmigen Volumenkörper mit dem eingegebenen Punkt als Mittelpunkt und dem angegebenen Radius.|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**Erstellt eine Oberfläche durch Erhebung zwischen den eingegebenen Querschnittskurven.|![IMAGE](images/nodes/Surface.ByLoft.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**Erstellt eine Oberfläche durch Ausfüllen des Bereichs innerhalb einer durch die eingegebenen Kurven definierten geschlossenen Begrenzung.|![IMAGE](images/nodes/Surface.ByPatch.png)|

||Aktionen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**Versetzt die Oberfläche in Richtung ihrer Normalen um den angegebenen Abstand.|![IMAGE](images/nodes/Surface.Offset.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**Gibt den Punkt für die angegebenen U- und V-Parameter zurück.|![IMAGE](images/nodes/Surface.PointAtParameter.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**Wandelt eine Oberfläche durch Extrusion in Richtung ihrer Normalen auf beiden Seiten in einen Volumenkörper um.|![IMAGE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**Erstellt UV aus zwei double-Werten.|![IMAGE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |

||Erstellen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**Bildet einen Vektor durch 3 euklidische Koordinaten.|![IMAGE](images/nodes/Vector.ByCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**Ruft den kanonischen Vektor der X-Achse ab (1,0,0).|![IMAGE](images/nodes/Vector.XAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**Ruft den kanonischen Vektor der Y-Achse ab (0,1,0).|![IMAGE](images/nodes/Vector.YAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**Ruft den kanonischen Vektor der Z-Achse ab (0,0,1).|![IMAGE](images/nodes/Vector.ZAxis.png)|

||Aktionen||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**Ruft die normalisierte Version eines Vektors ab.|![IMAGE](images/nodes/Vector.Normalized.png)|

## Operatoren

||||
| -- | -- | -- |
|![IMAGE](images/A-2/add.Large.png)|**+**Addition|![IMAGE](images/nodes/Addition.png)|
|![IMAGE](images/A-2/sub.Large.png)|**-**Subtraktion|![IMAGE](images/nodes/Subtraction.png)|
|![IMAGE](images/A-2/mul.Large.png)|*****Multiplikation|![IMAGE](images/nodes/Multiplication.png)|
|![IMAGE](images/A-2/div.Large.png)|**/**Division|![IMAGE](images/nodes/Division.png)|
|![IMAGE](images/A-2/mod.Large.png)|**%**Die ganzzahlige Division ermittelt den bei der Division der ersten Eingabe durch die zweite verbleibenden Rest.|![IMAGE](images/nodes/ModularDivision.png)|
|![IMAGE](images/A-2/lt.Large.png)|**<**Kleiner als|![IMAGE](images/nodes/LessThan.png)|
|![IMAGE](images/A-2/gt.Large.png)|**>**Größer als|![IMAGE](images/nodes/GreaterThan.png)|
|![IMAGE](images/A-2/eq.Large.png)|**==**Gleichheitstest: Vergleich zweier Werte.|![IMAGE](images/nodes/Equality.png)|

