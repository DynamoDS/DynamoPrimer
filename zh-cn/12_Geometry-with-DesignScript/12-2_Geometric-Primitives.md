# 几何基本体

尽管 Dynamo 能够创建各种复杂的几何形状，但简单的几何基本体构成任何计算设计的支柱：直接以最终设计形式表示或用作生成更复杂几何体的脚手架。

虽然不是严格的一块几何体，但 CoordinateSystem 是构建几何体的重要工具。CoordinateSystem 对象可记录位置和几何变换（如旋转、调节和缩放）。

以 x = 0、y = 0、z = 0 的点为中心创建 CoordinateSystem，不进行旋转、缩放或调节变换，只需调用 Identity 构造函数：

![](images/12-2/GeometricPrimitives_01.png)

```js
// create a CoordinateSystem at x = 0, y = 0, z = 0,
// no rotations, scaling, or sheering transformations

cs = CoordinateSystem.Identity();
```

具有几何变换的 CoordinateSystems 超出本章的范围，但另一个构造函数允许您在特定点 *CoordinateSystem.ByOriginVectors* 创建坐标系：

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

最简单的几何基本体是一个点，表示三维空间中的零维位置。如前所述，可以通过几种不同的方式在特定坐标系中创建点：*Point.ByCoordinates* 使用指定的 x、y 和 z 坐标创建点；*Point.ByCartesianCoordinates* 使用指定的 x、y 和 z 坐标在特定坐标系中创建点；*Point.ByCylindricalCoordinates* 使用半径、旋转角度和高度创建位于圆柱体上的点；*Point.BySphericalCoordinates* 使用半径和两个旋转角度创建位于球体上的点。

本例说明在各种坐标系中创建的点：

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

下一个更多维的 Dynamo 基本体是一条线段，表示两个端点之间的无限多个点。可以通过构造函数 *Line.ByStartPointEndPoint* 明确指定两个边界点，或者通过 *Line.ByStartPointDirectionLength* 在该方向指定起点、方向和长度来创建直线。

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

Dynamo 有表示三维中大多数基本类型的几何基本体的对象：立方体，使用 *Cuboid.ByLengths* 创建；圆锥体，使用 *Cone.ByPointsRadius* 和 *Cone.ByPointsRadius* 创建；圆柱体，使用 *Cylinder.ByRadiusHeight* 创建；球体，使用 *Sphere.ByCenterPointRadius* 创建。

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

