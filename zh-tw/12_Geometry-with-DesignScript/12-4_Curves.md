# 曲線：內插和控制點

在 Dynamo 中有兩種基本方法可以建立自由形式的曲線：指定一些點，讓 Dynamo 在這些點之間插出一條平滑的曲線，另一個比較低階的方法是指定某種程度的曲線的基本控制點。如果設計師很清楚知道要產生的線條形狀，或如果設計有一些特定的約束讓曲線可以或無法通過，內插的曲線會很好用。透過控制點指定的曲線實際上是一系列的直線段，演算法會將這些線段平滑產生一條最終的曲線形狀。如果是要探索各種不同平滑程度的曲線形狀，或者當曲線段之間的平滑連續性很重要時，透過控制點指定曲線就很好用。

若要建立內插的曲線，只要將一些點傳入 *NurbsCurve.ByPoints* 方法即可。

![](images/12-4/Curves_01.png)

```js
num_pts = 6;

s = Math.Sin(0..360..#num_pts) * 4;

pts = Point.ByCoordinates(1..30..#num_pts, s, 0);

int_curve = NurbsCurve.ByPoints(pts);
```

產生的曲線會分別與每個輸入點相交，從第一個點開始，在最後一個點結束。這裡可以使用一個選擇性的週期性參數，用來建立一條週期性的封閉曲線。Dynamo 會自動填入缺少的線段，因此不需要複製終點 (與起點相同)。

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

NurbsCurve 以幾乎相同的方式產生，輸入點代表直線段的端點，第二個參數稱為程度，指定平滑化曲線的量和類型。* 程度 1 的曲線沒有平滑化；它是一條聚合線。

![](images/12-4/Curves_03.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 1 is a polyline
ctrl_curve = NurbsCurve.ByControlPoints(pts, 1);
```

程度 2 的曲線會平滑化讓曲線相交，而且會與聚合線線段的中點相切：

![](images/12-4/Curves_04.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 2 is smooth
ctrl_curve = NurbsCurve.ByControlPoints(pts, 2);
```

Dynamo 支援最高到程度 20 的 NURBS (非均勻的合理 B 雲形線) 曲線，以下腳本說明增加平滑程度對曲線造型的影響：

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

請注意，至少要比曲線的程度多一個控制點。

透過控制頂點來建構曲線的另一個好處是，能夠在個別的曲線段之間維持相切。只要萃取出最後兩個控制點之間的方向，然後讓後續曲線的前兩個控制點繼續沿著此方向即可。以下範例會建立兩條獨立的 NURBS 曲線，不過這兩條曲線如一條曲線般平滑：

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

* 這是一個非常簡化的 NURBS 曲線幾何圖形說明，如需更準確更詳細的討論，請參閱參考資料中的 Pottmann, et al, 2007。

