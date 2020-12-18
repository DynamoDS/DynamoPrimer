

## Gabarits Python

Avec Dynamo 2.0, vous pouvez spécifier un gabarit par défaut ```(extension .py)``` à utiliser lors de la première ouverture de la fenêtre Python. Cette option a longtemps été attendue, car elle accélère l'utilisation de Python dans Dynamo. La possibilité d'utiliser un gabarit vous permet d'obtenir des importations par défaut prêtes à l'emploi lorsque vous voulez développer un script Python personnalisé.

Ce gabarit se trouve à l'emplacement ```APPDATA``` de votre installation de Dynamo.

L'emplacement habituel est le suivant : ```( %appdata%\Dynamo\Dynamo Core\{version}\ )```.

![Gabarit](images/10-6/PythonTemplate - 01.png)

### Configuration du gabarit

Pour utiliser cette fonctionnalité, vous devez ajouter la ligne suivante dans le fichier ```DynamoSettings.xml```. *(Modifier dans le bloc-notes)*

![Gabarit](images/10-6/PythonTemplate - 02.png)

Vous pouvez simplement remplacer ```<PythonTemplateFilePath />``` par ce qui suit :

```
<PythonTemplateFilePath>
<string>C:\Users\CURRENTUSER\AppData\Roaming\Dynamo\Dynamo Core\2.0\PythonTemplate.py</string>
</PythonTemplateFilePath>
```

*Remarque : remplacez CURRENTUSER par votre nom d'utilisateur*

Ensuite, vous devez créer un gabarit en intégrant la fonctionnalité que vous voulez utiliser. Dans cet exemple, vous allez incorporer les importations liées à Revit et d'autres éléments que vous utilisez généralement lorsque vous travaillez avec Revit.

Vous pouvez ouvrir un document de bloc-notes vide et coller le code suivant à l'intérieur :

```
import clr

clr.AddReference('RevitAPI')
from Autodesk.Revit.DB import *
from Autodesk.Revit.DB.Structure import *

clr.AddReference('RevitAPIUI')
from Autodesk.Revit.UI import *

clr.AddReference('System')
from System.Collections.Generic import List

clr.AddReference('RevitNodes')
import Revit
clr.ImportExtensions(Revit.GeometryConversion)
clr.ImportExtensions(Revit.Elements)

clr.AddReference('RevitServices')
import RevitServices
from RevitServices.Persistence import DocumentManager
from RevitServices.Transactions import TransactionManager

doc = DocumentManager.Instance.CurrentDBDocument
uidoc=DocumentManager.Instance.CurrentUIApplication.ActiveUIDocument

#Preparing input from dynamo to revit
element = UnwrapElement(IN[0])

#Do some action in a Transaction
TransactionManager.Instance.EnsureInTransaction(doc)

TransactionManager.Instance.TransactionTaskDone()

OUT = element
```

Une fois cela fait, enregistrez ce fichier sous le nom ```PythonTemplate.py``` à l'emplacement ```APPDATA```.

### Comportement du script Python par la suite

Une fois le gabarit Python défini, Dynamo le recherche à chaque fois qu'un nœud Python est positionné. Si le gabarit est introuvable, l'affichage sera comparable à la fenêtre Python par défaut.

![Gabarit](images/10-6/PythonTemplate - 03.png)

Si Dynamo trouve le gabarit Python (par exemple, notre gabarit Revit), il affiche tous les éléments par défaut que vous avez intégrés.

![Gabarit](images/10-6/PythonTemplate - 04.png)

Vous trouverez ici des informations supplémentaires sur cet ajout important (par Radu Gidei). [https://github.com/DynamoDS/Dynamo/pull/8122](https://github.com/DynamoDS/Dynamo/pull/8122)

