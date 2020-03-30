

# Основы работы с геометрией посредством DesignScript

Простейший геометрический объект, доступный в библиотеке стандартных геометрических объектов Dynamo, — это точка. Вся геометрия создается с помощью специальных функций (конструкторов), каждая из которых возвращает новый экземпляр геометрического объекта определенного типа. В Dynamo название каждого конструктора начинается с наименования типа объекта (в данном случае Point, точка), за которым следует метод построения объекта. Чтобы построить трехмерную точку на основе значений X, Y и Z в прямоугольной системе координат, используйте конструктор *ByCoordinates*:

![](images/12-1/GeometryBasics_01.png)

```
// create a point with the following x, y, and z
// coordinates:
x = 10;
y = 2.5;
z = -6;

p = Point.ByCoordinates(x, y, z);
```

Конструкторы в Dynamo обычно обозначаются приставкой *By*, и при вызове эти функции возвращают новый объект соответствующего типа. Этот объект сохраняется в переменной, имя которой указано слева от знака равенства.

Для создания большинства объектов можно использовать множество различных конструкторов. Используя конструктор *BySphericalCoordinates*, можно задать точку на сфере, определяемой по радиусу, а также первому и второму углам поворота (заданным в градусах):

![](images/12-1/GeometryBasics_02.png)

```
// create a point on a sphere with the following radius,
// theta, and phi rotation angles (specified in degrees)
radius = 5;
theta = 75.5;
phi = 120.3;
cs = CoordinateSystem.Identity();

p = Point.BySphericalCoordinates(cs, radius, theta,
phi);
```

Используя точки, можно создавать геометрические объекты более высокого уровня, например отрезки. С помощью конструктора *ByStartPointEndPoint* создайте объект Line (отрезок) между двумя точками:

![](images/12-1/GeometryBasics_03.png)

```
// create two points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

// construct a line between p1 and p2
l = Line.ByStartPointEndPoint(p1, p2);
```

Аналогичным образом из отрезков можно создавать геометрические объекты следующего уровня — поверхности. Для этого можно использовать, например, конструктор *Loft*, который выполняет интерполяцию поверхности между заданными отрезками или кривыми.

![](images/12-1/GeometryBasics_04.png)

```
// create points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

p5 = Point.ByCoordinates(9, -10, -2);
p6 = Point.ByCoordinates(-11, -12, -4);

// create lines:
l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);
l3 = Line.ByStartPointEndPoint(p5, p6);

// loft between cross section lines:
surf = Surface.ByLoft([l1, l2, l3]);
```

Поверхности также можно использовать для создания геометрии более высокого уровня, а именно тел. Сделать это можно, например, путем увеличения толщины поверхности на заданную величину. Многим объектам изначально назначены определенные функции, называемые методами, которые позволяют программистам выполнять действия с определенным объектом. К методам, доступным для всех геометрических объектов, относятся операции *Translate* и *Rotate*, которые позволяют переносить и поворачивать геометрию в соответствии с заданной величиной переноса или поворота. Для поверхностей доступен метод *Thicken*, для использования которого требуется одно входное значение — число, определяющее новую толщину поверхности.

![](images/12-1/GeometryBasics_05.png)

```
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);

surf = Surface.ByLoft([l1, l2]);

// true indicates to thicken both sides of the Surface:
solid = surf.Thicken(4.75, true);
```

Команды *Intersect* позволяют извлекать из геометрии высокого уровня более простые геометрические объекты. Такие объекты могут затем послужить основой для создания другой сложной геометрии. В результате получается циклический процесс создания, извлечения и повторного построения геометрии. В этом примере объект поверхности Surface, извлеченный из объекта тела Solid, используется для создания объекта кривой Curve.

![](images/12-1/GeometryBasics_06.png)

```
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);

surf = Surface.ByLoft([l1, l2]);

solid = surf.Thicken(4.75, true);

p = Plane.ByOriginNormal(Point.ByCoordinates(2, 0, 0),
Vector.ByCoordinates(1, 1, 1));

int_surf = solid.Intersect(p);

int_line = int_surf.Intersect(Plane.ByOriginNormal(
Point.ByCoordinates(0, 0, 0),
Vector.ByCoordinates(1, 0, 0)));
```

