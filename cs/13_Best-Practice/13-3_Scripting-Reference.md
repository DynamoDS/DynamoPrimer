## Skriptování – reference

Tato referenční stránka rozšiřuje doporučené postupy popsané ve skriptovacích strategiích, které obsahují podrobnější informace o knihovnách kódů, opatřování popisky a stylech. Budeme používat jazyk Python k ilustraci níže uvedených koncepcí, ale stejné zásady by platily v jazyce C#(Zerotouch), ale s jinou syntaxí.

### Které knihovny se mají použít

Standardní knihovny jsou externí pro aplikaci Dynamo a jsou k dispozici v programovacích jazycích Python a C# (Zerotouch). Aplikace Dynamo má také vlastní sadu knihoven, které přímo odpovídají hierarchii uzlu aplikace Dynamo, což uživateli umožňuje vytvořit v kódu cokoliv, co by mohlo být vytvořeno pomocí uzlů a drátů. Následuje příručka, která popisuje, jak jednotlivé knihovny aplikace Dynamo poskytují přístup a kdy mají používat standardní knihovnu.

![](images/13-4/textual-programming.jpg)

**Standardní knihovny a knihovny aplikace Dynamo**

* Standardní knihovny z jazyka Python a C# lze použít k vytvoření pokročilých dat a toků struktur v prostředí aplikace Dynamo.
* Knihovny aplikace Dynamo přímo odpovídají hierarchii uzlů k vytváření geometrie a dalších objektů aplikace Dynamo.

**Knihovny aplikace Dynamo**

* ProtoGeometry
  * Funkce: Arc, Bounding Box, Circle, Cone, Coordinate System, Cuboid, Curve, Cylinder, Edge, Ellipse, Ellipse Arc ,Face, Geometry, Helix, Index Group, Line, Mesh, Nurbs Curve, Nurbs Surface, Plane, Point, Polygon, Rectangle, Solid, Sphere, Surface, Topology, TSpline, UV, Vector, Vertex.
  * Import: ```Import souboru Autodesk.DesignScript.Geometry```
  * **Při použití protoGeometry prostřednictvím jazyka Python nebo C#** vytváříte nespravované objekty, které vyžadují ruční správu paměti. Další informace najdete v části níže: **Nespravované objekty**.
* DSCoreNodes
  * Funkce: Color, Color Range 2D, Date Time, Time Span, IO, Formula, Logic, List, Math, Quadtree, String, Thread.
  * Import: ```import DSCore```
* Mozaikování
  * Funkce: Convex Hull, Delaunay, Voronoi.
  * Import: ```Import mozaiky```
* DSOffice
  * Funkce: Excel.
  * Import: ```Import DSOffice```

### Pečlivé použití popisků

Během skriptování používáme identifikátory k označení různých položek, jako jsou proměnné, typy, funkce a další entity. Pomocí tohoto systému symbolické notace, můžeme při vytváření algoritmů využít informace pomocí popisků – obvykle tvořených posloupností znaků. Názorné pojmenování věcí hraje důležitou roli v psaní kódu, který mohou snadno číst a chápat i ostatní uživatelé, stejně jako vaše budoucí já. Zde jsou tipy, které vám pomohou při pojmenování položek ve skriptu:

**Zkratky jsou v pořádku, ale vysvětlete je pomocí komentáře:**

```
### BAD
csfX = 1.6
csfY= 1.3
csfZ = 1.0
```

```
### GOOD
# column scale factor (csf)
csfX = 1.6
csfY= 1.3
csfZ = 1.0
```

**Vyhněte se nadbytečnému označování popisky:**

```
### BAD
import car
seat = car.CarSeat()
tire = car.CarTire()
```

```
### GOOD
import car
seat = car.Seat()
tire = car.Tire()
```

**Místo záporné logiky použijte pro názvy proměnných kladnou logiku:**

```
### BAD
if 'mystring' not in text:
print 'not found'
else:
print 'found'
print 'processing'
```

```
### GOOD
if 'mystring' in text:
print 'found'
print 'processing'
else:
print 'not found'
```

**Upřednostňujte „obrácenou poznámku“:**

```
### BAD
agents = …
active_agents = …
dead_agents ...
```

```
### GOOD
agents = …
agents_active = …
agents_dead = ...
```

> Je to rozumnější, ze strukturálního hlediska.

