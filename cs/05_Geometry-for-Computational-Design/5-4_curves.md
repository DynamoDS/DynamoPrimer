

## Křivky

Křivky jsou první krytý geometrický datový typ, který má známé sady vlastností popisujících tvar – Jak křivé nebo rovné? Jak dlouhé nebo krátké? Nezapomeňte, že Body jsou stále stavební bloky pro definování všeho od úsečky k spline a všechny typy křivek mezi nimi.

![Typy oblouků](images/5-4/CurveTypes.jpg)

> 1. Čára
2. Křivka
3. Oblouk
4. Kružnice
5. Elipsa
6. Křivka NURBS
7. PolyCurve

### Co je křivka?

Termín **křivka** obvykle označuje všechny různé křivé (i rovné) tvary. Křivka s velkým K je nadřazená kategorizace všech těchto typů tvarů – úseček, kružnic, spline atd. Přesněji řečeno, Křivka popisuje každý možný bod, který lze najít vložením „t“ do kolekce funkcí, která může být v rozsahu od jednoduchých (```x = -1.26*t, y = t```) až po funkce zahrnující infinitezimální počet. Bez ohledu na to, s jakým typem Křivky pracujeme, je tento **parametr** s názvem „t“ vlastnost, kterou můžeme vyhodnotit. Kromě toho, bez ohledu na vzhled tvaru, mají všechny Křivky také počáteční a koncový bod, který je shodný s minimálními a maximálními hodnotami t použitými k vytvoření Křivky. To nám také pomůže pochopit její směr.

![Parametr křivky](images/5-4/CurveParameter.jpg)

> Je důležité poznamenat, že aplikace Dynamo předpokládá, že doména hodnot „t“ pro křivku je chápána jako 0.0 až 1.0.

Všechny křivky také mají řadu vlastností, které lze použít k jejich popisu nebo analýze. Pokud je vzdálenost mezi počátečním a koncovým bodem nula, křivka je „uzavřená“. Každá křivka má také řadu řídicích bodů, pokud jsou všechny tyto body umístěny ve stejné rovině, křivka je „rovinná“. Některé vlastnosti se vztahují na křivku jako celek, zatímco jiné se vztahují pouze na určité body podél křivky. Například rovinnost je globální vlastnost, zatímco tečný vektor v dané hodnotě t je místní vlastnost.

### Čáry

**Úsečky** jsou nejjednodušší formou křivek. Nemusí vypadat zaobleně, ale ve skutečnosti jsou Křivky – jen bez zakřivení. Existuje několik různých způsobů vytvoření čar, nejintuitivnější je od bodu A do bodu B. Tvar čáry AB bude nakreslen mezi body, ale matematicky se prodlouží do nekonečna oběma směry.

![Čára](images/5-4/Line.jpg)

Když propojíme obě úsečky dohromady, máme **křivku**. Zde máme přímočaré znázornění toho, co je řídicí bod. Úprava umístění těchto bodů změní tvar křivky. Pokud je křivka uzavřená, máme polygon. Pokud jsou všechny délky hran polygonu shodné, je popisován jako normální.

![Křivka + polygon](images/5-4/Polyline.jpg)

### Oblouky, kružnice, oblouky elips a elipsy

Když přidáváme více složitosti k parametrickým funkcím, které definují tvar, můžeme o jeden krok dále od čáry vytvořit **oblouk**, **kružnici**, **oblouk elipsy** nebo **elipsu** popisem jednoho nebo dvou poloměrů. Rozdíly mezi verzí oblouku a kružnice nebo elipsy jsou pouze tehdy, pokud je tvar uzavřen.

![Oblouky + kružnice](images/5-4/Arcs+Circles.jpg)

### NURBS + PolyCurve

**NURBS** (Nerovnoměrné racionální křivky spline) jsou matematická znázornění, která mohou přesně modelovat libovolný tvar z jednoduché dvojrozměrné úsečky, kružnice, oblouku nebo obdélníku na nejsložitější trojrozměrnou volnou organickou křivku. Díky své pružnosti (relativně málo řídicích bodů, přesto hladká interpolace podle nastavení stupňů) a přesnosti (vázané robustní matematikou) lze modely NURBS použít v jakémkoli procesu od ilustrace a animace až po výrobu.

![Křivka NURBS](images/5-4/NURBScurve.jpg)

**Stupeň**: Způsob definice křivky určuje rozsah vlivu řídicích bodů na křivku, kde čím vyšší je stupeň, tím větší je rozsah. Stupeň je kladné celé číslo. Toto číslo je obvykle 1, 2, 3 nebo 5, ale může to být libovolné kladné celé číslo. Úsečky a křivky NURBS jsou obvykle stupně 1 a většina křivek volného tvaru je Stupeň 3 nebo 5.

**Řídicí body**: Řídicí body jsou seznamem alespoň Stupeň+1 bodů. Jedním z nejsnadnějších způsobů, jak změnit tvar křivky NURBS, je posunout její řídicí body.

**Váha**: Řídicí body mají přiřazené číslo nazývané Váha. Váhy jsou obvykle kladná čísla. Pokud mají všechny řídicí body oblouku stejnou váhu (obvykle 1), křivka se nazývá neracionální, jinak se křivka nazývá racionální. Většina křivek NURBS není racionální.

**Uzly**: Uzly jsou seznamy čísel (Stupeň+N-1), kde N je počet řídicích bodů. Uzly se používají spolu s váhami k ovládání vlivu řídicích bodů na výslednou křivku. Jedno použití pro uzly je vytvoření zalomení v určitých bodech křivky.

![Stupeň křivky NURBS](images/5-4/NURBScurve_Degree.jpg)

> 1. Stupeň = 1
2. Stupeň = 2
3. Stupeň = 3

Všimněte si, že čím vyšší je hodnota stupně, tím více řídících bodů se používá k interpolaci výsledného oblouku.

Pojďme v aplikaci Dynamo pomocí dvou různých metod vytvořit křivku NURBS ve tvaru sinusoidy a porovnat výsledky.

![NURBS v aplikaci Dynamo](images/5-4/Dynamo_Curves.jpg)

> 1. *NurbsCurve.ByControlPoints* používá seznam bodů jako řídicí body
2. *NurbsCurve.ByPoints* nakreslí křivku procházející seznamem bodů
> Stáhněte si vzorový soubor, který doprovází tento obrázek (klikněte pravým tlačítkem a vyberte příkaz Uložit odkaz jako...): [Geometry for Computational Design – Curves.dyn](datasets/5-4/Geometry for Computational Design - Curves.dyn). Úplný seznam vzorových souborů najdete v dodatku.

