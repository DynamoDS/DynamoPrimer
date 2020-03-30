

# Геометрические примитивы

Несмотря на то что в Dynamo можно создавать разнообразные сложные геометрические формы, основу машинного проектирования составляют простые геометрические примитивы. Они либо задают итоговую форму спроектированной конструкции, либо играют роль каркаса, на котором достраивается более сложная геометрия.

Объект CoordinateSystem не является геометрическим объектом в строгом смысле, однако он играет важную роль при построении геометрии. Объект CoordinateSystem позволяет отслеживать как положение, так и геометрические преобразования, такие как поворот, сдвиг и масштабирование.

Для создания объекта CoordinateSystem, центрованного по точке с координатами x = 0, y = 0, z = 0 без поворота, масштабирования или сдвига, достаточно вызвать конструктор Identity:

![](images/12-2/GeometricPrimitives_01.png)

```
// create a CoordinateSystem at x = 0, y = 0, z = 0,
// no rotations, scaling, or sheering transformations

cs = CoordinateSystem.Identity();
```

Объекты CoordinateSystem, к которым были применены геометрические преобразования, в этой главе не рассматриваются, однако стоит упомянуть один конструктор, который позволяет создать систему координат в определенной точке, — *CoordinateSystem.ByOriginVectors*:

![](images/12-2/GeometricPrimitives_02.png)

```
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

Простейшим геометрическим примитивом является Point (точка), обозначающий расположение, у которого отсутствуют измерения, в трехмерном пространстве. Как уже упоминалось ранее, создать точку в определенной системе координат можно несколькими способами: с помощью *Point.ByCoordinates* по заданным координатам X, Y и Z; с помощью *Point.ByCartesianCoordinates* по заданным координатам X, Y и Z в определенной системе координат; с помощью *Point.ByCylindricalCoordinates* на цилиндре, заданном по радиусу, углу поворота и высоте; и, наконец, с помощью *Point.BySphericalCoordinates* на сфере, заданной по радиусу и двум углам поворота.

В этом примере показаны точки, созданные в разных системах координат:

![](images/12-2/GeometricPrimitives_03.png)

```
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

Следующим по сложности примитивом Dynamo является отрезок, который представляет собой бесконечное количество точек, лежащее между двумя конечными точками. Чтобы создать отрезок, можно либо явным образом задать две граничные точки с помощью конструктора *Line.ByStartPointEndPoint*, либо задать начальную точку, направление и длину с помощью конструктора *Line.ByStartPointDirectionLength*.

![](images/12-2/GeometricPrimitives_04.png)

```
p1 = Point.ByCoordinates(-2, -5, -10);
p2 = Point.ByCoordinates(6, 8, 10);

// a line segment between two points
l2pts = Line.ByStartPointEndPoint(p1, p2); 

// a line segment at p1 in direction 1, 1, 1 with 
// length 10
lDir = Line.ByStartPointDirectionLength(p1,
Vector.ByCoordinates(1, 1, 1), 10);
```

В Dynamo доступны объекты, представляющие базовые типы геометрических трехмерных примитивов: кубоиды, для создания которых используется *Cuboid.ByLength*; конусы, создаваемые с помощью *Cone.ByPointsRadius* и *Cone.ByPointsRadii*; цилиндры, получаемые при помощи *Cylinder.ByRadiusHeight*; и сферы, создаваемые с помощью *Sphere.ByCenterPointRadius*.

![](images/12-2/GeometricPrimitives_05.png)

```
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

