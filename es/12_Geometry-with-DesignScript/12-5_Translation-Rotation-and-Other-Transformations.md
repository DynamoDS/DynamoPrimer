# Traslación, rotación y otras transformaciones

Algunos objetos de geometría se pueden crear indicando de forma explícita las coordenadas X, Y y Z en un espacio tridimensional. Sin embargo, con mayor frecuencia, la geometría se desplaza a su posición final mediante transformaciones geométricas en el propio objeto o en su CoordinateSystem subyacente.

La transformación geométrica más sencilla es una traslación, que desplaza un objeto un número determinado de unidades en las direcciones X, Y y Z.

![](images/12-5/Transformations_01.png)

```js
// create a point at x = 1, y = 2, z = 3
p = Point.ByCoordinates(1, 2, 3);

// translate the point 10 units in the x direction,
// -20 in y, and 50 in z
// p2’s new position is x = 11, y = -18, z = 53
p2 = p.Translate(10, -20, 50);
```

Aunque todos los objetos de Dynamo se pueden trasladar mediante la adición del método *.Translate* al final del nombre del objeto, las transformaciones más complejas requieren transformar el objeto de un CoordinateSystem subyacente a un nuevo CoordinateSystem. Por ejemplo, para girar un objeto 45 grados alrededor del eje X, debemos transformar el objeto de su CoordinateSystem existente sin rotación a un CoordinateSystem que se había girado 45 grados alrededor del eje X con el método *.Transform*:

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

Además de trasladarse y rotarse, los objetos CoordinateSystem también se pueden crear cortados o con su escala ajustada. Se puede ajustar la escala de un CoordinateSystem con el método *.Scale*:

![](images/12-5/Transformations_03.png)

```js
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
    10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Scale(20);

old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

Los objetos CoordinateSystem cortados se crean mediante la introducción de vectores no ortogonales en el constructor CoordinateSystem.

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

La escala y el corte son transformaciones geométricas más complejas que la rotación y la traslación, por lo que no todos los objetos de Dynamo pueden someterse a ellas. En la siguiente tabla, se describen los objetos de Dynamo que pueden tener objetos CoordinateSystem con escala no uniforme y cortados.

|Clase|CoordinateSystem con escala no uniforme|CoordinateSystem cortado|
| -- | -- | -- |
|Arco|No|No|
|NurbsCurve|Sí|Sí|
|NurbsSurface|No|No|
|Círculo|No|No|
|Línea|Sí|Sí|
|Plano|No|No|
|Punto|Sí|Sí|
|Polígono|No|No|
|Sólido|No|No|
|Superficie|No|No|
|Texto|No|No|

