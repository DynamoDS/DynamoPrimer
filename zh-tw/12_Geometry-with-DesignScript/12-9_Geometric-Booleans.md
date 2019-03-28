

# 幾何布林運算

*Intersect*、*Trim* 和 *SelectTrim* 主要是用在較低維度的幾何圖形 (例如點、曲線和曲面)。而立體幾何圖形則有額外的一組方法，可以透過類似 *Trim* 的方法減去材料，然後將元素合併在一起形成較大的元素，在建構幾何圖形後修改形狀。

*Union* 方法使用兩個立體物件，從兩個物件都涵蓋到的空間建立單一立體物件。物件之間重疊的空間會合併成最終的形狀。此範例將一個圓球和一個立方體合併成一個單一的立體圓球-立方塊造型：

![](images/12-9/GeometricBooleans_01.png)

```
s1 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(4, 0,
0), 6);

combined = s1.Union(s2);
```

*Difference* 方法與 *Trim* 類似，從基準實體減去輸入工具實體的內容。在此範例中，我們從一個圓球切掉一個小凹口：

![](images/12-9/GeometricBooleans_02.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Difference(tool);
```

*Intersect* 方法傳回兩個實體輸入之間重疊的實體。在以下範例中，*Difference* 已變更為 *Intersect*，產生的實體是一開始切掉不見的空洞：

![](images/12-9/GeometricBooleans_03.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Intersect(tool);
```

