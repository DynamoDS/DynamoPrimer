# 표면: 보간, 제어점, 로프트, 회전

NurbsCurve의 2D 아날로그는 NurbsSurface입니다. 자유형 NurbsCurve와 마찬가지로 NurbsSurface는 두 가지 기본 방법으로 생성할 수 있습니다. 기준점 세트를 입력하고 Dynamo에서 사이를 보간하도록 하거나, 표면의 제어점을 명시적으로 지정할 수 있습니다. 또한 자유형 곡선과 마찬가지로, 보간된 표면은 설계자가 표면에 필요한 모양을 정확하게 파악하고 있거나 설계에서 표면이 제약 조건 점을 통과해야 하는 경우에 유용합니다. 반면에 제어점으로 작성된 표면은 예비 설계의 다양한 다듬기 수준에서 더 유용할 수 있습니다.

보간된 표면을 작성하려면 표면의 모양을 대략적으로 나타내는 2D 점 모음을 생성하기만 하면 됩니다. 이 모음은 톱니 모양이 아닌 직사각형이어야 합니다. *NurbsSurface.ByPoints* 메서드는 이러한 점에서 표면을 생성합니다.

![](images/12-6/Surfaces_01.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

표면의 기본 제어점을 지정하여 자유형 NurbsSurface를 작성할 수도 있습니다. NurbsCurve와 마찬가지로, 제어점은 표면의 차수에 따라 최종 표면 형태로 완화되는 직선 세그먼트로 사각형 메쉬를 나타내는 것으로 간주할 수 있습니다. 제어점으로 NurbsSurface를 작성하려면 표면의 양방향에서 기본 곡선의 각도를 나타내는 두 개의 추가 매개변수를 *NurbsSurface.ByPoints*에 포함합니다.

![](images/12-6/Surfaces_02.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

다음과 같이 NurbsSurface의 각도를 늘려 결과 표면 형상을 변경할 수 있습니다.

![](images/12-6/Surfaces_03.png)

```js
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

입력 점 세트 간을 보간하여 표면을 작성할 수 있는 것처럼 기준 곡선 세트 간에 보간하여 표면을 작성할 수 있는데, 이를 로프트라고 합니다. 로프트된 곡선은 입력 곡선의 모음을 유일한 매개변수로 사용하여 *Surface.ByLoft* 생성자를 통해 작성됩니다.

![](images/12-6/Surfaces_04.png)

```js
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

회전 표면은 중심 축 주위로 기준 곡선을 스윕하여 작성된 추가적인 표면 유형입니다. 보간된 표면이 보간된 곡선의 2D 아날로그라면 회전 표면은 원 및 호의 2D 아날로그입니다.

회전 표면은 기준 곡선(표면의 "모서리"를 나타냄), 축 원점(표면의 기준점), 축 방향(중심 "코어" 방향), 스윕 시작 각도와 끝 각도에 의해 지정됩니다. 이러한 항목이 *Surface.Revolve* 생성자의 입력으로 사용됩니다.

![](images/12-6/Surfaces_05.png)

```js
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

