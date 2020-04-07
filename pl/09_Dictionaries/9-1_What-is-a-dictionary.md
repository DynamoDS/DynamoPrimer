# Słowniki
W dodatku Dynamo 2.0 wprowadzono oddzielenie typu danych słownika od typu danych listy. Ta modyfikacja może spowodować istotne zmiany w sposobie tworzenia i pracy z danymi w procesach roboczych. Przed wersją 2.0 słowniki i listy stanowiły jeden typ danych. W skrócie: listy były w rzeczywistości słownikami z kluczami w formie liczb całkowitych.

* #### Co to jest słownik?
Słownik jest typem danych składającym się z kolekcji par wartości i kluczy, przy czym każdy klucz jest niepowtarzalny w danej kolekcji. Słownik nie jest uporządkowany i zasadniczo można „wyszukiwać elementy”, używając klucza zamiast wartości indeksu — jak w przypadku listy. *W dodatku Dynamo 2.0 klucze mogą być tylko ciągami.*

* #### Co to jest lista?
Lista jest typem danych składającym się z kolekcji uporządkowanych wartości. W dodatku Dynamo indeksy listy są liczbami całkowitymi.

* #### Dlaczego ta zmiana została wprowadzona i jakie ma znaczenie dla użytkownika?
Rozdzielenie słowników od list sprawia, że słowniki stają się pierwszoligowym narzędziem, którego można używać do szybkiego i łatwego przechowywania i wyszukiwania wartości bez konieczności zapamiętywania wartości indeksu ani utrzymywania ścisłej struktury listy w całym procesie roboczym. Podczas testowania u użytkowników dostrzegliśmy znaczne zmniejszenie rozmiaru wykresu, gdy używano słowników zamiast kilku węzłów ```GetItemAtIndex```.

* #### Na czym polegają różnice?
  * Wprowadzono zmiany w *składni* w zakresie inicjalizacji słowników i list w blokach kodu oraz pracy z nimi.
    * W przypadku słowników używana jest następująca składnia: ```{klucz:wartość}```
    * W przypadku list używana jest następująca składnia: ```[wartość,wartość,wartość]```
  * W bibliotece wprowadzono *nowe węzły*, aby ułatwić tworzenie i modyfikowanie słowników oraz stosowanie do nich zapytań.
  * Listy tworzone w blokach kodu w wersji 1.x będą automatycznie migrowane po wczytaniu skryptu do nowej składni listy, w której są używane nawiasy kwadratowe ```[ ]``` zamiast nawiasów klamrowych ```{ }``` ![OBRAZ](images/9-1/DYN20_Dictionary.png)

* #### Dlaczego należy się tym przejmować? Do czego służą te elementy?
W informatyce słowniki — tak jak listy — to kolekcje obiektów. Listy mają określony porządek, natomiast słowniki są kolekcjami *nieuporządkowanymi*. Nie są one zależne od sekwencji liczby (indeksów). Wykorzystuje się w nich *klucze*.

Na poniższej ilustracji pokazano potencjalny przypadek zastosowania słownika. Często słowniki są używane do powiązania dwóch fragmentów danych, które mogą nie mieć bezpośredniej korelacji. W naszym przypadku połączymy hiszpańską wersję słowa z angielską do późniejszego wyszukania. ![OBRAZ](images/9-1/9-1_dictionaryExample.png)

