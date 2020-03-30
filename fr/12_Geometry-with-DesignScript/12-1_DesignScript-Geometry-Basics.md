

# Concepts de base de la géométrie DesignScript

L'objet géométrique le plus simple de la bibliothèque de géométries standard Dynamo est un point. L'ensemble de la géométrie est créé à l'aide de fonctions spéciales appelées constructeurs, qui renvoient chacune une nouvelle occurrence de ce type de géométrie particulier. Dans Dynamo, les constructeurs commencent par le nom du type d'objet, ici Point, suivi de la méthode de construction. Pour créer un point tridimensionnel spécifié par les coordonnées cartésiennes X, Y et Z, utilisez le constructeur *ByCoordinates* :

![](images/12-1/GeometryBasics_01.png)

```
// create a point with the following x, y, and z
// coordinates:
x = 10;
y = 2.5;
z = -6;

p = Point.ByCoordinates(x, y, z);
```

Les constructeurs dans Dynamo sont généralement désignés par le préfixe "*By*" et l'appel de ces fonctions renvoie un nouvel objet de ce type. L'objet créé est stocké dans la variable nommée, à gauche du signe égal.

La plupart des objets possèdent plusieurs constructeurs différents. Vous pouvez utiliser le constructeur *BySphericalCoordinates* pour créer un point se trouvant sur une sphère, spécifié par le rayon de la sphère, un premier angle de rotation et un second angle de rotation (spécifié en degrés) :

![](images/12-1/GeometryBasics_02.png)

```
// create a point on a sphere with the following radius,
// theta, and phi rotation angles (specified in degrees)
radius = 5;
theta = 75.5;
phi = 120.3;
cs = CoordinateSystem.Identity();

p = Point.BySphericalCoordinates(cs, radius, theta,
phi);
```

Les points peuvent être utilisés pour construire une géométrie dimensionnelle plus importante, telle que des lignes. Vous pouvez utiliser le constructeur *ByStartPointEndPoint* pour créer un objet Line entre deux points :

![](images/12-1/GeometryBasics_03.png)

```
// create two points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

// construct a line between p1 and p2
l = Line.ByStartPointEndPoint(p1, p2);
```

De même, les lignes peuvent être utilisées pour créer une géométrie de surface dimensionnelle plus importante, par exemple à l'aide du constructeur *Loft*, qui prend une série de lignes ou de courbes et interpole une surface entre elles.

![](images/12-1/GeometryBasics_04.png)

```
// create points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

p5 = Point.ByCoordinates(9, -10, -2);
p6 = Point.ByCoordinates(-11, -12, -4);

// create lines:
l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);
l3 = Line.ByStartPointEndPoint(p5, p6);

// loft between cross section lines:
surf = Surface.ByLoft([l1, l2, l3]);
```

Les surfaces peuvent également être utilisées pour créer une géométrie de solide dimensionnelle plus importante, par exemple en épaississant la surface d'une distance spécifiée. De nombreux objets possèdent des fonctions associées, appelées méthodes, permettant au programmeur d'exécuter des commandes sur cet objet particulier. Les méthodes communes à tous les éléments de géométrie incluent *Translate* et *Rotate*, qui, respectivement, convertissent (déplacent) et font pivoter la géométrie d'une valeur spécifiée. Les surfaces ont une méthode *Thicken*, qui requiert une entrée unique, un nombre spécifiant la nouvelle épaisseur de la surface.

![](images/12-1/GeometryBasics_05.png)

```
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);

surf = Surface.ByLoft([l1, l2]);

// true indicates to thicken both sides of the Surface:
solid = surf.Thicken(4.75, true);
```

Les commandes *Intersection* permettent d'extraire une géométrie dimensionnelle inférieure à partir d'objets dimensionnels plus élevés. La géométrie dimensionnelle inférieure extraite peut constituer la base d'une géométrie dimensionnelle plus élevée, dans un processus cyclique de création, d'extraction et de recréation géométriques. Dans cet exemple, vous utilisez le solide généré pour créer une surface et la surface pour créer une courbe.

![](images/12-1/GeometryBasics_06.png)

```
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);

surf = Surface.ByLoft([l1, l2]);

solid = surf.Thicken(4.75, true);

p = Plane.ByOriginNormal(Point.ByCoordinates(2, 0, 0),
Vector.ByCoordinates(1, 1, 1));

int_surf = solid.Intersect(p);

int_line = int_surf.Intersect(Plane.ByOriginNormal(
Point.ByCoordinates(0, 0, 0),
Vector.ByCoordinates(1, 0, 0)));
```

