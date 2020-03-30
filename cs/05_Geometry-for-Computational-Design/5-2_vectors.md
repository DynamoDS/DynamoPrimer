

## Vektory, roviny a souřadnicové systémy

Vektory, roviny a souřadnicové systémy tvoří primární skupinu abstraktních typů geometrie. Pomáhají definovat umístění, orientaci a prostorový kontext pro jinou geometrii, která popisuje tvary. Pokud řeknu, že jsem v New Yorku na 42. ulici a Broadway (souřadnicový systém), stojím na úrovni ulice (Rovina), dívám se na sever (Vektor), použil jsem tyto „Pomoci“, abych definoval, kde jsem. Totéž platí pro produkt krytu telefonu nebo mrakodrap – potřebujeme tento kontext k vývoji modelu.

![Vektory, roviny a souřadnice](images/5-2/VectorsPlanesCoodinates.jpg)

### Co je Vektor?

Vektor je geometrické množství popisující směr a velikost. Vektory jsou abstraktní, představují množství, ne geometrický prvek. Vektory lze snadno zaměnit s body, protože oba jsou tvořeny seznamem hodnot. Klíčový rozdíl je: Body popisují pozici v daném souřadnicovém systému, zatímco vektory popisují relativní rozdíl v pozici, který je stejný jako označení „směr“.

![Detaily vektoru](images/5-2/Vector-Detailed.jpg)

Pokud je představa relativního rozdílu matoucí, představte si vektor AB jako „stojím v bodě A, dívám se směrem k bodu B.“, směr odtud (A) tam (B), je náš vektor.

Vektory dále rozdělíme na jejich složky pomocí stejné AB notace:

![Vektor](images/5-2/Vector.jpg)

> 1. **Počáteční bod** vektoru se nazývá **Základna**.
2. **Koncový bod** vektoru se nazývá **Špička** nebo **Směr**.
3. Vektor AB není stejný jako Vektor BA – ten by mířil v opačném směru.

Pokud někdy potřebujete komické osvobození od Vektorů (a jejich abstraktní definice), podívejte se na klasickou komedii Airplane a poslouchejte často citovanou hlášku:

> *Roger, Roger. What's our vector, Victor?*

Vektory jsou klíčovou komponentou pro naše modely v aplikaci Dynamo. Všimněte si, že protože jsou v abstraktní kategorii „Pomocníci“, když vytvoříme vektor, v náhledu pozadí nic neuvidíme.

![Vektory v aplikaci Dynamo](images/5-2/Dynamo-Vector.jpg)

> 1. Úsečku můžeme použít jako náhradu pro náhled vektoru.
> Stáhněte si vzorový soubor, který doprovází tento obrázek (klikněte pravým tlačítkem a vyberte příkaz Uložit odkaz jako...): [Geometry for Computational Design – Vectors.dyn](datasets/5-2/Geometry for Computational Design - Vectors.dyn). Úplný seznam vzorových souborů najdete v dodatku.

### Co je to rovina?

Roviny jsou dvojrozměrné abstraktní „Pomůcky“. Konkrétně, roviny jsou koncepčně „ploché“, a nekonečně se roztahují ve dvou směrech. Obvykle se rendrují jako menší obdélník poblíž jejich počátku.

![Rovina](images/5-2/Plane.jpg)

Možná si myslíte, „Počkat! Počátek? To zní jako souřadnicový systém... jako ten, který používám k modelování v softwaru CAD.“

A máte pravdu. Většina modelovacích aplikací využívá stavební roviny nebo „hladiny“ k definování místního dvourozměrného kontextu, ve kterém lze tvořit výkresy. XY, XZ, YZ – nebo – rovina sever, jihovýchod může znít povědomě. Toto jsou všechny roviny, které definují nekonečný „plochý“ kontext. Roviny nemají hloubku, ale pomáhají nám také popsat směr – každá rovina má počátek, směr X, směr Y a směr Z (nahoru).

![Roviny v aplikaci Dynamo](images/5-2/Dynamo-Plane.jpg)

> 1. I když jsou abstraktní, roviny mají polohu počátku, aby je bylo možné umístit do prostoru.
2. V aplikaci Dynamo se roviny rendrují v náhledu pozadí.
> Stáhněte si vzorový soubor, který doprovází tento obrázek (klikněte pravým tlačítkem a vyberte příkaz Uložit odkaz jako...): [Geometry for Computational Design – Planes.dyn](datasets/5-2/Geometry for Computational Design - Plane.dyn). Úplný seznam vzorových souborů najdete v dodatku.

### Co je souřadnicový systém?

Pokud chápeme roviny, jsme malý krok od pochopení souřadnicových systémů. Rovina má všechny stejné součásti jako souřadnicový systém za předpokladu, že se jedná o standardní souřadnicový systém „Euclidean“ nebo „XYZ“.

Existují však jiné alternativní souřadnicové systémy, například válcový nebo sférický. Jak uvidíme v pozdějších částech, souřadnicové systémy lze použít také na jiné typy geometrie k definování umístění na dané geometrii.

![Souřadnicový systém](images/5-2/CoordinateSystem.jpg)

> Přidání alternativních souřadnicových systémů – válcových, kulových

![Roviny v aplikaci Dynamo](images/5-2/Dynamo-CoordinateSystem.jpg)

> 1. I když jsou abstraktní, souřadnicové systémy mají také počáteční polohu, takže je můžeme umístit do prostoru.
2. V aplikaci Dynamo jsou souřadnicové systémy rendrovány v náhledu pozadí jako bod (počátek) a úsečky definující osy (podle konvence je osa X červená, osa Y zelená a osa Z modrá).
> Stáhněte si vzorový soubor, který doprovází tento obrázek (klikněte pravým tlačítkem a vyberte příkaz Uložit odkaz jako...): [Geometry for Computational Design – Coordinate System.dyn](datasets/5-2/Geometry for Computational Design - Coordinate System.dyn). Úplný seznam vzorových souborů najdete v dodatku.

