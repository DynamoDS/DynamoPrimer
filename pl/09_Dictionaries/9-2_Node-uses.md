

# Węzły słownika

Dodatek Dynamo 2.0 udostępnia różne węzły słownika do wykorzystania. Obejmuje to węzły *tworzenia, operacji i zapytań*.

![OBRAZ](images/9-2/9-2_dictionaryNodes.png)

* Węzeł ```Dictionary.ByKeysValues``` tworzy słownik z określonymi wartościami i kluczami. *(Liczba pozycji będzie zgodna z liczbą pozycji na najkrótszej liście wejściowej)*
* Węzeł ```Dictionary.Components``` tworzy składniki słownika wejściowego. *(Jest to operacja odwrotna do operacji węzła tworzenia).*
* Węzeł ```Dictionary.RemoveKeys``` tworzy nowy obiekt słownika z usuniętymi kluczami wejściowymi.
* Węzeł ```Dictionary.SetValueAtKeys``` tworzy nowy słownik na podstawie wejściowych kluczy i wartości zastępujących bieżące wartości dla odpowiednich kluczy.
* Węzeł ```Dictionary.ValueAtKey``` zwraca wartość dla klucza wejściowego.
* Węzeł ```Dictionary.Count``` zwraca liczbę par wartości i kluczy w słowniku.
* Węzeł ```Dictionary.Keys``` zwraca aktualnie przechowywane w słowniku klucze.
* Węzeł ```Dictionary.Values``` zwraca aktualnie przechowywane w słowniku wartości.

##### _Ogólnie powiązywanie danych ze słownikami stanowi świetną alternatywę dla starej metody pracy z indeksami i listami._

