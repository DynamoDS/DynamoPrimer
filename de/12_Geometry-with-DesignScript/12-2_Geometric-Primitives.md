

# Geometrische Grundkörper

Zwar ist Dynamo in der Lage, eine Reihe komplexer geometrischer Formen zu erstellen, jedoch bilden einfache geometrische Grundkörper die Grundlage jedes computergestützten Entwurfs: entweder als direkter Ausdruck in der endgültigen Entwurfsform oder als Gerüst für die Erstellung einer komplexeren Geometrie.

Ein Koordinatensystem ist streng genommen kein Geometrieobjekt, dient jedoch als wichtiges Hilfsmittel zum Erstellen von Geometrie. Ein CoordinateSystem-Objekt verfolgt Positions- und Geometrietransformationen wie Drehen, Scheren und Skalieren.

Zum Erstellen eines an einem Punkt mit x = 0, y = 0, z = 0 zentrierten Koordinatensystems ohne Rotations-, Skalierungs- oder Schertransformationen kann einfach der Konstruktor Identity aufgerufen werden:

![](images/12-2/GeometricPrimitives_01.png)

```
// create a CoordinateSystem at x = 0, y = 0, z = 0,
// no rotations, scaling, or sheering transformations

cs = CoordinateSystem.Identity();
```

Koordinatensysteme mit geometrischen Transformationen gehen über den Umfang dieses Kapitels hinaus, auch wenn Sie mit einem anderen Konstruktor, namentlich *CoordinateSystem.ByOriginVectors*, ein Koordinatensystem an einem bestimmten Punkt erstellen können:

![](images/12-2/GeometricPrimitives_02.png)

```
// create a CoordinateSystem at a specific location,
// no rotations, scaling, or sheering transformations
x_pos = 3.6;
y_pos = 9.4;
z_pos = 13.0;

origin = Point.ByCoordinates(x_pos, y_pos, z_pos);
identity = CoordinateSystem.Identity();

cs = CoordinateSystem.ByOriginVectors(origin,
identity.XAxis, identity.YAxis, identity.ZAxis);
```

Der einfachste geometrische Grundkörper ist ein Punkt, der eine nulldimensionale Position im dreidimensionalen Raum darstellt. Wie bereits erwähnt gibt es verschiedene Möglichkeiten zum Erstellen eines Punkts in einem bestimmten Koordinatensystem: *Point.ByCoordinates* erstellt einen Punkt mithilfe der gegebenen Koordinaten x, y und z, *Point.ByCartesianCoordinates* erstellt einen Punkt mithilfe der gegebenen Koordinaten x, y und z in einem bestimmten Koordinatensystem, *Point.ByCylindricalCoordinates* erstellt einen Punkt, der auf einem Zylinder mit gegebenen Werten für Radius, Drehwinkel und Höhe liegt und * Point.BySphericalCoordinates* erstellt einen Punkt auf einer Kugel mit einem gegebenen Radius und zwei Drehwinkeln.

Dieses Beispiel zeigt Punkte, die in unterschiedlichen Koordinatensystemen erstellt wurden:

![](images/12-2/GeometricPrimitives_03.png)

```
// create a point with x, y, and z coordinates
x_pos = 1;
y_pos = 2;
z_pos = 3;

pCoord = Point.ByCoordinates(x_pos, y_pos, z_pos);

// create a point in a specific coordinate system
cs = CoordinateSystem.Identity();
pCoordSystem = Point.ByCartesianCoordinates(cs, x_pos,
y_pos, z_pos);

// create a point on a cylinder with the following
// radius and height
radius = 5;
height = 15;
theta = 75.5;

pCyl = Point.ByCylindricalCoordinates(cs, radius, theta,
height);

// create a point on a sphere with radius and two angles

phi = 120.3;

pSphere = Point.BySphericalCoordinates(cs, radius, 
theta, phi);
```

Der nächsthöherdimensionale Dynamo-Grundkörper ist ein Liniensegment, das eine unendliche Anzahl von Punkten zwischen zwei Endpunkten darstellt. Linien können explizit erstellt werden, indem Sie die beiden Grenzpunkte mit dem Konstruktor *Line.ByStartPointEndPoint* angeben, oder durch Angabe eines Startpunkts, einer Richtung und Länge in dieser Richtung mittels *Line.ByStartPointDirectionLength*.

![](images/12-2/GeometricPrimitives_04.png)

```
p1 = Point.ByCoordinates(-2, -5, -10);
p2 = Point.ByCoordinates(6, 8, 10);

// a line segment between two points
l2pts = Line.ByStartPointEndPoint(p1, p2); 

// a line segment at p1 in direction 1, 1, 1 with 
// length 10
lDir = Line.ByStartPointDirectionLength(p1,
Vector.ByCoordinates(1, 1, 1), 10);
```

Dynamo verfügt über Objekte, die grundlegende Typen geometrischer Grundkörper in drei Dimensionen darstellen: Quader, erstellt mit *Cuboid.ByLengths*; Kegel, erstellt mit *Cone.ByPointsRadius* und *Cone.ByPointsRadii*; Zylinder, erstellt mit *Cylinder.ByRadiusHeight* sowie Kugeln, erstellt mit *Sphere.ByCenterPointRadius*.

![](images/12-2/GeometricPrimitives_05.png)

```
// create a cuboid with specified lengths
cs = CoordinateSystem.Identity();

cub = Cuboid.ByLengths(cs, 5, 15, 2);

// create several cones
p1 = Point.ByCoordinates(0, 0, 10);
p2 = Point.ByCoordinates(0, 0, 20);
p3 = Point.ByCoordinates(0, 0, 30);

cone1 = Cone.ByPointsRadii(p1, p2, 10, 6);
cone2 = Cone.ByPointsRadii(p2, p3, 6, 0);

// make a cylinder
cylCS = cs.Translate(10, 0, 0);

cyl = Cylinder.ByRadiusHeight(cylCS, 3, 10);

// make a sphere
centerP = Point.ByCoordinates(-10, -10, 0);

sph = Sphere.ByCenterPointRadius(centerP, 5);
```

