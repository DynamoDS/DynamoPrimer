# 曲線: 補間および制御点

Dynamo でのフリーフォーム曲線の作成には、基本的な方法が 2 つあります。点の集合を指定して、Dynamo によってその間に滑らかな曲線を補間する方法と、特定の次数の曲線の基礎となる制御点を指定する、より低レベルのメソッドです。補間による曲線は、線分が取るべき形状を設計者が正確に認識している場合や、曲線が通過できる場所と通過できない場所に対する特定の拘束が設計に含まれている場合に便利です。制御点を介して指定された曲線は、本質的には一連の直線セグメントであり、アルゴリズムによってスムージングされて最終的な曲線形状となります。制御点を介して曲線を指定することは、さまざまな次数のスムージングで曲線形状を検討する場合や、曲線セグメント間でスムーズな連続性が必要な場合に便利です。

補間された曲線を作成するには、点の集合を *NurbsCurve.ByPoints* メソッドに渡すだけです。

![](images/12-4/Curves_01.png)

```js
num_pts = 6;

s = Math.Sin(0..360..#num_pts) * 4;

pts = Point.ByCoordinates(1..30..#num_pts, s, 0);

int_curve = NurbsCurve.ByPoints(pts);
```

生成された曲線は入力された点それぞれと交差し、集合の最初の点から始まり、最後の点で終わります。オプションの周期パラメータを使用すると、閉じた周期的な曲線を作成できます。Dynamo では欠落しているセグメントは自動的に入力されるので、重複する終了点(開始点と同一)は必要ありません。

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

NURBS 曲線はほぼ同じ方法で生成され、入力された点は直線セグメントの終了点を表し、次数と呼ばれる 2 番目のパラメータによって、曲線のスムージングの量とタイプが指定されます。* 次数が 1 の曲線はスムーズな部分がなく、ポリラインとなります。

![](images/12-4/Curves_03.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 1 is a polyline
ctrl_curve = NurbsCurve.ByControlPoints(pts, 1);
```

次数が 2 の曲線は、曲線が交差し、ポリライン セグメントの中点と正接するようにスムージングされます。

![](images/12-4/Curves_04.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 2 is smooth
ctrl_curve = NurbsCurve.ByControlPoints(pts, 2);
```

Dynamo では、次数 20 までの NURBS (Non-Uniform Rational B Spline、非一様有理 B スプライン)曲線がサポートされます。次のスクリプトは、スムージング レベルの増加が曲線の形状に与える効果を示します。

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

制御点の数は、曲線の次数よりも少なくとも 1 つ多くする必要があります。

制御頂点による曲線の構築には、個々の曲線セグメント間で正接状態を維持できるという利点もあります。最後の 2 つの制御点間の方向が抽出され、この方向がそれに続く曲線の最初の 2 つの制御点で継続されることによって正接を維持します。次の例では、別々であっても 1 つの曲線のようにスムーズな 2 つの NURBS 曲線が作成されます。

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

* これは、NURBS 曲線ジオメトリについての非常に簡単な説明です。より正確かつ詳細な説明については、Pottmann 氏その他(2007 年)の考察を参照してください。

