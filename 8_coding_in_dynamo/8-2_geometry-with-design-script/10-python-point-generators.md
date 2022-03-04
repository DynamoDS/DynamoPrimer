# Python Point Generators

The following Python scripts generate point arrays for several examples. They should be pasted into a Python Script node as follows:

![](<../../.gitbook/assets/python points 01.jpg>)

**python\_points\_1**

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
		sub_points.append(Point.ByCoordinates(i, j, z))
	out_points.append(sub_points)

OUT = out_points
```

**python\_points\_2**

```python
out_points = []

for i in range(11):
	z = 0
	if (i == 2):
		z = 1
	out_points.append(Point.ByCoordinates(i, 0, z))

OUT = out_points
```

**python\_points\_3**

```python
out_points = []

for i in range(11):
	z = 0
	if (i == 7):
		z = -1
	out_points.append(Point.ByCoordinates(i, 5, z))

OUT = out_points
```

**python\_points\_4**

```python
out_points = []

for i in range(11):
	z = 0
	if (i == 5):
		z = 1
	out_points.append(Point.ByCoordinates(i, 10, z))

OUT = out_points
```

**python\_points\_5**

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
		sub_points.append(Point.ByCoordinates(i, j, z))
	out_points.append(sub_points)

OUT = out_points
```
