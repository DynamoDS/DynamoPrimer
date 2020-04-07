# Surfaces : interpolation, points de contrôle, lissage, révolution

L'analogie bidimensionnelle d'une NurbsCurve est la NurbsSurface. Comme pour la NurbsCurve de forme libre, les NurbsSurfaces peuvent être construites selon deux méthodes de base : en entrant un ensemble de points de base et en utilisant Dynamo pour effectuer une interpolation entre eux, et en spécifiant explicitement les points de contrôle de la surface. De plus, comme les courbes de forme libre, les surfaces interpolées sont utiles lorsqu'un concepteur sait précisément la forme que doit avoir une surface ou lorsqu'une conception requiert que la surface traverse des points de contrainte. D'autre part, les surfaces créées à l'aide de points de contrôle peuvent être plus utiles pour les conceptions explorant différents niveaux de lissage.

Pour créer une surface interpolée, il suffit de générer un ensemble de points à deux dimensions qui se rapproche de la forme d'une surface. L'ensemble doit être rectangulaire, c'est-à-dire non irrégulier. La méthode *NurbsSurface.ByPoints* permet de construire une surface à partir de ces points.

![](images/12-6/Surfaces_01.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

Vous pouvez également créer des NurbsSurfaces de forme libre en spécifiant les points de contrôle sous-jacents d'une surface. Comme les NurbsCurves, les points de contrôle peuvent être considérés comme représentant un maillage quadrilatéral avec des segments droits, qui, en fonction du degré de la surface, est lissé pour obtenir la forme de surface finale. Pour créer une NurbsSurface via des points de contrôle, incluez deux paramètres supplémentaires à *NurbsSurface.ByPoints*, indiquant les degrés des courbes sous-jacentes dans les deux directions de la surface.

![](images/12-6/Surfaces_02.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

Vous pouvez augmenter le degré de la NurbsSurface pour modifier la géométrie de la surface obtenue :

![](images/12-6/Surfaces_03.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

Tout comme les surfaces peuvent être créées en effectuant une interpolation entre un ensemble de points d'entrée, elles peuvent être créées en effectuant une interpolation entre un ensemble de courbes de base. On parle alors de lissage. Une courbe lissée est créée à l'aide du constructeur *Surface.ByLoft*, avec un ensemble de courbes d'entrée comme seul paramètre.

![](images/12-6/Surfaces_04.png)

```js
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

Les surfaces de révolution sont un type de surface supplémentaire créé en balayant une courbe de base autour d'un axe central. Si les surfaces interpolées sont l'analogie bidimensionnelle des courbes interpolées, les surfaces de révolution sont l'analogie bidimensionnelle des cercles et des arcs.

Les surfaces de révolution sont spécifiées par une courbe de base, représentant l'"arête" de la surface, par une origine d'axe, représentant le point de base de la surface, par une direction d'axe, représentant la direction du "noyau" central, par un angle de départ de balayage et par un angle de fin de balayage. Elles sont utilisées comme entrées du constructeur *Surface.Revolve*.

![](images/12-6/Surfaces_05.png)

```js
pts = {};
pts[0] = Point.ByCoordinates(4, 0, 0);
pts[1] = Point.ByCoordinates(3, 0, 1);
pts[2] = Point.ByCoordinates(4, 0, 2);
pts[3] = Point.ByCoordinates(4, 0, 3);
pts[4] = Point.ByCoordinates(4, 0, 4);
pts[5] = Point.ByCoordinates(5, 0, 5);
pts[6] = Point.ByCoordinates(4, 0, 6);
pts[7] = Point.ByCoordinates(4, 0, 7);

crv = NurbsCurve.ByPoints(pts);

axis_origin = Point.ByCoordinates(0, 0, 0);
axis = Vector.ByCoordinates(0, 0, 1);

surf = Surface.ByRevolve(crv, axis_origin, axis, 0,
    360);
```

