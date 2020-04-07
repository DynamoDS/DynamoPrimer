# 相交和修剪

目前，许多示例都关注从较少维的对象构造较多维的几何体。相交方法允许此较多维的几何体生成较少维的对象，而修剪和选择修剪命令允许脚本在创建几何形状后对其进行大量修改。

*Intersect* 方法在 Dynamo 的所有几何体上定义，这意味着理论上，任何几何体都可以与任何其他几何体相交。某些交点自然没有意义（例如涉及点的交点），因为结果对象将始终是输入点本身。下图概述了对象之间可能存在的交点组合。下图概述了各种相交操作的结果：

**相交**

|*使用:*|曲面|曲线|平面|实体|
| -- | -- | -- | -- | -- |
|**曲面**|曲线|点|点，曲线|曲面|
|**曲线**|点|点|点|曲线|
|**平面**|曲线|点|曲线|曲线|
|**实体**|曲面|曲线|曲线|实体|

下面非常简单的示例演示了平面与 NurbsSurface 的交集。该交集将生成 NurbsCurve 数组，可像使用任何其他 NurbsCurve 一样使用。

![](images/12-8/IntersectionAndTrim_01.png)

```js
// python_points_5 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_5, 3, 3);

WCS = CoordinateSystem.Identity();

pl = Plane.ByOriginNormal(WCS.Origin.Translate(0, 0,
    0.5), WCS.ZAxis);

// intersect surface, generating three closed curves
crvs = surf.Intersect(pl);

crvs_moved = crvs.Translate(0, 0, 10);
```

*Trim* 方法与“Intersect”方法非常相似，因为几乎为每个几何体都定义了该方法。但是，与 *Intersect* 相比，*Trim* 存在更多限制。

**修剪**

|           |*使用：*点|曲线|平面|曲面|实体|
| -- | -- | -- | -- | -- | -- |
|*位置：*曲线|是|否|否|否|否|
|多边形|-|否|是|否|否|
|曲面|-|是|是|是|是|
|实体|-|-|是|是|是|

关于 *Trim* 方法需要注意的是，需要“选择”点、确定要丢弃哪些几何体的点以及要保留哪些部分。Dynamo 将查找并放弃与选择点最近的修剪的几何体。

![](images/12-8/IntersectionAndTrim_02.png)

```js
// python_points_5 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_5, 3, 3);

tool_pts = Point.ByCoordinates((-10..20..10)<1>,
    (-10..20..10)<2>, 1);

tool = NurbsSurface.ByPoints(tool_pts);

pick_point = Point.ByCoordinates(8, 1, 3);

result = surf.Trim(tool, pick_point);
```

