

# Uzly slovníku

Aplikace Dynamo 2.0 nabízí několik uzlů pro slovníky. Mezi ně patří uzly pro *tvorbu, akci a dotazování*.

![OBRÁZEK](images/9-2/9-2_dictionaryNodes.png)

* Uzel ```Dictionary.ByKeysValues``` vytvoří slovník ze zadaných hodnot a klíčů. *(Počet položek bude odpovídat počtu položek nejkratšího seznamu)*
* Uzel ```Dictionary.Components``` vytvoří komponenty ze vstupního slovníku. *(Operace opačná k vytvoření slovníku.)*
* Uzel ```Dictionary.RemoveKeys``` vytvoří nový objekt slovníku bez vstupních klíčů.
* Uzel ```Dictionary.SetValueAtKeys``` vytvoří nový slovník ze vstupního slovníku a přitom použije vstupní klíče a hodnoty k nahrazení odpovídajících hodnot a klíčů v původním slovníku.
* Uzel ```Dictionary.ValueAtKey``` vrátí hodnotu na pozici vstupního klíče.
* Uzel ```Dictionary.Count``` vrátí počet dvojic hodnot a klíčů ve slovníku.
* Uzel ```Dictionary.Keys``` vrátí klíče uložené ve slovníku.
* Uzel ```Dictionary.Values``` vrátí hodnoty uložené ve slovníku.

##### _Spojování dat ve slovnících může být užitečnou alternativou pro starý způsob práce s indexy a seznamy._