**Zkratky by se měly používat ke zkrácení příliš dlouhých a často opakovaných řetězců:**

```
### BAD
from RevitServices.Persistence import DocumentManager

DocumentManager = DM

doc = DM.Instance.CurrentDBDocument
uiapp = DM.Instance.CurrentUIApplication
```

```
### GOOD
from RevitServices.Persistence import DocumentManager as DM

doc = DM.Instance.CurrentDBDocument
uiapp = DM.Instance.CurrentUIApplication
```

> Aliasing může rychle vést k velmi matoucím a nestandardním programům.

**Používejte pouze nezbytná slova:**

```
### BAD
rotateToCoord = rotateFromCoord.Rotate(solid.ContextCoordinateSystem.Origin,Vector.ByCoordinates(0,0,1),5)
```

```
### GOOD
toCoord = fromCoord.Rotate(solid.ContextCoordinateSystem.Origin,Vector.ByCoordinates(0,0,1),5)
```

> „Všechno by mělo být co nejjednodušší, ale ne jednodušší.“ – Albert Einstein

### Konzistentní styl

Obecně řečeno, existuje více než jeden způsob, jak něco programovat, proto je váš „osobní styl“ skriptování výsledkem nespočtu malých rozhodnutí, která se rozhodnete udělat (nebo nedělat) v průběhu práce. To znamená, že čitelnost a udržitelnost kódu jsou přímým výsledkem jeho vnitřní konzistence a dodržování všeobecných stylistických konvencí. Jako orientační pravidlo by měl kód, který vypadá stejně na dvou místech, fungovat stejně. Zde je několik tipů pro zápis jasného a konzistentního kódu.

**Konvence pojmenování:** (Vyberte jednu z níže uvedených konvencí pro každý typ entity v kódu a držte se jí.)

* Proměnné, funkce, metody, balíčky, moduly:
`lower_case_with_underscores`

* Třídy a výjimky:
`CapWords`

* Chráněné metody a vnitřní funkce:
`_single_leading_underscore(self, ...)`

* Soukromé metody:
`__double_leading_underscore(self, ...)`

* Konstanty:
`ALL_CAPS_WITH_UNDERSCORES`

> Tip: Vyhněte se jednopísmenným proměnným (zvláště l, O, I) kromě velmi krátkých bloků, pokud je význam zřetelně viditelný z bezprostředního kontextu.

**Použití prázdných řádků:**

* Obklopujte funkce a definice tříd dvěma prázdnými řádky.

  * Definice metody uvnitř třídy jsou obklopeny jedním prázdným řádkem.

  * Pro oddělení skupin souvisejících funkcí lze použít (střídmě) další prázdné řádky.

**Vyhněte se nadbytečnému bílému prostoru:**

* Bezprostředně uvnitř závorek:

```
### BAD
function( apples[ 1 ], { oranges: 2 } )
```

```
### GOOD:
function(apples[1], {oranges: 2})
```

* Bezprostředně před čárkou, středníkem nebo dvojtečkou:

```
### BAD
if x == 2 : print x , y ; x , y = y , x
```

```
### GOOD
if x == 2: print x, y; x, y = y, x
```

* Bezprostředně před otevřenou závorkou, která začíná seznam argumentů volání funkce:

```
### BAD
function (1)
```

```
### GOOD
function(1)
```

* Bezprostředně před otevřenou závorkou, která začíná indexování nebo řezy:

```
### BAD
dict ['key'] = list [index]
```

```
### GOOD
dict['key'] = list[index]
```

* Vždy obklopte tyto binární operátory jednou mezerou na obou stranách:

```
assignment ( = )
augmented assignment ( += , -= etc.)
comparisons ( == , < , > , != , <> , <= , >= , in , not in , is , is not )
Booleans ( and , or , not )
```

**Délka čáry sledování:**

* Nepřekračujte cca 79 znaků.

* Omezení požadované šířky okna editoru umožňuje, aby bylo více souborů otevřeno vedle sebe, a funguje správně při použití nástrojů pro kontrolu kódu, které představují dvě verze v sousedních sloupcích.

* Dlouhé řádky lze rozdělit na více řádků zalomením výrazů v závorkách:

**Vyhněte se zjevným a nadbytečným komentářům:**

* Někdy méně komentářů znamená čitelnější kód. Zvláště pokud vás nutí místo toho použít smysluplné názvy symbolů.

