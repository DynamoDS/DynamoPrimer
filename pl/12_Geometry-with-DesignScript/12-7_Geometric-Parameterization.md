

# Parametryzacja geometryczna

W projektach obliczeniowych krzywe i powierzchnie są często używane jako rusztowanie źródłowe do konstruowania kolejnej geometrii. Aby ta wczesna geometria mogła być używana jako fundament późniejszej geometrii, skrypt musi być w stanie wyodrębnić cechy, takie jak położenie i orientacja, z całej powierzchni obiektu. Zarówno krzywe, jak i powierzchnie obsługują to wyodrębnianie. Nazywa się to parametryzacją.

Wszystkie punkty na krzywej można uznać za mające niepowtarzalny parametr z zakresu od 0 do 1. Jeśli chcemy utworzyć krzywą NurbsCurve w oparciu o kilka punktów kontrolnych lub punktów interpolowanych, pierwszy punkt miałby parametr 0, a ostatni punkt — parametr 1. Nie można wcześniej ustalić, jaką dokładnie wartość ma parametr dowolnego z punktów pośrednich, co może wydawać się ograniczeniem, ale jest to nieco równoważone przez szereg funkcji narzędziowych. Powierzchnie mają podobną parametryzację jak krzywe, ale mają dwa parametry zamiast jednego: u i v. Jeśli zechcemy utworzyć powierzchnię z następującymi punktami:

```
pts = [ [p1, p2, p3],
[p4, p5, p6],
[p7, p8, p9] ];
```

p1 ma parametry u = 0 v = 0, natomiast p9 ma parametry u = 1 v = 1.

Parametryzacja nie jest szczególnie przydatna podczas określania punktów używanych do generowania krzywych. Jej głównym zastosowaniem jest określenie położeń punktów pośrednich generowanych przez konstruktory krzywych NurbsCurve i powierzchni NurbsSurface.

Krzywe mają metodę *PointAtParameter*, która przyjmuje pojedynczy argument podwójny z zakresu od 0 do 1 i zwraca obiekt punktu o tym parametrze. Na przykład ten skrypt wyszukuje punkty o parametrach 0, 0,1, 0,2, 0,3, 0,4, 0,5, 0,6, 0,7, 0,8, 0,9 i 1:

![](images/12-7/GeometricParameterization_01.png)

```
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

Podobnie w przypadku powierzchni istnieje metoda *PointAtParameter*, która pobiera dwa argumenty — parametry u i v generowanego punktu.

Wyodrębnianie poszczególnych punktów na krzywej i powierzchni może być przydatne, ale skrypty często wymagają znajomości konkretnych cech geometrycznych przy danym parametrze, na przykład określających, w jakim kierunku skierowana jest krzywa lub powierzchnia. Metoda *CoordinateSystemAtParameter* umożliwia nie tylko znalezienie położenia, ale również zorientowanego obiektu CoordinateSystem przy danym parametrze krzywej lub powierzchni. Na przykład poniższy skrypt wyodrębnia zorientowane obiekty CoordinateSystem wzdłuż obróconej powierzchni i używa orientacji obiektów CoordinateSystem do generowania linii, które są przylegające prostopadle do powierzchni:

![](images/12-7/GeometricParameterization_02.png)

```
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

Jak wspomniano wcześniej, parametryzacja nie zawsze jest jednorodna na całej długości krzywej lub powierzchni, co oznacza, że parametr 0,5 nie zawsze odpowiada punktowi środkowemu, a 0,25 nie zawsze odpowiada punktowi w jednej czwartej odległości wzdłuż krzywej lub powierzchni. Aby można było obejść to ograniczenie, krzywe mają dodatkowy zestaw poleceń parametryzacji, które umożliwiają znalezienie punktu na określonych długościach wzdłuż krzywej.

