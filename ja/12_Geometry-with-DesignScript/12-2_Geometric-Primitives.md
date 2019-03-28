

# ジオメトリ プリミティブ

Dynamo が多様で複雑なジオメトリ形状を作成できる一方で、単純なジオメトリ プリミティブは、任意の計算設計の中核となり、設計された最終形状で直接表現されるか、より複雑なジオメトリを生成するための足場として使用されます。

厳密にはジオメトリの一部ではありませんが、座標系はジオメトリを構築するための重要なツールです。CoordinateSystem オブジェクトは、位置および回転、せん断変形、スケーリングなどのジオメトリ変換の両方を把握します。

x = 0、y = 0、z = 0 の点を中心とし、回転、スケーリング、せん断変形などの変換がない座標系の作成に必要なのは、Identity コンストラクタを呼び出すことだけです。

![](images/12-2/GeometricPrimitives_01.png)

```
// create a CoordinateSystem at x = 0, y = 0, z = 0,
// no rotations, scaling, or sheering transformations

cs = CoordinateSystem.Identity();
```

*CoordinateSystem.ByOriginVectors* という別のコンストラクタを使用すると、次のように特定の点に座標系を作成できますが、ジオメトリ変換された座標系については、この章で説明しません。

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

最も単純なジオメトリ プリミティブは点であり、3 次元空間でゼロ次元の場所を表します。前に説明したように、特定の座標系での点の作成には、いくつかの異なる方法があります。*Point.ByCoordinates* は X、Y、Z 座標を指定して点を作成し、*Point.ByCartesianCoordinates* は特定の座標系で X、Y、Z 座標を指定して点を作成し、*Point.ByCylindricalCoordinates* は半径、回転角度、および高さを使用して円柱上にある点を作成し、*Point.BySphericalCoordinates* は半径と 2 つの回転角度を使用して球上にある点を作成します。

この例は、さまざまな座標系で作成された点を示しています。

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

次に高い次元の Dynamo プリミティブは線分セグメントで、2 つの端点間にある無限の数の点を表します。*Line.ByStartPointEndPoint* コンストラクタを使用して 2 つの境界点を明示的に指定するか、*Line.ByStartPointDirectionLength* で開始点、方向、およびその方向の長さを指定することで、線分を作成できます。

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

Dynamo には、最も基本的なタイプのジオメトリ プリミティブを 3 次元で表すオブジェクトがあります。*Cuboid.ByLengths* で作成される直方体、*Cone.ByPointsRadius* および *Cone.ByPointsRadii* で作成される円錐、*Cylinder.ByRadiusHeight* で作成される円柱、*Sphere.ByCenterPointRadius* で作成される球です。

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

