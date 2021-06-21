

## Składnia języka DesignScript

W nazwach węzłów w dodatku Dynamo można zauważyć wspólną cechę: w każdym węźle używana jest składnia *„.”* bez spacji. Jest tak dlatego, że tekst znajdujący się na górze każdego węzła odzwierciedla rzeczywistą składnię skryptów, a znak *„.”* (*notacja kropkowa*) oddziela element od metod, które możemy wywołać. W ten sposób można łatwo przekształcać skrypty wizualne w skrypty tekstowe.

![Nazwy węzłów](images/7-2/apple.jpg)

Omawiając notację kropkową przez analogię, zobaczmy, co możemy zrobić z parametrycznym jabłkiem w dodatku Dynamo. Poniżej przedstawiono kilka metod, które zastosujemy do jabłka, zanim zdecydujemy się je zjeść. (Uwaga: to nie są rzeczywiste metody dodatku Dynamo):

|Wersja zrozumiała dla człowieka|Notacja kropkowa|Wynik|
| -- | -- | -- |
|Jakiego koloru jest to jabłko?|Apple.color (Jabłko.kolor)|red (czerwone)|
|Czy to jabłko jest dojrzałe?|Apple.isRipe (Jabłko.czyDojrzałe)|true (prawda)|
|Ile waży to jabłko?|Apple.weight (Jabłko.waga)|6 uncji|
|Skąd pochodzi to jabłko?|Apple.parent (Jabłko.elementNadrzędny)|tree (drzewo)|
|Co tworzy to jabłko?|Apple.children (Jabłko.elementyPodrzędne)|seeds (nasiona)|
|Czy to jabłko jest uprawiane lokalnie?|Apple.distanceFromOrchard (Jabłko.odległośćOdSadu)|60 mil|

Można się nie zgodzić, ale wyniki w powyższej tabeli wskazują, że to bardzo smaczne jabłko. Możemy zastosować do niego funkcję *Apple.eat()* (Jabłko.zjeść).

### Notacja kropkowa w bloku kodu

Pamiętając o porównaniu z jabłkiem, przyjrzyjmy się węzłowi *Point.ByCoordinates* i zobaczmy, jak można utworzyć punkt za pomocą bloku kodu:

![Nazwy węzłów](images/7-2/cbn02.jpg)

> Składnia ```Point.ByCoordinates(0,10);``` w *bloku kodu* daje taki sam wynik jak węzeł *Point.ByCoordinates* w dodatku Dynamo, z tą różnicą, że umożliwia utworzenie punktu za pomocą jednego węzła. Jest to bardziej wydajne niż łączenie oddzielnego węzła ze współrzędnymi *„X”* i *„Y”*.

> 1. Używając polecenia *Point.ByCoordinates* w bloku kodu, określamy dane wejściowe w takiej samej kolejności jak w gotowym węźle: *(X,Y)*.

### Wywoływanie węzłów

Można wywołać dowolny zwykły węzeł w bibliotece za pomocą bloku kodu, o ile nie jest to specjalny *węzeł interfejsu użytkownika*, pełniący szczególną funkcję w interfejsie użytkownika. Można na przykład wywołać węzeł *Circle.ByCenterPointRadius*, ale wywołanie węzła *Watch 3D* nie miałoby sensu.

Zwykłe węzły (stanowiące większość biblioteki) należą do trzech ogólnych typów:

* **Create** — umożliwiają utworzenie (lub konstruowanie) elementu.
* **Action** — umożliwiają wykonywanie operacji na elementach.
* **Query** — umożliwiają pobranie właściwości istniejącego elementu.

Warto zauważyć, że biblioteka jest uporządkowana zgodnie z tymi kategoriami. Metody, czyli węzły, tych trzech typów są traktowane inaczej po wywołaniu w bloku kodu.

![Nazwy węzłów](images/7-2/cbn12.jpg)

#### Create

Kategoria „Create” umożliwia tworzenie geometrii od podstaw. Wprowadzamy wartości w bloku kodu od lewej do prawej. Te dane wejściowe mają taką samą kolejność, jak elementy wejściowe węzła uporządkowane od góry do dołu: ![Nazwy węzłów](images/7-2/demo1.jpg)

> Porównując węzeł *Line.ByStartPointEndPoint* i odpowiadającą mu składnię w bloku kodu, otrzymujemy te same wyniki.

#### Action

Określa operację wykonywaną na obiekcie danego typu. W dodatku Dynamo do wykonywania operacji na obiekcie używana jest *notacja kropkowa*, wspólna dla wielu języków kodowania. Po wpisaniu obiektu wpisz kropkę, a następnie nazwę operacji. Dane wejściowe metod typu Action są umieszczane w nawiasach, podobnie jak w przypadku metod typu Create, z tym że nie trzeba określać pierwszego elementu wejściowego widocznego w odpowiednim węźle. Zamiast tego należy określić element, na którym wykonywana jest operacja:

![Nazwy węzłów](images/7-2/cbn04.jpg)

