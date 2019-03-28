

# ジオメトリのパラメータ化

計算設計では、曲線とサーフェスが、以降のジオメトリの構築の基礎となる足場として頻繁に使用されます。この初期のジオメトリを後のジオメトリの基盤として使用するために、オブジェクトの領域全体での位置や向きなどの属性を、スクリプトによって抽出できる必要があります。曲線とサーフェスの両方によってサポートされるこの抽出はパラメータ化と呼ばれます。

曲線上のすべての点は 0 から 1 までの範囲の一意のパラメータを持つと考えることができます。いくつかの制御点や補間された点に基づいて NURBS 曲線を作成する場合、最初の点のパラメータは 0、最後の点のパラメータは 1 となります。中間点の正確なパラメータを事前に知ることはできません。そのため、一連のユーティリティ関数で緩和されるものの、厳しい制限のように感じられるかもしれません。サーフェスのパラメータ化は曲線の場合と同様ですが、1 つではなく、u と v という 2 つのパラメータがあります。次の点を使用してサーフェスを作成する場合、

```
pts = [ [p1, p2, p3],
[p4, p5, p6],
[p7, p8, p9] ];
```

p1 のパラメータは u = 0 v = 0 で、p9 のパラメータは u = 1 v = 1 です。

パラメータ化は、曲線の生成に使用する点を決定する場合にはそれほど有用ではなく、主に、中間点が NurbsCurve コンストラクタおよび NurbsSurface コンストラクタで生成された場合にその位置を判断するために使用します。

曲線には *PointAtParameter* メソッドがあり、0 から 1 の double 型の引数を 1 つ使用して、そのパラメータの Point オブジェクトを返します。たとえば、このスクリプトでは、パラメータが 0、0.1、0.2、0.3、0.4、0.5、0.6、0.7、0.8、0.9、1 の点を見つけます。

![](images/12-7/GeometricParameterization_01.png)

```
pts = {};
pts[0] = Point.ByCoordinates(4, 0, 0);
pts[1] = Point.ByCoordinates(6, 0, 1);
pts[2] = Point.ByCoordinates(4, 0, 2);
pts[3] = Point.ByCoordinates(4, 0, 3);
pts[4] = Point.ByCoordinates(4, 0, 4);
pts[5] = Point.ByCoordinates(3, 0, 5);
pts[6] = Point.ByCoordinates(4, 0, 6);

crv = NurbsCurve.ByPoints(pts);

pts_at_param = crv.PointAtParameter(0..1..#11);

// draw Lines to help visualize the points
lines = Line.ByStartPointEndPoint(pts_at_param, 
Point.ByCoordinates(4, 6, 0));
```

同様に、サーフェスには *PointAtParameter* メソッドがあり、生成された点の u パラメータと v パラメータという 2 つの引数を使用します。

曲線上およびサーフェス上の個々の点を抽出することは便利ですが、スクリプトには通常、曲線やサーフェスが向いている方向など、パラメータの特定の幾何学的特性を知っている必要があります。*CoordinateSystemAtParameter* メソッドでは、曲線やサーフェスのパラメータでの位置だけでなく、方向が設定された座標系も見つかります。たとえば、次のスクリプトによって、回転サーフェスに沿って方向が設定された座標系が抽出され、その座標系の向きを使用して、サーフェスに垂直な線分が生成されます。

![](images/12-7/GeometricParameterization_02.png)

```
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

surf = Surface.ByRevolve(crv, axis_origin, axis, 90,
140);

cs_array = surf.CoordinateSystemAtParameter(
(0..1..#7)<1>, (0..1..#7)<2>);

def make_line(cs : CoordinateSystem) { 
lines_start = cs.Origin;
lines_end = cs.Origin.Translate(cs.ZAxis, -0.75);

return = Line.ByStartPointEndPoint(lines_start, 
lines_end);
}

lines = make_line(Flatten(cs_array));
```

前に述べたように、曲線やサーフェスの長さ全体で常に均一にパラメータ化されるわけではありません。つまり、0.5 のパラメータが常に中点に対応したり、0.25 が常に曲線またはサーフェスの 1/4 の点に対応するわけではありません。この制限を回避するため、曲線にはパラメータ化のコマンドの追加のセットがあり、これによって、曲線に沿った特定の長さにある点を検索できます。

