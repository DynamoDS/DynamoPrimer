

## Opracowywanie pakietu

Dodatek Dynamo udostępnia różne sposoby tworzenia pakietu do użytku osobistego lub do udostępnienia społeczności dodatku Dynamo. W poniższej analizie przypadku omówimy sposób konfigurowania pakietu przez dekonstrukcję istniejącego. Ta analiza przypadku opiera się na lekcjach z poprzedniego rozdziału — z udostępnieniem zestawu węzłów niestandardowych do odwzorowania geometrii, za pomocą współrzędnych UV, z jednej powierzchni Dynamo na inną.

### Odwzorowywanie na powierzchnię

Będziemy pracować z przykładowym pakietem demonstrującym odwzorowywanie punktów UV z jednej powierzchni na inną. W sekcji [Tworzenie węzła niestandardowego](../10_Custom-Nodes/10-2_Creating.md) tego podręcznika utworzyliśmy już podstawy narzędzia. W poniższych plikach przedstawiono, w jaki sposób można wykorzystać koncepcję odwzorowywania UV i opracować zestaw narzędzi dla publikowalnej biblioteki.

![](images/11-4/uvMap.jpg)

> Na tej ilustracji odwzorowujemy punkt z jednej powierzchni na drugą za pomocą współrzędnych UV. Pakiet jest oparty na tej koncepcji, ale z bardziej złożoną geometrią.

### Instalowanie pakietu

W poprzednim rozdziale omówiliśmy sposoby panelowania powierzchni w dodatku Dynamo na podstawie krzywych zdefiniowanych na płaszczyźnie XY. W tej analizie przypadku rozszerzono zakres tych pojęć o więcej wymiarów geometrii. Zainstalujemy ten pakiet jako wbudowany, aby zademonstrować, w jaki sposób został on opracowany. W następnej sekcji pokażemy, jak ten pakiet opublikowano.

![](images/11-4/Creating/Packages - 14.jpg)

> To jest łatwa część. W dodatku Dynamo przejdź do obszaru *Pakiety > Wyszukaj pakiet*.

![](images/11-4/Creating/Packages - 13.jpg)

> Wyszukaj pakiet *„MapToSurface”* (jest to jedno słowo).

> 1. Po znalezieniu pakietu kliknij dużą strzałkę pobierania po lewej stronie nazwy pakietu. Spowoduje to zainstalowanie pakietu w dodatku Dynamo.

![](images/11-4/Publishing/packages - ui.jpg)

> 1. Po zainstalowaniu węzły niestandardowe powinny być dostępne w grupie „DynamoPrimer” lub w bibliotece Dynamo. Po zainstalowaniu pakietu przeanalizujmy jego konfigurację.

### Węzły niestandardowe

Tworzony pakiet zawiera pięć węzłów niestandardowych utworzonych na potrzeby odniesienia. Poniżej przeanalizujemy funkcjonowanie poszczególnych węzłów. Niektóre węzły niestandardowe utworzone na podstawie innych węzłów niestandardowych oraz wykresy mają układ łatwo zrozumiały dla innych użytkowników.

![](images/11-4/Creating/Packages - 12.jpg)

> To jest prosty pakiet z pięcioma węzłami niestandardowymi. W poniższych krokach omówiono krótko konfigurację każdego węzła niestandardowego.

![](images/11-4/Creating/Packages - 11.jpg)

> **PointsToSurface:** jest to podstawowy węzeł niestandardowy, na którym oparto wszystkie pozostałe węzły odwzorowania. Mówiąc prościej: węzeł odwzorowuje punkt ze współrzędnej UV powierzchni źródłowej na położenie współrzędnej UV powierzchni docelowej. Ponieważ punkty są najbardziej elementarną geometrią, z której zbudowana jest bardziej złożona geometria, za pomocą tej logiki można odwzorować geometrię 2D — a nawet geometrię 3D — z jednej powierzchni na inną.

![](images/11-4/Creating/Packages - 10.jpg)

> **PolygonsToSurface:** logika wydłużania odwzorowanych punktów z geometrii 1D do geometrii 2D została prosto przedstawiona tutaj za pomocą wieloboków. Należy zwrócić uwagę, że zagnieździliśmy węzeł *„PointsToSurface”* w tym węźle niestandardowym. W ten sposób można odwzorować punkty każdego wieloboku na powierzchnię, a następnie ponownie wygenerować wielobok z tych odwzorowanych punktów. Zachowując właściwą strukturę danych (listę list punktów), możemy zachować osobne wieloboki po zredukowaniu ich do zbioru punktów.

![](images/11-4/Creating/Packages - 09.jpg)

> **NurbsCrvtoSurface:** tutaj ma zastosowanie ta sama logika co w węźle *„PolygonsToSurface”*. Jednak zamiast odwzorowywać punkty wieloboków, odwzorowujemy punkty kontrolne krzywej nurbs.

