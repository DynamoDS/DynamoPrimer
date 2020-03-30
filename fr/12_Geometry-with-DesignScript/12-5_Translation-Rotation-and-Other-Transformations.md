

# Conversion, rotation et autres transformations

Certains objets de géométrie peuvent être créés en spécifiant explicitement les coordonnées X, Y et Z dans un espace tridimensionnel. Plus souvent, cependant, la géométrie est placée dans sa position finale à l'aide de transformations géométriques sur l'objet lui-même ou sur son CoordinateSystem sous-jacent.

La transformation géométrique la plus simple est une conversion qui permet de déplacer un objet d'un nombre donné d'unités dans les directions X, Y et Z.

![](images/12-5/Transformations_01.png)

```
// create a point at x = 1, y = 2, z = 3
p = Point.ByCoordinates(1, 2, 3);

// translate the point 10 units in the x direction,
// -20 in y, and 50 in z
// p2’s new position is x = 11, y = -18, z = 53
p2 = p.Translate(10, -20, 50);
```

Bien que tous les objets dans Dynamo puissent être convertis grâce à l'ajout de la méthode *.Translate* à la fin du nom de l'objet, des transformations plus complexes requièrent la transformation de l'objet d'un CoordinateSystem sous-jacent en un nouveau CoordinateSystem. Par exemple, pour faire pivoter un objet de 45 degrés autour de l'axe X, transformez l'objet de son CoordinateSystem existant sans rotation en un CoordinateSystem qui a été pivoté de 45 degrés autour de l'axe X à l'aide de la méthode *.Transform* :

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

Outre la conversion et la rotation, les CoordinateSystems peuvent également être créés à l'échelle ou coupés. Un CoordinateSystem peut être mis à l'échelle à l'aide de la méthode *.Scale* :

![](images/12-5/Transformations_03.png)

```
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Scale(20);

old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

Les CoordinateSystems coupés sont créés grâce à l'insertion de vecteurs non orthogonaux dans le constructeur CoordinateSystem.

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

Étant donné que la mise à l'échelle et le cisaillement sont des transformations géométriques plus complexes que la rotation et la conversion, les objets Dynamo ne peuvent pas tous faire l'objet de ces transformations. Le tableau suivant répertorie les objets Dynamo qui peuvent avoir un CoordinateSystem mis à l'échelle de façon non uniforme, et ceux qui peuvent avoir un CoordinateSystem coupé.

|Classe|CoordinateSystem non uniformément mis à l'échelle|CoordinateSystem coupé|
| -- | -- | -- |
|Arc|Non|Non|
|NurbsCurve|Oui|Oui|
|NurbsSurface|Non|Non|
|Cercle|Non|Non|
|Ligne|Oui|Oui|
|Plan|Non|Non|
|Point|Oui|Oui|
|Objet Polygon|Non|Non|
|Solide|Non|Non|
|Surface|Non|Non|
|Texte|Non|Non|

