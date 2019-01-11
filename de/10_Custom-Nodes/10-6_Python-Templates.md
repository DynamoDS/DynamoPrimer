

## Python-Vorlagen

In Dynamo 2.0 haben Sie die Möglichkeit eine Standardvorlage ```(*.py-Erweiterung)``` festzulegen, die verwendet wird, wenn Sie das Python-Fenster zum ersten Mal öffnen. Entwickler haben sich diese Funktion schon lange gewünscht, da sie die Verwendung von Python innerhalb von Dynamo beschleunigt. Durch die Verwendung einer Vorlage stehen uns vorgabemäßige Imports jederzeit einsatzbereit zur Verfügung, wenn wir ein benutzerdefiniertes Python-Skript entwickeln möchten.

Die Vorlage befindet sich im Ordner ```APPDATA``` Ihrer Dynamo-Installation.

Diese ist in der Regel: ```( %appdata%\Dynamo\Dynamo Core\{version}\ )```.

![Vorlage](images/10-6/PythonTemplate - 01.png)

### Einrichten der Vorlage

Um diese Funktion nutzen zu können, müssen wir unserer Datei ```DynamoSettings.xml``` die folgende Zeile hinzufügen. *(in Editor bearbeiten)*

![Vorlage](images/10-6/PythonTemplate - 02.png)

Ersetzen Sie alle Vorkommen von ```durch das Folgende:```

```
<PythonTemplateFilePath>
<string>C:\Users\CURRENTUSER\AppData\Roaming\Dynamo\Dynamo Core\2.0\PythonTemplate.py</string>
</PythonTemplateFilePath>
```

*Hinweis: Ersetzen Sie CURRENTUSER mit Ihrem Benutzernamen.*

Als Nächstes müssen wir eine Vorlage mit den Funktionen erstellen, die wir integrieren möchten. In diesem Fall können wir die Revit-bezogenen Importe und einige andere typische Elemente einbetten, die wir bei der Arbeit mit Revit verwenden.

Sie können mit einem leeren Editor-Dokument beginnen und den folgenden Code einfügen:

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

Anschließend speichern Sie diese Datei als ```PythonTemplate.py``` am Speicherort ```APPDATA```.

### Das Verhalten des Python-Skripts danach

Nach dem Erstellen der Python-Vorlage sucht Dynamo jedes Mal danach, wenn Sie einen Python-Block einfügen. Wenn sie nicht gefunden wird, wird das vorgabemäßige Python-Fenster angezeigt.

![Vorlage](images/10-6/PythonTemplate - 03.png)

Wenn die Python-Vorlage gefunden wird (beispielsweise für Revit), werden alle vorgegebenen Elemente angezeigt, die Sie integriert haben.

![Vorlage](images/10-6/PythonTemplate - 04.png)

Weitere Informationen zu dieser großartigen Ergänzung (von Radu Gidei) finden Sie hier. [https://github.com/DynamoDS/Dynamo/pull/8122](https://github.com/DynamoDS/Dynamo/pull/8122)

