<style>
td {background-color:#F9F9F9; vertical-align:top}
td img{width:100%}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(1){width:50px;padding-right:2px;padding-left: 2px;vertical-align: top}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(2){width:575px;}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(3){width:175px;padding:5px;vertical-align: middle}
.book .book-body .page-wrapper .page-inner section.normal table{box-shadow: 2px 2px 2px #BBBBBB}
/*td:nth-child(3) img{box-shadow: 2px 2px 5px #BBBBBB}*/
thead {display: none}
</style>

# УКАЗАТЕЛЬ УЗЛОВ

##### В этом указателе представлена дополнительная информация обо всех узлах, используемых в учебнике, а также о других компонентах, которые могут оказаться полезными. Это лишь краткое описание некоторых из 500 узлов Dynamo.

## Встроенные функции

||||
| -- | -- | -- |
|![ИЗОБ](images/A-2/Count.Large.png)|**Количество**<br>Получение числа элементов в заданном списке.|![ИЗОБ](images/nodes/Count.png)|
|![ИЗОБ](images/A-2/Flatten.Large.png)|**Выровнять**<br>Получение плоского одномерного списка из заданного многомерного списка.|![ИЗОБ](images/nodes/Flatten.png)|
|![ИЗОБ](images/A-2/Map.Large.png)|**Map**<br>Сопоставление значения с диапазоном входных данных.|![ИЗОБ](images/nodes/Map.png)|

## Core

#### Core.Color

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Создание цвета с помощью компонентов «альфа», «красный», «зеленый» и «синий».|![ИЗОБ](images/nodes/Color.ByARGB.png)|
|![ИЗОБ](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Набор цветов**<br>Получение цвета на основе цветового градиента между начальным и конечным цветом.|![ИЗОБ](images/nodes/ColorRange.png)|
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Получение значения яркости для данного цвета.|![ИЗОБ](images/nodes/Color.Brightness.png)|
|![ИЗОБ](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Вывод списка компонентов цвета в следующем порядке: альфа, красный, зеленый, синий.|![ИЗОБ](images/nodes/Color.Components.png)|
|![ИЗОБ](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Получение значения насыщенности для данного цвета.|![ИЗОБ](images/nodes/Color.Saturation.png)|
|![ИЗОБ](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>Получение значения оттенка для данного цвета.|![ИЗОБ](images/nodes/Color.Hue.png)|
||ЗАПРОС||
|![ИЗОБ](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Поиск альфа-компонента цвета (от 0 до 255).|![ИЗОБ](images/nodes/Color.Alpha.png)|
|![ИЗОБ](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Поиск синего компонента цвета (от 0 до 255).|![ИЗОБ](images/nodes/Color.Blue.png)|
|![ИЗОБ](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Поиск зеленого компонента цвета (от 0 до 255).|![ИЗОБ](images/nodes/Color.Green.png)|
|![ИЗОБ](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Поиск красного компонента цвета (от 0 до 255).|![ИЗОБ](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Отображение геометрии с помощью цвета.|![ИЗОБ](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Boolean**<br>Выбор между значениями True и False.|![ИЗОБ](images/nodes/Boolean.png)|
|![ИЗОБ](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Code Block**<br>Непосредственная разработка кода DesignScript.|![ИЗОБ](images/nodes/CodeBlock.png)|
|![ИЗОБ](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**<br>Выбор папки в системе и получение пути к ней.|![ИЗОБ](images/nodes/DirectoryPath.png)|
|![ИЗОБ](images/A-2/DSCore.File.Filename.Large.png)|**File Path**<br>Выбор файла в системе и получение его имени.|![ИЗОБ](images/nodes/FilePath.png)|
|![ИЗОБ](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**<br>Регулятор, создающий целые значения.|![ИЗОБ](images/nodes/IntegerSlider.png)|
|![ИЗОБ](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Number** <br>Создание числа.|![ИЗОБ](images/nodes/Number.png)|
|![ИЗОБ](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider** <br>Регулятор, создающий числовые значения.|![ИЗОБ](images/nodes/NumberSlider.png)|
|![ИЗОБ](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**Создание строки.|![ИЗОБ](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Создание нового списка из заданных входных значений.|![ИЗОБ](images/nodes/List.Create.png)|
|![ИЗОБ](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Применение комбинатора к каждому элементу в двух последовательностях.|![ИЗОБ](images/nodes/List.Combine.png)|
|![ИЗОБ](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Number Range**<br>Создание последовательности чисел в заданном диапазоне.|![ИЗОБ](images/nodes/NumberRange.png)|
|![ИЗОБ](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Number Sequence**<br>Создание последовательности чисел.|![ИЗОБ](images/nodes/NumberSequence.png)|
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Разделение списка на набор списков, содержащих заданное количество элементов.|![ИЗОБ](images/nodes/List.Chop.png)|
|![ИЗОБ](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Получение количества элементов, хранящихся в данном списке.|![ИЗОБ](images/nodes/List.Count.png)|
|![ИЗОБ](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Выравнивание вложенного списка списков по определенному количественному значению.|![ИЗОБ](images/nodes/List.Flatten.png)|
|![ИЗОБ](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Фильтрация последовательности путем поиска соответствующих индексов в отдельном списке логических операций.|![ИЗОБ](images/nodes/List.FilterByBoolMask.png)|
|![ИЗОБ](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Получение элемента из данного списка, расположенного по заданному индексу.|![ИЗОБ](images/nodes/List.GetItemAtIndex.png)|
|![ИЗОБ](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Применение функции ко всем элементам списка с созданием нового списка на основе результатов.|![ИЗОБ](images/nodes/List.Map.png)|
|![ИЗОБ](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Создание нового списка, содержащего элементы из заданного списка, расположенные в обратном порядке.|![ИЗОБ](images/nodes/List.Reverse.png)|
|![ИЗОБ](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Замена элемента из данного списка, расположенного по заданному индексу.|![ИЗОБ](images/nodes/List.ReplaceItemAtIndex.png)|
|![ИЗОБ](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Смещение индексов в списке вправо на заданную величину.|![ИЗОБ](images/nodes/List.ShiftIndices.png)|
|![ИЗОБ](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Извлечение элементов из данного списка по индексам, которые являются множителями заданного значения, после заданного смещения.|![ИЗОБ](images/nodes/List.TakeEveryNthItem.png)|
|![ИЗОБ](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Перестановка строк и столбцов в списке списков. Если некоторые строки короче других, то в конечный массив в качестве заполнителей вставляются нулевые значения, чтобы он оставался прямоугольным.|![ИЗОБ](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>Условное выражение. Проверка логического значения тестового ввода. Если тестовый ввод истинен, в результате выводится значение True; противном случае выводится значение False.|![ИЗОБ](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Нахождение косинуса угла.|![ИЗОБ](images/nodes/Math.Cos.png)|
|![ИЗОБ](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Преобразование единиц угла из градусов радианы.|![ИЗОБ](images/nodes/Math.DegreesToRadians.png)|
|![ИЗОБ](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Возведение числа в заданную степень.|![ИЗОБ](images/nodes/Math.Pow.png)|
|![ИЗОБ](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Преобразование единиц угла из радианов в градусы.|![ИЗОБ](images/nodes/Math.RadiansToDegrees.png)|
|![ИЗОБ](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Корректировка диапазона списка чисел при сохранении коэффициента распределения.|![ИЗОБ](images/nodes/Math.RemapRange.png)|
|![ИЗОБ](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Поиск синуса угла.|![ИЗОБ](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Определение того, имеет ли данный объект нулевое значение.|![ИЗОБ](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCore.Scripting.Formula.Large.png)|**Формула**<br>Оценка математических формул. Для оценки используется NCalc. См. страницу [http://ncalc.codeplex.com](http://ncalc.codeplex.com)|![ИЗОБ](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Объединение нескольких строк в одну строку.|![ИЗОБ](images/nodes/String.Concat.png)|
|![ИЗОБ](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Определение того, содержит ли данная строка подстроку.|![ИЗОБ](images/nodes/String.Contains.png)|
|![ИЗОБ](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Объединение нескольких строк в одну строку со вставкой данного разделителя между ними.|![ИЗОБ](images/nodes/String.Join.png)|
|![ИЗОБ](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Разделение одной строки на список строк, деления которого определяются заданными строками-разделителями.|![ИЗОБ](images/nodes/String.Split.png)|
|![ИЗОБ](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Преобразование строки в целое или двойное число.|![ИЗОБ](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Визуализация выходных данных узла.|![ИЗОБ](images/nodes/Watch.png)|
|![ИЗОБ](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Динамический предварительный просмотр геометрии.|![ИЗОБ](images/nodes/Watch3D.png)|

## Геометрия

#### Geometry.Circle

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Построение окружности с входным центром и радиусом в плоскости XY мировой системы координат с осью Z мировой системы координат в качестве нормали.|![ИЗОБ](images/nodes/Circle.ByCenterPointRadius.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>Создание окружности с входным центром в начале координат плоскости, находящейся в заданной плоскости, с заданным радиусом.|![ИЗОБ](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Создание объекта CoordinateSystem с началом координат во входной точке, с осями X и Y, соответствующими осям X и Y МСК.|![ИЗОБ](images/nodes/CoordinateSystem.ByOrigin.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Создание объекта CoordinateSystem с заданными параметрами цилиндрических координат относительно заданной системы координат.|![ИЗОБ](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLength** (начало координат)<br>Создание кубоида с центром во входной точке с определенной шириной, длиной и высотой.|![ИЗОБ](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (расстояние)<br>Выдавливание кривой в направлении вектора нормали.|![ИЗОБ](images/nodes/Curve.Extrude_Distance.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Получение точки на кривой по заданному параметру между StartParameter() и EndParameter().|![ИЗОБ](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Получение расстояния от этого до другого геометрического объекта.|![ИЗОБ](images/nodes/Geometry.DistanceTo.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Расчленение составных или неразделенных элементов на компоненты.|![ИЗОБ](images/nodes/Geometry.Explode.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>Список импортированных геометрических объектов.|![ИЗОБ](images/nodes/Geometry.ImportFromSAT.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Поворот объекта относительно начала координат плоскости и нормали на заданное количество градусов|![ИЗОБ](images/nodes/Geometry.Rotate_BasePlane.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Перенос любого типа геометрии на заданное расстояние в заданном направлении.|![ИЗОБ](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Создание линии, максимально приближенной к графику рассеяния точек.|![ИЗОБ](images/nodes/Line.ByBestFitThroughPoints.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Построение прямой линии от начальной точки в направлении вектора на заданную длину.|![ИЗОБ](images/nodes/Line.ByStartPointDirectionLength.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Построение прямой линии между двумя заданными точками.|![ИЗОБ](images/nodes/Line.ByStartPointEndPoint.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Создание линии, касательной к исходной кривой, расположенной в точке параметра исходной кривой.|![ИЗОБ](images/nodes/Line.ByTangency.png)|
||ЗАПРОС||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>Направление кривой.|![ИЗОБ](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||Создание||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Создание объекта BSplineCurve с использованием явно заданных управляющих точек.|![ИЗОБ](images/nodes/NurbsCurve.ByControlPoints.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Создание элемента BSplineCurve путем интерполяции между точками.|![ИЗОБ](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||Создание||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Создание объекта NurbsSurface по явно заданным управляющим точкам с заданными значениями кривизны U и V.|![ИЗОБ](images/nodes/NurbsSurface.ByControlPoints.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Создание объекта NurbsSurface с заданными интерполированными точками и значениями кривизны U и V. Полученная поверхность проходит через все точки.|![ИЗОБ](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Создание плоскости с центром в корневой точке с входным вектором нормали.|![ИЗОБ](images/nodes/Plane.ByOriginNormal.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Создание плоскости XY в МСК.|![ИЗОБ](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Построение точки в данной системе координат с тремя декартовыми координатами.|![ИЗОБ](images/nodes/Point.ByCartesianCoordinates.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2D) <br>Построение точки в плоскости XY по двум заданным декартовым координатам. Координата Z равна 0.|![ИЗОБ](images/nodes/Point.ByCoordinates_2D.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3D)<br>Построение точки по трем заданным декартовым координатам.|![ИЗОБ](images/nodes/Point.ByCoordinates_3D.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Получение точки начала координат (0,0,0).|![ИЗОБ](images/nodes/Point.Origin.png)|
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Добавление вектора к точке. Аналогично Translate (вектор).|![ИЗОБ](images/nodes/Point.Add.png)|
||ЗАПРОС||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Получение координаты точки по оси X.|![ИЗОБ](images/nodes/Point.X.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Получение координаты точки по оси Y.|![ИЗОБ](images/nodes/Point.Y.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Получение координаты точки по оси Z.|![ИЗОБ](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Создание объекта PolyCurve из последовательности линий, соединяющих точки. Последняя точка замкнутой кривой должна находиться в том же месте, что и начальная точка.|![ИЗОБ](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (плоскость)<br>Построение прямоугольника с центром во входном корне плоскости с входной шириной (расстояние по оси плоскости X) и длиной (расстояние по оси плоскости Y).|![ИЗОБ](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Создание твердотельного шара с заданным радиусом с центром во входной точке.|![ИЗОБ](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Создание поверхности посредством лофтинга между входными кривыми поперечного сечения.|![ИЗОБ](images/nodes/Surface.ByLoft.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Создание поверхности путем заполнения пространства внутри замкнутой границы, определяемой входными кривыми.|![ИЗОБ](images/nodes/Surface.ByPatch.png)|
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Смещение поверхности в направлении нормали поверхности на заданное расстояние.|![ИЗОБ](images/nodes/Surface.Offset.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Получение точки с заданными параметрами U и V.|![ИЗОБ](images/nodes/Surface.PointAtParameter.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Утолщение поверхности до формирования тела с выдавливанием в направлении нормалей поверхности с обеих сторон поверхности.|![ИЗОБ](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Создание UV из двух двойных значений.|![ИЗОБ](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||СОЗДАНИЕ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**<br>Построение вектора на основе трех евклидовых координат.|![ИЗОБ](images/nodes/Vector.ByCoordinates.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Получение канонического вектора оси X (1,0,0).|![ИЗОБ](images/nodes/Vector.XAxis.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Получение канонического вектора оси Y (0,1,0).|![ИЗОБ](images/nodes/Vector.YAxis.png)|
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Получение канонического вектора оси Z (0,0,1).|![ИЗОБ](images/nodes/Vector.ZAxis.png)|
||ДЕЙСТВИЯ||
|![ИЗОБ](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>Получение нормализованной версии вектора.|![ИЗОБ](images/nodes/Vector.Normalized.png)|

## Операторы

||||
| -- | -- | -- |
|![ИЗОБ](images/A-2/add.Large.png)|**+**<br>Сложение|![ИЗОБ](images/nodes/Addition.png)|
|![ИЗОБ](images/A-2/sub.Large.png)|**–**<br>Вычитание|![ИЗОБ](images/nodes/Subtraction.png)|
|![ИЗОБ](images/A-2/mul.Large.png)|*****<br>Умножение|![ИЗОБ](images/nodes/Multiplication.png)|
|![ИЗОБ](images/A-2/div.Large.png)|**/**<br>Деление|![ИЗОБ](images/nodes/Division.png)|
|![ИЗОБ](images/A-2/mod.Large.png)|**%**<br>При модульном делении выполняется поиск остатка первых введенных данных после деления на вторые.|![ИЗОБ](images/nodes/ModularDivision.png)|
|![ИЗОБ](images/A-2/lt.Large.png)|**<**<br>Меньше, чем|![ИЗОБ](images/nodes/LessThan.png)|
|![ИЗОБ](images/A-2/gt.Large.png)|**>**<br>Больше, чем|![ИЗОБ](images/nodes/GreaterThan.png)|
|![ИЗОБ](images/A-2/eq.Large.png)|**==**<br>Проверка равенства двух значений.|![ИЗОБ](images/nodes/Equality.png)|

