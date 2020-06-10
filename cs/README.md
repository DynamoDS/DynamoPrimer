

# Dynamo Primer

## Pro aplikaci Dynamo v2.0

Stáhněte si [Dynamo v1.3 Primer zde](http://primer.dynamobim.org/en/Appendix/DynamoPrimer-Print1_3.pdf)

![Logo aplikace Dynamo](images/dynamo_logo_dark-trim.jpg)

> Aplikace Dynamo je platforma vizuálního programování s otevřeným kódem určená pro konstruktéry.

### Vítejte

Právě jste otevřeli Dynamo Primer, kompletní příručku pro vizuální programování v aplikaci Autodesk Dynamo Studio. Tato příručka je stále ve vývoji a obsahuje základní informace pro programování. Mezi témata patří práce s výpočetní geometrií, osvědčené postupy pro návrh podle pravidel, mezioborové programování a další témata týkající se platformy Dynamo.

Aplikace Dynamo obsahuje výkonné funkce pro širokou škálu navrhovacích postupů. Svou práci v této aplikaci můžete začít mnoha způsoby:

* **Prozkoumejte** a seznamte se s vizuálním programováním
* **Propojujte** pracovní postupy v různých aplikacích
* **Zapojte se** do aktivní komunity uživatelů, přispěvatelů a vývojářů
* **Vyvíjejte** a vylepšujte platformu s otevřeným zdrojovým kódem

Pro kvalitní funkce, které nabízí aplikace Dynamo, je potřeba stejně kvalitní dokumentace, Dynamo Primer.

Tato příručka Primer obsahuje kapitoly od společnosti Mode Lab. Tyto kapitoly se zaměřují na základy práce s vizuálními programy v aplikaci Dynamo a obsahují i některá pokročilá témata. V příručce Primer můžete nalézt tato témata:

* **Kontext** – Co je přesně „Vizuální programování“ a jaké jsou koncepty, které je nutné chápat pro práci v aplikaci Dynamo?
* **Začínáme** – Jak získat aplikaci Dynamo a vytvořit první program?
* **Co program obsahuje** – Jaké jsou funkční části aplikace Dynamo a jak se používají?
* **Stavební bloky** – Co jsou „Data“ a jaké základní typy se používají v programech?
* **Geometrie pro návrh** – Jak se v aplikaci Dynamo pracuje s geometrickými prvky?
* **Seznamy, seznamy, seznamy** – Jak spravovat a uspořádat datové struktury?
* **Kód v uzlech** – Jak aplikaci Dynamo rozšířit o vlastní kód?
* **Výpočetní BIM** – Jak aplikaci Dynamo použít spolu s modelem aplikace Revit?
* **Vlastní uzly** – Jak vytvářet vlastní uzly?
* **Balíčky** – Jak sdílet vlastní nástroje s komunitou?

Je to vzrušující příležitost, kdy se naučit pracovat a vyvíjet v aplikaci Dynamo. Začínáme!

---

### Otevřený zdrojový kód

Projekt Dynamo Primer má otevřený zdrojový kód. Našim cílem je nabídnout uživatelům kvalitní obsah a oceníme jakoukoliv zpětnou vazbu. Pokud chcete ohlásit problém nebo připomínku, vložte ji na stránku s problémy na GitHubu: [https://github.com/DynamoDS/DynamoPrimer/issues](https://github.com/DynamoDS/DynamoPrimer/issues)

Pokud do projektu chcete přidat novou část, úpravy nebo něco jiného, začněte u našeho repozitáře na GitHubu: [https://github.com/DynamoDS/DynamoPrimer](https://github.com/DynamoDS/DynamoPrimer).

---

### Projekt Dynamo Primer

Dynamo Primer je projekt s otevřeným zdrojovým kódem, který vytvořil Matt Jezyk a tým vývojářů Dynamo společnosti Autodesk.

Společnost **Mode Lab** sepsala první edici příručky Primer. Děkujeme jim za jejich úsilí při vytváření tohoto hodnotného zdroje.

[![](images/MODELAB_Logo.png)](http://modelab.is)

**John Pierson ze společnosti Parallax Team** aktualizoval příručku Primer podle verze aplikace Dynamo 2.0.

[![](images/PRLX_Logo.jpg)](http://www.parallaxteam.com/)

### Poděkování

Zvláštní poděkování Ianu Keoughovi za vytvoření a řízení projektu Dynamo.

Děkujeme Mattu Jezykovi, Ianu Keoughovi, Zachu Kronovi, Racel Williamsové and Colinu McCroneeovi za jejich spolupráci a účast na celé řadě projektů aplikace Dynamo.

### Software a zdroje

**Dynamo** Aktuální stabilní* verze aplikace Dynamo je 2.1.0

[http://dynamobim.com/download/](http://dynamobim.com/download/) nebo [http://dynamobuilds.com](http://dynamobuilds.com)

*Poznámka: Počínaje aplikací Revit 2020 je aplikace Dynamo součástí vydání aplikace Revit a nemusí být ručně instalována. Další informace jsou k dispozici na tomto [příspěvku na blogu](https://dynamobim.org/dynamo-core-2-1-release/).

**DynamoBIM** Nejlepší zdroj dalších informací, výukových materiálů a komunitních diskuzí je webová stránka DynamoBIM.

[http://dynamobim.org](http://dynamobim.org)

**GitHub aplikace Dynamo** Dynamo je projekt s otevřeným zdrojovým kódem na GitHubu. Chcete-li přispět, podívejte se na stránku DynamoDS.

[https://github.com/DynamoDS/Dynamo](https://github.com/DynamoDS/Dynamo)

**Kontakt** Pokud najdete v tomto dokumentu chyby, neváhejte a kontaktujte nás.

Dynamo@autodesk.com

### Licence

Copyright 2019 Autodesk

Licence Apache, verze 2.0 („Licence“); tento soubor lze použít pouze v souladu s Licencí. Kopii licence lze získat na adrese

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Pokud příslušné zákony nebo písemná smlouva nestanoví jinak, je software distribuovaný na základě Licence distribuován TAK, JAK JE, BEZ JAKÝCHKOLI PODMÍNEK A ZÁRUK, ať už výslovně uvedených nebo odvozených. Konkrétní ustanovení o povoleních a omezeních naleznete v Licenci.

