# Python 점 생성기

다음 Python 스크립트는 몇 가지 예에서 점 배열을 생성합니다. 이러한 스크립트는 다음과 같이 Python 스크립트 노드에 붙여 넣어야 합니다.

![](images/12-10/PythonPointGenerators_01.png)

**python_points_1**

```python
out_points = []

for i in range(11):
	sub_points = []
	for j in range(11):
		z = 0
		if (i == 5 and j == 5):
			z = 1
		elif (i == 8 and j == 2):
			z = 1
		sub_points.Add(Point.ByCoordinates(i, j, z))
	out_points.Add(sub_points)

OUT = out_points
```

**python_points_2**

```python
out_points = []

for i in range(11):
	z = 0
	if (i == 2):
		z = 1
	out_points.Add(Point.ByCoordinates(i, 0, z))

OUT = out_points
```

**python_points_3**

```python
out_points = []

for i in range(11):
	z = 0
	if (i == 7):
		z = -1
	out_points.Add(Point.ByCoordinates(i, 5, z))

OUT = out_points
```

**python_points_4**

```python
out_points = []

for i in range(11):
	z = 0
	if (i == 5):
		z = 1
	out_points.Add(Point.ByCoordinates(i, 10, z))

OUT = out_points
```

**python_points_5**

```python
out_points = []

for i in range(11):
	sub_points = []
	for j in range(11):
		z = 0
		if (i == 1 and j == 1):
			z = 2
		elif (i == 8 and j == 1):
			z = 2
		elif (i == 2 and j == 6):
			z = 2
		sub_points.Add(Point.ByCoordinates(i, j, z))
	out_points.Add(sub_points)

OUT = out_points
```

