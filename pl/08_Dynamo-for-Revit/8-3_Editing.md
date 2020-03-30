

## Edytowanie

Zaawansowaną funkcją dodatku Dynamo jest możliwość edycji parametrów na poziomie parametrycznym. Na przykład algorytm generatywny lub wyniki symulacji mogą być używane do sterowania parametrami szyku elementów. W ten sposób zestaw wystąpień z tej samej rodziny może mieć niestandardowe właściwości w projekcie programu Revit.

### Parametry typu i wystąpienia

![Ćwiczenie](images/8-5/Exercise/32.jpg)

> 1. Parametry wystąpienia definiują aperturę paneli na powierzchni dachu, od współczynnika apertury 0,1 do 0,4.
2. Parametry oparte na typie są stosowane do każdego elementu na powierzchni, ponieważ mają one ten sam typ rodziny. Na przykład materiał każdego panelu może być sterowany przez parametr oparty na typie.

![Ćwiczenie](images/8-3/params.jpg)

> 1. Jeśli wcześniej skonfigurowano rodzinę programu Revit, należy pamiętać, że trzeba przypisać typ parametru (ciąg, liczbę, wymiar itp.). Podczas przypisywania parametrów z poziomu dodatku Dynamo należy używać odpowiedniego typu danych.
2. Dodatku Dynamo można również używać w połączeniu z wiązaniami parametrycznymi zdefiniowanymi we właściwościach rodziny programu Revit.

Jeśli chodzi o parametry w programie Revit, występują w nim parametry typu i parametry wystąpienia. Oba typy można edytować z poziomu dodatku Dynamo, ale w ćwiczeniu poniżej będziemy pracować z parametrami wystąpienia.

