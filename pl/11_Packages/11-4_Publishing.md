

## Publikowanie pakietu

W poprzednich sekcjach omówiono szczegółowo skonfigurowanie pakietu *MapToSurface* za pomocą węzłów niestandardowych i plików przykładowych. Jak jednak opublikować pakiet, który został utworzony lokalnie? W tej analizie przypadku pokazano sposób publikowania pakietu z zestawu plików w folderze lokalnym. ![](images/11-4/Creating/Packages - 12.jpg) Istnieje wiele sposobów na opublikowanie pakietu. Poniżej przedstawiono zalecany przez nas proces:** publikowanie lokalne, opracowywanie lokalne, a następnie publikowanie online**. Rozpoczniemy od folderu zawierającego wszystkie pliki w pakiecie.

### Odinstalowywanie pakietu

Zanim przejdziemy do publikowania pakietu MapToSurface, jeśli został on zainstalowany w ramach poprzedniej lekcji, należy go odinstalować, aby nie pracować z identycznymi pakietami.

![](images/11-4/Publishing/Packages - 01.jpg)

> Rozpocznij od przejścia do obszaru *Pakiety > Zarządzaj pakietami...*

![](images/11-4/Publishing/uninstall.jpg)

> Wybierz przycisk odpowiadający pakietowi *„MapToSurface”* i wybierz opcję *Odinstaluj...* Następnie ponownie uruchom dodatek Dynamo. Po ponownym otwarciu w oknie *„Zarządzaj pakietami”* nie powinno już być pakietu *MapToSurface*. Teraz można już zacząć od początku.

### Publikowanie pakietu lokalnie

*Uwaga: w momencie pisania tych informacji publikowanie pakietu Dynamo jest możliwe tylko w programie Dynamo Studio lub dodatku Dynamo dla programu Revit. Obszar izolowany (piaskownica) dodatku Dynamo nie ma funkcji publikowania.*

> Pobierz i rozpakuj pliki przykładowe do tej analizy przypadku (kliknij prawym przyciskiem myszy i wybierz polecenie Zapisz element docelowy jako). Pełna lista plików przykładowych znajduje się w załączniku. [MapToSurface.zip](datasets/11-4/MapToSurface.zip)

![](images/11-4/Publishing/Packages - 08.jpg)

> To jest pierwsze przesłanie pakietu i wszystkie pliki przykładowe i węzły niestandardowe zostały umieszczone w jednym folderze. Po przygotowaniu tego folderu można przekazać go do menedżera pakietów Dynamo.

> 1. Ten folder zawiera pięć węzłów niestandardowych (.dyf).
2. Ten folder zawiera także pięć przykładowych plików (.dyn) i jeden zaimportowany plik wektorowy (.svg). Te pliki będą służyły jako ćwiczenia wprowadzające, aby pokazać użytkownikowi, jak pracować z węzłami niestandardowymi.

![](images/11-4/Publishing/Packages - 07.jpg)

> W dodatku Dynamo najpierw kliknij kolejno opcje *Pakiety > Opublikuj nowy pakiet...*

![](images/11-4/Publishing/Packages - 03.jpg)

> W oknie *Publikowanie pakietu Dynamo* wypełniono odpowiednie formularze po lewej stronie okna.

> 1. Klikając przycisk *Dodaj plik*, dodano również pliki ze struktury folderów po prawej stronie ekranu (aby dodać pliki, które nie są plikami .dyf, należy zmienić typ pliku w oknie przeglądarki na **„Wszystkie pliki(**)"**. Uwaga: dodaliśmy wszystkie pliki bez rozróżniania typów: węzły niestandardowe (.dyf) i pliki przykładów (.dyn). Po opublikowaniu pakietu dodatek Dynamo skategoryzuje te elementy.
2. Pole „Grupa” określa, w której grupie znajdą się węzły niestandardowe w interfejsie użytkownika dodatku Dynamo.
3. Opublikuj, klikając przycisk „Opublikuj lokalnie”. Postępując zgodnie z tymi instrukcjami, należy koniecznie kliknąć przycisk *„Opublikuj lokalnie”*, a **nie** *„Opublikuj online”*. Nie chcemy powielenia pakietów w menedżerze pakietów.

![](images/11-4/Publishing/packages - ui.jpg)

> 1. Po opublikowaniu węzły niestandardowe powinny być dostępne w grupie „DynamoPrimer” lub w bibliotece Dynamo.

![](images/11-4/Publishing/Packages - 01.jpg)

> Teraz spójrzmy na katalog główny, aby sprawdzić, w jaki sposób dodatek Dynamo sformatował utworzony właśnie pakiet. Aby to zrobić, kliknij kolejno opcje *Pakiety > Zarządzaj pakietami...*

![](images/11-4/Publishing/packages - showRoot.jpg)

> W oknie zarządzania pakietami kliknij trzy pionowe kropki po prawej stronie elementu *„MapToSurface”* i wybierz opcję *„Pokaż katalog główny”.*

![](images/11-4/Publishing/Packages - 02.jpg)

> Zwróć uwagę, że katalog główny znajduje się w lokalnym położeniu pakietu (pakiet został opublikowany lokalnie). Dodatek Dynamo aktualnie odwołuje się do tego folderu, aby odczytać węzły niestandardowe. Dlatego ważne jest, aby lokalnie opublikować katalog w trwałym położeniu folderu (czyli na przykład nie na pulpicie). Poniżej przedstawiono strukturę folderów pakietu Dynamo:

> 1. Folder *bin* zawiera pliki .dll utworzone za pomocą bibliotek C# lub Zero-Touch. W tym pakiecie ich nie ma, więc ten folder jest pusty dla tego przykładu.
2. Folder *dyf* zawiera węzły niestandardowe. Otwarcie tego folderu spowoduje wyświetlenie wszystkich węzłów niestandardowych (plików .dyf) dla tego pakietu.
3. W folderze dodatkowym („extra”) znajdują się wszystkie dodatkowe pliki. Będą to prawdopodobnie pliki dodatku Dynamo (.dyn) lub dowolne dodatkowe wymagane pliki (.svg, .xls, .jpeg, .sat itp.).
4. Plik pkg jest podstawowym plikiem tekstowym definiującym ustawienia pakietu. Jest to zautomatyzowane w dodatku Dynamo, ale możesz to edytować, jeśli chcesz przejść do szczegółów.

### Publikowanie pakietu online

![](images/11-4/Publishing/Packages - 00.jpg)

> **Uwaga: ten krok należy wykonać tylko w przypadku, gdy faktycznie publikuje się własny pakiet!**

> 1. Gdy wszystko jest gotowe do opublikowania, w oknie „Zarządzaj pakietami” wybierz przycisk znajdujący się po prawej stronie pakietu MapToSurface i wybierz opcję *Opublikuj...*
2. Jeśli aktualizujesz pakiet, który już został opublikowany, wybierz opcję „Opublikuj wersję”, a dodatek Dynamo zaktualizuje pakiet online na podstawie nowych plików w katalogu głównym tego pakietu. To wystarczy.

### Opublikuj wersję...

W trakcie aktualizowania plików w folderze głównym opublikowanego pakietu można opublikować nową wersję pakietu, wybierając opcję *„Opublikuj wersję...”* w oknie *Zarządzaj pakietami*. Jest to prosty sposób na wprowadzenie niezbędnych aktualizacji zawartości i udostępnienie ich społeczności. Polecenie *Opublikuj wersję* działa tylko wtedy, gdy użytkownik jest administratorem pakietu.

