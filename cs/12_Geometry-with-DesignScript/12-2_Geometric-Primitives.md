# Geometrická primitiva

Aplikace Dynamo sice umožňuje vytvářet mnoho složitých geometrických útvarů, ale jednoduchá geometrická primitiva tvoří základ jakéhokoliv výpočetního návrhu: mohou být použita přímo v konečném návrhu nebo mohou sloužit jako základ pro generování složitějších geometrií.

Ačkoliv se nejedná o geometrii, objekt CoordinateSystem je důležitým nástrojem pro jejich tvorbu. V objektu CoordinateSystem je uložena pozice a geometrické transformace, například otočení, kolmý posun a změna měřítka.

Chcete-li vytvořit objekt CoordinateSystem na souřadnicích X = 0, Y = 0, Z = 0 bez otočení, změny měřítka nebo kolmého posunu, jednoduše zavolejte konstruktor Identity:

![](images/12-2/GeometricPrimitives_01.png)

```js
// create a CoordinateSystem at x = 0, y = 0, z = 0,
// no rotations, scaling, or sheering transformations

cs = CoordinateSystem.Identity();
```

Objekty CoordinateSystems s geometrickými transformacemi jsou mimo rozsah této kapitoly, nicméně souřadnicový systém v zadaném bodě je možné vytvořit pomocí konstruktoru *CoordinateSystem.ByOriginVectors*:

![](images/12-2/GeometricPrimitives_02.png)

```js
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

Nejjednodušším geometrickým primitivem je bod, který představuje bezrozměrné místo v trojrozměrném prostoru. Jak již bylo zmíněno, bod v určitém souřadnicovém systému lze vytvořit několika způsoby: Konstruktor *Point.ByCoordinates* vytvoří bod se zadanými souřadnicemi X, Y a Z, konstruktor *Point.ByCartesianCoordinates* vytvoří bod se zadanými souřadnicemi X, Y a Z v určitém souřadnicovém systému, konstruktor *Point.ByCylindricalCoordinates* vytvoří bod ležící na válci s poloměrem, úhlem otočení a výškou a konstruktor *Point.BySphericalCoordinates* vytvoří bod ležící na kouli s poloměrem a dvěma úhly otočení.

Tento příklad ukazuje body vytvořené v různých souřadnicových systémech:

![](images/12-2/GeometricPrimitives_03.png)

```js
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

Primitivum s vyšším rozměrem v aplikaci Dynamo je úsečka, která představuje nekonečné množství bodů mezi dvěma koncovými body. Čáry lze vytvořit explicitním zadáním dvou okrajových bodů do konstruktoru *Line.ByStartPointEndPoint* nebo zadáním počátečního bodu, směru a délky v tomto směru do konstruktoru *Line.ByStartPointDirectionLength*.

![](images/12-2/GeometricPrimitives_04.png)

```js
p1 = Point.ByCoordinates(-2, -5, -10);
p2 = Point.ByCoordinates(6, 8, 10);

// a line segment between two points
l2pts = Line.ByStartPointEndPoint(p1, p2); 

// a line segment at p1 in direction 1, 1, 1 with 
// length 10
lDir = Line.ByStartPointDirectionLength(p1,
    Vector.ByCoordinates(1, 1, 1), 10);
```

Aplikace Dynamo nabízí objekty reprezentující nejzákladnější trojrozměrná geometrická primitiva: kvádry vytvářené konstruktorem *Cuboid.ByLengths*, kužely vytvářené konstruktory *Cone.ByPointsRadius* a *Cone.ByPointsRadii*, válce vytvářené konstruktorem *Cylinder.ByRadiusHeight* a koule vytvářené konstruktorem *Sphere.ByCenterPointRadius*.

![](images/12-2/GeometricPrimitives_05.png)

```js
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

