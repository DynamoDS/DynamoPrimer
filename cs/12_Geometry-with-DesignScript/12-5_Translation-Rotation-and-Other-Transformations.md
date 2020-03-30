

# Posunutí, otočení a další transformace

Určité geometrické objekty je možné vytvářet přímým zadáním souřadnic X, Y a Z v trojrozměrném prostoru. Geometrie se však častěji do konečné pozice přesunují pomocí geometrických transformací samotného objektu nebo souvisejícího objektu CoordinateSystem.

Nejjednodušší geometrickou transformací je posunutí, čímž se objekt posune o zadaný počet jednotek ve směru X, Y a Z.

![](images/12-5/Transformations_01.png)

```
// create a point at x = 1, y = 2, z = 3
p = Point.ByCoordinates(1, 2, 3);

// translate the point 10 units in the x direction,
// -20 in y, and 50 in z
// p2’s new position is x = 11, y = -18, z = 53
p2 = p.Translate(10, -20, 50);
```

Ačkoliv lze všechny objekty v aplikaci Dynamo posunout připojením metody *.Translate* na konec názvu objektu, pro složitější transformace je nutné provést transformaci souvisejícího objektu CoordinateSystem na nový. Například pro otočení objektu o 45 stupňů okolo osy Z je nutné pomocí metody *.Transform* provést transformaci existujícího objektu CoordinateSystem bez otočení na objekt CoordinateSystem s otočením 45 stupňů kolem osy X:

![](images/12-5/Transformations_02.png)

```
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Rotate(Point.ByCoordinates(0, 0),
Vector.ByCoordinates(1,0,0.5), 25);

// get the existing coordinate system of the cube
old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

Kromě posunutí a otočení lze u objektů CoordinateSystem také měnit měřítko nebo provádět kolmý posun. Měřítko objektu CoordinateSystem lze změnit metodou *.Scale*:

![](images/12-5/Transformations_03.png)

```
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Scale(20);

old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

Objekty CoordinateSystem s kolmým posunem lze vytvořit zadáním neortogonálních vektorů jako vstup konstruktoru CoordinateSystem.

![](images/12-5/Transformations_04.png)

```
new_cs = CoordinateSystem.ByOriginVectors(
Point.ByCoordinates(0, 0, 0),
Vector.ByCoordinates(-1, -1, 1),
Vector.ByCoordinates(-0.4, 0, 0));

old_cs = CoordinateSystem.Identity();

cube = Cuboid.ByLengths(CoordinateSystem.Identity(), 
5, 5, 5);

new_curves = cube.Transform(old_cs, new_cs);
```

Změny měřítka a kolmý posun jsou mnohem složitější geometrické transformace než otočení nebo posunutí, proto je na některé objekty aplikace Dynamo nemusí být možné použít. Následující tabulka uvádí, u kterých objektů aplikace Dynamo lze provést nerovnoměrnou změnu měřítka nebo kolmý posun u jejich objektů CoordinateSystem.

|Třída|CoordinateSystem s nerovnoměrně změněným měřítkem|CoordinateSystem s kolmým posunem|
| -- | -- | -- |
|Oblouk|Ne|Ne|
|Křivka Nurbs|Ano|Ano|
|Plocha Nurbs|Ne|Ne|
|Kružnice|Ne|Ne|
|Úsečka|Ano|Ano|
|Rovina|Ne|Ne|
|Bod|Ano|Ano|
|Polygon|Ne|Ne|
|Těleso|Ne|Ne|
|Plocha|Ne|Ne|
|Text|Ne|Ne|

