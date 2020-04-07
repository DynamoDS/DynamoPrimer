# 곡선: 보간 및 제어점

Dynamo에는 자유형 곡선을 만드는 두 가지 기본적인 방법이 있습니다. 점 모음을 지정하고 Dynamo에서 점 간에 부드러운 곡선을 보간하도록 하거나, 특정 차수 곡선의 기본 제어점을 지정하는 보다 쉬운 방법을 사용할 수 있습니다. 보간된 곡선은 설계자가 필요한 선의 형태를 정확히 알고 있거나 설계에 곡선이 통과할 수 있는 경우와 통과할 수 없는 경우에 대한 특정 구속조건이 있을 때 유용합니다. 제어점을 통해 지정된 곡선은 본질적으로 알고리즘이 최종 곡선 형태로 부드럽게 연결되는 일련의 직선 세그먼트입니다. 제어점을 통해 곡선을 지정하면 다듬기 차수가 다양한 곡선 형태를 살펴보거나, 곡선 세그먼트 간에 매끄럽게 연결되어야 하는 경우에 유용할 수 있습니다.

보간된 곡선을 작성하려면 점 모음을 *NurbsCurve.ByPoints* 메서드에 전달하기만 하면 됩니다.

![](images/12-4/Curves_01.png)

```js
num_pts = 6;

s = Math.Sin(0..360..#num_pts) * 4;

pts = Point.ByCoordinates(1..30..#num_pts, s, 0);

int_curve = NurbsCurve.ByPoints(pts);
```

생성된 곡선은 각각 모음의 첫 번째 점과 마지막 점에서 시작하고 끝나는 각 입력 점과 교차합니다. 선택적 주기 매개변수를 사용하여 닫힌 주기 곡선을 작성할 수 있습니다. Dynamo가 누락된 세그먼트를 자동으로 채우므로 중복된 끝점(시작점과 동일)은 필요하지 않습니다.

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

NurbsCurve는 많은 부분 동일한 방식으로 생성됩니다. 입력 점이 직선 세그먼트의 끝점을 나타내고, 두 번째 매개변수가 곡선에 적용되는 다듬기의 정도와 유형을 지정합니다.* 차수가 1인 곡선은 매끄러움이 없는 폴리선입니다.

![](images/12-4/Curves_03.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 1 is a polyline
ctrl_curve = NurbsCurve.ByControlPoints(pts, 1);
```

차수가 2인 곡선은 폴리선 세그먼트의 중간점과 교차하고 접하도록 매끄럽게 표시됩니다.

![](images/12-4/Curves_04.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 2 is smooth
ctrl_curve = NurbsCurve.ByControlPoints(pts, 2);
```

Dynamo는 차수 20까지 NURBS(비균일 유리 B-스플라인) 곡선을 지원하며, 다음 스크립트는 다듬기 수준을 늘릴 경우 곡선 모양에 미치는 영향을 보여줍니다.

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

곡선의 차수보다 적어도 하나 더 많은 제어점이 있어야 합니다.

제어 정점으로 곡선을 생성할 때의 또 다른 이점은 개별 곡선 세그먼트 간에 접선을 유지할 수 있다는 것입니다. 마지막 두 제어점 사이의 방향을 추출하고, 다음 곡선의 처음 두 제어점으로 이 방향을 계속 진행하는 방식으로 이 작업을 수행할 수 있습니다. 다음 예에서는 곡선을 부드럽게 하여 별도의 NURBS 곡선을 두 개 작성합니다.

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

* 위 내용은 NURBS 곡선 형상에 대한 매우 간단한 설명입니다. 더 정확하고 자세한 내용은 Potmann, et al, 2007을 참고하십시오.

