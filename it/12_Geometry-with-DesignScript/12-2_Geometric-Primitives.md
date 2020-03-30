

# Primitive geometriche

Sebbene Dynamo sia in grado di creare una vasta gamma di forme geometriche complesse, le primitive geometriche semplici formano le fondamenta di qualsiasi progettazione computazionale: direttamente espresse nella forma finale progettata o utilizzata come impalcatura dalla quale viene generata una geometria più complessa.

Anche se non è strettamente un elemento di geometria, CoordinateSystem è uno strumento importante per la costruzione della geometria. Un oggetto CoordinateSystem tiene traccia delle trasformazioni geometriche e di posizione, quali rotazione, taglio e messa in scala.

La creazione di un CoordinateSystem centrato in un punto con x = 0, y = 0, z = 0, senza rotazioni, messa in scala o trasformazioni di taglio, richiede semplicemente di chiamare il costruttore Identity:

![](images/12-2/GeometricPrimitives_01.png)

```
// create a CoordinateSystem at x = 0, y = 0, z = 0,
// no rotations, scaling, or sheering transformations

cs = CoordinateSystem.Identity();
```

I CoordinateSystem con trasformazioni geometriche non rientrano nell'ambito di questo capitolo, sebbene un altro costruttore consenta di creare un sistema di coordinate in un punto specifico, *CoordinateSystem.ByOriginVectors*:

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

La primitiva geometrica più semplice è un punto, che rappresenta una posizione a zero dimensioni nello spazio tridimensionale. Come detto in precedenza, esistono diversi modi per creare un punto in un particolare sistema di coordinate: *Point.ByCoordinates* crea un punto con coordinate x, y e z specificate; *Point.ByCartesianCoordinates* crea un punto con coordinate x, y e z specificate in un sistema di coordinate specifico; *Point.ByCylindricalCoordinates* crea un punto su un cilindro con raggio, angolo di rotazione e altezza e *Point.BySphericalCoordinates* crea un punto su una sfera con raggio e due angoli di rotazione.

In questo esempio sono mostrati i punti creati in diversi sistemi di coordinate:

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

La successiva primitiva di Dynamo dimensionale maggiore è un segmento di linea, che rappresenta un numero infinito di punti tra due punti finali. Le linee possono essere create specificando esplicitamente i due punti di contorno con il costruttore *Line.ByStartPointEndPoint* o specificando un punto iniziale, una direzione e una lunghezza in tale direzione, *Line.ByStartPointDirectionLength*.

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

Dynamo dispone di oggetti che rappresentano i tipi più elementari di primitive geometriche in tre dimensioni: cuboidi, creati con *Cuboid.ByLengths*; coni, creati con *Cone.ByPointsRadius* e *Cone.ByPointsRadii*; cilindri, creati con *Cylinder.ByRadiusHeight* e sfere create con *Sphere.ByCenterPointRadius*.

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

