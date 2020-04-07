# 曲线：内插和控制点

在 Dynamo 中，有两种基本方法可以创建自由形式的曲线：指定点集合，并使 Dynamo 在它们之间内插平滑曲线，或者通过指定一定阶数曲线的基本控制点的更低级别方法。当设计师确切知道线应采用的形状，或者设计是否具有特定约束来控制曲线可以和不能通过的位置时，插值曲线非常有用。通过控制点指定的曲线本质上是一系列直线线段，算法会将其平滑为最终曲线形式。对于通过不同平滑度探索曲线形状或在需要曲线段之间的平滑连续性时，通过控制点指定曲线非常有用。

若要创建插值曲线，只需将点集合传递到 *NurbsCurve.ByPoints* 方法即可。

![](images/12-4/Curves_01.png)

```js
num_pts = 6;

s = Math.Sin(0..360..#num_pts) * 4;

pts = Point.ByCoordinates(1..30..#num_pts, s, 0);

int_curve = NurbsCurve.ByPoints(pts);
```

生成的曲线与每个输入点相交，分别在集合中的第一个点和最后一个点开始和结束。可以使用可选的周期性参数创建闭合的周期性曲线。Dynamo 将自动填充缺失的段，因此不需要重复的端点（与起点相同）。

![](images/12-4/Curves_02.png)

```js
pts = Point.ByCoordinates(Math.Cos(0..350..#10),
    Math.Sin(0..350..#10), 0);

// create an closed curve
crv = NurbsCurve.ByPoints(pts, true);

// the same curve, if left open:
crv2 = NurbsCurve.ByPoints(pts.Translate(5, 0, 0),
    false);
```

NurbsCurves 的生成方式几乎相同，输入点表示直线段的端点，第二个参数用于指定曲线经历的平滑量和类型（称为阶数）。* 阶数为 1 的曲线没有平滑；它是多段线。

![](images/12-4/Curves_03.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 1 is a polyline
ctrl_curve = NurbsCurve.ByControlPoints(pts, 1);
```urve = NurbsCurve.ByControlPoints(pts, 1);
```

对阶数为 2 的曲线进行平滑处理，使曲线相交并与多段线线段的中点相切：

![](images/12-4/Curves_04.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 2 is smooth
ctrl_curve = NurbsCurve.ByControlPoints(pts, 2);
```

Dynamo 支持最多 20 阶的 NURBS（非均匀有理 B 样条曲线）曲线，以下脚本说明了增加平滑级别对曲线形状的影响：

![](images/12-4/Curves_05.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

def create_curve(pts : Point[], degree : int) 
{
	return = NurbsCurve.ByControlPoints(pts,
        degree);
}

ctrl_crvs = create_curve(pts, 1..11);
```

请注意，必须至少比曲线阶数多一个控制点。

通过控制点构建曲线的另一个好处是能够保持各个曲线段之间的相切。通过提取最后两个控制点之间的方向，并继续使用以下曲线的前两个控制点来完成此操作。下例创建两条单独的 NURBS 曲线，它们仍然像一条曲线一样平滑：

![](images/12-4/Curves_06.png)

```js
pts_1 = {};

pts_1[0] = Point.ByCoordinates(0, 0, 0);
pts_1[1] = Point.ByCoordinates(1, 1, 0);
pts_1[2] = Point.ByCoordinates(5, 0.2, 0);
pts_1[3] = Point.ByCoordinates(9, -3, 0);
pts_1[4] = Point.ByCoordinates(11, 2, 0);

crv_1 = NurbsCurve.ByControlPoints(pts_1, 3);

pts_2 = {};

pts_2[0] = pts_1[4];
end_dir = pts_1[4].Subtract(pts_1[3].AsVector());

pts_2[1] = Point.ByCoordinates(pts_2[0].X + end_dir.X,
    pts_2[0].Y + end_dir.Y, pts_2[0].Z + end_dir.Z);

pts_2[2] = Point.ByCoordinates(15, 1, 0);
pts_2[3] = Point.ByCoordinates(18, -2, 0);
pts_2[4] = Point.ByCoordinates(21, 0.5, 0);

crv_2 = NurbsCurve.ByControlPoints(pts_2, 3);
```

* 这是对 NURBS 曲线几何体的简单描述，对于更准确、更详细的讨论，请参见参考文献中的 Pottmann, et al, 2007。

