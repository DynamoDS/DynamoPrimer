

## Importowanie geometrii

Istnieje kilka sposobów importowania geometrii do dodatku Dynamo. W poprzedniej sekcji przedstawiono importowanie siatek za pomocą zestawu *Mesh Toolkit* — można również importować modele brył z plików .SAT. Dzięki tym procesom można tworzyć geometrię na innej platformie, wczytywać ją do dodatku Dynamo i stosować do niej operacje parametryczne poprzez programowanie wizualne.

Inna metoda importowania geometrii wykorzystuje proces nazywany *przekształceniem ATF*. W tym przypadku można zaimportować nie tylko geometrię, ale również strukturę pliku. Na przykład można wybrać, które warstwy pliku .DWG mają zostać zaimportowane, zamiast importować cały model. Pokażemy to poniżej bardziej szczegółowo.

### Importowanie geometrii z pliku DWG

Węzły do importowania plików DWG do środowiska dodatku Dynamo znajdują się na karcie *Przekształcanie*. (Uwaga: te narzędzia są dostępne tylko w programie [Dynamo Studio](http://www.autodesk.com/products/dynamo-studio/overview)). Poniższe przykłady obejmują serię komponentów służących do przeglądania w poszukiwaniu pliku, importowania zawartości pliku i przekształcania jej w użyteczną geometrię dodatku Dynamo. Dodatek Dynamo umożliwia także filtrowanie i wybieranie określonych obiektów do zaimportowania z pliku DWG — co pokazano poniżej. Aby uzyskać więcej informacji na temat importowania geometrii z pliku DWG, przeczytaj [wpis na blogu](http://dynamobim.org/dwg-import-in-dynamo-studio-0-9-1/) Bena Goha.

### Pobieranie importowanych obiektów

Najprostszym sposobem zaimportowania pliku DWG do programu Dynamo Studio jest zaimportowanie całego pliku do obszaru roboczego:

![GetImportedObjects](images/5-8/GetImportedObjects.jpg)

> 1. Użyj komponentu File Path, aby wyszukać plik DWG, który ma zostać zaimportowany do dodatku Dynamo.
2. Połącz go z węzłem **FileLoader.FromPath**, aby odczytać plik.
3. Użyj komponentu **FileLoader.GetImportedObjects**, aby przeprowadzić analizę geometrii w programie Dynamo Studio.
4. Za pomocą węzła **ImportedObject.ConvertToGeometries** obiekty zostaną przekształcone w geometrię, z której można korzystać w obszarze roboczym dodatku Dynamo.

Jak pokazano na powyższej ilustracji, do dodatku Dynamo są importowane wszystkie typy geometrii w pliku DWG — powierzchnie, siatki, krzywe i linie.

### Filtr obiektów

Aby określić, które geometrie zostaną zaimportowane z pliku DWG, do definicji można dodać dodatkowe węzły **ObjectFilter**. Węzeł **ObjectFilter** jest zgodny z węzłem **FileLoader** lub listą węzła **ImportedObject** i generuje listę **ImportedObject**.

Poniższe ilustracje przedstawiają instrukcje warunkowe w każdym węźle **ObjectFilter**. Każdy element **ImportedObject**, który spełnia którekolwiek z wymienionych warunków, przejdzie przez filtr. Filtrowanie może być oparte na etykiecie warstwy (np. nazwie warstwy), typie geometrii, kolorze rozproszenia itp. Może być używane w połączeniu z innymi filtrami w celu uściślenia wyboru.

![ObjectFilter1](images/5-8/ObjectFilter01.jpg)

> 1. Zastąp węzeł **FileLoader.GetImportedObjects** węzłem **ObjectFilter**, aby wyszukać określone warunki w pliku DWG. W tym przypadku zostanie zaimportowana tylko geometria powierzchni, a cała geometria krzywej i linii widoczna na poprzedniej ilustracji zostanie usunięta.
2. Połącz filtr z węzłem **ImportedObject.ConvertToGeometries**, aby zaimportować przefiltrowaną geometrię.

Dodając dwa filtry z różnymi instrukcjami warunkowymi, można podzielić listę geometrii na wiele strumieni:

![ObjectFilter2](images/5-8/ObjectFilter02.jpg)

> 1. Zastąp węzeł **FileLoader.GetImportedObjects** dwoma modułami **ObjectFilter** różnych instrukcji warunkowych. Spowoduje to rozdzielenie geometrii z jednego pliku na dwa różne strumienie.
2. Połącz filtr z węzłem **ImportedObject.ConvertToGeometries**, aby zaimportować przefiltrowaną geometrię.
3. Połącz węzeł **ImportedObject.ConvertToGeometries** z węzłem **Display.ByGeometryColor**, aby zwizualizować każdy strumień w innym kolorze.

### Jawny wybór obiektu

Węzeł **ObjectSelector** udostępnia alternatywną metodę importowania obiektów z pliku DWG. Ta metoda zamiast używania filtrów umożliwia wybranie, które konkretnie obiekty i warstwy zostaną zaimportowane do dodatku Dynamo.

![Z punktu do krzywej](images/5-8/ObjectSelector.jpg)

> 1. Zastąp węzeł **FileLoader.GetImportedObjects** węzłem **ObjectSelector**, aby wywołać określone warstwy i obiekty w pliku DWG.
2. Połącz filtr z węzłem **ImportedObject.ConvertToGeometries**.

