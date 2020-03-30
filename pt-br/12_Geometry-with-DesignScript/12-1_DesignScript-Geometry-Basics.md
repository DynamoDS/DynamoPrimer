

# Conceitos básicos da geometria DesignScript

O objeto geométrico mais simples da biblioteca de geometria padrão do Dynamo é um ponto. Toda a geometria é criada usando funções especiais chamadas construtores, cada uma delas retorna uma nova instância desse tipo de geometria específico. No Dynamo, os construtores começam com o nome do tipo do objeto, neste caso, Ponto, seguido pelo método de construção. Para criar um ponto tridimensional especificado pelas coordenadas cartesianas x, y e z, use o construtor *ByCoordinates*:

![](images/12-1/GeometryBasics_01.png)

```
// create a point with the following x, y, and z
// coordinates:
x = 10;
y = 2.5;
z = -6;

p = Point.ByCoordinates(x, y, z);
```

Os construtores no Dynamo são normalmente designados com o prefixo “*By*” e a chamada dessas funções retorna um objeto recém-criado desse tipo. Esse objeto recém-criado é armazenado na variável nomeada no lado esquerdo do sinal de igual.

A maioria dos objetos possui construtores diferentes, e podemos usar o construtor *BySphericalCoordinates* para criar um ponto sobre uma esfera, especificado pelo raio da esfera, um primeiro ângulo de rotação, e um segundo ângulo de rotação (especificado em graus):

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

É possível usar os pontos para construir uma geometria dimensional maior, como linhas. Podemos usar o construtor *ByStartPointEndPoint* para criar um objeto de linha entre dois pontos:

![](images/12-1/GeometryBasics_03.png)

```
// create two points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

// construct a line between p1 and p2
l = Line.ByStartPointEndPoint(p1, p2);
```

De forma semelhante, é possível usar as linhas para criar uma geometria de superfície dimensional maior, por exemplo, usando o construtor *Loft*, que usa uma série de linhas ou curvas e interpola uma superfície entre elas.

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

Também é possível usar as superfícies para criar uma geometria sólida dimensional maior, por exemplo, espessando a superfície por uma distância especificada. Muitos objetos possuem funções associadas a eles, chamados métodos, permitindo que o programador execute comandos nesse objeto em particular. Os métodos comuns a todas as porções de geometria incluem *Translate* e *Rotate*, que respectivamente convertem (movem) e rotacionam a geometria por um valor especificado. As superfícies apresentam um método *Thicken*, que recebe uma única entrada, um número que especifica a nova espessura da superfície.

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

Os comandos *Intersection* podem extrair geometria dimensional menor de objetos dimensionais maiores. Essa geometria dimensional menor extraída pode formar a base para uma geometria dimensional maior, em um processo cíclico de criação, extração e recriação geométrica. Neste exemplo, usamos o sólido gerado para criar uma superfície e usamos a superfície para criar uma curva.

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

