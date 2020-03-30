

# 벡터 수학

계산 방식 설계의 객체는 최종 위치와 형태로 명시적으로 작성되는 경우가 드물며, 기존 형상을 기준으로 변환하고 회전되고 배치되는 경우가 많습니다. 벡터 수학은 형상에 방향을 지정할 뿐 아니라 시각적 표현 없이 3D 공간을 통한 이동을 개념화할 수 있는 일종의 기하학적 비계 역할을 합니다.

가장 기본적인 위치에서는 벡터가 3D 공간에서의 위치를 나타내며 종종 위치(0, 0, 0)에서 해당 위치까지의 화살표 끝점으로 간주됩니다. 벡터는 *ByCoordinates* 생성자로 작성될 수 있으며 새로 작성된 벡터 객체의 x, y 및 z 위치를 사용합니다. 벡터 객체는 기하학적 객체가 아니므로 Dynamo 창에 나타나지 않습니다. 하지만 새로 작성하거나 수정한 벡터에 대한 정보를 콘솔 창에 출력할 수 있습니다.

![](images/12-3/VectorMath_01.png)

```
// construct a Vector object
v = Vector.ByCoordinates(1, 2, 3);

s = v.X + " " + v.Y + " " + v.Z;
```

일련의 수학 연산이 벡터 객체에 대해 정의되어 있으므로, 1D 공간의 숫자 행에서 실수를 이동하는 것처럼 3D 공간에서 객체에 대해 추가, 빼기, 곱하기 또는 이동을 수행할 수 있습니다.

벡터 추가는 두 벡터의 구성요소 합계로 정의되며, 두 구성요소 벡터 화살표가 "꼬리 끝"에 배치된 경우 결과 벡터로 간주될 수 있습니다. 벡터 추가는 *Add* 메서드를 사용하여 수행되며 왼쪽 다이어그램으로 표시됩니다.

![](images/12-3/VectorMath_02.png)

```
a = Vector.ByCoordinates(5, 5, 0);
b = Vector.ByCoordinates(4, 1, 0);

// c has value x = 9, y = 6, z = 0
c = a.Add(b);
```

마찬가지로, *Subtract* 메서드를 사용해서 두 개의 벡터 객체를 서로에게서 뺄 수 있습니다. 벡터 빼기는 첫 번째 벡터에서 두 번째 벡터로의 방향으로 간주될 수 있습니다.

![](images/12-3/VectorMath_03.png)

```
a = Vector.ByCoordinates(5, 5, 0);
b = Vector.ByCoordinates(4, 1, 0);

// c has value x = 1, y = 4, z = 0
c = a.Subtract(b);
```

벡터 곱하기는 벡터의 끝점을 주어진 축척 비율만큼 해당 방향으로 이동하는 것으로 생각할 수 있습니다.

![](images/12-3/VectorMath_04.png)

```
a = Vector.ByCoordinates(4, 4, 0);

// c has value x = 20, y = 20, z = 0
c = a.Scale(5);
```

보통 결과 벡터의 길이가 축척된 크기와 정확히 동일해지도록 벡터의 축척을 조정하는 것이 좋습니다. 이는 먼저 벡터를 정규화하여, 즉 벡터의 길이를 정확히 1로 설정할 수 있습니다.

![](images/12-3/VectorMath_05.png)

```
a = Vector.ByCoordinates(1, 2, 3);
a_len = a.Length;

// set the a's length equal to 1.0
b = a.Normalized();
c = b.Scale(5);

// len is equal to 5
len = c.Length;
```

c는 여전히 (1, 2, 3)과 동일한 방향을 가리키지만. 길이는 정확히 5가 되었습니다.

벡터 수학에는 두 가지 추가 메서드가 있는데, 이러한 메서드는 1D 수학과 명확히 평행은 아닌 외적 및 내적입니다. 외적은 두 개의 기존 벡터에 대해 90도로 직교하는 벡터를 생성하는 방법입니다. 예를 들어, x축과 y축의 외적은 z축이지만 두 입력 벡터가 서로 직교할 필요는 없습니다. 외적 벡터는 *Cross* 메서드로 계산합니다.

![](images/12-3/VectorMath_06.png)

```
a = Vector.ByCoordinates(1, 0, 1);
b = Vector.ByCoordinates(0, 1, 1);

// c has value x = -1, y = -1, z = 1
c = a.Cross(b);
```

벡터 수학의 추가적인 고급 함수는 내적입니다. 두 벡터 사이의 내적은 두 벡터 사이의 각도와 정확하지는 않지만 관련이 있는 실수(Vector 객체가 아님)입니다. 내적의 유용한 특성 중 하나는 두 벡터가 수직인 경우에만 두 벡터 사이의 내적이 0이 된다는 것입니다. 내적은 *Dot* 메서드로 계산합니다.

![](images/12-3/VectorMath_07.png)

```
a = Vector.ByCoordinates(1, 2, 1);
b = Vector.ByCoordinates(5, -8, 4);

// d has value -7
d = a.Dot(b);
```

