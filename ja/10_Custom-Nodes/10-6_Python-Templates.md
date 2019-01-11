

## Python テンプレート

Dynamo 2.0 では、初めて Python ウィンドウを開く際に、既定で使用するテンプレート```(.py 拡張子)```を指定することができます。この機能があると、Dynamo 内で Python を効率よく使用できるため以前からご要望をいただいておりました。テンプレートを使用できる機能があるため、カスタム Python スクリプトを開発する際に既定のインポートをすぐに利用できます。

このテンプレートは、Dynamo をインストールした ```APPDATA``` にあります。

これは通常、```(%appdata%\Dynamo\Dynamo Core\{バージョン}\)```です。

![[テンプレート]](images/10-6/PythonTemplate - 01.png)

### テンプレートを設定する

この機能を使用するには、```DynamoSettings.xml``` ファイルで次の行を追加する必要があります*(メモ帳で編集します)*。

![[テンプレート]](images/10-6/PythonTemplate - 02.png)

```<PythonTemplateFilePath />``` を見つけて、これを次のように置き換えるだけです。

```
<PythonTemplateFilePath>
<string>C:\Users\CURRENTUSER\AppData\Roaming\Dynamo\Dynamo Core\2.0\PythonTemplate.py</string>
</PythonTemplateFilePath>
```

*注: CURRENTUSER を自分のユーザ名に置き換えます*

次に、使用する機能を組み込んだテンプレートを作成する必要があります。ここでは、Revit に関連するインポートおよび Revit で作業する際の他の一般的な項目の一部を組み込みます。

空のメモ帳を起動して、次のコードを貼り付けることができます。

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

貼り付けが完了したら、このファイルを ```PythonTemplate.py``` という名前で ```APPDATA``` フォルダ内に保存します。

### Python スクリプトのその後の動作

Python テンプレートが定義されると、Python Script ノードが配置されるたびに、Dynamo はこのテンプレートを検索します。見つからない場合、既定の Python ウィンドウのように表示されます。

![[テンプレート]](images/10-6/PythonTemplate - 03.png)

Python テンプレート(たとえばここで作成した Revit でのテンプレート)が見つかった場合、組み込んだ既定の項目がすべて表示されます。

![[テンプレート]](images/10-6/PythonTemplate - 04.png)

この優れた追加機能(Radu Gidei 氏による)に関する詳細は、[https://github.com/DynamoDS/Dynamo/pull/8122](https://github.com/DynamoDS/Dynamo/pull/8122) を参照してください。