> 1. Węzeł *Point.Add* stanowi węzeł typu Action, dlatego składnia nieco się różni.
2. Dane wejściowe to (1) *punkt* i (2) *wektor*, który ma być do niego dodany. W węźle *Code Block* nazwaliśmy ten punkt (obiekt) *„pt”*. Aby dodać wektor o nazwie *„vec” *do punktu *„pt”*, należy napisać *pt.Add(vec)*, czyli: obiekt, kropka, operacja. Operacja Add ma tylko jeden element wejściowy, czyli wszystkie elementy wejściowe węzła *Point.Add* z wyjątkiem pierwszego. Pierwszym elementem wejściowym węzła *Point.Add *jest sam punkt.

#### Query

Metody typu Query pobierają właściwość obiektu. Ponieważ sam obiekt jest elementem wejściowym, nie trzeba określać żadnych danych wejściowych. Nie są wymagane nawiasy.

![Nazwy węzłów](images/7-2/cbn05.jpg)

### A co ze skratowaniem?

Skratowanie w przypadku węzłów i bloków kodu nieco się różni. W przypadku węzłów użytkownik klika prawym przyciskiem myszy węzeł i wybiera opcję skratowania, którą chce zastosować. W bloku kodu użytkownik ma znacznie większą kontrolę nad strukturą danych. W krótkiej składni metody w bloku kodu wykorzystuje się *prowadnice replikacji* do określenia, w jaki sposób połączyć w pary kilka jednowymiarowych list. Numery w nawiasach ostrych „<>” definiują hierarchię wynikowej listy zagnieżdżonej: <1>,<2>,<3> i tak dalej. 
![Skratowanie](images/7-2/lacing.jpg)

> 1. W tym przykładzie użyjemy krótkiej składni do zdefiniowania dwóch zakresów (więcej informacji na temat krótkiej składni przedstawiono w następnej sekcji tego rozdziału). W skrócie ```0..1;``` odpowiada składni ```{0,1}```, a ```–3..–7 ```odpowiada składni ```{–3,–4,–5,–6,–7}```. W wyniku tej operacji zostaną zwrócone listy 2 wartości x i 5 wartości y. Jeśli nie użyjemy prowadnic replikacji z tymi niedopasowanymi listami, otrzymamy listę dwóch punktów, ponieważ tyle wynosi długość najkrótszej listy. Za pomocą prowadnic replikacji można znaleźć wszystkie możliwe kombinacje 2 i 5 współrzędnych (czyli **Iloczyn kartezjański**).
2. Użycie składni ```Point.ByCoordinates(x_vals<1>,y_vals<2>);``` umożliwia uzyskanie **dwóch** list, z których każda zawiera **pięć** elementów.
3. Użycie składni ```Point.ByCoordinates(x_vals<2>,y_vals<1>);``` umożliwia uzyskanie **pięciu** list, z których każda zawiera **dwa** elementy.

Przy tym zapisie możemy także określić, która lista będzie dominująca: 2 listy po 5 elementów czy 5 list po 2 elementy. W tym przykładzie zmiana kolejności prowadnic replikacji powoduje, że wynikiem jest lista wierszy punktów lub lista kolumn punktów w siatce.

### Konwersja węzłów na kod

Chociaż przyzwyczajenie się do metod bloków kodu może wymagać trochę wysiłku, w dodatku Dynamo dostępna jest funkcja konwersji węzłów na kod, która to ułatwia. Aby użyć tej funkcji, wybierz szyk węzłów na wykresie dodatku Dynamo, kliknij prawym przyciskiem myszy obszar rysunku i wybierz opcję „Węzeł do kodowania”. Dodatek Dynamo połączy te węzły w blok kodu zawierający wszystkie dane wejściowe i wyjściowe. To nie tylko doskonałe narzędzie do poznawania bloków kodu, ale też sposób na uzyskanie bardziej wydajnych i parametrycznych wykresów dodatku Dynamo. Poniższe ćwiczenie wymaga użycia konwersji węzłów na kod, więc nie przegap tego.

![Skratowanie](images/7-2/nodeToCode.jpg)

### Ćwiczenie

> Pobierz plik przykładowy do tego ćwiczenia (kliknij prawym przyciskiem myszy i wybierz polecenie Zapisz element docelowy jako). Pełna lista plików przykładowych znajduje się w Załączniku. [Dynamo-Syntax_Attractor-Surface.dyn](datasets/7-2/Dynamo-Syntax_Attractor-Surface.dyn)

Aby pokazać możliwości bloków kodu, przekształcimy istniejącą definicję pola atraktorowego w formę bloków kodu. Praca z istniejącą definicją pokazuje powiązania między blokiem kodu a skryptami wizualnymi i ułatwia naukę składni języka DesignScript. ![Ćwiczenie](images/7-2/Exercise/01.jpg)

> Rozpocznij od odtworzenia definicji z powyższego rysunku (lub otwarcia pliku przykładowego).

> 1. Zwróć uwagę, że skratowanie węzła *Point.ByCoordinates* zostało ustawione na *Iloczyn kartezjański*.
2. Każdy punkt na siatce jest przesunięty w górę w kierunku Z na podstawie odległości od punktu odniesienia.
3. Po odtworzeniu i pogrubieniu powierzchni w geometrii powstaje wypukłość zależna od odległości od punktu odniesienia.

