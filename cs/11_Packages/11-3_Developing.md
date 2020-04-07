

## Vývoj balíčku

Aplikace Dynamo nabízí řadu způsobů, jak vytvořit balíček pro vaše osobní použití nebo sdílení s komunitou aplikace Dynamo. V níže uvedené případové studii si rozebráním existujícího balíčku projdeme, jak je balíček vytvořen. Tato případová studie vychází ze zkušeností z předchozí kapitoly a poskytuje sadu vlastních uzlů pro mapování geometrie podle souřadnic UV, z jednoho povrchu aplikace Dynamo do jiného.

### MapToSurface

Budeme pracovat se vzorovým balíčkem, který demonstruje mapování UV bodů z jednoho povrchu do druhého. Základy nástroje jsme již vytvořili v části [Vytvoření vlastního uzlu](../10_Custom-Nodes/10-2_Creating.md) tohoto cvičení. Níže uvedené soubory ukazují, jak můžeme využít koncepci mapování UV a vytvořit sadu nástrojů pro publikovatelnou knihovnu.

![](images/11-4/uvMap.jpg)

> Na tomto obrázku namapujeme bod z jednoho povrchu na jiný pomocí souřadnic UV. Balíček je založen na tomto konceptu, ale se složitější geometrií.

### Instalace balíčku

V předchozí kapitole jsme prozkoumali způsoby panelizace povrchu v aplikaci Dynamo podle křivek definovaných v rovině XY. Tato případová studie tyto koncepty rozšiřuje o další kóty geometrie. Tento balíček nainstalujeme, tak jak byl vytvořen, abychom ukázali, jak byl vyvinut. V další části ukážeme, jak byl tento balíček publikován.

![](images/11-4/Creating/Packages - 14.jpg)

> Toto je ta lehká část. V aplikaci Dynamo přejděte na kartu *Balíčky > Vyhledat balíček...*

![](images/11-4/Creating/Packages - 13.jpg)

> Vyhledejte balíček *MapToSurface* (jedno slovo).

> 1. Po nalezení balíčku klikněte na velkou šipku pro stahování vlevo od názvu balíčku. Balíček bude nainstalován do aplikace Dynamo.

![](images/11-4/Publishing/packages - ui.jpg)

> 1. Po instalaci by měly být vlastní uzly dostupné ve skupině DynamoPrimer nebo v knihovně aplikace Dynamo. S instalovaným balíčkem projdeme to, jak ho nastavit.

### Uživatelské uzly

Balíček, který vytváříme, používá pět uživatelských uzlů, které jsme vytvořili pro referenci. Projdeme si, co každý uzel dělá níže. Některé vlastní uzly jsou sestaveny z jiných uživatelských uzlů a grafy mají rozvržení, které je pro ostatní uživatele snadno pochopitelné.

![](images/11-4/Creating/Packages - 12.jpg)

> Toto je jednoduchý balíček s pěti vlastními uzly. V níže uvedených krocích si stručně promluvíme o nastavení jednotlivých uživatelských uzlů.

![](images/11-4/Creating/Packages - 11.jpg)

> **PointsToSurface:** Toto je základní vlastní uzel, ze kterého vychází všechny ostatní uzly mapování. Jednoduše řečeno, uzel mapuje bod ze zdrojového povrchu souřadnice UV do umístění souřadnic cílového povrchu UV. Protože jsou body nejprimitivnější geometrií, ze které je vytvořena složitější geometrie, můžeme tuto logiku použít k mapování 2D a dokonce 3D geometrie z jednoho povrchu do druhého.

![](images/11-4/Creating/Packages - 10.jpg)

> **PolygononsToSurface:** Logika rozšíření mapovaných bodů z 1D geometrie na 2D geometrii je znázorněna jednoduše pomocí polygonů zde. Všimněte si, že jsme do tohoto vlastního uzlu vnořili uzel *PointsToSurface*. Tímto způsobem lze namapovat body každého polygonu na povrch a poté polygon z těchto namapovaných bodů znovu vygenerovat. Zachováním správné datové struktury (seznam seznamů bodů) můžeme polygony ponechat oddělené, poté co jsou redukovány na sadu bodů.

![](images/11-4/Creating/Packages - 09.jpg)

> **NurbsCrvtoSurface:** Používá se tejná logika se jako v uzlu *PolygonToSurface*. Místo mapování polygonálních bodů však mapujeme řídicí body křivky nurbs.

