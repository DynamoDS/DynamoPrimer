

## Węzły niestandardowe

Dodatek Dynamo oferuje wiele węzłów podstawowych, które umożliwiają wykonywanie szerokiej gamy zadań programowania wizualnego. Czasami szybszym, bardziej eleganckim lub łatwiejszym do udostępnienia rozwiązaniem jest utworzenie własnych węzłów. Można ich ponownie używać w różnych projektach, dzięki czemu wykres staje się czytelniejszy. Można je też przekazywać do menedżera pakietów i udostępniać globalnej społeczności dodatku Dynamo.

![](images/10-1/cn.jpg)

### Czyszczenie wykresu

Węzły niestandardowe są tworzone przez zagnieżdżanie innych węzłów i węzłów niestandardowych wewnątrz „węzła niestandardowego Dynamo”, który można traktować koncepcyjnie jako kontener. Gdy ten węzeł kontenera zostaje wykonany na wykresie, wykonywana jest cała jego zawartość, co umożliwia ponowne używanie i udostępnianie przydatnego połączenia węzłów.

### Przystosowywanie się do zmiany

Jeśli na wykresie znajduje się wiele kopii węzła niestandardowego, można zaktualizować je wszystkie, edytując podstawowy węzeł niestandardowy. Umożliwia to płynną aktualizację wykresu przez dostosowanie rozwiązania do zmian, które mogą wystąpić w procesie roboczym lub w projekcie.

### Współdzielenie pracy

Prawdopodobnie największą zaletą węzłów niestandardowych jest możliwość ich udostępniania. Jeśli „użytkownik zaawansowany” utworzy złożony wykres Dynamo i przekaże go projektantowi, który jest nowym użytkownikiem dodatku Dynamo, może on uprościć ten wykres do elementów najistotniejszych dla interakcji projektowych. Węzeł niestandardowy można otworzyć w celu edycji wewnętrznego wykresu, zachowując przy tym prostotę „kontenera”. Dzięki tej procedurze węzły niestandardowe umożliwiają użytkownikom dodatku Dynamo projektowanie wykresów, które będą przejrzyste i intuicyjne.

![](images/10-1/customNodeDiagram.jpg)

### Wiele sposobów tworzenia węzła

W dodatku Dynamo można tworzyć węzły niestandardowe na wiele sposobów. W przykładach w tym rozdziale utworzymy węzły niestandardowe bezpośrednio za pomocą interfejsu użytkownika dodatku Dynamo. Programista interesujący się formatowaniem C# lub Zero-Touch może skorzystać z [tej strony](https://github.com/DynamoDS/Dynamo/wiki/How-To-Create-Your-Own-Nodes) na stronie wiki dodatku Dynamo, aby zapoznać się z bardziej szczegółowym omówieniem.

### Środowisko węzłów niestandardowych

Przejdźmy do środowiska węzłów niestandardowych i utwórzmy prosty węzeł, aby obliczyć wartość procentową. Środowisko węzłów niestandardowych różni się od środowiska wykresu Dynamo, ale obsługuje się je zasadniczo tak samo. Utwórzmy więc pierwszy węzeł niestandardowy.

![Wprowadzenie do węzłów niestandardowych](images/10-1/CustomNodes01.jpg)

> Aby utworzyć węzeł niestandardowy od podstaw, uruchom dodatek Dynamo i wybierz opcję Węzeł niestandardowy lub naciśnij kombinację klawiszy Ctrl+Shift+N w obszarze rysunku.

![Okno dialogowe Węzły niestandardowe](images/10-1/CustomNodes02.jpg)

> W oknie dialogowym Właściwości węzła niestandardowego przypisz nazwę, opis i kategorię.

> 1. **Nazwa:** Percentage
2. **Opis**: oblicza procent (ang. percentage) jednej wartości względem innej.
3. **Kategoria:** Core.Math

![Obszar rysunku węzłów niestandardowych](images/10-1/CustomNodes03.jpg)

> Spowoduje to otwarcie obszaru rysunku z żółtym tłem, co oznacza, że użytkownik pracuje w węźle niestandardowym. W tym obszarze rysunku użytkownik ma dostęp do wszystkich podstawowych węzłów Dynamo oraz do węzłów **Input** i **Output**, które opisują dane wpływające do węzła niestandardowego i wypływające z niego. Można je znaleźć w obszarze *Podstawowe > Dane wejściowe*.

![Obszar rysunku węzłów niestandardowych](images/10-1/CustomNodes04.jpg)

> 1. **Węzły Input:** węzły wejściowe tworzą porty wejściowe w węźle niestandardowym. Składnia węzła wejściowego to: *nazwa_węzła_wejściowego : datatype = wartość_domyślna (opcjonalnie).*

2. **Węzły Output:** podobnie jak w przypadku węzłów wejściowych te węzły tworzą porty wyjściowe w węźle niestandardowym. Rozważ dodanie komentarza niestandardowego (**Custom Comment**) do portów wejściowych i wyjściowych, aby poinformować o typach danych wejściowych i wyjściowych. Więcej szczegółów znajduje się w sekcji [Tworzenie węzłów niestandardowych](10-2_Creating.md).

Ten węzeł niestandardowy można zapisać jako plik .dyf (w przeciwieństwie do standardowego pliku .dyn), który zostanie automatycznie dodany do bieżącej sesji i przyszłych sesji. Ten węzeł niestandardowy można znaleźć w bibliotece w kategorii określonej we właściwościach węzła.

![Dodawanie do biblioteki](images/10-1/CustomNodes05.jpg)

> Po lewej: kategoria Podstawowe > Matematyka biblioteki domyślnej; 
Po prawej: kategoria Podstawowe > Matematyka z nowym węzłem niestandardowym

### Dalsze kroki

Teraz po utworzeniu pierwszego węzła niestandardowego w kolejnych sekcjach dokładniej omówimy funkcje węzłów niestandardowych i to, jak publikuje się ogólne procesy robocze. W kolejnej sekcji przyjrzymy się opracowywaniu węzła niestandardowego, który przenosi geometrię z jednej powierzchni do drugiej.

