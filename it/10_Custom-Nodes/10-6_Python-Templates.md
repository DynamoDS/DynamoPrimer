

## Modelli di Python

Con Dynamo 2.0 è possibile specificare un modello di default ```(estensione .py)``` da utilizzare all'apertura della finestra di Python per la prima volta. Questa è stata una richiesta a lungo desiderata perché consente di accelerare l'utilizzo di Python all'interno di Dynamo. La possibilità di utilizzare un modello consente di avere importazioni di default pronte per lo sviluppo di uno script Python personalizzato.

La posizione di questo modello è ```APPDATA``` per l'installazione di Dynamo.

In genere, è la seguente ```( %appdata%\Dynamo\Dynamo Core\{version}\ )```.

![Modello](images/10-6/PythonTemplate - 01.png)

### Configurazione del modello

Per utilizzare questa funzionalità, è necessario aggiungere la seguente riga nel file ```DynamoSettings.xml```. *(Modifica nel Blocco note)*

![Modello](images/10-6/PythonTemplate - 02.png)

Dove è visibile ```<PythonTemplateFilePath />```, è sufficiente sostituirlo con quanto segue:

```
<PythonTemplateFilePath>
<string>C:\Users\CURRENTUSER\AppData\Roaming\Dynamo\Dynamo Core\2.0\PythonTemplate.py</string>
</PythonTemplateFilePath>
```

*Nota: sostituire CURRENTUSER con il proprio nome utente*.

Successivamente, è necessario creare un modello con le funzionalità incorporate che si desidera utilizzare. In questo caso, si incorporano le importazioni correlate a Revit e alcuni degli altri elementi tipici quando si utilizza Revit.

È possibile aprire un documento del Blocco note vuoto e incollare il seguente codice all'interno:

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

Al termine, salvare il file come ```PythonTemplate.py``` nella posizione ```APPDATA```.

### Funzionamento successivo dello script Python

Dopo aver definito un modello di Python, verrà cercato in Dynamo ogni volta che viene posizionato un nodo Python. Se non viene trovato, sarà simile alla finestra di Python di default.

![Modello](images/10-6/PythonTemplate - 03.png)

Se viene trovato il modello di Python (ad esempio, come il modello di Revit), verranno visualizzati tutti gli elementi di default incorporati.

![Modello](images/10-6/PythonTemplate - 04.png)

Ulteriori informazioni su questa straordinaria aggiunta (di Radu Gidei) sono disponibili qui. [https://github.com/DynamoDS/Dynamo/pull/8122](https://github.com/DynamoDS/Dynamo/pull/8122)

