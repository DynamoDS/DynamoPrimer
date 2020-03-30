

# Operaciones booleanas geométricas

Los métodos *Intersect*, *Trim* y *SelectTrim* se utilizan principalmente en geometrías dimensionales inferiores como puntos, curvas y superficies. Por otra parte, la geometría sólida cuenta con un conjunto adicional de métodos para modificar la forma después de su creación, tanto sustrayendo material de forma similar a *Trim* como combinando elementos para formar un todo mayor.

El método *Union* utiliza dos objetos sólidos para crear un único objeto sólido a partir del espacio cubierto por ambos objetos. El espacio solapado entre los objetos se combina en la forma final. Este ejemplo combina una esfera y un cubo en una forma de esfera-cubo sólida:

![](images/12-9/GeometricBooleans_01.png)

```
s1 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(4, 0,
0), 6);

combined = s1.Union(s2);
```

El método *Difference*, al igual que *Trim*, resta el contenido del sólido de la herramienta de entrada del sólido base. En este ejemplo, se extrae una pequeña hendidura de una esfera:

![](images/12-9/GeometricBooleans_02.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Difference(tool);
```

El método *Intersect* devuelve el sólido solapado entre dos entradas sólidas. En el siguiente ejemplo, *Difference* se ha cambiado a *Intersect* y el sólido resultante es el vacío que falta que se ha eliminado inicialmente:

![](images/12-9/GeometricBooleans_03.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Intersect(tool);
```

