

## Python 樣板

在 Dynamo 2.0 中，我們可以在第一次開啟 Python 視窗時，指定要使用的預設樣板 ```(.py 副檔名)```。這是一個大家期待已久的功能，因為可以加快在 Dynamo 中使用 Python 的速度。使用樣板，可以讓我們在想要開發自訂 Python 腳本時，有預設的匯入值可以隨時開始。

此樣板的位置位於 Dynamo 安裝的 ```APPDATA``` 位置。

通常是在 ```( %appdata%\Dynamo\Dynamo Core\{version}\ )```。

![樣板](images/10-6/PythonTemplate - 01.png)

### 設置樣板

若要使用此功能，我們必須在 ```DynamoSettings.xml``` 檔案中加入下列一行。*(在記事本中編輯)*

![樣板](images/10-6/PythonTemplate - 02.png)

我們會看到 ```<PythonTemplateFilePath />```，可以直接將它取代為以下內容：

```
<PythonTemplateFilePath>
<string>C:\Users\CURRENTUSER\AppData\Roaming\Dynamo\Dynamo Core\2.0\PythonTemplate.py</string>
</PythonTemplateFilePath>
```

*注意：請將 CURRENTUSER 取代為您的使用者名稱*

接下來，我們需要建置一個樣板，當中含有我們要使用的內建功能。在此範例中，我們嵌入 Revit 相關的匯入，和一些在處理 Revit 時的其他典型項目。

您可以開啟一份空白的記事本文件，在當中貼上以下程式碼：

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

完成後，請在 ```APPDATA``` 位置將此檔案儲存為 ```PythonTemplate.py```。

### 之後的 Python 腳本行為

定義 Python 樣板之後，每當放置了 Python 節點時，Dynamo 都會尋找這裡。如果找不到，看起來就會是預設的 Python 視窗。

![樣板](images/10-6/PythonTemplate - 03.png)

如果發現 Python 樣板 (例如我們的 Revit)，您會看到您內建的所有預設項目。

![樣板](images/10-6/PythonTemplate - 04.png)

您可以在下列位置找到有關此絕佳額外功能 (由 Radu Gidei 提供) 的其他資訊。[https://github.com/DynamoDS/Dynamo/pull/8122](https://github.com/DynamoDS/Dynamo/pull/8122)

