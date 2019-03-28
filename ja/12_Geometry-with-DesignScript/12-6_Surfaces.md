

# サーフェス: 補間、制御点、ロフト、回転

2 次元のアナログから NURBS 曲線への変換が NURBS 曲面であり、フリーフォーム NURBS 曲線のように、2 つの基本的な方法で NURBS 曲面を構築できます。その方法とは、基点のセットを入力して Dynamo によってその間を補間する方法と、サーフェスの制御点を明示的に指定する方法です。また、フリーフォーム曲線のように、補間によるサーフェスは、サーフェスが取るべき形状を設計者が正確に認識している場合や、サーフェスが拘束点を通過することが必要な設計の場合に便利です。一方、制御点によって作成されたサーフェスは、さまざまなスムージング レベルで実験的な設計を行う場合に便利です。

補間されたサーフェスを作成するには、サーフェスの形状を近似する 2 次元の点の集合を生成するだけです。集合は、長方形であることが必要です。つまり、ギザギザではありません。*NurbsSurface.ByPoints* メソッドで、これらの点からサーフェスが構築されます。

![](images/12-6/Surfaces_01.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

フリーフォーム NURBS 曲面も、サーフェスの基礎となる制御点を指定することで作成できます。NURBS 曲線のように、制御点は直線セグメントによる四角形のメッシュを表すと考えることができ、このメッシュはサーフェスの次数に応じてスムージングされて最終的なサーフェス形状となります。NURBS 曲面を制御点によって作成するには、2 つのパラメータを *NurbsSurface.ByPoints* に追加して、サーフェスの両方向での基礎となる曲線の次数を示します。

![](images/12-6/Surfaces_02.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

NURBS 曲面の次数を増やして、結果として得られるサーフェス ジオメトリを変更できます。

![](images/12-6/Surfaces_03.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

サーフェスは、一連の入力された点の間を補間することで作成できるのと同様に、一連のベースとなる曲線の間を補間することで作成できます。これをロフトと呼びます。ロフトによるサーフェスは、*Surface.ByLoft* コンストラクタを使用して、入力された曲線の集合のみをパラメータとして作成されます。

![](images/12-6/Surfaces_04.png)

```
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

回転のサーフェスは別のタイプのサーフェスで、中心軸を中心にベースとなる曲線をスイープして作成されます。補間されたサーフェスが 2 次元のアナログから補間された曲線への変換だとすると、回転のサーフェスは、2 次元のアナログから円や円弧への変換です。

回転のサーフェスは、サーフェスの「エッジ」を表すベースとなる曲線、サーフェスの基点となる軸の原点、中心の「核」の方向となる軸方向、スイープの開始角度、およびスイープの終了角度によって指定されます。これらは *Surface.Revolve* コンストラクタへの入力として使用されます。

![](images/12-6/Surfaces_05.png)

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

surf = Surface.ByRevolve(crv, axis_origin, axis, 0,
360);
```

