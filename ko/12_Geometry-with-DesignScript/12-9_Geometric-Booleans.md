

# 기하학적 부울

*Intersect*, *Trim* 및 *SelectTrim*은 주로 점, 곡선 및 표면과 같은 낮은 차원의 형상에서 사용됩니다. 반면에 솔리드 형상에는 구성 후 형태를 수정하는 추가 메서드 세트가 있습니다. 이러한 메서드는 *Trim*와 비슷한 방식으로 재료를 빼고 요소를 함께 결합하여 더 큰 전체 구조를 형성합니다.

*Union* 메서드는 두 개의 솔리드 객체를 사용하고 두 객체가 차지하는 공간 외부에 단일 솔리드 객체를 작성합니다. 객체 사이의 겹치는 공간은 최종 형태로 결합됩니다. 이 예에서는 구와 직육면체를 단일 솔리드 구-정육면체 모양으로 결합합니다.

![](images/12-9/GeometricBooleans_01.png)

```
s1 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(4, 0,
0), 6);

combined = s1.Union(s2);
```

*Trim*과 같은 *Difference* 메서드는 기준 솔리드에서 입력 도구 솔리드의 컨텐츠를 뺍니다. 이 예에서는 구가 약간 안으로 잘립니다.

![](images/12-9/GeometricBooleans_02.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Difference(tool);
```

*Intersect* 메서드는 두 개의 솔리드 입력 사이에서 겹치는 솔리드를 반환합니다. 다음 예에서는 *Difference*가 *Intersect*로 변경되었으며 결과 솔리드는 처음에 잘린 누락된 보이드입니다.

![](images/12-9/GeometricBooleans_03.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Intersect(tool);
```

