# 기하학적 매개변수화

계산 방식 설계에서 곡선과 표면은 후속 형상을 구성하기 위한 기본 비계로 자주 사용됩니다. 이러한 초기 형상을 이후 형상의 기반으로 사용하려면 스크립트는 객체의 전체 영역에서 위치 및 방향 등의 품질을 추출할 수 있어야 합니다. 곡선과 표면 모두 이러한 추출을 지원하는데, 이를 매개변수화라고 합니다.

곡선의 모든 점은 0에서 1 사이의 고유한 매개변수를 갖는 것으로 간주될 수 있습니다. 여러 제어점이나 보간된 점을 기준으로 NurbsCurve를 작성하려는 경우 첫 번째 점은 매개변수 0이 되고 마지막 점은 매개변수 1이 됩니다. 정확히 어떤 매개변수가 중간점인지 미리 알 수는 없습니다. 이러한 상황은 심각한 제한 사항처럼 들릴 수 있지만, 이는 일련의 유틸리티 함수를 통해 완화될 수 있습니다. 표면은 1개가 아닌 2개의 매개변수(u 및 v)를 사용하여 곡선과 비슷하게 매개변수화됩니다. 다음과 같은 점으로 표면을 작성해야 할 경우

```js
pts = [ [p1, p2, p3],
        [p4, p5, p6],
        [p7, p8, p9] ];
```

p1에는 매개변수 u = 0 v = 0을 지정하고, p9에는 매개변수 u = 1 v = 을 지정할 수 있습니다.

매개변수화는 곡선을 생성하는 데 사용되는 점을 결정할 때는 별로 유용하지 않습니다. 매개변수화의 주요 용도는 중간점이 NurbsCurve 및 NurbsSurface 생성자로 생성된 경우 위치를 결정하는 것입니다.

곡선에는 0에서 1 사이의 단일 실수 인수를 사용하여 해당 매개변수에서 Point 객체를 반환하는 *PointAtParameter* 메서드가 있습니다. 예를 들어 이 스크립트는 매개변수 0, .1, .2, .3, .4, .5, .6, .7, .8, .9, 1에서 점을 찾습니다.

![](images/12-7/GeometricParameterization_01.png)

```js
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

마찬가지로 표면에는 생성된 점의 u 및 v 매개변수인 두 개의 인수를 사용하는 *PointAtParameter* 메서드가 있습니다.

곡선과 표면의 개별 점을 추출하는 것이 유용할 수 있지만, 스크립트에서는 곡선 또는 표면이 향하는 방향과 같은 매개변수의 특정 기하학적 특성을 지정해야 하는 경우가 많습니다. *CoordinateSystemAtParameter* 메서드는 해당 위치 뿐만 아니라 곡선이나 표면의 매개변수에서 방향이 지정된 CoordinateSystem을 찾습니다. 예를 들어 다음 스크립트는 회전된 표면을 따라 방향이 지정된 CoordinateSystem을 추출하고, CoordinateSystems의 방향을 사용하여 표면에 수직으로 진행되는 선을 생성합니다.

![](images/12-7/GeometricParameterization_02.png)

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

앞서 설명한 대로 매개변수화가 곡선이나 표면의 길이를 따라 항상 균일한 것은 아닙니다. 즉, 매개변수 0.5가 항상 중간점에 해당하지는 않으며 0.25가 항상 곡선 또는 표면에서 1/4 위치에 있는 점에 해당하는 것은 아닙니다. 이러한 제한을 해결할 수 있도록 곡선에는 곡선을 따라 특정 길이의 점을 찾을 수 있는 추가 매개변수화 명령 세트가 있습니다.

