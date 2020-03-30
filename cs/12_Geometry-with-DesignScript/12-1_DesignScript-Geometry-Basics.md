

# Základy geometrií v jazyku DesignScript

Nejjednodušším geometrickým objektem v knihovně standardních geometrií aplikace Dynamo je bod. Všechny geometrie se vytvářejí pomocí speciálních funkcí nazvaných konstruktory, které vrací nové instance geometrií daného typu. V aplikaci Dynamo konstruktory začínají názvem typu objektu, v tomto případě Point, a dále obsahují metodu jejich tvorby. Chcete-li vytvořit trojrozměrný bod určený kartézskými souřadnicemi X, Y a Z, použijte konstruktor *ByCoordinates*:

![](images/12-1/GeometryBasics_01.png)

```
// create a point with the following x, y, and z
// coordinates:
x = 10;
y = 2.5;
z = -6;

p = Point.ByCoordinates(x, y, z);
```

Konstruktory aplikace Dynamo obvykle obsahují předponu „*By*“ a po spuštění vrací nově vytvořený objekt daného typu. Tento nově vytvořený objekt se uloží do proměnné, jejíž název se nachází na levé straně rovnítka.

Většina objektů má mnoho různých konstruktorů, pomocí konstruktoru *BySphericalCoordinates* je možné vytvořit bod ležící na kouli, je nutné zadat poloměr koule, první úhel otáčení a druhý úhel otáčení (ve stupních):

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

Body je možné použít k vytvoření geometrie vyššího rozměru, například čáry. Pomocí konstruktoru *ByStartPointEndPoint* je možné vytvořit mezi dvěma body objekt čáry:

![](images/12-1/GeometryBasics_03.png)

```
// create two points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

// construct a line between p1 and p2
l = Line.ByStartPointEndPoint(p1, p2);
```

Podobně lze čáry použít k tvorbě geometrie vyššího rozměru (plocha), například pomocí konstruktoru *Loft*, který jako vstup přijímá řadu čar nebo křivek a interpoluje mezi nimi plochu.

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

Plochy lze použít k vytvoření geometrie vyššího rozměru (těleso), například zesílením plochy o určitou vzdálenost. Ke spoustě objektů jsou připojeny funkcí, kterým se říká metody, a které umožňují nad daným objektem spouštět příkazy. Všechny geometrie mají společné metody *Translate* a *Rotate*, které posunou respektive otočí geometrii o zadanou hodnotu. Plochy mají metodu *Thicken*, která jako vstup přijímá novou tloušťku plochy.

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

Příkazy pro *průsečík* umožňují získat geometrii nižšího rozměru z objektů vyššího rozměru. Extrahované geometrie nižšího rozměru lze použít jako základ geometrií vyššího rozměru, čímž vzniká cyklický pracovní postup tvorby, extrahování a opakované tvorby geometrií. V tomto příkladu pomocí vygenerovaného tělesa vytvoříme plochu a plochu použijeme k vytvoření křivky.

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

