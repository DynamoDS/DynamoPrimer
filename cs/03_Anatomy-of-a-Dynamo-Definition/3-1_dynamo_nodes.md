

## Uzly

V aplikaci Dynamo jsou **uzly** objekty, jejichž propojováním vzniká vizuální program. Každý **uzel** provádí operaci – někdy může být jednoduchá, například uložení čísla, jindy může být složitá, například tvorba nebo dotazování geometrie.

### Anatomie uzlu

Většina uzlů v aplikaci Dynamo se skládá z pěti částí. Ačkoliv existují výjimky, například vstupní uzly, anatomii každý uzel lze popsat následovně: ![Rozpis uzlu bodu podle souřadnic](images/3-1/00-AnatomyOfANode.png)

> 1. Name – název uzlu, konvence pro názvy je Kategorie.Název
2. Hlavní – hlavní tělo uzlu – po kliknutí pravým tlačítkem myši se zobrazí možnosti na úrovni celého uzlu
3. Porty (vstupní a výstupní) – slouží jako zásuvky pro dráty, zleva dochází ke vstupu dat do uzlu, vpravo je výstup výsledků po provedení akce uzlu
4. Ikona vázání – naznačuje určenou možnost vázání pro případ, kdy je na vstupu seznam (další informace později)
5. Výchozí hodnota – klikněte pravým tlačítkem myši na vstupní port – některé uzly mají k dispozici výchozí hodnoty, které mohou nebo nemusí být použity.

### Porty

Vstupům a výstupům uzlů se říká porty, které se chovají jako zásuvky pro dráty. Data vstupují do uzlu skrz porty vlevo a po jeho spuštění proudí z uzlu ven skrz porty vpravo. Porty očekávají, že obdrží data určitého typu. Například připojením čísla *2.75* na porty uzlu bodu podle souřadnic dojde k úspěšné tvorbě bodu, pokud však na stejný port zadáme hodnotu *„Červená“*, dojde k chybě.

> Tip: Přesunutím kurzoru nad port zobrazíte popisek s očekávaným datovým typem.

![Popisky portů bodu podle souřadnic](images/3-1/01-Ports.png)

> 1. Popisek portu
2. Popisek
3. Datový typ
4. Výchozí hodnota

### Stavy

Aplikace Dynamo naznačuje stav běhu vizuálního programu, tím že jednotlivé uzly rendruje s různými barvami podle jejich stavu. Najetím myší nebo kliknutím pravým tlačítkem myši na název nebo porty se zobrazí další informace a možnosti.

![Stavy](images/3-1/02-States2.png)

> 1. Aktivní – uzly s názvem na tmavě šedém pozadí jsou správně propojeny i se všemi vstupy
2. Neaktivní – šedé uzly jsou neaktivní a musí být k programu na pracovní ploše připojeny pomocí drátů
3. Chyba – červená barva naznačuje chybu v uzlu
4. Zmrazeno – průhledný uzel je zmrazen a nebude spuštěn
5. Vybráno – aktuálně vybrané uzly mají světle modré rámečky
6. Upozornění – žluté uzly znamenají upozornění, například v případě nesprávných datových typů
7. Náhled pozadí – tmavě šedá naznačuje, že náhled geometrie je vypnutý

Pokud jsou ve vizuálním programu upozornění nebo chyby, aplikace Dynamo zobrazí další informace o problému. Nad názvy žlutých uzlů se navíc zobrazí popisky. Najetím myší na popisek se popisek zobrazí celý.

> Tip: S informacemi uvedenými v popisku můžete zjistit, kde došlo k problému (například chybný datový typ nebo datová struktura u předchozích uzlů).

![Popisek k chybě uzlu](images/3-1/03-WarningTooltip.jpg)

> 1. Popisek k upozornění – Hodnotu „Null“ nebo prázdná data nelze interpretovat jako typ Double, tj. číslo
2. Pomocí uzlu Watch můžete zjistit, jaká vstupní data na uzlu jsou
3. V předchozím uzlu Number je uložena hodnota „Red“ a nikoliv číslo