![](images/11-4/Creating/Packages - 08.jpg)

> **OffsetPointsToSurface:** Tento uzel je trochu složitější, ale koncept je jednoduchý: Podobně jako uzel *PointsToSurface* tento uzel mapuje body z jednoho povrchu na druhý. Bere však v úvahu také body, které nejsou na původním zdrojovém povrchu, jejich vzdálenost k nejbližšímu parametru UV a mapuje tuto vzdálenost na normálu cílového povrchu v odpovídající souřadnici UV. To dává větší smysl při prohlížení vzorových souborů.

![](images/11-4/Creating/Packages - 07.jpg)

> **SampleSrf:** Toto je jednoduchý uzel, který vytvoří parametrický povrch k mapování ze zdrojové mřížky na vlnitý povrch v souborech příkladů.

### Vzorové soubory

Ukázkové soubory lze nalézt v kořenové složce balíčku (v aplikaci Dynamo přejděte do této složky pomocí možností *Balíčky>Správa balíčků...*).

![](images/11-4/Publishing/packages - showRoot.jpg)

> V okně Správa balíčků klikněte na tři svislé tečky vpravo od položky *MapToSurface* a vyberte možnost *Zobrazit kořenový adresář.*

S otevřeným kořenovým adresářem přejděte do složky *extra*, která obsahuje všechny soubory v balíčku, které nejsou uživatelskými uzly. Zde jsou příklady souborů (pokud existují) uloženy pro balíčky aplikace Dynamo. Níže uvedené snímky obrazovky popisují koncepce ukázané v jednotlivých ukázkových souborech.

![](images/11-4/Creating/Packages - 06.jpg)

> **01-PanelingWithPolygony:** Tento příklad ukazuje, jak lze pomocí položky *PointsToSurface* panelizovat povrch na základě rastru obdélníků. To by mělo vypadat povědomě, protože jsme viděli podobný pracovní postup v [předchozí kapitole](../10_Custom-Nodes/10-2_Creating.md).

![](images/11-4/Creating/Packages - 05.jpg)

> **02-PanelingWithPolygonons-II:** Pomocí podobného pracovního postupu se v tomto souboru cvičení zobrazí nastavení pro mapování kružnic (nebo polygonů reprezentujících kružnice) z jednoho povrchu na druhý. Používá se uzel *PolygononsToSurface*.

![](images/11-4/Creating/Packages - 04.jpg)

> **03-NurbsCrvsAndSurface:** Tento příklad přidává určitou složitost při práci s uzlem NurbsCrvToSurface. Cílový povrch je odsazen o danou vzdálenost a křivka nurbs je mapována na původní cílový povrch a odsazený povrch. Od této chvíle jsou oba mapované oblouky šablonovány, aby vytvořily povrch, který bude poté zesílen. Výsledné těleso má zaoblení, které je reprezentativní pro normály cílového povrchu.

![](images/11-4/Creating/Packages - 03A.jpg)

> **04-BegPolysurface-OffsetPoints:** Tento příklad ukazuje, jak mapovat objekt polysurface se záhyby ze zdrojového povrchu na cílový povrch. Zdrojový a cílový povrch je pravoúhlý povrch pokrývající rastr a orotovaný povrch.

![](images/11-4/Creating/Packages - 03.jpg)

> **04-BegPolysurface-OffsetPoints:** Zdrojový objekt polysurface mapovaný ze zdrojového povrchu na cílový povrch.

![](images/11-4/Creating/Packages - 01.jpg)

> **05-SVG-Import:** Protože vlastní uzly jsou schopny mapovat různé typy křivek, odkazuje tento poslední soubor na soubor SVG exportovaný z aplikace Illustrator a mapuje importované křivky na cílový povrch.

![](images/11-4/Creating/Packages - 00.jpg)

> **05-SVG-Import:** Analýzou syntaxe souboru .svg se oblouky převedou z formátu .xml na objekty polycurve aplikace Dynamo.

![](images/11-4/Creating/Packages - 02.jpg)

> **05-SVG-Import:** Importované oblouky jsou mapovány na cílový povrch. To nám umožňuje přímo navrhnout panelizaci (klikáním) v aplikaci Illustrator, importovat do aplikace Dynamo a použít na cílový povrch.

