

## Points

Si la géométrie est la langue d'un modèle, les points en sont l'alphabet. Les points constituent la base sur laquelle est créée la géométrie. Il faut au moins deux points pour créer une courbe, au moins trois points pour créer un polygone ou une face maillée, etc. La définition de la position, de l'ordre et de la relation entre les points (essayez une fonction de sinus) nous permet de définir une géométrie d'ordre supérieur, comme des cercles ou des courbes.

![Point à courbe](images/5-3/PointsAsBuildingBlocks-1.jpg)

> 1. Un cercle utilisant les fonctions ```x=r*cos(t)``` et ```y=r*sin(t)```
2. Une courbe sinusoïdale utilisant les fonctions ```x=(t)``` et ```y=r*sin(t)```

### Qu'est-ce qu'un point ?

Un point est défini uniquement par une ou plusieurs valeurs, appelées coordonnées. Le nombre de valeurs de coordonnées requises pour définir le point dépend du système de coordonnées ou du contexte dans lequel il se trouve. Le type de point le plus courant dans Dynamo existe dans notre système de coordonnées général en trois dimensions et possède trois coordonnées [X,Y,Z].

![Point](images/5-3/Point.jpg)

### Points en tant que coordonnées

Les points peuvent également exister dans un système de coordonnées bidimensionnel. La convention comporte différentes lettres de notation selon le type d'espace avec lequel vous travaillez. Il se peut que vous utilisiez [X,Y] sur un plan ou [U,V] pour une surface.

![Points en tant que coordonnées](images/5-3/Coordinates.jpg)

> 1. Un point dans un système de coordonnées euclidien : [X,Y,Z]
2. Un point dans un système de coordonnées de paramètres de courbe : [t]
3. Un point dans un système de coordonnées de paramètres de surface : [U,V]

Bien que cela puisse sembler contre-intuitif, les paramètres des courbes et des surfaces sont continus et s'étendent au-delà de l'arête de la géométrie donnée. Étant donné que les formes qui définissent l'espace des paramètres résident dans un système de coordonnées général en trois dimensions, vous pouvez toujours convertir une coordonnée paramétrique en coordonnée "universelle". Le point [0.2, 0.5] sur la surface, par exemple, est le même que le point [1.8, 2.0, 4.1] en coordonnées universelles.

![Points dans Dynamo](images/5-3/Dynamo-Points.jpg)

> 1. Point dans les coordonnées XYZ universelles supposées
2. Point relatif à un système de coordonnées donné (cylindrique)
3. Point comme coordonnée UV sur une surface
> Téléchargez le fichier d'exemple qui accompagne cette image (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous...") : [Geometry for Computational Design - Points.dyn](datasets/5-3/Geometry for Computational Design - Points.dyn). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe.

