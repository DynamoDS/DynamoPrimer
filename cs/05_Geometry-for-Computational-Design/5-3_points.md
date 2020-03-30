

## Body

Pokud je geometrie jazykem modelu, pak body jsou abecedou. Body jsou základem, na kterém je vytvořena veškerá další geometrie – k vytvoření křivky potřebujeme alespoň dva body, k vytvoření polygonu nebo plochy sítě potřebujeme alespoň tři body, a tak dále. Definování polohy, pořadí a vztahu mezi body (zkuste funkci sinus) umožňuje definovat geometrii vyššího řádu, například věci, které známe jako kružnice nebo křivky.

![Od bodu k oblouku](images/5-3/PointsAsBuildingBlocks-1.jpg)

> 1. Kružnice používající funkce ```x=r*cos(t)``` a ```y=r*sin(t)```
2. Křivka sinusoida používající funkce ```x=(t)``` a ```y=r*sin(t)```

### Co je bod?

Bod je definován pouze jednou nebo více hodnotami nazývanými souřadnice. Počet hodnot souřadnic, které je potřeba definovat, závisí na souřadnicovém systému nebo kontextu, ve kterém se bod nachází. Nejběžnější typ bodu v aplikaci Dynamo existuje v našem trojrozměrném globálním souřadnicovém systému a má tři souřadnice [X,Y,Z].

![Bod](images/5-3/Point.jpg)

### Bod jako souřadnice

Body mohou existovat také v dvojrozměrném souřadnicovém systému. Konvence má různé písmeno označující prostor, se kterým pracujete – můžeme použít [X,Y] na rovině nebo [U,V], na ploše.

![Bod jako souřadnice](images/5-3/Coordinates.jpg)

> 1. Bod v euklidovském souřadnicovém systému: [X,Y,Z]
2. Bod v souřadnicovém systému parametru křivky: [t]
3. Bod v souřadnicovém systému parametru povrchu: [U,V]

Ačkoliv to může vypadat neintuitivně, parametry křivek i povrchů jsou spojité a přesahují za hranu dané geometrie. Protože tvary, které definují parametrický prostor, se nacházejí v trojrozměrném globálním souřadnicovém systému, můžeme vždy převést parametrickou souřadnici do „Globální“ souřadnice. Například bod [0.2, 0.5] na povrchu je stejný jako bod [1.8, 2.0, 4.1] v globálních souřadnicích.

![Body v aplikaci Dynamo](images/5-3/Dynamo-Points.jpg)

> 1. Bod v předpokládaných globálních souřadnicích XYZ
2. Bod relativní k danému souřadnicovému systému (válcový)
3. Bod jako souřadnice UV na povrchu
> Stáhněte si vzorový soubor, který doprovází tento obrázek (klikněte pravým tlačítkem a vyberte příkaz Uložit odkaz jako...): [Geometry for Computational Design – Points.dyn](datasets/5-3/Geometry for Computational Design - Points.dyn). Úplný seznam vzorových souborů najdete v dodatku.

