

# Powierzchnie: interpolowane, punkty kontrolne, wyciągnięcie złożone, obrót

Dwuwymiarowym odpowiednikiem krzywej NurbsCurve jest powierzchnia NurbsSurface. Tak jak krzywą NurbsCurve o dowolnym kształcie powierzchnię NurbsSurface można skonstruować za pomocą dwóch podstawowych metod: wstawienie zestawu punktów bazowych i interpolacja przestrzeni między nimi w dodatku Dynamo oraz jawne określenie punktów kontrolnych powierzchni. Podobnie jak krzywe swobodne powierzchnie interpolowane są przydatne, gdy projektant dokładnie wie, jaki kształt musi przyjąć powierzchnia, lub jeśli projekt wymaga, aby powierzchnia przechodziła przez określone punkty. Z drugiej strony powierzchnie utworzone przez punkty kontrolne mogą być bardziej użyteczne w projektach z analizą różnych poziomów wygładzania.

Aby utworzyć powierzchnię interpolowaną, wystarczy wygenerować dwuwymiarową kolekcję punktów przybliżających kształt powierzchni. Kolekcja musi być prostokątna, czyli nieposzarpana. Metoda *NurbsSurface.ByPoints* tworzy powierzchnię z tych punktów.

![](images/12-6/Surfaces_01.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

Swobodne powierzchnie NurbsSurface można również tworzyć przez określenie źródłowych punktów kontrolnych powierzchni. Podobnie jak w przypadku krzywych NurbsCurve punkty kontrolne reprezentują czworokątną siatkę z prostymi segmentami, które w zależności od stopnia powierzchni są wygładzane do końcowej postaci powierzchni. Aby utworzyć powierzchnię NurbsSurface za pomocą punktów kontrolnych, należy przekazać dwa dodatkowe parametry dla metody *NurbsSurface.ByPoints*, wskazując stopnie krzywych źródłowych w obu kierunkach powierzchni.

![](images/12-6/Surfaces_02.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

Można zwiększyć stopień powierzchni NurbsSurface, aby zmienić wynikową geometrię powierzchni:

![](images/12-6/Surfaces_03.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

Powierzchnie mogą być tworzone nie tylko przez interpolację między punktami z zestawu wejściowego — mogą one być też tworzone przez interpolację między zestawem krzywych bazowych. Jest to nazywane wyciągnięciem złożonym. Krzywa wyciągnięta jest tworzona za pomocą konstruktora *Surface.ByLoft* z kolekcją krzywych wejściowych jako jedynym parametrem.

![](images/12-6/Surfaces_04.png)

```
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

Powierzchnie obrotu są dodatkowym typem powierzchni tworzonym przez przeciągnięcie krzywej bazowej wokół osi środkowej. Jeśli powierzchnie interpolowane są dwuwymiarowym odpowiednikiem krzywych interpolowanych, powierzchnie obrotu są dwuwymiarowym odpowiednikiem okręgów i łuków.

Powierzchnie obrotu są określone przez krzywą bazową reprezentującą „krawędź” powierzchni; początek osi, punkt bazowy powierzchni; kierunek osi, „główny” kierunek środkowy; kąt początkowy przeciągnięcia; kąt końcowy przeciągnięcia. Są one używane jako dane wejściowe konstruktora *Surface.Revolve*.

![](images/12-6/Surfaces_05.png)

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

surf = Surface.ByRevolve(crv, axis_origin, axis, 0,
360);
```

