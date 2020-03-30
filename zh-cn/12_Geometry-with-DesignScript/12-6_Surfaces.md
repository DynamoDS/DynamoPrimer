

# 曲面：内插、控制点、放样、旋转

对 NurbsCurve 的二维模拟是 NurbsSurface，与自由形式的 NurbsCurve 一样，可以使用两种基本方法构建 NurbsSurface：输入一组基点并在它们之间内插 Dynamo，然后明确指定曲面的控制点。当设计师确切知道曲面需要的形状或者设计需要曲面通过约束点时，内插曲面也与自由曲线一样非常有用。另一方面，由控制点创建的曲面对于各种平滑级别的探索式设计更为有用。

要创建插值曲面，只需生成与曲面形状近似的点的二维集合即可。集合必须是矩形，即，不能出现锯齿。*NurbsSurface.ByPoints* 方法通过这些点构造曲面。

![](images/12-6/Surfaces_01.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

也可以通过指定曲面的基本控制点来创建自由形式的 NurbsSurfaces。与 NurbsCurves 一样，控制点可以看作是表示具有直线段的四边形网格，这可以平滑到最终的曲面形式（取决于曲面的阶数）。要按控制点创建 NurbsSurface，请为 *NurbsSurface.ByPoints* 添加两个附加参数，指示基本曲线在曲面两个方向上的角度。

![](images/12-6/Surfaces_02.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

我们可以增加 NurbsSurface 的阶数来更改生成的曲面几何体：

![](images/12-6/Surfaces_03.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

就像可以通过在一组输入点之间内插来创建曲面一样，可以通过在一组基础曲线之间内插来创建曲面。这称为放样。放样曲线是使用 *Surface.ByLoft* 构造函数创建的，其中输入曲线集合作为唯一参数。

![](images/12-6/Surfaces_04.png)

```
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

旋转曲面是通过绕中心轴扫掠基础曲线创建的附加类型的曲面。如果插值曲面是对插值曲线的二维模拟，则旋转曲面是对圆和圆弧的二维模拟。

旋转曲面由基本曲线指定，表示曲面的“边”；轴原点、曲面的基点；轴方向、中心“核心”方向；扫掠开始角；以及扫掠结束角。这些曲面用作 *Surface.Revolve* 构造函数的输入。

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