![Ćwiczenie](images/7-2/Exercise/07.jpg)

> 1. Najpierw zdefiniujmy punkt odniesienia: ```Point.ByCoordinates(x,y,0);```. Użyjemy takiej samej składni metody *Point.ByCoordinates* jak ta widoczna w górnej części węzła tworzącego punkt odniesienia.
2. Zmienne *x* i *y* są wstawione do bloku kodu, dzięki czemu można je dynamicznie aktualizować za pomocą suwaków.
3. Dodaj *suwaki* do elementów wejściowych *bloku kodu* mające zakres od *–50* do *50*. W ten sposób można objąć cały obszar domyślnej siatki dodatku Dynamo.

![Ćwiczenie](images/7-2/Exercise/06.jpg)

> 1. W drugim wierszu *bloku kodu* zdefiniujemy krótką składnię zastępującą węzeł sekwencji liczb: ```coordsXY = (–50..50..#11);```. Omówimy to bardziej szczegółowo w następnej sekcji. Na razie wystarczy zauważyć, że ten skrót odpowiada węzłowi *Number Sequence* w skrypcie wizualnym.

![Ćwiczenie](images/7-2/Exercise/05.jpg)

> 1. Teraz chcemy utworzyć siatkę punktów na podstawie sekwencji *coordsXY*. W tym celu chcemy użyć składni *Point.ByCoordinates*, ale musimy też utworzyć *Iloczyn kartezjański* listy w taki sam sposób, jak w skrypcie wizualnym. W tym celu należy wpisać wiersz kodu: ```gridPts = Point.ByCoordinates(coordsXY<1>,coordsXY<2>,0);```. Nawiasy ostre oznaczają odniesienie do iloczynu kartezjańskiego.
2. W węźle *Watch 3D* widać, że na siatce dodatku Dynamo znajduje się siatka punktów.

![Ćwiczenie](images/7-2/Exercise/04.jpg)

> 1. Teraz trudniejsza część: chcemy przesunąć siatkę punktów w górę na podstawie ich odległości od punktu odniesienia. Najpierw nazwiemy nowy zestaw punktów *transPts*. Ponieważ przekształcenie jest operacją na istniejącym elemencie, zamiast węzła ```Geometry.Translate...``` użyjemy składni ```gridPts.Translate```.
2. Odczytując węzeł na obszarze rysunku, widzimy, że zawiera on trzy elementy wejściowe. Geometria do przekształcenia jest już zadeklarowana, ponieważ wykonujemy operację na tym elemencie (za pomocą składni *gridPts.Translate*). Pozostałe dwie wartości wejściowe, *direction* i *distance*, wstawimy w nawiasach funkcji.
3. Kierunek jest łatwy do ustawienia — użyjemy składni ```Vector.ZAxis()``` do przesunięcia w pionie.
4. Należy też obliczyć odległość między punktem odniesienia a każdym punktem siatki, dlatego wykonamy operację dotyczącą punktu odniesienia w ten sam sposób: ```refPt.DistanceTo(gridPts)```
5. Ostatni wiersz kodu pozwala uzyskać przekształcone punkty: ```transPts = gridPts.Translate(Vector.ZAxis(),refPt.DistanceTo(gridPts));```

![Ćwiczenie](images/7-2/Exercise/03.jpg)

> 1. Otrzymaliśmy siatkę punktów ze strukturą danych odpowiednią do utworzenia powierzchni NURBS. Konstruujemy powierzchnię, używając składni ```srf = NurbsSurface.ByControlPoints(transPts);```

![Ćwiczenie](images/7-2/Exercise/02.jpg)

> 1. Na koniec dodamy do powierzchni głębię, tworząc bryłę przy użyciu składni ```solid = srf.Thicken(5);``` W tym przypadku pogrubiliśmy powierzchnię o 5 jednostek w kodzie, ale zawsze możemy zadeklarować tę wartość jako zmienną (na przykład o nazwie *thickness*) i określać ją suwakiem.

### Upraszczanie wykresu dzięki konwersji węzłów na kod

Funkcja konwersji węzłów na kod umożliwia zautomatyzowanie całego ćwiczenia, które właśnie wykonaliśmy, jednym kliknięciem przycisku. Jest to nie tylko wydajny sposób tworzenia niestandardowych definicji i bloków kodu wielokrotnego użytku, ale również naprawdę przydatne narzędzie do nauki tworzenia skryptów w dodatku Dynamo:

![Ćwiczenie](images/7-2/Exercise/09.jpg)

> 1. Rozpocznij od istniejącego skryptu wizualnego z kroku 1. ćwiczenia. Wybierz wszystkie węzły, kliknij prawym przyciskiem myszy obszar rysunku i wybierz polecenie *„Węzeł do kodowania”*. To wystarczy.

![Ćwiczenie](images/7-2/Exercise/08.jpg)

> W dodatku Dynamo została automatycznie utworzona tekstowa wersja wykresu graficznego, wraz ze skratowaniem i innymi elementami. Przetestuj tę funkcję na własnych skryptach wizualnych i wykorzystaj możliwości bloków kodu.

