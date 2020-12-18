

## Python

![](images/10-4/pythonlogo.jpg)Python est un langage de programmation très répandu dont la popularité est liée à son style de syntaxe. Il est très lisible, ce qui facilite l'apprentissage de beaucoup d'autres langages. Python prend en charge les modules et les packages, et peut être intégré dans des applications existantes. Les exemples de cette section supposent une connaissance de base de Python. Pour plus d'informations sur la façon d'utiliser Python, consultez la page ["Mise en route"](https://www.python.org/about/gettingstarted/) sur [Python.org](https://www.python.org/).

### Programmation visuelle et textuelle

Pourquoi utiliser la programmation textuelle dans l'environnement de programmation visuelle de Dynamo ? Comme vous l'avez vu au chapitre 1.1, la programmation visuelle présente de nombreux avantages. Elle vous permet de créer des programmes sans avoir à apprendre la syntaxe spéciale dans une interface visuelle intuitive. Toutefois, un programme visuel peut être encombré et peut parfois ne pas fonctionner correctement. Par exemple, Python propose des méthodes beaucoup plus efficaces pour écrire des instructions conditionnelles (if/then) et des boucles. Python est un outil puissant qui permet d'étendre les capacités de Dynamo et de remplacer de nombreux nœuds par quelques lignes de code concises.

**Programme visuel :** ![](images/10-4/python-nodes.jpg)

**Programme textuel :**

```
import clr
clr.AddReference('ProtoGeometry')
from Autodesk.DesignScript.Geometry import *

solid = IN[0]
seed = IN[1]
xCount = IN[2]
yCount = IN[3]

solids = []

yDist = solid.BoundingBox.MaxPoint.Y-solid.BoundingBox.MinPoint.Y
xDist = solid.BoundingBox.MaxPoint.X-solid.BoundingBox.MinPoint.X

for i in xRange:
for j in yRange:
fromCoord = solid.ContextCoordinateSystem
toCoord = fromCoord.Rotate(solid.ContextCoordinateSystem.Origin,Vector.ByCoordinates(0,0,1),(90*(i+j%val)))
vec = Vector.ByCoordinates((xDist*i),(yDist*j),0)
toCoord = toCoord.Translate(vec)
solids.append(solid.Transform(fromCoord,toCoord))

OUT = solids
```

### Nœud Python

Comme les blocs de code, les nœuds Python sont une interface de script au sein d'un environnement de programmation visuelle. Le nœud Python se trouve sous *Core > Scripting* dans la bibliothèque. Un double-clic sur le nœud permet d'ouvrir l'éditeur de script Python (vous pouvez également cliquer avec le bouton droit sur le nœud et sélectionner *Éditer...*).

![Éditeur de script](images/10-4/Exercise/Python/python04.png)

> Le texte réutilisable situé en haut de l'éditeur vous permet de référencer les bibliothèques dont vous aurez besoin. Les entrées sont stockées dans le réseau IN. Les valeurs sont renvoyées à Dynamo en étant affectées à la variable OUT.

La bibliothèque Autodesk.DesignScript.Geometry vous permet d'utiliser la notation par points de manière similaire aux blocs de code. Pour plus d'informations sur la syntaxe de Dynamo, reportez-vous au chapitre 7.2 ainsi qu'au [Guide de DesignScript](http://dynamobim.org/wp-content/links/DesignScriptGuide.pdf). La saisie d'un type de géométrie tel que 'Point.' permet d'afficher une liste de méthodes pour la création et la requête de points.

![](images/10-4/Exercise/Python/python14.png)

> Les méthodes comprennent des constructeurs tels que *ByCoordinates*, des actions telles que *Add* et des requêtes telles que les coordonnées *X*, *Y* et *Z*.

### Exercice

> Téléchargez le fichier d'exemple joint à cet exercice (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous..."). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe. [Python_Custom-Node.dyn](datasets/10-4/Python-CustomNode.dyn)

Dans cet exemple, vous allez écrire un script Python qui crée des motifs à partir d'un module solide, et le transformer en nœud personnalisé. Commencer par créer le module solide à l'aide de nœuds Dynamo.

![](images/10-4/Exercise/Python/python01.png)

> 1. **Rectangle.ByWidthLength :** créez un rectangle qui servira de base au solide.
2. **Surface.ByPatch :** connectez le rectangle à l'entrée "*closedCurve*" pour créer la surface inférieure.

![](images/10-4/Exercise/Python/python02.png)

> 1. **Geometry.Translate :** connectez le rectangle à l'entrée "*geometry*" pour le déplacer vers le haut, à l'aide d'un bloc de code pour spécifier l'épaisseur de base du solide.
2. **Polygon.Points :** interrogez le rectangle converti pour extraire les points de coin.
3. **Geometry.Translate :** utilisez un bloc de code pour créer une liste de quatre valeurs correspondant aux quatre points, en convertissant un coin du solide vers le haut.
4. **Polygon.ByPoints :** utilisez les points convertis pour reconstruire le polygone supérieur.
5. **Surface.ByPatch :** connectez le polygone pour créer la surface supérieure.

Maintenant que vous avez les surfaces supérieures et inférieures, effectuez un lissage entre les deux contours pour créer les côtés du solide.

![](images/10-4/Exercise/Python/python03.png)

> 1. **List.Create :** connectez le rectangle inférieur et le polygone supérieur aux entrées d'index.
2. **Surface.ByLoft :** lissez les deux contours pour créer les côtés du solide.
3. **List.Create :** connectez les surfaces supérieures, inférieures et latérales aux entrées d'index pour créer une liste de surfaces.
4. **Solid.ByJoiningSurfaces :** joignez les surfaces pour créer le module solide.

Maintenant que le solide est créé, déposez un nœud de script Python dans l'espace de travail.

![](images/10-4/Exercise/Python/python05.png)

> Pour ajouter des entrées supplémentaires au nœud, fermez l'éditeur et cliquez sur l'icône + sur le nœud. Les entrées sont nommées IN[0], IN[1], etc. pour indiquer qu'elles représentent des éléments dans une liste.

Commencez par définir les entrées et la sortie. Double-cliquez sur le nœud pour ouvrir l'éditeur Python.

![](images/10-4/Exercise/Python/python06.png)

```
# Enable Python support and load DesignScript library
import clr
clr.AddReference('ProtoGeometry')
from Autodesk.DesignScript.Geometry import *

# The inputs to this node will be stored as a list in the IN variables.
#The solid module to be arrayed
solid = IN[0]
#A number that determines which rotation pattern to use
seed = IN[1]
#The number of solids to array in the X and Y axes
xCount = IN[2]
yCount = IN[3]

#Create an empty list for the arrayed solids
solids = []

# Place your code below this line

# Assign your output to the OUT variable.
OUT = solids
```

Ce code sera plus pertinent à mesure que vous progresserez dans l'exercice. Ensuite, identifiez les informations nécessaires pour la mise en réseau du module solide. Tout d'abord, vous devez connaître les cotes du solide pour déterminer la distance de conversion. En raison d'un bogue relatif à la zone de contour, utilisez la géométrie de courbe d'arête pour créer une zone de contour.

![](images/10-4/Exercise/Python/python07.png)

> Aperçu du nœud Python dans Dynamo. La syntaxe utilisée est la même que celle utilisée dans les titres des nœuds dans Dynamo. Le code commenté est ci-dessous.

```
# Enable Python support and load DesignScript library
import clr
clr.AddReference('ProtoGeometry')
from Autodesk.DesignScript.Geometry import *

# The inputs to this node will be stored as a list in the IN variables.
#The solid module to be arrayed
solid = IN[0]
#A number that determines which rotation pattern to use
seed = IN[1]
#The number of solids to array in the X and Y axes
xCount = IN[2]
yCount = IN[3]

#Create an empty list for the arrayed solids
solids = []
# Create an empty list for the edge curves
crvs = []

# Place your code below this line
#Loop through edges and append corresponding curve geometry to the list
for edge in solid.Edges:
crvs.append(edge.CurveGeometry)
#Get the bounding box of the curves
bbox = BoundingBox.ByGeometry(crvs)

#Get the X and Y translation distance based on the bounding box
yDist = bbox.MaxPoint.Y-bbox.MinPoint.Y
xDist = bbox.MaxPoint.X-bbox.MinPoint.X

# Assign your output to the OUT variable.
OUT = solids
```

Puisque vous allez convertir et faire pivoter les modules solides, utilisez l'opération Geometry.Transform. Examinez le nœud Geometry.Transform : vous savez que vous avez besoin d'un système de coordonnées source et d'un système de coordonnées cible pour transformer le solide. La source est le système de coordonnées contextuel du solide, alors que la cible est un système de coordonnées différent pour chaque module en réseau. Cela signifie que vous devez parcourir les valeurs x et y pour modifier le système de coordonnées à chaque fois.

![](images/10-4/Exercise/Python/python15.png)

> Aperçu du nœud Python dans Dynamo. Le code commenté est ci-dessous.

```
# Enable Python support and load DesignScript library
import clr
clr.AddReference('ProtoGeometry')
from Autodesk.DesignScript.Geometry import *

# The inputs to this node will be stored as a list in the IN variables.
#The solid module to be arrayed
solid = IN[0]
#A number that determines which rotation pattern to use
seed = IN[1]
#The number of solids to array in the X and Y axes
xCount = IN[2]
yCount = IN[3]

#Create an empty list for the arrayed solids
solids = []
# Create an empty list for the edge curves
crvs = []

# Place your code below this line
#Loop through edges and append corresponding curve geometry to the list
for edge in solid.Edges:
crvs.append(edge.CurveGeometry)
#Get the bounding box of the curves
bbox = BoundingBox.ByGeometry(crvs)

#Get the X and Y translation distance based on the bounding box
yDist = bbox.MaxPoint.Y-bbox.MinPoint.Y
xDist = bbox.MaxPoint.X-bbox.MinPoint.X
#get the source coordinate system
fromCoord = solid.ContextCoordinateSystem

#Loop through X and Y
for i in range(xCount):
for j in range(yCount):
#Rotate and translate the coordinate system
toCoord = fromCoord.Rotate(solid.ContextCoordinateSystem.Origin,Vector.ByCoordinates(0,0,1),(90*(i+j%seed)))
vec = Vector.ByCoordinates((xDist*i),(yDist*j),0)
toCoord = toCoord.Translate(vec)
#Transform the solid from the source coord system to the target coord system and append to the list
solids.append(solid.Transform(fromCoord,toCoord))

# Assign your output to the OUT variable.
OUT = solids
```

![](images/10-4/Exercise/Python/python09.png)

> Cliquez sur Exécuter sur le nœud Python pour permettre au code d'exécuter l'opération.

![](images/10-4/Exercise/Python/python10.png)

> Modifiez la valeur de départ pour créer différents motifs. Vous pouvez également modifier les paramètres du module solide lui-même pour créer différents effets. Dans Dynamo 2.0, il vous suffit de modifier la valeur de départ et de cliquer sur Exécuter sans fermer la fenêtre Python.

Maintenant que vous avez créé un script Python utile, enregistrez-le en tant que nœud personnalisé. Sélectionnez le nœud de script Python, cliquez avec le bouton droit de la souris et choisissez "Nouveau nœud de la sélection".

![](images/10-4/Exercise/Python/python11.png)

> Attribuez un nom, une description et une catégorie.

Un nouvel espace de travail s'ouvre dans lequel vous pouvez modifier le nœud personnalisé.

![](images/10-4/Exercise/Python/python12.png)

> 1. **Entrées :** modifiez les noms d'entrée pour qu'ils soient plus descriptifs et ajoutez des types de données et des valeurs par défaut.
2. **Sortie :** modifiez le nom de sortie. Enregistrez le nœud en tant que fichier .dyf.

![](images/10-4/Exercise/Python/python13.png)

> Le nœud personnalisé reflète les modifications apportées.

