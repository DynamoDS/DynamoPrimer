

# 几何参数化

在计算设计中，曲线和曲面经常用作基础脚手架，用于构建后续几何体。为了使早期几何体用作以后几何体的基础，脚本必须能够提取诸如整个对象区域的位置和方向等特性。曲线和曲面均支持此提取，并且称为参数化。

曲线上的所有点可以看作具有从 0 到 1 的唯一参数。如果基于多个控制点或插值点创建 NurbsCurve，则第一个点将具有参数 0，而最后一个点将具有参数 1。不可能提前知道什么是精确参数以及什么是中间点，这听起来像是严重限制，但这可通过一系列实用程序函数来减轻。虽然使用两个参数而不是一个参数（称为 u 和 v），但曲面的参数化与曲线相似。如果我们要使用以下点创建一个曲面：

```
pts = [ [p1, p2, p3],
[p4, p5, p6],
[p7, p8, p9] ];
```

p1 将具有参数 u = 0 v = 0，而 p9 将具有参数 u = 1 v = 1。

在确定用于生成曲线的点时，参数化并非特别有用，其主要用途是确定 NurbsCurve 和 NurbsSurface 构造函数生成中间点时的位置。

曲线具有 *PointAtParameter* 方法，该方法采用 0 到 1 之间的单个双精度参数，并返回该参数处的“点”对象。例如，此脚本会在参数 0、.1、.2、.3、.4、.5、.6、.7、.8、.9 和 1 处查找点：

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

同样，曲面具有 *PointAtParameter* 方法，该方法采用两个参数，即生成点的 u 和 v 参数。

尽管提取曲线和曲面上的各个点非常有用，但脚本通常需要了解参数处的特定几何特征，例如曲线或曲面面对的方向。*CoordinateSystemAtParameter* 方法不仅可以查找位置，还能查找位于曲线或曲面参数处的定向 CoordinateSystem。例如，以下脚本沿旋转曲面提取定向 CoordinateSystems，并使用 CoordinateSystems 的方向生成将法线粘滞到曲面的线：

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

如前所述，参数化在曲线或曲面的长度上并非始终统一，这意味着参数 0.5 并不始终与中点对应，0.25 并不始终对应于曲线或曲面上的 1/4 点。为了解决此限制，曲线还有一组附加的参数化命令，使您可以沿曲线找到特定长度处的点。

