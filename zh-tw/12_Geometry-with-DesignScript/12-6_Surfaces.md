

# 曲面：內插、控制點、斷面混成、迴轉

NurbsCurve 的二維類比是 NurbsSurface，就像自由形式的 NurbsCurve，您可以使用兩種基本方法建構 NurbsSurface：一個是輸入一組基準點，讓 Dynamo 在這些點之間內插，另一個是明確指定曲面的控制點。就像自由形式的曲線，如果設計師很清楚知道要產生的曲面形狀，或如果設計需要曲面通過約束點，內插的曲面會很好用。相反地，如果是要探索各種平滑程度的設計，透過控制點建立的曲面就比較有用。

若要建立內插的曲面，只要產生一些近似曲面形狀的二維點即可。這些點必須是矩形，亦即不是鋸齒狀。*NurbsSurface.ByPoints* 方法會從這些點建構一個曲面。

![](images/12-6/Surfaces_01.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

指定曲面的基本控制點，也可以建立自由形式的 NurbsSurface。就像 NurbsCurve 一樣，控制點可以視為是代表一個有直線段的四邊形網面，這會根據曲面的程度，平滑化成最終的曲面形狀。若要使用控制點來建立 NurbsSurface，請在 *NurbsSurface.ByPoints* 中包含另外兩個參數，指出基本曲線在曲面兩個方向的程度。

![](images/12-6/Surfaces_02.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

我們可以增加 NurbsSurface 的程度，來變更產生的曲面幾何圖形：

![](images/12-6/Surfaces_03.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

就像我們可以在一組輸入點之間內插來建立 Surface，也可以在一組基準曲線之間內插來建立 Surface。這稱為斷面混成。使用 *Surface.ByLoft* 建構函式可以建立斷面混成的曲線，一組輸入曲線是唯一的參數。

![](images/12-6/Surfaces_04.png)

```
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

迴轉的曲面是另外一種曲面類型，環繞一個中心軸掃掠一條基準曲線可以建立這種曲面。如果內插曲面是內插曲線的二維類比，則迴轉的曲面就是圓和弧的二維類比。

迴轉的曲面是由基準曲線 (代表曲面的「邊緣」)、軸原點 (曲面的基準點)、軸方向 (中央「核心」方向)、掃掠起始角度和掃掠結束角度指定。這些是用來做為 *Surface.Revolve* 建構函式的輸入。

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

