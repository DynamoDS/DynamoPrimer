

# Nozioni di base della geometria DesignScript

L'oggetto geometrico più semplice nella libreria della geometria standard di Dynamo è un punto. Tutta la geometria viene creata utilizzando funzioni speciali denominate costruttori, i quali singolarmente restituiscono una nuova istanza di quel particolare tipo di geometria. In Dynamo, i costruttori iniziano con il nome del tipo di oggetto, in questo caso Point, seguito dal metodo di costruzione. Per creare un punto tridimensionale specificato dalle coordinate cartesiane x, y e z, utilizzare il costruttore *ByCoordinates*:

![](images/12-1/GeometryBasics_01.png)

```
// create a point with the following x, y, and z
// coordinates:
x = 10;
y = 2.5;
z = -6;

p = Point.ByCoordinates(x, y, z);
```

In Dynamo, i costruttori vengono in genere designati con il prefisso *By* e il richiamo di queste funzioni restituisce un oggetto appena creato di quel tipo. Questo oggetto appena creato viene memorizzato nella variabile indicata sul lato sinistro del segno di uguale.

La maggior parte degli oggetti ha molti differenti costruttori ed è possibile utilizzare il costruttore *BySphericalCoordinates* per creare un punto su una sfera, specificato dal raggio della sfera, un primo angolo di rotazione e un secondo angolo di rotazione (specificato in gradi):

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

I punti possono essere utilizzati per costruire la geometria dimensionale maggiore, come le linee. È possibile utilizzare il costruttore *ByStartPointEndPoint* per creare un oggetto Line tra due punti:

![](images/12-1/GeometryBasics_03.png)

```
// create two points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

// construct a line between p1 and p2
l = Line.ByStartPointEndPoint(p1, p2);
```

Analogamente, le linee possono essere utilizzate per creare la geometria di superfici dimensionale maggiore, ad esempio utilizzando il costruttore *Loft*, che utilizza una serie di linee o curve e interpola una superficie tra loro.

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

È possibile utilizzare anche superfici per creare la geometria di solidi dimensionale maggiore, ad esempio mediante l'ispessimento della superficie in base ad una distanza specificata. Molti oggetti hanno funzioni associate, denominate metodi, che consentono al programmatore di eseguire comandi su quel particolare oggetto. I metodi comuni a tutti gli elementi della geometria includono *Translate* e *Rotate*, che rispettivamente traslano (spostano) e ruotano la geometria di un valore specificato. Le superfici hanno un metodo *Thicken*, che acquisisce un singolo input, un numero che specifica il nuovo spessore della superficie.

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

I comandi *Intersection* consentono di estrarre la geometria dimensionale minore da oggetti dimensionali maggiori. Questa geometria dimensionale minore estratta può formare la base per la geometria dimensionale maggiore, in un processo ciclico di creazione, estrazione e ricreazione geometriche. In questo esempio, si utilizzerà il solido generato per creare una superficie e si utilizzerà la superficie per creare una curva.

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

