

# 幾何參數化

計算設計中經常會使用曲線和曲面做為後續建構幾何圖形的基礎。為了讓這個早期的幾何圖形能夠做為後期幾何圖形的基礎，腳本必須要能夠萃取品質，例如物件整個區域的位置和方位。曲線與曲面兩種都支援這類萃取，這就是所謂的參數化。

一條曲線上所有的點都可以視為在 0 到 1 的範圍內具有唯一的參數。如果我們根據幾個控制點或內插點建立 NurbsCurve，第一個點的參數會是 0，最後一個點的參數會是 1。我們無法事先知道所有中間點的確切參數是多少，這聽起來像是很嚴重的限制，不過透過一系列的公用程式函數，這個狀況會減輕許多。曲面的參數化與曲線類似，但是有兩個分別稱為 u 和 v 的參數，而不是一個。如果我們要建立一個包含以下幾點的曲面：

```
pts = [ [p1, p2, p3],
[p4, p5, p6],
[p7, p8, p9] ];
```

p1 會有 u = 0 v = 0 的參數，p9 會有 u = 1 v = 1 的參數。

決定用來產生曲線的點時，參數化並不是特別好用，它的主要用途是決定由 NurbsCurve 和 NurbsSurface 建構函式所產生的中間點的位置。

曲線 (Curve) 有一個 *PointAtParameter* 方法，採用 0 到 1 之間的一個雙精確度引數，並傳回位於該參數的 Point 物件。例如，此腳本會找出參數 0、.1、.2、.3、.4、.5、.6、.7、.8、.9 和 1 的點 (Point)：

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

同樣的，曲面 (Surface) 有一個 *PointAtParameter* 方法，採用兩個引數：產生的點的 u 和 v 參數。

在萃取曲線和曲面上的各個點時雖然很好用，但是腳本通常需要知道位於某個參數的特定幾何特性，例如曲線或曲面是朝向哪個方向。*CoordinateSystemAtParameter* 方法不只會找出位置，也會找出位於曲線或曲面的參數處有方向的 CoordinateSystem。例如，以下腳本會沿著一個迴轉的曲面 (Surface) 萃取出有方向的 CoordinateSystem，並使用 CoordinateSystem 的方位產生插在曲面法線方向上的線條：

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

如先前所述，參數化在整個曲線或曲面的長度不一定都是均勻的，這表示參數 0.5 不一定會永遠對應到曲線或曲面的中點，0.25 不一定會永遠對應到曲線或曲面四分之一的點。若要避開這種限制，曲線還有另外一組參數化指令，可讓您沿著曲線找出位於特定長度的點。

