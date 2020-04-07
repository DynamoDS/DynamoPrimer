# Verschiebung, Drehung und andere Transformationen

Bestimmte geometrische Objekte können erstellt werden, indem Sie die x-, y- und z-Koordinaten im dreidimensionalen Raum explizit angeben. Häufiger wird die Geometrie jedoch mithilfe von geometrischen Transformationen auf das Objekt selbst oder auf das zugrunde liegende Koordinatensystem in ihre endgültige Position verschoben.

Die einfachste geometrische Transformation ist eine Verschiebung, bei der ein Objekt um eine bestimmte Anzahl von Einheiten in x-, y- und z-Richtung verschoben wird.

![](images/12-5/Transformations_01.png)

```js
// create a point at x = 1, y = 2, z = 3
p = Point.ByCoordinates(1, 2, 3);

// translate the point 10 units in the x direction,
// -20 in y, and 50 in z
// p2’s new position is x = 11, y = -18, z = 53
p2 = p.Translate(10, -20, 50);
```

Zwar können alle Objekte in Dynamo durch Anhängen der Methode *.Translate* ans Ende des Objektnamens verschoben werden, jedoch erfordern komplexere Transformationen, dass das Objekt von einem zugrunde liegenden Koordinatensystem in ein neues Koordinatensystem überführt wird. Um beispielsweise ein Objekt um 45 Grad um die x-Achse zu drehen, können wir das Objekt aus seinem bisherigen Koordinatensystem ohne Drehung in ein Koordinatensystem überführen, das mit der Methode *.Transform* um 45 Grad um die x-Achse gedreht wurde:

![](images/12-5/Transformations_02.png)

```js
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
    10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Rotate(Point.ByCoordinates(0, 0),
    Vector.ByCoordinates(1,0,0.5), 25);

// get the existing coordinate system of the cube
old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

Zusätzlich zu den Möglichkeiten, Koordinatensysteme zu verschieben und zu drehen, können sie auch skaliert oder geschert erstellt werden. Ein Koordinatensystem kann mit der Methode *.Scale* skaliert werden:

![](images/12-5/Transformations_03.png)

```js
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
    10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Scale(20);

old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

Gescherte Koordinatensysteme werden erstellt, indem nicht-orthogonale Vektoren in den Konstruktor CoordinateSystem eingegeben werden.

![](images/12-5/Transformations_04.png)

```js
new_cs = CoordinateSystem.ByOriginVectors(
    Point.ByCoordinates(0, 0, 0),
	Vector.ByCoordinates(-1, -1, 1),
	Vector.ByCoordinates(-0.4, 0, 0));

old_cs = CoordinateSystem.Identity();

cube = Cuboid.ByLengths(CoordinateSystem.Identity(), 
    5, 5, 5);

new_curves = cube.Transform(old_cs, new_cs);
```

Skalieren und Scheren sind erheblich komplexere geometrische Transformationen als Drehen und Verschieben, daher können sie nicht auf alle Dynamo-Objekte angewendet werden. Die folgende Tabelle gibt Aufschluss darüber, welche Dynamo-Objekte ungleichmäßig skalierte sowie gescherte Koordinatensysteme aufweisen können.

|Klasse|Ungleichmäßig skaliertes Koordinatensystem|Geschertes Koordinatensystem|
| -- | -- | -- |
|Bogen|Nein|Nein|
|NurbsCurve|Ja|Ja|
|NurbsSurface|Nein|Nein|
|Kreis|Nein|Nein|
|Linie|Ja|Ja|
|Ebene|Nein|Nein|
|Punkt|Ja|Ja|
|Polygon|Nein|Nein|
|Volumenkörper|Nein|Nein|
|Oberfläche|Nein|Nein|
|Text|Nein|No|

