

## Strategie dotyczące skryptów

Skrypty tekstowe opracowywane środowisku wizualnym pozwalają na korzystanie z zaawansowanych, wizualnych powiązań przy użyciu języków DesignScript, Python i ZeroTouch (C#). Można dzięki nim udostępniać elementy takie jak suwaki danych wejściowych, umieszczać całe złożone operacje w skryptach DesignScript, a także korzystać z zaawansowanych narzędzi i bibliotek Python oraz C# — wszystko to w tym samym obszarze roboczym. Efektywne stosowanie tych strategii umożliwia dostosowywanie, poprawianie czytelności i zwiększanie wydajności programu. Poniżej zebrano wskazówki, które pomagają w pracy nad skryptami wizualnymi i tekstowymi.

![](images/13-1/cad-chart-textual.jpg)

### Kiedy warto użyć skryptu

Skrypty tekstowe pozwalają tworzyć relacje o wyższej złożoności niż programowanie wizualne, choć obie techniki mają wiele podobnych funkcji. Dzieje się tak, ponieważ węzły to w praktyce wstępnie spakowany kod. Prawdopodobnie można napisać cały program Dynamo w języku DesignScript lub Python. Stosujemy jednak skrypty wizualne, ponieważ interfejs oparty na węzłach i połączeniach między nimi pozwala w intuicyjny, graficzny sposób prezentować przepływ informacji. Wiedza o tym, kiedy skrypty tekstowe dają więcej możliwości niż wizualne, jest bardzo przydatna — ułatwia podjęcie decyzji, czy warto zrezygnować z intuicyjnej wizualizacji połączonych węzłów. Poniższe wskazówki pomagają określić, kiedy użyć skryptu i który język wybrać.

**Zastosowania skryptów tekstowych:**

* Pętle

* Rekursja

* Dostęp do bibliotek zewnętrznych

**Wybór języka:**

||Pętle|Rekursja|Kondensowanie węzłów|Biblioteki zewnętrzne|Krótka składnia|
| -- | -- | -- | -- | -- | -- |
|**DesignScript**|Tak|Tak|Tak|Nie|Tak|
|**Python**|Tak|Tak|Częściowo|Tak|Nie|
|**ZeroTouch (C#)**|Nie|Nie|Nie|Tak|Nie|

> [Materiały referencyjne dotyczące skryptów](http://primer.dynamobim.org/en/12_Best-Practice/12-3_Scripting-Reference.html) zawierają listę funkcji wszystkich bibliotek dodatku Dynamo.

### Myślenie parametryczne

Podczas tworzenia skryptów w dodatku Dynamo, który jako środowisko jest oparty na parametrach, warto stosować konstrukcje kodu dostosowane do platformy węzłów i połączeń, na której kod będzie działać. Węzeł zawierający skrypt tekstowy należy traktować jako każdy inny węzeł programu — obiekt zawierający określone wejścia, funkcję i oczekiwane dane wyjściowe. W ten sposób kod znajdujący się w węźle od początku zawiera kilka zmiennych, które może przetwarzać. Tak powstaje czysty system parametryczny. Poniższe wskazówki ułatwiają integrację kodu z programem wizualnym.

**Identyfikacja zmiennych zewnętrznych:**

* Postaraj się określić parametry związane z danym problemem projektowym, aby utworzyć model bezpośrednio oparty na tych danych.

* Zanim napiszesz kod, zidentyfikuj te zmienne:

  * Minimalny zestaw danych wejściowych

  * Zamierzone dane wyjściowe

  * Stałe

![Zmienne](images/13-1/variables.jpg)

> Wiele zmiennych jest znanych przed przystąpieniem do pisania kodu.

> 1. Powierzchnia, na której będziemy symulować opady deszczu.
2. Żądana liczba kropli deszczu (agentów).
3. Odległość, jaką mają przebywać krople deszczu.
4. Przełącznik między zejściem najbardziej stromą ścieżką a trawersem po powierzchni.
5. Węzeł Python zawierający odpowiednią liczbę wejść.
6. Blok kodu powodujący, że zwracane krzywe są niebieskie.

**Projektowanie relacji wewnętrznych:**

* Parametry (zmienne) można edytować, aby zmienić te informacje lub wynik równania albo dane wyjściowe systemu.

* Gdy elementy skryptu mają związek logiczny, warto zdefiniować je jako wzajemnie zależne funkcje. Dzięki temu modyfikacja jednego elementu spowoduje proporcjonalną aktualizację drugiego.

* Należy ograniczyć liczbę wejść, udostępniając tylko najważniejsze parametry:

  * Jeśli zestaw parametrów można obliczyć na podstawie innych parametrów nadrzędnych, wystarczy udostępnić same parametry nadrzędne jako wejścia skryptu. Ułatwia to korzystanie ze skryptu, gdyż upraszcza jego interfejs.

![Parametry](images/13-1/parameters.JPG)

> Moduły kodu z przykładu w [węźle Python](http://primer.dynamobim.org/en/09_Custom-Nodes/9-4_Python.html).

> 1. Wejścia.
2. Zmienne wewnętrzne skryptu.
3. Pętla realizująca funkcję skryptu przy użyciu tych danych i zmiennych.
> Wskazówka: warto zająć się całym procesem równie uważnie jak samym rozwiązaniem.

**Ograniczanie powtórzeń (reguła DRY):**

* Gdy ten sam proces można opisać w skrypcie na różne sposoby, powielone reprezentacje z czasem zaczynają się różnić, co może znacznie utrudnić konserwację i analizę kodu, a nawet doprowadzić do jego wewnętrznej sprzeczności.

* Reguła DRY („don't repeat yourself" — nie powtarzaj się) zaleca, aby każdy element informacji miał w systemie pojedynczą, jednoznaczną i ustaloną reprezentację:

  * Poprawne stosowanie tej reguły powoduje, że wszystkie powiązane elementy skryptu zmieniają się w przewidywalny, spójny sposób, a między niepowiązanymi elementami nie powstają żadne relacje logiczne.

```
### BAD
for i in range(4):
for j in range(4):
point = Point.ByCoordinates(3*i, 3*j, 0)
points.append(point)
```

```
### GOOD
count = IN[0]
pDist = IN[1]

for i in range(count):
for j in range(count):
point = Point.ByCoordinates(pDist*i, pDist*j, 0)
points.append(point)
```

> Wskazówka: zanim powielisz elementy skryptu (na przykład stałą w powyższym przykładzie), zastanów się, czy można użyć połączenia z elementem źródłowym.

### Konstrukcje modułowe

Z czasem kod staje się dłuższy i bardziej złożony, a jego ogólny zarys (główny algorytm) — nieczytelny. Coraz trudniej jest też sprawdzać, co i gdzie się dzieje, wykrywać błędy, integrować inny kod czy przypisywać zadania programistyczne. Aby uniknąć tych problemów, zalecane jest pisanie kodu w modułach. Taka strategia porządkowania polega na rozdzielaniu kodu na części wykonujące różne zadania. Poniżej przedstawiono wskazówki ułatwiające zarządzanie kodem przez stosowanie modułów.

**Pisanie kodu w modułach:**

* Moduł jest to zgrupowany kod wykonujący określone zadanie, analogicznie do węzła Dynamo w przestrzeni roboczej.

* Może to obejmować wszelkie zadania, które powinny być wizualnie oddzielone od sąsiadującego kodu (funkcje, klasy, grupy danych wejściowych czy importowane biblioteki).

* Pisanie kodu w modułach pozwala korzystać z intuicyjnego, wizualnego mechanizmu węzłów, a jednocześnie uzyskiwać złożone relacje dostępne tylko za pośrednictwem skryptów.

![Moduły](images/13-1/modules.JPG)

> Te pętle wywołują klasę o nazwie „agent”, którą zaprogramujemy w ramach ćwiczenia.

> 1. Moduł kodu definiujący punkt początkowy każdego agenta.
2. Moduł kodu aktualizujący agenta.
3. Moduł kodu rysujący ślad do ścieżki dla agenta.

**Rozpoznawanie możliwości ponownego użycia kodu:**

* Jeśli okaże się, że kod wykonuje te same (lub bardzo podobne) działania w kilku miejscach, warto zebrać go w funkcję, którą będzie można wywoływać.

* Funkcje zarządzające sterują przepływem programu i zawierają przede wszystkim wywołania funkcji roboczych, które wykonują zadania niskiego poziomu, takie jak przenoszenie danych między konstrukcjami.

![](../12_Best-Practice/images/13-1/managerfunctions.jpg)

> Ten przykładowy kod tworzy kule o promieniach i kolorach zależnych od wartości Z punktów środkowych.

> 1. Zawiera dwie nadrzędne robocze funkcje: jedną tworzącą kule o zadanych promieniach i jedną wyświetlającą kolory zależnie od wartości Z punktów środkowych.
2. Nadrzędna funkcja zarządzająca łączy obie funkcje robocze. Jej wywołanie powoduje wywołanie obu zawartych w niej funkcji.

**Wyświetlanie tylko tego, co powinno być widoczne:**

* Interfejs modułu określa, jakie elementy są podawane i wymagane przez moduł.

* Po zdefiniowaniu interfejsów między jednostkami można oddzielnie pracować nad szczegółowym projektem każdej jednostki.

**Rozdzielność i możliwość zastąpienia:**

* Moduły nie wiedzą nic o innych i nie zależą od nich.

**Ogólne sposoby podziału na moduły:**

* Grupowanie kodu:

```
# IMPORT LIBRARIES
import random
import math
import clr
clr.AddReference('ProtoGeometry')
from Autodesk.DesignScript.Geometry import *

# DEFINE PARAMETER INPUTS
surfIn = IN[0]
maxSteps = IN[1]
```

* Funkcje:

```
def get_step_size():
area = surfIn.Area
stepSize = math.sqrt(area)/100
return stepSize

stepSize = get_step_size()
```

* Klasy:

```
class MyClass:
i = 12345

def f(self):
return 'hello world'

numbers = MyClass.i
greeting = MyClass.f
```

### Ciągłe sprawdzanie

Podczas pracy nad skryptami tekstowymi w dodatku Dynamo warto w sposób ciągły sprawdzać, czy tworzony kod odpowiada oczekiwaniom. Dzięki temu nieprzewidziane problemy, takie takim jak błędy składni, niezgodności logiczne, niedokładne wartości czy nieprawidłowe dane wyjściowe, są szybko wykrywane i rozwiązywane — nie pozostają ukryte do samego końca pracy. Skrypty tekstowe istnieją w węzłach na obszarze projektowania, dlatego są już zintegrowane z przepływem danym programu wizualnego. Ułatwia to ciągłe monitorowanie skryptu. Wystarczy przypisać mu oczekiwane dane wyjściowe, uruchomić program i sprawdzić wyjście skryptu przy użyciu węzła obserwacyjnego (Watch). Poniższe wskazówki ułatwiają badanie skryptów podczas ich tworzenia.

**Ciągłe testowanie:**

* Zawsze po ukończeniu pracy nad grupą funkcji:

  * Sprawdź ogólny zarys kodu.

  * Przemyśl to krytycznie. Czy współpracownik zrozumie, co ten kod robi? Czy ten kod jest potrzebny? Czy tę funkcję można wykonać wydajniej? Czy powstają niepotrzebne duplikaty lub zależności?

  * Wykonaj krótki test, aby sprawdzić, czy zwracane dane mają sens.

* Przypisz dane, które ostatnio przetwarzał skrypt, jako wyjściowe, tak aby węzeł zawsze generował odpowiednie dane w razie aktualizacji skryptu:

![Moduły](images/13-1/flex.jpg)

> Przykładowy kod dotyczący zginania z [węzła Python](http://primer.dynamobim.org/en/09_Custom-Nodes/9-4_Python.html).

> 1. Sprawdź, czy wszystkie krawędzie bryły są zwracane jako krzywe do tworzenia ramki ograniczającej.
2. Sprawdź, czy liczniki wejściowe są prawidłowo konwertowane na zakresy.
3. Sprawdź, czy układ współrzędnych został poprawnie przeniesiony i obrócony w tej pętli.

**Przewidywanie przypadków brzegowych:**

* Podczas pracy nad skryptem podaj minimalne i maksymalne wartości danych wejściowych (leżące w ich domenie), aby sprawdzić, czy program nadal działa w warunkach ekstremalnych.

* Nawet jeśli program działa w takiej sytuacji, sprawdź czy zwraca niezamierzone wartości null, puste lub zero.

* Czasami tylko przypadki brzegowe pozwalają wykryć błędy wskazujące na ukryty problem w skrypcie.

  * Po zbadaniu, co wywołało błąd, można zdecydować, czy należy rozwiązać go wewnętrznie, czy trzeba zmienić definicję domeny parametrów w celu jego uniknięcia.

> Wskazówka: Zawsze należy zakładać, że użytkownik użyje wszystkich kombinacji wszystkich wartości wejściowych, do których ma dostęp. Zapobiega to przykrym niespodziankom.

### Efektywne debugowanie

Debugowanie jest to proces usuwania błędów ze skryptu. Oprócz oczywistych błędów obejmuje to problemy z wydajnością i dokładnością, a także wszelkie niezamierzone skutki działania skryptu. Czasami usunięcie błędu wymaga tylko poprawienia pisowni nazwy zmiennej, ale niekiedy trzeba zmienić całą strukturę skryptu. W sytuacji idealnej ciągłe sprawdzanie skryptu podczas pracy nad nim pozwala wcześnie wykrywać problemy. Nie daje to jednak gwarancji braku błędów. Poniżej omówiono szereg z powyższych wzorców postępowania w sposób ułatwiający systematyczne usuwanie błędów.

**Używanie podglądu:**

* Warto sprawdzać dane zwracane w różnych miejscach kodu, przypisując je do zmiennej wyjściowej (w sposób podobny do sprawdzania możliwości programu).

**Pisanie zrozumiałych komentarzy:**

* Debugowanie modułu kodu jest o wiele łatwiejsze, gdy jasno opisano jego zamierzony wynik.

```
# Loop through X and Y
for i in range(xCount):
for j in range(yCount):

# Rotate and translate the coordinate system
toCoord = fromCoord.Rotate(solid.ContextCoordinateSystem.Origin,Vector.ByCoordinates(0,0,1),(90*(i+j%seed)))
vec = Vector.ByCoordinates((xDist*i),(yDist*j),0)
toCoord = toCoord.Translate(vec)

# Transform the solid from the source coord system to the target coord system and append to the list
solids.append(solid.Transform(fromCoord,toCoord))
```

> W normalnej sytuacji generuje to nadmiar komentarzy i pustych wierszy, ale podczas debugowania warto podzielić algorytm na łatwe w obsłudze fragmenty.

**Wykorzystanie kodu modułowego:**

* Jako źródło problemu można wskazać określone moduły.

* Po wykryciu wadliwego modułu rozwiązanie problemu staje się o wiele prostsze.

* Gdy trzeba zmodyfikować program, można łatwiej zmienić kod umieszczony w modułach:

  * Nowe lub debugowane moduły można wstawić do istniejącego programu bez ryzyka modyfikacji reszty programu.

![](images/13-1/debug.jpg)

> Debugowanie przykładowego pliku z [węzła Python](http://primer.dynamobim.org/en/09_Custom-Nodes/9-4_Python.html).

> 1. Geometria wejściowa zwraca ramkę ograniczającą większą niż ta geometria, co widać po przypisaniu zmiennych xDist i yDist jako wyjściowych.
2. Krzywe krawędzi geometrii wejściowej zwracają prawidłową ramkę ograniczającą z poprawnymi odległościami xDist i yDist.
3. Moduł kodu wstawiony w celu rozwiązania problemu z wartościami xDist i yDist.

### Ćwiczenie — najbardziej stroma ścieżka

> Pobierz plik przykładowy do tego ćwiczenia (kliknij prawym przyciskiem myszy i wybierz opcję Zapisz element docelowy jako). Pełna lista plików przykładowych znajduje się w załączniku. [SteepestPath.dyn](datasets/13-1/SteepestPath.dyn)

Pamiętając o wzorcach postępowania pisania skryptów tekstowych, napiszemy skrypt symulujący deszcz. Zastosowaliśmy wzorce postępowania do zdezorganizowanego programu w ramach strategii dotyczących wykresu, ale praca nad skryptami tekstowymi jest trudniejsza. Relacje logiczne zdefiniowane w skryptach tekstowych nie są tak widoczne i często są ściśle powiązane ze skomplikowanym kodem. Skrypty tekstowe oferują zaawansowane możliwości, ale wymagają też więcej uwagi w organizacji. Przyjrzymy się wszystkim krokom i zastosujemy do nich wzorce postępowania.

![](../12_Best-Practice/images/13-1/gd01.JPG)

> Nasz skrypt wprowadził powierzchnię zdeformowaną przy użyciu punktu przyciągania.

Na samym początku musimy zaimportować wymagane biblioteki dodatku Dynamo. Zapewni to globalny dostęp do funkcji dodatku Dynamo w kodzie Python.

![](../12_Best-Practice/images/13-1/gd02.jpg)

> Tutaj należy zaimportować wszystkie biblioteki, których zamierzamy użyć.

Następnie musimy zdefiniować dane wejściowe i wyjściowe skryptu, które będą widoczne jako porty wejściowe węzła. Na tych zewnętrznych danych wejściowych opiera się nasz skrypt. Dzięki nim tworzymy środowisko parametryczne.

![](../12_Best-Practice/images/13-1/walkthrough-inputs.jpg)

> Musimy zdefiniować dane wejściowe odpowiadające zmiennym skryptu Python i określić oczekiwane dane wyjściowe:

> 1. Powierzchnia, po której chcemy wykonać zejście.
2. Liczba poruszających się agentów.
3. Maksymalna liczba kroków, jakie mogą wykonać agenty.
4. Przełącznik przejścia najkrótszą ścieżką w dół powierzchni lub jej trawersowania.
5. Identyfikatory wejść węzła Python odpowiadające danym wejściowym skryptu (IN[0], IN[1]).
6. Krzywe wyjściowe, które można wyświetlić w innym kolorze.

Teraz zastosujemy metodę modularności i utworzymy treść skryptu. Symulowanie najkrótszej ścieżki w dół powierzchni z wielu punktów początkowych to złożone zadanie, które będzie wymagało wielu funkcji. Zamiast wywoływać różne funkcje w całym skrypcie, możemy podzielić kod na moduły — zebrać je w jednej klasie, naszym agencie. Poszczególne funkcje tej klasy (modułu) można wywoływać z różnymi zmiennymi. Można też użyć ich ponownie w innym skrypcie.

![](../12_Best-Practice/images/13-1/gd04.jpg)

> Musimy zdefiniować klasę, która stanowi schemat agenta mającego przechodzić po powierzchni, przy każdym kroku wybierając najbardziej stromy kierunek:

> 1. Nazwa.
2. Atrybuty globalne, które mają wszystkie agenty.
3. Atrybuty wystąpienia, które są unikalne dla każdego agenta.
4. Funkcja wykonywania kroku.
5. Funkcja katalogowania położenia każdego kroku na liście śladów.

Zainicjujemy agenty, definiując ich położenie początkowe. Teraz warto sprawdzić skrypt i upewnić się, że klasa agenta działa.

![](../12_Best-Practice/images/13-1/gd05.jpg)

> Musimy utworzyć wystąpienia wszystkich agentów, które chcemy obserwować na ich drodze w dół powierzchni, a także zdefiniować ich atrybuty początkowe:

> 1. Nowa, pusta lista śladów.
2. Miejsce rozpoczęcia przemieszczania na powierzchni.
3. Przypisaliśmy listę agentów jako wyjście, aby sprawdzić, co skrypt zwraca w tym miejscu. Jest zwracana prawidłowa liczba agentów, ale musimy jeszcze raz sprawdzić skrypt później, aby zweryfikować zwracaną geometrię.

Aktualizowanie każdego agenta przy każdym kroku.

![](../12_Best-Practice/images/13-1/gd06.jpg)

> Następnie musimy wprowadzić pętlę zagnieżdżoną, która dla każdego agenta przy każdym kroku aktualizuje i rejestruje jego położenie na liście śladów. Na każdym kroku musimy też upewnić się, że agent nie osiągnął punktu powierzchni, z którego nie może wykonać następnego kroku w dół. Jeśli ten warunek jest spełniony, kończymy podróż agenta.

Teraz nasze agenty są w pełni zaktualizowane. Zwrócimy reprezentującą je geometrię.

![](../12_Best-Practice/images/13-1/gd07.jpg)

> Gdy wszystkie agenty osiągną limit podróży w dół lub maksymalną liczbę kroków, utworzymy krzywą złożoną łączącą wszystkie punkty na ich liście śladów i wygenerujemy wyjście zawierające ślady krzywych złożonych.

Nasz skrypt wykrywający najbardziej strome ścieżki.

![](../12_Best-Practice/images/13-1/gd07-02.jpg)

> 1. Ustawienie wstępne symulujące padanie deszczu na oryginalną powierzchnię.
2. Zamiast wykrywania najbardziej stromej ścieżki, agenty można przełączyć w tryb trawersowania powierzchni.

![](../12_Best-Practice/images/13-1/gd08.jpg)

> Cały skrypt tekstowy Python.