* Přijetí kvalitních kódovacích návyků snižuje závislost na komentářích:

```
### BAD
# get the country code
country_code = get_country_code(address)

# if country code is US
if (country_code == 'US'):
# display the form input for state
print form_input_state()
```

```
### GOOD
# display state selection for US users
country_code = get_country_code(address)
if (country_code == 'US'):
print form_input_state()
```

> Tip: Komentáře vám vysvětlují proč, kód vám říká jak.

**Podívejte se na otevřený zdrojový kód:**

* Projekty s otevřeným zdrojovým kódem jsou založeny na spolupráci mnoha vývojářů. Tyto projekty musí udržovat vysokou úroveň čitelnosti kódu, aby tým mohl pracovat co nejúčinněji. Proto je vhodné procházet zdrojový kód těchto projektů a sledovat, co tito vývojáři provádějí.

* Vylepšete své konvence:

  * Je třeba se ptát, zda každá konvence funguje pro současné potřeby.

  * Je ohrožena funkčnost/účinnost?

### Standardy C# (Zerotouch)

**Na těchto stránkách Wiki naleznete rady pro psaní C# pro Zerotouch a přispívání do aplikace Dynamo:**

  * Tato nápověda Wiki obsahuje některé obecné standardy kódování pro dokumentaci a testování vašeho kódu: [https://github.com/DynamoDS/Dynamo/wiki/Coding-Standards](https://github.com/DynamoDS/Dynamo/wiki/Coding-Standards)

  * Tato nápověda Wiki se týká zejména norem pojmenování knihoven, kategorií, názvů uzlů, názvů portů a zkratek: [https://github.com/DynamoDS/Dynamo/wiki/Naming-Standards](https://github.com/DynamoDS/Dynamo/wiki/Naming-Standards)

  **Nespravované objekty:**

  Při používání knihovny geometrie aplikace Dynamo *(ProtoGeometry)* z geometrie aplikace Python nebo C# nebudou vytvářené objekty spravovány virtuálním počítačem a paměť mnoha těchto objektů bude nutné vyčistit ručně. Chcete-li vyčistit nativní nebo nespravované objekty, můžete použít metodu **Dispose** nebo klíčové slovo **using**. Přehled najdete v této položce Wiki: [https://github.com/DynamoDS/Dynamo/wiki/Zero-Touch-Plugin-Development#dispose--using-statement](https://github.com/DynamoDS/Dynamo/wiki/Zero-Touch-Plugin-Development#dispose--using-statement).

  Je nutné pouze zpracovat nespravované zdroje, které se nevrací do grafu, nebo se na ně neukládá odkaz. Ve zbytku této části odkazujeme na tyto objekty jako *mezilehlou geometrii*. Příklad této třídy objektu je uveden v příkladu kódu níže. Tato funkce **singleCube** s nulovým dotykem C# vrací jednu krychli, ale během provádění vytvoří 10000 dalších krychlí. Můžeme předstírat, že tato jiná geometrie byla použita jako mezilehlá konstrukční geometrie.

  **Tato funkce nulového dotyku pravděpodobně způsobí selhání aplikace Dynamo.** Protože jsme vytvořili 10000 těles, ale pouze jedno z nich bylo uloženo a pouze toto bylo vráceno. Místo toho bychom měli odstranit všechny naše mezilehlé kostky, kromě té, kterou vrátíme. Nechceme odstranit tu, kterou vrátíme, protože bude propagována do grafu a použita jinými uzly.

```
public Cuboid singleCube(){

var output = Cuboid.ByLengths(1,1,1);

for(int i = 0; i<10000;i++){
output = Cuboid.ByLengths(1,1,1);
}
return output;
}
```

Opravený kód by vypadal jako:

```
public Cuboid singleCube(){

var output = Cuboid.ByLengths(1,1,1);
var toDispose = new List<Geometry>();

for(int i = 0; i<10000;i++){
toDispose.Add(Cuboid.ByLengths(1,1,1));
}

foreach(IDisposable item in toDispose ){
item.Dispose();
}

return output;
}
```

Obecně je nutné odstranit pouze geometrii, například ```Povrchy```, ```Křivky``` a ```Tělesa```. Pro jistotu však můžete odstranit všechny typy geometrie (```Vektory```, ```Body```, ```Souřadnicové systémy```).

