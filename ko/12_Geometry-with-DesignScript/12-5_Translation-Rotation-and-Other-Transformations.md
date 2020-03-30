

# 전환, 회전 및 기타 변환

3D 공간에서 x, y, z 좌표를 명시적으로 지정하여 특정 형상 객체를 작성할 수 있습니다. 그러나 형상은 객체 자체 또는 기본 CoordinateSystem에서 기하학적 변환을 사용하여 최종 위치로 이동되는 경우가 더 많습니다.

가장 간단한 기하학적 변환은 x, y, z 방향으로 지정된 단위 수만큼 객체를 이동하는 전환입니다.

![](images/12-5/Transformations_01.png)

```
// create a point at x = 1, y = 2, z = 3
p = Point.ByCoordinates(1, 2, 3);

// translate the point 10 units in the x direction,
// -20 in y, and 50 in z
// p2’s new position is x = 11, y = -18, z = 53
p2 = p.Translate(10, -20, 50);
```

Dynamo의 모든 객체는 *.Translate* 메서드를 객체 이름의 끝에 추가하여 변환할 수 있지만, 좀 더 복잡한 변환은 기본 CoordinateSystem에서 새 CoordinateSystem으로 객체를 변환해야 합니다. 예를 들어 객체를 x축을 중심으로 45도 회전하려면 객체를 회전 없는 기존 CoordinateSystem에서 *.Transform* 메서드를 사용하여 x축을 중심으로 45도 회전한 CoordinateSystem으로 변환해야 합니다.

![](images/12-5/Transformations_02.png)

```
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Rotate(Point.ByCoordinates(0, 0),
Vector.ByCoordinates(1,0,0.5), 25);

// get the existing coordinate system of the cube
old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

CoordinateSystem은 변환 및 회전뿐 아니라 축척 또는 전단이 조정되어 작성될 수도 있습니다. CoordinateSystem은 다음과 같이 *.Scale* 메서드로 축척할 수 있습니다.

![](images/12-5/Transformations_03.png)

```
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Scale(20);

old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

전단된 CoordinateSystem은 직교하지 않는 벡터를 CoordinateSystem 생성자에 입력하여 작성합니다.

![](images/12-5/Transformations_04.png)

```
new_cs = CoordinateSystem.ByOriginVectors(
Point.ByCoordinates(0, 0, 0),
Vector.ByCoordinates(-1, -1, 1),
Vector.ByCoordinates(-0.4, 0, 0));

old_cs = CoordinateSystem.Identity();

cube = Cuboid.ByLengths(CoordinateSystem.Identity(), 
5, 5, 5);

new_curves = cube.Transform(old_cs, new_cs);
```

축척 및 전단은 회전 및 변환보다 비교적 더 복잡한 기하학적 변환이므로 모든 Dynamo 객체가 이러한 변환을 거치지는 않을 수 있습니다. 다음 표는 균일하지 않게 축척이 조정된 CoordinateSystem 및 전단된 CoordinateSystem이 있을 수 있는 Dynamo 객체를 간략하게 설명합니다.

|클래스|균일하지 않게 축척이 조정된 CoordinateSystem|전단 CoordinateSystem|
| -- | -- | -- |
|호|아니요|아니오|
|NurbsCurve|예|예|
|NurbsSurface|아니요|아니오|
|원|아니요|아니오|
|선|예|예|
|평면|아니요|아니오|
|점|예|예|
|폴리곤|아니요|아니오|
|솔리드|아니요|아니오|
|표면|아니요|아니오|
|문자|아니요|아니오|

