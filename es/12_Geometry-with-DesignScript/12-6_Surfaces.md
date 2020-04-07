# Superficies: interpoladas, puntos de control, solevación y revolución

El componente análogo bidimensional a una NurbsCurve es la NurbsSurface y, al igual que la NurbsCurve de forma libre, las NurbsSurfaces se pueden crear con dos métodos básicos: la introducción de un conjunto de puntos base y la interpolación entre ellos por parte de Dynamo, y la especificación explícita de los puntos de control de la superficie. Al igual que las curvas de forma libre, las superficies interpoladas son útiles cuando un diseñador conoce con precisión la forma que debe adoptar una superficie o si un diseño requiere que la superficie pase por los puntos de restricción. Por otra parte, las superficies creadas mediante puntos de control pueden ser más útiles para los diseños exploratorios a través de varios niveles de suavizado.

Para crear una superficie interpolada, simplemente genere una colección bidimensional de puntos que se aproxime a la forma de una superficie. La colección debe ser rectangular, es decir, no irregular. El método *NurbsSurface.ByPoints* crea una superficie a partir de estos puntos.

![](images/12-6/Surfaces_01.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

También se pueden crear NurbsSurfaces de forma libre mediante la especificación de los puntos de control subyacentes de una superficie. Al igual que las NurbsCurves, se puede considerar que los puntos de control representan una malla cuadrilateral con segmentos rectos que, en función del grado de la superficie, se suaviza hasta alcanzar la forma de superficie final. Para crear una NurbsSurface mediante puntos de control, incluya dos parámetros adicionales en *NurbsSurface.ByPoints*, que indiquen los grados de las curvas subyacentes en ambas direcciones de la superficie.

![](images/12-6/Surfaces_02.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

Podemos aumentar el grado de la NurbsSurface para cambiar la geometría de superficie resultante:

![](images/12-6/Surfaces_03.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

Del mismo modo que las superficies se pueden crear mediante la interpolación entre un conjunto de puntos de entrada, estas se pueden crear mediante la interpolación entre un conjunto de curvas base. Esta operación se denomina solevado. Las curvas solevadas se crean mediante el constructor *Surface.ByLoft* con una colección de curvas de entrada como único parámetro.

![](images/12-6/Surfaces_04.png)

```js
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

Las superficies de revolución son un tipo adicional de superficie creada mediante el barrido de una curva base alrededor de un eje central. Si las superficies interpoladas son el elemento análogo bidimensional a las curvas interpoladas, las superficies de revolución son el elemento análogo bidimensional a los círculos y los arcos.

Las superficies de revolución se especifican mediante una curva base que representa la "arista" de la superficie; un origen de eje, el punto base de la superficie; una dirección de eje, la dirección central del "núcleo", y un ángulo inicial y final de barrido. Se utilizan como entrada en el constructor *Surface.Revolve*.

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

