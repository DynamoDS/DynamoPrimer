

# 交集和修剪

到目前為止，許多範例都將重點放在從較低維度的物件建構較高維度的幾何圖形。交集的方法允許這種較高維度的幾何圖形產生較低維度的物件，而修剪和選取修剪的指令則允許腳本在建立幾何圖形後大幅修改幾何形狀。

Dynamo 針對所有幾何圖形都定義了 *Intersect* 方法，表示理論上，任何幾何圖形部份都可以與其他任何幾何圖形部份相交。某些交集本來就沒有意義，例如牽涉到點 (Point) 的交集，因為產生的物件永遠都是輸入點本身。下表概述物件之間其他可能的交集組合。下表概述各種交集運算的結果：

**Intersect**

|*與：*|Surface|Curve|Plane|Solid|
| -- | -- | -- | -- | -- |
|**Surface**|Curve|Point|Point、Curve|Surface|
|**Curve**|Point|Point|Point|Curve|
|**Plane**|Curve|Point|Curve|Curve|
|**Solid**|Surface|Curve|Curve|Solid|

下面這個非常簡單的範例示範一個平面與一個 NurbsSurface 的交集。交集產生一個 NurbsCurve 陣列，可以像任何其他 NurbsCurve 一樣使用這個陣列。

![](images/12-8/IntersectionAndTrim_01.png)

```
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

*Trim* 方法與 Intersect 方法非常類似之處在於幾乎是針對每個幾何圖形定義。不過，*Trim* 的限制遠比 *Intersect* 還多。

**Trim**
   
|    |*使用：*Point|Curve|Plane|Surface|Solid|
| -- | -- | -- | -- | -- | -- |
|*對：*Curve|是|否|否|否|否|
|Polygon|-|否|是|否|否|
|Surface|-|是|是|是|是|
|Solid|-|-|是|是|是|

請注意，*Trim* 方法一定要有「選取」點，這個點決定要捨棄哪個幾何圖形，要保留哪些部份。Dynamo 會找出並捨棄最接近選取點且經過修剪的幾何圖形。

![](images/12-8/IntersectionAndTrim_02.png)

```
// python_points_5 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_5, 3, 3);

tool_pts = Point.ByCoordinates((-10..20..10)<1>,
(-10..20..10)<2>, 1);

tool = NurbsSurface.ByPoints(tool_pts);

pick_point = Point.ByCoordinates(8, 1, 3);

result = surf.Trim(tool, pick_point);
```

