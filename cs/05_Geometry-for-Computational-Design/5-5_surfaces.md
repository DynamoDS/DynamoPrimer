

## Plochy

Pomocí ploch lze (na rozdíl od křivek) reprezentovat objekty v trojrozměrném světě. Křivky nejsou rovinnými objekty a ačkoliv jsou trojrozměrné, prostor, který definují, je vždy svázán s jediným rozměrem. Plochy nabízejí o jeden prostor navíc a sadu dalších vlastností, které lze používat v dalších operacích modelování.

### Co je plocha?

Plocha je matematický útvar definovaný funkcí a dvěma parametry. Místo parametru ```t``` u křivek se k popisu parametrického prostoru u ploch používají parametry ```U``` a ```V```. To znamená, že při práci s tímto typem geometrie můžeme odvodit více geometrických dat. Křivky například nabízejí tečné vektory a normálové roviny (které lze otáčet nebo kroutit po délce křivky), zatímco plochy nabízejí normálové vektory a tečné roviny, které jsou konzistentní s jejich orientací.

![Plocha](images/5-5/Surface.jpg)

> 1. Plocha
2. Izokřivka U
3. Izokřivka V
4. Souřadnice UV
5. Kolmá rovina
6. Normálový vektor

**Doména plochy**: Doména plochy je definována jako rozsah parametrů (U,V), pro které lze vypočítat trojrozměrnou polohu bodu ležícího v této ploše. Doména v každém rozměru (U nebo V) je obvykle popisována dvěma čísly (od U Min do U Max) a (od V Min do V Max).

![Plocha](images/5-5/SurfaceParameter.jpg)

Ačkoliv tvar plochy nemusí vždy připomínat obdélník a některé její izokřivky mohou být utaženější nebo uvolněnější než jiné, prostor definovaný její doménou je vždy dvourozměrný. Doména ploch je v aplikaci Dynamo definována minimem 0.0 a maximem 1.0 ve směrech U i V. Rovinné nebo oříznuté plochy mohou mít různé domény.

**Izokřivka** (nebo izoparametrická křivka): Křivka definovaná konstantní hodnotou U nebo V na ploše a doménou hodnot pro odpovídající jiný směr U nebo V.

**Souřadnice UV**: Bod v parametrickém prostoru UV, definovaný souřadnicemi U, V a někdy W.

![Souřadnice plochy](images/5-5/SurfaceCoordinate.jpg)

**Kolmá rovina**: Rovina, která je kolmá k izokřivkám U a V v dané souřadnici UV.

**Normálový vektor**: Vektor definující směr „nahoru“ vzhledem ke kolmé rovině.

### Plochy NURBS

**Plochy NURBS** jsou velmi podobné křivkám NURBS. Plochy NURBS si lze představit jako mřížku křivek NURBS, které směřují dvěma směry. Tvar plochy NURBS je definován řídicími body a stupněm plochy ve směrech U a V. Stejný algoritmus, tedy řídicí body, váhy a stupeň, se používá k výpočtu tvaru, normál, tečen, křivosti a dalších vlastností.

![Plocha NURBS](images/5-5/NURBSsurface.jpg)

Geometrie plochy NURBS naznačuje dva směry, protože plochy NURBS jsou (nezávisle na tvaru) obdélníkové mřížky řídicích bodů. Ačkoliv tyto směry často nesouvisí s globálním systémem souřadnic, často je budeme používat k analýze modelů nebo generování dalších geometrií podle této plochy.

![Plocha NURBS](images/5-5/NURBSsurface-Degree.jpg)

> 1. Stupeň (U,V) = (3,3)
2. Stupeň (U,V) = (3,1)
3. Stupeň (U,V) = (1,2)
4. Stupeň (U,V) = (1,1)

### Polyplochy

**Polyplochy** se skládají z ploch, které jsou spojeny přes hranu. Polyplochy nabízí více než jen dvourozměrnou definici UV, propojené tvary lze procházet podle jejich topologie.

> Ačkoliv topologie popisuje pouze způsob, jakým jsou jednotlivé části propojeny, topologie v aplikaci Dynamo představuje také typ geometrie. Konkrétně se jedná o nadřazenou kategorii pro plochy, polyplochy a tělesa.

![Polyplocha](images/5-5/PolySurface.jpg)

Spojené plochy (někdy nazývané záplaty) umožňují vytvářet složitější tvary a definovat detaily ve švech. Na hrany polyplochy je možné použít operaci zaoblení nebo zkosení.

Importujme plochu do aplikace Dynamo a vyhodnoťme ji v daných parametrech, abychom zjistili, jaká data lze na daném místě získat.

![Plochy v aplikaci Dynamo](images/5-5/Dynamo_Surfaces.jpg)

> 1. *Surface.PointAtParameter* vrací bod na zadané souřadnici UV
2. *Surface.NormalAtParameter* vrací normálový vektor v zadané souřadnici UV
3. *Surface.GetIsoline* vrací izoparametrickou křivku na souřadnici U nebo V – viz vstup isoDirection.
> Stáhněte si ukázkové soubory, které jsou přiloženy k tomuto obrázku (klikněte pravým tlačítkem a vyberte příkaz Uložit odkaz jako...). Úplný seznam vzorových souborů naleznete v příloze.

> 1. [Geometry for Computational Design – Surfaces.dyn](datasets/5-5/Geometry for Computational Design - Surfaces.dyn)
2. [Surface.sat](datasets/5-5/Surface.sat)