Uwaga: po zapoznaniu się z szeroką gamą zastosowań edycji parametrów można edytować dużą liczbę elementów w programie Revit za pomocą dodatku Dynamo. Może to być *kosztowna pod względem obliczeń* operacja, co oznacza, że może być powolna. W przypadku edytowania dużej liczby elementów można użyć funkcji zablokowania węzła, aby wstrzymać wykonywanie operacji programu Revit podczas tworzenia wykresu. Aby uzyskać więcej informacji na temat blokowania węzłów, zobacz sekcję „Blokowanie” w [rozdziale poświęconym bryłom](../05_Geometry-for-Computational-Design/5-6_solids.md#freezing).

#### Jednostki

Od wersji 0.8 dodatek Dynamo jest zasadniczo pozbawiony jednostek. Dzięki temu dodatek Dynamo pozostaje abstrakcyjnym środowiskiem programowania wizualnego. Węzły Dynamo, które wchodzą w interakcje z wymiarami programu Revit, będą odnosiły się do jednostek projektu programu Revit. Na przykład w razie ustawiania z poziomu dodatku Dynamo parametru długości w programie Revit ta liczba w dodatku Dynamo będzie wyrażona w domyślnych jednostkach w projekcie programu Revit. W ćwiczeniu poniżej używane są metry.

![Ćwiczenie](images/8-3/units.jpg)

> Aby szybko przekształcić jednostki, użyj węzła *„Convert Between Units”*. Jest to przydatne narzędzie do przekształcania jednostek długości, powierzchni i objętości na bieżąco.

### Ćwiczenie

> Pobierz pliki przykładowe do tego ćwiczenia (kliknij prawym przyciskiem myszy i wybierz polecenie Zapisz element docelowy jako). Pełna lista plików przykładowych znajduje się w załączniku.

> 1. [Editing.dyn](datasets/8-3/Editing.dyn)
2. [ARCH-Editing-BaseFile.rvt](datasets/8-3/ARCH-Editing-BaseFile.rvt)

W tym ćwiczeniu skupiono się na edycji elementów programu Revit bez wykonywania operacji geometrycznej w dodatku Dynamo. Nie importujemy tutaj geometrii dodatku Dynamo, a jedynie edytujemy parametry w projekcie programu Revit. To ćwiczenie jest podstawowe. Bardziej zaawansowani użytkownicy programu Revit powinni zwrócić uwagę na to, że choć używane są tu parametry wystąpienia bryły, ta sama logika może być stosowana do szyku elementów w celu dostosowywania ich w dużej skali. Wszystkie te operacje wykonuje się za pomocą węzła „Element.SetParameterByName”.

![Ćwiczenie](images/8-3/Exercise/04.jpg)

> Rozpocznij od przykładowego pliku programu Revit dla tej sekcji. Usunięto elementy konstrukcyjne i kratownice adaptacyjne z poprzedniej sekcji. W tym ćwiczeniu skoncentrujemy się na obsłudze parametrów w programie Revit i manipulowaniu w dodatku Dynamo.

> 1. Po wybraniu budynku w obszarze Bryła w programie Revit zostanie wyświetlony szyk parametrów wystąpienia w panelu właściwości.

![Ćwiczenie](images/8-3/Exercise/03.jpg)

> 1. Wybierz bryłę budynku za pomocą węzła *„Select Model Element”*.
2. Za pomocą węzła *„Element.Parameters”* możemy stosować zapytania dotyczące wszystkich parametrów tej bryły. Obejmuje to parametry typu i wystąpienia.

![Ćwiczenie](images/8-3/Exercise/32.jpg)

> 1. Aby znaleźć parametry docelowe, należy użyć węzła *Element.Parameters*. Można również wyświetlić panel właściwości z poprzedniego kroku, aby wybrać nazwy parametrów do edycji. W tym przypadku szukamy parametrów, które mają wpływ na duże przesunięcia geometryczne bryły budynku.
2. Wprowadzimy zmiany w elemencie programu Revit za pomocą węzła *Element.SetParameterByName*.
3. Używając węzła *Code Block*, zdefiniujemy listę tych parametrów, ujmując każdy z nich w cudzysłowy, aby wskazać, że są to ciągi. Można również użyć węzła List.Create z serią węzłów *„string”* połączonych z wieloma wejściami. Blok kodu jest po prostu szybszy i łatwiejszy. Należy się jednak upewnić, że ciąg jest w pełni zgodny z nazwą w programie Revit (z uwzględnieniem wielkości liter): ```{"BldgWidth","BldgLength","BldgHeight", "AtriumOffset", "InsideOffset","LiftUp"};```

![Ćwiczenie](images/8-3/Exercise/31.jpg)

> 1. Chcemy również wyznaczyć wartości dla każdego parametru. Dodaj do obszaru rysunku sześć węzłów *Integer Slider* i zmień ich nazwy na nazwy odpowiednich parametrów na liście. Ustaw też wartości każdego z tych suwaków zgodnie z powyższą ilustracją. W kolejności od góry do dołu: ```62, 92, 25, 22, 8, 12```
2. Zdefiniuj kolejny węzeł *Code Block* z listą o długości zgodnej z nazwami parametrów. W tym przypadku nazwiemy zmienne (bez cudzysłowów) tworzące wejścia dla węzła *Code Block.* Podłącz *suwaki* do odpowiednich wejść: ```{bw,bl,bh,ao,io,lu};```
3. Połącz węzeł *Code Block* z węzłem *„Element.SetParameterByName*”*. Gdy jest zaznaczona opcja automatycznego uruchamiania, wyniki zostaną wyświetlone automatycznie.

**Uwaga — ten pokaz działa z parametrami wystąpienia, ale nie z parametrami typu.*

![Ćwiczenie](images/8-3/Exercise/01.jpg) Podobnie jak w programie Revit, wiele z tych parametrów jest od siebie zależnych. Istnieją oczywiście takie kombinacje, przy których geometria może się załamać. Można rozwiązać ten problem z użyciem zdefiniowanych formuł we właściwościach parametru lub skonfigurować podobną logikę z operacjami matematycznymi w dodatku Dynamo (jest to dodatkowe wyzwanie dla osób, które chcą rozszerzyć to ćwiczenie).

> 1. Ta kombinacja nadaje bryle budynku nowy, interesujący wygląd: ```100, 92, 100, 25, 13, 51,4```

![Ćwiczenie](images/8-3/Exercise/30.jpg)

> 1. Skopiujmy wykres i skupmy się na oszkleniu fasady, które będzie zawierać system kratownicowy. W tym przypadku wyodrębnimy cztery parametry: ```{"DblSkin_SouthOffset","DblSkin_MidOffset","DblSkin_NorthOffset","Facade Bend Location"};```
2. Dodatkowo utworzymy węzły *Number Slider* i zmienimy ich nazwy na nazwy odpowiednich parametrów. Pierwsze trzy suwaki od góry do dołu powinny zostać ponownie odwzorowane na domenę [0,10], natomiast ostatni suwak — *„Facade Bend Location”* — powinien zostać ponownie odwzorowany na domenę [0,1]. Te wartości, od góry do dołu, powinny zaczynać się od tych (chociaż są dowolne): ```2,68, 2,64, 2,29, 0,5```
3. Zdefiniuj nowy węzeł *Code Block* i połącz suwaki: ```{so,mo,no,fbl};```

![Ćwiczenie](images/8-3/Exercise/00.jpg)

> 1. Zmieniając *suwaki* w tej części wykresu, możemy znacznie wzmocnić oszklenie fasady: ```9,98, 10,0, 9,71, 0,1```

