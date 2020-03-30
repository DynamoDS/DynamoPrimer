

### Co je vizuální programování?

Návrh často zahrnuje vytváření vizuálních, systémových nebo geometrických vztahů mezi jednotlivými součástmi. Mnohdy jsou tyto vztahy vytvářeny pracovními postupy, které nás prostřednictvím pravidel provedou od konceptu až k výsledku. Možná, aniž bychom to věděli, pracujeme algoritmicky – definujeme krok za krokem sadu akcí, které se řídí základní logikou vstupu, zpracování a výstupu. Programování nám umožňuje pokračovat v práci tímto způsobem, ale formalizací našich algoritmů.

### Dostupné algoritmy

Pojem **Algoritmus** sice nabízí některé silné příležitosti, ale může s ním být spojeno několik nejasností. Algoritmy mohou vytvářet neočekávané, divoké nebo působivé věci, ale nejsou kouzelné. Ve skutečnosti jsou docela jasné. Použijeme konkrétní příklad – origami jeřáb. Začneme čtvercovým kusem papíru (vstup), postupujte podle posloupnosti kroků skládání (akce zpracování) a výsledkem je je jeřáb (výstup).

![Origami jeřáb](images/1-1/00-OrigamiCrane.png)

Tak kde je algoritmus? Je to abstraktní posloupnost kroků, kterou můžeme vyjádřit několika způsoby – textově nebo graficky.

**Textové pokyny:**

1. Začněte se čtvercovým kusem papíru, barevnou stranou nahoru. Přeložte papír v polovině a rozložte. Potom přeložte v polovině na druhou stranu.
2. Otočte papír na bílou stranu. Přeložte papír v polovině, rozložte a pak znovu přeložte ve druhém směru.
3. Pomocí vytvořených záhybů přesuňte horní tři rohy modelu dolů do dolního rohu. Zploštěte model.
4. Složte horní trojúhelníkové klapky do středu a rozložte je.
5. Složte horní část modelu dolů a rozložte.
6. Otevřete nejhornější klapku modelu, zvedněte ji a současně stiskněte strany modelu směrem dovnitř. Zploštěte.
7. Obraťte model a opakujte kroky 4–6 na druhé straně.
8. Ohněte horní klapky do středu.
9. Opakujte na druhé straně.
10. Složte obě „nohy“ modelu, a potom je rozložte.
11. Uvnitř obraťte složené „nohy“ podél záhybu, které jste právě vytvořili.
12. Na jedné straně proveďte vnitřní převrácený sklad a vytvořte hlavu, pak ohněte dolů křídla.
13. Jeřáb je dokončen.

**Grafické pokyny:**

![Vyžaduje aktualizaci – Origami jeřáb](images/1-1/01-OrigamiCraneInstructions.png)

### Programování definováno

Použitím jedné z těchto posloupnosti pokynů by mělo vést ke složení jeřába, a pokud jste je následovali, použili jste algoritmus. Jediným rozdílem je způsob, jakým jsme si přečetli formulaci posloupnosti pokynů a to nás vede k části **programování**. Programování, často zkrácené z *počítačového programování*, je úkon formalizace zpracování posloupnosti akcí do spustitelného programu. Pokud změníme výše uvedené pokyny pro složení jeřába na formát, který může náš počítač číst a spustit, programujeme.

Klíčem k první překážku, kterou najdeme v programování, je, že se musíme spolehnout na určitou formu abstrakce, abychom mohli efektivně komunikovat s naším počítačem. To má podobu množství programovacích jazyků, například JavaScript, Python nebo C. Pokud můžeme napsat opakovatelnou posloupnost instrukcí, například pro origami jeřába, stačí ji pouze přeložit pro počítač. Jsme na cestě k tomu, aby mohl počítač složit jeřába nebo dokonce i řadu různých jeřábů, kde se každý z nich mírně liší. Toto je síla programování – počítač opakovaně vykoná jakoukoli úlohu nebo sadu úloh, které mu předáme, bez prodlení a bez lidské chyby.

#### Vizuální programování definováno

> Stáhněte si vzorový soubor, který je přizpůsoben tomuto cvičení (klikněte pravým tlačítkem a vyberte příkaz Uložit odkaz jako...): [Vizuální programování – Circle Through Point.dyn](datasets/1-1/Visual Programming - Circle Through Point.dyn). Úplný seznam vzorových souborů najdete v dodatku.

Kdybyste dostali za úkol psát instrukce pro skládání origami jeřába, jak byste postupovali? Chcete je vytvořit grafikou, textem nebo kombinací těchto dvou?

Pokud vaše odpověď obsahovala grafiku, **vizuální programování** je rozhodně pro vás. Postup je v zásadě stejný pro programování, i pro vizuální programování. Používají stejný rámec formalizace, ale pokyny a vztahy našeho programu definujeme prostřednictvím grafického (nebo vizuálního) uživatelského rozhraní. Místo psaní textu vázaného syntaxí propojujeme předpřipravené uzly. Zde je porovnání stejného algoritmu – „nakreslit kružnici bodem“- naprogramováno pomocí uzlů versus kódu:

**Vizuální program:**

![Základní vizuální program ](images/1-1/03-BasicVisualProgram.png)

**Textový program:**

```
myPoint = Point.ByCoordinates(0.0,0.0,0.0);
x = 5.6;
y = 11.5;
attractorPoint = Point.ByCoordinates(x,y,0.0);
dist = myPoint.DistanceTo(attractorPoint);
myCircle = Circle.ByCenterPointRadius(myPoint,dist);
```

Výsledky našeho algoritmu:

![Kružnice Bodem ](images/1-1/04-CircleThroughPoint.png)

Vizuální charakteristika programování tak, že snižuje obtížnost pro začátečníky a často se mluví s návrháři. Aplikace Dynamo spadá do paradigmatu vizuálního programování, ale jak uvidíme později, stále můžeme používat také textové programování v aplikaci.

