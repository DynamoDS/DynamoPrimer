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

# INDEX DES NœudS

##### Cet index fournit des informations supplémentaires sur tous les nœuds utilisés dans ce guide, ainsi que sur les autres composants que vous trouverez utiles. Il s'agit juste d'une introduction de quelques-uns des 500 nœuds disponibles dans Dynamo.

## Fonctions intégrées

||||
| -- | -- | -- |
|![IMAGE](images/A-2/Count.Large.png)|**Count**<br>Renvoie le nombre d'éléments dans la liste spécifiée.|![IMAGE](images/nodes/Count.png)|
|![IMAGE](images/A-2/Flatten.Large.png)|**Flatten**<br>Renvoie la liste 1D aplanie de la liste d'entrée multidimensionnelle.|![IMAGE](images/nodes/Flatten.png)|
|![IMAGE](images/A-2/Map.Large.png)|**Map**<br>Mappe une valeur dans un intervalle d'entrée|![IMAGE](images/nodes/Map.png)|

## Core

#### Core.Color

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Créer une couleur au moyen de composants alpha, rouges, verts et bleus.|![IMAGE](images/nodes/Color.ByARGB.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Color Range**<br>Obtenir une couleur à partir d'un dégradé de couleurs entre une couleur de départ et une couleur de fin.|![IMAGE](images/nodes/ColorRange.png)|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Obtient la valeur de luminosité de cette couleur.|![IMAGE](images/nodes/Color.Brightness.png)|
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Répertorie les composants de la couleur dans l'ordre suivant : alpha, rouge, vert, bleu.|![IMAGE](images/nodes/Color.Components.png)|
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Obtient la valeur de saturation de cette couleur.|![IMAGE](images/nodes/Color.Saturation.png)|
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**Obtient la valeur de teinte de cette couleur.|![IMAGE](images/nodes/Color.Hue.png)|
||REQUETE||
|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Rechercher le composant alpha d'une couleur, de 0 à 255.|![IMAGE](images/nodes/Color.Alpha.png)|
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Rechercher le composant bleu d'une couleur, de 0 à 255.|![IMAGE](images/nodes/Color.Blue.png)|
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Rechercher le composant vert d'une couleur, de 0 à 255.|![IMAGE](images/nodes/Color.Green.png)|
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Rechercher le composant rouge d'une couleur, de 0 à 255.|![IMAGE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Affiche la géométrie à l'aide d'une couleur.|![IMAGE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Boolean**<br>Sélection entre True et False.|![IMAGE](images/nodes/Boolean.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Code Block**<br>Permet de créer le code DesignScript directement.|![IMAGE](images/nodes/CodeBlock.png)|
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**<br>Permet de sélectionner un répertoire sur le système pour obtenir son chemin d'accès|![IMAGE](images/nodes/DirectoryPath.png)|
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**File Path**<br>Permet de sélectionner un fichier sur le système de façon à obtenir son nom de fichier.|![IMAGE](images/nodes/FilePath.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**<br>Curseur qui génère des valeurs entières.|![IMAGE](images/nodes/IntegerSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Number** <br>Permet de créer un nombre.|![IMAGE](images/nodes/Number.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider** <br>Curseur qui génère des valeurs numériques.|![IMAGE](images/nodes/NumberSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**<br>Crée une chaîne.|![IMAGE](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Permet de créer une liste des entrées indiquées.|![IMAGE](images/nodes/List.Create.png)|
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Applique un combinateur à chaque élément en deux séquences|![IMAGE](images/nodes/List.Combine.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Number Range**<br>Crée une séquence de nombres dans l'intervalle spécifié.|![IMAGE](images/nodes/NumberRange.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Number Sequence**<br>Crée une série de numéros.|![IMAGE](images/nodes/NumberSequence.png)|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Couper une liste en un ensemble de listes contenant chacune le nombre donné d'éléments.|![IMAGE](images/nodes/List.Chop.png)|
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Obtient le nombre d'éléments stockés dans la liste indiquée.|![IMAGE](images/nodes/List.Count.png)|
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Aplanit une liste imbriquée de listes en fonction d'une quantité spécifique.|![IMAGE](images/nodes/List.Flatten.png)|
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Filtre une séquence en recherchant les index correspondants dans une liste distincte de booléens.|![IMAGE](images/nodes/List.FilterByBoolMask.png)|
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Obtient un élément de la liste indiquée qui se trouve au niveau de l'index spécifié.|![IMAGE](images/nodes/List.GetItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Applique une fonction sur tous les éléments d'une liste, générant une nouvelle liste à partir des résultats|![IMAGE](images/nodes/List.Map.png)|
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Crée une liste contenant les éléments de la liste indiquée, mais dans l'ordre inverse|![IMAGE](images/nodes/List.Reverse.png)|
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Remplacer un élément de la liste indiquée qui se trouve au niveau de l'index spécifié|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Décale les index dans la liste vers la droite en fonction de la quantité indiquée|![IMAGE](images/nodes/List.ShiftIndices.png)|
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Récupère les éléments de la liste indiquée aux index qui sont des multiples de la valeur indiquée, après le décalage indiqué.|![IMAGE](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Permute les lignes et les colonnes d'une liste. Si certaines lignes sont plus courtes que d'autres, des valeurs nulles sont insérées en tant qu'espaces réservés dans le réseau résultant afin qu'il soit toujours rectangulaire|![IMAGE](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>Instruction conditionnelle. Vérifie la valeur booléenne de l'entrée de test. Si l'entrée de test est True, le résultat génère la valeur True, sinon le résultat génère la valeur False.|![IMAGE](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Trouve le cosinus d'un angle.|![IMAGE](images/nodes/Math.Cos.png)|
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Convertit un angle en degrés en angle en radians.|![IMAGE](images/nodes/Math.DegreesToRadians.png)|
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Élève un nombre à la puissance spécifiée.|![IMAGE](images/nodes/Math.Pow.png)|
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Convertit un angle en radians en angle en degrés.|![IMAGE](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Ajuste l'intervalle d'une liste de nombres, tout en conservant le rapport de distribution.|![IMAGE](images/nodes/Math.RemapRange.png)|
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Détermine le sinus d'un angle.|![IMAGE](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Détermine si l'objet indiqué est nul.|![IMAGE](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**Formula**<br>Évalue les formules mathématiques. Utilise NCalc pour l'évaluation. Reportez-vous à la rubrique [http://ncalc.codeplex.com](http://ncalc.codeplex.com)|![IMAGE](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Concatène plusieurs chaînes en une seule chaîne.|![IMAGE](images/nodes/String.Concat.png)|
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Détermine si la chaîne indiquée contient la sous-chaîne indiquée.|![IMAGE](images/nodes/String.Contains.png)|
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Concatène plusieurs chaînes en une seule chaîne et insère le séparateur indiqué entre chaque chaîne jointe.|![IMAGE](images/nodes/String.Join.png)|
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Divise une chaîne unique en une liste de chaînes, les chaînes de séparation indiquées déterminant les divisions.|![IMAGE](images/nodes/String.Split.png)|
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Convertit une chaîne en nombre entier ou double.|![IMAGE](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Visualiser la sortie du nœud.|![IMAGE](images/nodes/Watch.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Affiche un aperçu dynamique de la géométrie.|![IMAGE](images/nodes/Watch3D.png)|

## Geometry

#### Geometry.Circle

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Crée un Circle à l'aide d'un point central d'entrée et un rayon dans le plan XY univers, avec l'univers Z standard.|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Cercle.ByPlaneRadius**<br>Créer un Circle centré au niveau de l'origine du plan d'entrée (racine), dans le plan d'entrée, avec un rayon donné.|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Créer un CoordinateSystem avec une origine au point d'entrée, avec les axes X et Y définis en tant qu'axes X et Y SCG.|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Crée un CoordinateSystem en fonction des paramètres de coordonnées cylindriques spécifiés par rapport au système de coordonnées spécifié|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths** (origine)<br>Créer un Cuboid centré au point d'entrée, en fonction de la largeur, de la longueur et de la hauteur spécifiées.|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (distance)<br>Extrude une Curve dans la direction du vecteur de la normale.|![IMAGE](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Obtenir un point sur la Curve à un paramètre spécifié entre StartParameter() et EndParameter().|![IMAGE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Obtenir la distance entre cette Geometry et une autre.|![IMAGE](images/nodes/Geometry.DistanceTo.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Sépare les éléments composés ou non séparés dans leurs composants|![IMAGE](images/nodes/Geometry.Explode.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>Liste des géométries importées|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Fait pivoter l'objet autour de l'origine et de la normale du plan en fonction d'un degré spécifié.|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Convertit tout type de géométrie selon la distance donnée dans la direction donnée.|![IMAGE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Crée une ligne représentant au mieux un diagramme de dispersion de points.|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Créer une ligne droite partant du point, s'étendant dans la direction du vecteur en fonction de la longueur spécifiée.|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Crée une ligne droite entre deux points d'entrée.|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Créer une ligne tangente à la Curve d'entrée, située sur le point paramétrique de la Curve d'entrée.|![IMAGE](images/nodes/Line.ByTangency.png)|
||REQUETE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>Direction de la Curve.|![IMAGE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||Créer||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Crée une BSplineCurve à l'aide de points de contrôle explicites.|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Créer une BSplineCurve par interpolation entre des points|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||Créer||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Créer une NurbsSurface en utilisant des points de contrôle explicites avec les degrés U et V indiqués.|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Crée une NurbsSurface avec des points interpolés et des degrés U et V spécifiés. La surface résultante passera par tous les points.|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Créer un plan centré au niveau du point d'origine, avec le vecteur de la normal d'entrée.|![IMAGE](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Crée un plan dans l'univers XY|![IMAGE](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Former un point dans le système de coordonnées indiqué avec trois coordonnées cartésiennes|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2d) <br>Former un point dans le plan XY en fonction de deux coordonnées cartésiennes. Le composant Z est défini sur 0.|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3d)<br>Former un point en fonction de 3 coordonnées cartésiennes.|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Obtenir le point d'origine (0,0,0)|![IMAGE](images/nodes/Point.Origin.png)|
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Ajouter un vecteur à un point. Il en va de même pour l'option Conversion (vecteur).|![IMAGE](images/nodes/Point.Add.png)|
||REQUETE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Obtenir le composant X d'un point|![IMAGE](images/nodes/Point.X.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Obtenir le composant Y d'un point|![IMAGE](images/nodes/Point.Y.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Obtenir le composant Z d'un point|![IMAGE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Créer une polycourbe à partir d'une séquence de lignes connectant des points. Pour la courbe fermée, le dernier point doit être au même endroit que le point de départ.|![IMAGE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (Plan)<br>Créer un rectangle centré au niveau de la racine du plan d'entrée, avec la largeur d'entrée (longueur de l'axe X du plan) et la longueur d'entrée (longueur de l'axe Y du plan).|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Créer une sphère solide centrée au niveau du point d'entrée, avec un rayon donné.|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Créer un nœud Surface par lissage entre les nœuds Curves de profil de coupe d'entrée|![IMAGE](images/nodes/Surface.ByLoft.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Créer un nœud Surface en remplissant l'intérieur d'un contour fermé défini par les nœuds Curves d'entrée.|![IMAGE](images/nodes/Surface.ByPatch.png)|
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Décaler la surface dans la direction de la normale de surface selon une distance spécifiée|![IMAGE](images/nodes/Surface.Offset.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Renvoyer le point avec les paramètres U et V indiqués.|![IMAGE](images/nodes/Surface.PointAtParameter.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Épaissir la surface dans un solide, en réalisant une extrusion dans la direction des normales de la surface sur les deux côtés de la surface.|![IMAGE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Créer un UV à partir de deux doubles.|![IMAGE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||CREER||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**<br>Former un vecteur à l'aide de 3 coordonnées euclidiennes|![IMAGE](images/nodes/Vector.ByCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Obtient le vecteur d'axe X canonique (1,0,0)|![IMAGE](images/nodes/Vector.XAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Obtient le vecteur d'axe Y canonique (0,1,0)|![IMAGE](images/nodes/Vector.YAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Obtient le vecteur d'axe Z canonique (0,0,1)|![IMAGE](images/nodes/Vector.ZAxis.png)|
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normized**<br>Obtenir la version normalisée d'un vecteur|![IMAGE](images/nodes/Vector.Normalized.png)|

## Opérateurs

||||
| -- | -- | -- |
|![IMAGE](images/A-2/add.Large.png)|**+**<br>Ajout|![IMAGE](images/nodes/Addition.png)|
|![IMAGE](images/A-2/sub.Large.png)|**-**<br>Soustraction|![IMAGE](images/nodes/Subtraction.png)|
|![IMAGE](images/A-2/mul.Large.png)|*****<br>Multiplication|![IMAGE](images/nodes/Multiplication.png)|
|![IMAGE](images/A-2/div.Large.png)|**/**<br>Division|![IMAGE](images/nodes/Division.png)|
|![IMAGE](images/A-2/mod.Large.png)|**%**<br>La division modulaire recherche le reste de la première entrée après la division par la deuxième entrée|![IMAGE](images/nodes/ModularDivision.png)|
|![IMAGE](images/A-2/lt.Large.png)|**<**<br>Moins que|![IMAGE](images/nodes/LessThan.png)|
|![IMAGE](images/A-2/gt.Large.png)|**>**<br>Supérieur à|![IMAGE](images/nodes/GreaterThan.png)|
|![IMAGE](images/A-2/eq.Large.png)|**==**<br>L'égalité des deux valeurs est un test d'égalité.|![IMAGE](images/nodes/Equality.png)|

