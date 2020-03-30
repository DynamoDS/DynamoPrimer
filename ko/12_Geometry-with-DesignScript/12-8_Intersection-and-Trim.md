

# 교차 및 자르기

지금까지 많은 예는 더 낮은 차원의 객체에서 더 높은 차원의 형상을 생성하는 데 초점을 맞추었습니다. 교차 메서드를 사용하면 더 높은 차원의 형상에서 더 낮은 차원의 객체를 생성할 수 있으며, 자르기 및 선택 자르기 명령을 사용하면 기하학적 형태가 작성된 후에 스크립트를 통해 세밀하게 수정할 수 있습니다.

*Intersect* 메서드는 Dynamo의 모든 형상 조각에 대해 정의됩니다. 즉, 이론상 모든 형상 조각은 다른 형상 조각과 교차할 수 있습니다. 물론 결과 객체가 항상 입력 점 자체가 되는 점 관련 교차처럼, 일부 교차의 경우에는 의미가 없을 수 있습니다. 객체 간의 가능한 다른 교차 조합은 다음 차트에 설명되어 있습니다. 또한 이 차트에는 다양한 교차 작업의 결과도 나와 있습니다.

**교차**

|*대상:*|표면|곡선|평면|솔리드|
| -- | -- | -- | -- | -- |
|**표면**|곡선|점|점, 곡선|표면|
|**곡선**|점|점|점|곡선|
|**평면**|곡선|점|곡선|곡선|
|**솔리드**|표면|곡선|곡선|솔리드|

다음의 간단한 예는 평면과 NurbsSurface의 교차점을 보여줍니다. 교차는 다른 모든 NurbsCurve처럼 사용할 수 있는 NurbsCurve 배열을 생성합니다.

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

*Trim* 메서드는 거의 모든 형상 조각에 정의된다는 점에서 Intersect 메서드와 매우 유사합니다. 그러나 *Intersect*보다 *Trim*에 훨씬 더 많은 제한이 있습니다.

**자르기**

||*사용 대상:*점|곡선|평면|표면|솔리드|
| -- | -- | -- | -- | -- | -- |
|*위치:* 곡선|예|아니오|아니오|아니오|아니오|
|폴리곤|-|아니오|예|아니오|아니오|
|표면|-|예|예|예|예|
|솔리드|-|-|예|예|예|

*Trim* 메서드에서 유의할 사항은 삭제할 형상 및 유지할 조각을 결정하는 "선택" 점이 필요하다는 것입니다. Dynamo는 선택 점에서 가장 가까운 잘린 형상을 찾아서 이를 버립니다.

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

