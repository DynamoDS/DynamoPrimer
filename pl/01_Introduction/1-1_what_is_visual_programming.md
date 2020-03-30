

### Co to jest programowanie wizualne?

Często projektowanie obejmuje ustanowienie wizualnych, systemowych lub geometrycznych zależności między częściami projektu. Zazwyczaj te zależności są opracowywane w ramach procesów roboczych, które pozwalają przejść od koncepcji do wyników za pomocą reguł. Często nieświadomie pracujemy algorytmicznie: definiujemy szczegółowy zestaw operacji, które są wykonywane na podstawie podstawowego układu logicznego obejmującego dane wejściowe, przetwarzanie i dane wyjściowe. Programowanie pozwala nam kontynuować pracę w ten sposób, ale poprzez sformalizowanie algorytmów.

### Algorytmy pod kontrolą

Termin **algorytm** przedstawia olbrzymie możliwości, ale często jest błędnie rozumiany. Algorytmy mogą generować nieoczekiwane, przedziwne, a nawet niesamowite wyniki, ale nie są magicznym rozwiązaniem. W rzeczywistości same w sobie są całkiem proste. Przyjrzyjmy się namacalnemu przykładowi: żurawiowi origami. Rozpoczynamy od kwadratowego arkusza papieru (wejście), wykonujemy szereg zagięć (operacje przetwarzania) i otrzymujemy żurawia (wyjście).

![Żuraw origami](images/1-1/00-OrigamiCrane.png)

Gdzie tu jest algorytm? Stanowi on abstrakcyjny zestaw kroków, które możemy przedstawić na kilka sposobów — w sposób tekstowy lub graficzny.

**Instrukcje tekstowe:**

1. Zacznij od kwadratowego arkusza papieru, ułożonego kolorową stroną do góry. Zagnij go na pół i otwórz. Następnie zagnij go na pół wzdłuż drugiej przekątnej.
2. Obróć arkusz na białą stronę. Zagnij arkusz na pół, dociśnij zgięcie i otwórz, a następnie zagnij arkusz ponownie w drugim kierunku.
3. Używając utworzonych zagięć, połącz trzy górne rogi modelu z dolnym rogiem. Spłaszcz model.
4. Zagnij górne trójkątne skrzydła do środka i rozwiń je.
5. Zawiń górną część modelu w dół, dociśnij zagięcie i rozwiń je.
6. Otwórz górne skrzydło modelu, jednocześnie odchylając je do góry i przyciskając boki modelu do wewnątrz. Spłaszcz model i dociśnij.
7. Obróć model i powtórz kroki 4–6 po drugiej stronie.
8. Zagnij górne skrzydła do środka.
9. Powtórz to po drugiej stronie.
10. Zagnij obie „nogi” modelu w górę, dobrze dociśnij zagięcie, a następnie rozwiń je.
11. Zagnij te „nogi” do wewnątrz wzdłuż zagięć zrobionych przed chwilą.
12. Po jednej stronie zrób zagięcie do wewnątrz, aby zrobić łeb, a następnie zawiń skrzydła w dół.
13. Żuraw gotowy.

**Instrukcje graficzne:**

![Wymaga aktualizacji — żuraw origami](images/1-1/01-OrigamiCraneInstructions.png)

### Definicja programowania

Użycie jednego z tych zestawów instrukcji powinno umożliwić zrobienie żurawia, a osoba postępująca zgodnie z nimi stosuje algorytm. Jedyną różnicą jest sposób, w jaki odczytuje się formalizację zestawu instrukcji, co prowadzi do pojęcia **programowania**. Programowanie, często skrótowo nazywane *programowaniem komputerowym*, to sformalizowanie przetwarzania serii operacji w wykonywalny program. Jeśli zmienimy powyższe instrukcje tworzenia żurawi w format, który komputer może odczytać i uruchomić — programujemy.

Kluczem do pierwszego wyzwania związanego z programowaniem jest to, że trzeba polegać na jakiejś formie abstrakcji, aby skutecznie komunikować się z komputerem. Przybiera to postać różnych języków programowania, takich jak JavaScript, Python lub C. Jeśli można napisać powtarzalny zestaw instrukcji, tak jak w przypadku żurawia origami, wystarczy tylko przetłumaczyć je dla komputera. Możemy umożliwić komputerowi utworzenie żurawia lub nawet wielu różnych żurawi różniących się tylko odrobinę między sobą. Na tym polega siła programowania — komputer wielokrotnie wykonuje dowolne przypisane mu przez nas zadanie lub zestaw zadań bezzwłocznie i bez błędów popełnianych przez ludzi.

#### Definicja programowania wizualnego

> Pobierz plik przykładowy do tego ćwiczenia (kliknij prawym przyciskiem myszy i wybierz opcję Zapisz element docelowy jako): [Visual Programming - Circle Through Point.dyn](datasets/1-1/Visual Programming - Circle Through Point.dyn). Pełna lista plików przykładowych znajduje się w załączniku.

Poproszono Cię o instrukcje składania żurawia origami. Jak do tego przystąpisz? Utworzysz je za pomocą grafiki, tekstu czy połączenia tych dwóch metod?

Jeśli Twoja odpowiedź obejmowała zastosowanie grafiki, **programowanie wizualne** to dla Ciebie idealna metoda. Proces ten jest zasadniczo taki sam zarówno dla programowania, jak i dla programowania wizualnego. Wykorzystuje się tę samą strukturę formalizacji. Jednak instrukcje i zależności w programie definiuje się za pomocą graficznego (lub wizualnego) interfejsu użytkownika. Zamiast wpisywać tekst ograniczony składnią, łączy się ze sobą wstępnie spakowane węzły. Oto porównanie tego samego algorytmu — „rysowanie okręgu przez punkt” — zaprogramowanego za pomocą węzłów i za pomocą kodu:

**Program wizualny:**

![Podstawowy program wizualny ](images/1-1/03-BasicVisualProgram.png)

**Program tekstowy:**

```
myPoint = Point.ByCoordinates(0.0,0.0,0.0);
x = 5.6;
y = 11.5;
attractorPoint = Point.ByCoordinates(x,y,0.0);
dist = myPoint.DistanceTo(attractorPoint);
myCircle = Circle.ByCenterPointRadius(myPoint,dist);
```

Wyniki algorytmu:

![Okrąg przez punkt ](images/1-1/04-CircleThroughPoint.png)

Wizualność programowania w taki sposób ułatwia rozpoczęcie korzystania z niego i często przemawia do projektantów. Dodatek Dynamo służy do programowania wizualnego, ale jak przekonamy się później, nadal umożliwia programowanie tekstowe w aplikacji.