![](images/11-4/Creating/Packages - 08.jpg)

> **OffsetPointsToSurface:** ten węzeł staje się nieco bardziej złożony, ale koncepcja jest prosta: podobnie jak węzeł *„PointsToSurface”* węzeł ten odwzorowuje punkty z jednej powierzchni na inną. Jednak uwzględnia również punkty, które nie znajdują się na oryginalnej powierzchni źródłowej, pobiera ich odległość do najbliższego parametru UV i odwzorowuje tę odległość na wektor normalny powierzchni docelowej w odpowiedniej współrzędnej UV. Będzie to bardziej zrozumiałe podczas analizowania plików przykładowych.

![](images/11-4/Creating/Packages - 07.jpg)

> **SampleSrf:** jest to prosty węzeł, który tworzy powierzchnię parametryczną do odwzorowania z siatki źródłowej na powierzchnię falistą w plikach przykładowych.

### Pliki przykładowe

Pliki przykładowe można znaleźć w folderze głównym pakietu (w dodatku Dynamo przejdź do tego folderu, przechodząc do opcji *Pakiety > Zarządzaj pakietami*).

![](images/11-4/Publishing/packages - showRoot.jpg)

> W oknie zarządzania pakietami kliknij trzy pionowe kropki po prawej stronie elementu *„MapToSurface”* i wybierz opcję *„Pokaż katalog główny”.*

Po otwarciu katalogu głównego przejdź do folderu *„extra”* zawierającego wszystkie pliki w pakiecie, które nie są węzłami niestandardowymi. W tym miejscu przechowywane są pliki przykładowe (jeśli istnieją) dla pakietów Dynamo. Zrzuty ekranu poniżej ilustrują koncepcje przedstawione w poszczególnych plikach przykładowych.

![](images/11-4/Creating/Packages - 06.jpg)

> **01-PanelingWithPolygons:** za pomocą tego pliku przykładowego przedstawiono, jak można wykorzystać węzeł *„PointsToSurface”* do panelowania powierzchni w oparciu o siatkę prostokątów. Powinno to wyglądać znajomo, ponieważ podobny proces roboczy został przedstawiony w [poprzednim rozdziale](../10_Custom-Nodes/10-2_Creating.md).

![](images/11-4/Creating/Packages - 05.jpg)

> **02-PanelingWithPolygons-II:** za pomocą podobnego procesu roboczego w tym pliku ćwiczeniowym przedstawiono konfigurację odwzorowywania okręgów (lub wieloboków reprezentujących okręgi) między powierzchniami. Wykorzystywany jest węzeł *„PolygonsToSurface”*.

![](images/11-4/Creating/Packages - 04.jpg)

> **03-NurbsCrvsAndSurface:** ten plik przykładowy zwiększa złożoność dzięki współdziałaniu z węzłem „NurbsCrvToSurface”. Powierzchnia docelowa jest odsunięta o daną odległość, a krzywa nurbs jest odwzorowana na oryginalną powierzchnię docelową i powierzchnię odsunięcia. Z tego miejsca dwie odwzorowane krzywe są wyciągane w celu utworzenia powierzchni, która następnie zostaje pogrubiona. Ta wynikowa bryła ma pofalowanie, które jest reprezentacją wektorów normalnych powierzchni docelowej.

![](images/11-4/Creating/Packages - 03A.jpg)

> **04-PleatedPolysurface-OffsetPoints:** w tym pliku przykładowym przedstawiono sposób odwzorowania powierzchni PolySurface z zakładką z powierzchni źródłowej na powierzchnię docelową. Powierzchnie źródłowa i docelowa są prostokątną powierzchnią łączącą odpowiednio siatkę i powierzchnię obrotową.

![](images/11-4/Creating/Packages - 03.jpg)

> **04-PleatedPolysurface-OffsetPoints:** powierzchnia PolySurface odwzorowana z powierzchni źródłowej na powierzchnię docelową.

![](images/11-4/Creating/Packages - 01.jpg)

> **05-SVG-Import:** ponieważ węzły niestandardowe mogą odwzorowywać różne typy krzywych, ten ostatni plik odnosi się do pliku SVG wyeksportowanego z programu Illustrator i odwzorowuje zaimportowane krzywe na powierzchnię docelową.

![](images/11-4/Creating/Packages - 00.jpg)

> **05-SVG-Import:** przez przeanalizowanie składni pliku .svg krzywe są przekształcane z formatu .xml na krzywe PolyCurve dodatku Dynamo.

![](images/11-4/Creating/Packages - 02.jpg)

> **05-SVG-Import:** zaimportowane krzywe są odwzorowane na powierzchnię docelową. Dzięki temu można jawnie (punkt-i-kliknięcie) projektować panelowanie w programie Illustrator, importować je do dodatku Dynamo i stosować do powierzchni docelowej.

