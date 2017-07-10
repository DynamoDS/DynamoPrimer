

## スクリプト リファレンス

このリファレンス ページでは、「スクリプト作成のガイドライン」のページで紹介したベスト プラクティスを、コード ライブラリ、ラベル付け、スタイル設定によってさらに拡張する方法について説明します。ここでは、Python を使用して次に示す概念を説明しますが、Python だけでなく C#(Zerotouch)についても、同じ概念が異なる構文で適用されます。

### Dynamo ライブラリと標準ライブラリのどちらを使用するか

標準ライブラリは Dynamo の外部に存在し、プログラミング言語の Python や C# (Zerotouch)の内部で使用されます。Dynamo には、ノード階層に直接対応する専用のライブラリ セットも用意されています。これらの専用ライブラリにより、ノードとワイヤを使用して作成したコード内で、あらゆる処理を記述することができます。ここからは、各 Dynamo ライブラリの内容と、どのような場合に標準ライブラリを使用するかについて説明します。

![](images/12-4/textual-programming.jpg)

**標準ライブラリと Dynamo ライブラリ**

* Dynamo 環境内で Python と C# の標準ライブラリを使用すると、高度なデータ構造とフロー構造を定義することができます。
* Dynamo ライブラリは、ジオメトリなどの Dynamo オブジェクトを作成するためのノード階層に直接対応しています。

**Dynamo ライブラリ**

* ProtoGeometry
* 機能: 円弧、境界ボックス、円、円錐、座標系、立方体、曲線、円柱、エッジ、楕円、楕円弧、面、ジオメトリ、らせん、インデックス グループ、線分、メッシュ、NURBS 曲線、NURBS サーフェス、平面、点、ポリゴン、長方形、ソリッド、球体、サーフェス、トポロジ、T スプライン、UV、ベクトル、頂点。
* 読み込み方法: ```import Autodesk.DesignScript.Geometry```
* **Python または C# で ProtoGeometry を使用すると**、非管理オブジェクト(メモリを手動で管理する必要があるオブジェクト)が作成されることに注意してください。詳細については、「**非管理オブジェクト**」のセクションを参照してください。

* DSCoreNodes
* 機能: 色、色範囲(2D)、日時、期間、I/O、式、ロジック、リスト、数式、クアッドツリー、文字列、スレッド。
* 読み込み方法: ```import DSCore```

* モザイク模様
* 機能: 凸型ハル、ドローネー、ボロノイ図。
* 読み込み方法: ```import Tessellation```

* DSOffice
* 機能: Excel。
* 読み込み方法: ```import DSOffice```

### 分かりやすい名前を付ける

スクリプトを作成する際には、頻繁に識別子を使用して、変数、タイプ、関数などのエンティティを区別する必要があります。アルゴリズムの作成時に、文字列から構成されるラベルを付けることにより、アルゴリズムの内容が分かりやすくなります。コードを記述する際に分かりやすい名前を付けると、他のメンバーがそのコードの内容を簡単に理解できるようになるだけでなく、後から自分でコードを読む場合にも役立ちます。スクリプト内でエンティティに名前を付ける場合のヒントをいくつか紹介します。

**略語を使用する場合は、その略語の意味をコメントで記述する:**

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

**冗長な名前は付けない:**

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

**If 文で変数名を記述する場合は、If not 文を使用しない:**

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

**単語を連結した変数を使用する場合は、「主語_形容詞」という順にする:**

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

> このように形式を統一すると、意味がさらに分かりやすくなります。

**長い名前を繰り返し使用する場合は、エイリアスを使用する:**

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

> ただし、頻繁にエイリアスを使用すると、非常に混乱した分かりにくいプログラムになる場合があります。

**必要な単語だけを使用する:**

```
### BAD
rotateToCoord = rotateFromCoord.Rotate(solid.ContextCoordinateSystem.Origin,Vector.ByCoordinates(0,0,1),5)
```

```
### GOOD
toCoord = fromCoord.Rotate(solid.ContextCoordinateSystem.Origin,Vector.ByCoordinates(0,0,1),5)
```

> 「ものごとはできるかぎりシンプルにすべきだ。しかし、シンプルすぎてもいけない」— アルベルト・アインシュタイン

### スタイルを統一する

プログラムを作成する方法は 1 つだけではないため、スクリプトを記述する場合は「個人的なスタイル」を基準として、さまざまなことを判断しながらスクリプトを記述していくことになります。そのため、コード内のスタイルが統一されているかどうか、一般的な形式のスタイルに準拠しているかどうかが、コードの読みやすさと保守作業の容易さに直接影響することになります。一般的に、同じコードが 2 箇所で記述されている場合、それらのコードは同じように機能すると考えられます。ここで、スタイルが統一された分かりやすいコードを記述するためのヒントをいくつか紹介します。

**命名規則:** (次に示すいずれかの命名規則に従って、コード内の各種タイプのエンティティに名前を付けてください)

* 変数、関数、メソッド、パッケージ、モジュール:<br xmlns="http://www.w3.org/1999/xhtml"/>```lower_case_with_underscores``` (小文字の単語を下線で連結する)

* クラス、例外:<br xmlns="http://www.w3.org/1999/xhtml"/>```CapWords``` (先頭が大文字の単語をそのまま連結する)

* 保護されているメソッド、内部関数:<br xmlns="http://www.w3.org/1999/xhtml"/>```_single_leading_underscore (self, ... )``` (先頭に下線を指定し、小文字の単語を下線で連結する)

* プライベート メソッド:<br xmlns="http://www.w3.org/1999/xhtml"/>```__double_leading_underscore(self, ...)``` (先頭に下線を 2 つ指定し、小文字の単語を下線で連結する)

* 定数:<br xmlns="http://www.w3.org/1999/xhtml"/>```ALL_CAPS_WITH_UNDERSCORES``` (すべて大文字の単語を下線で連結する)

> ヒント: 非常に短いコード ブロック内で、明確な文脈で意味がはっきりと理解できる場合を除き、1 文字だけの変数は使用しないでください(特に、l、O、I の使用は避けてください)。

**空白行を使用する:**

* 最上位関数とクラス定義の前後に、2 行の空白行を挿入してください。

* クラス内に記述されているメソッド定義の場合は、その前後に空白行を 1 行挿入します。

* 空白行を挿入して、関連する関数グループを区別してもかまいません(ただし、あまり多くの空白行を挿入しないようにしてください)。

**余分な空白を挿入しない:**

* 丸括弧、角括弧、中括弧の内側に、空白を挿入しないでください。

```
### BAD
function( apples[ 1 ], { oranges: 2 } )
```

```
### GOOD:
function(apples[1], {oranges: 2})
```

* カンマ、セミコロン、コロンの直前に、空白を挿入しないでください。

```
### BAD
if x == 2 : print x , y ; x , y = y , x
```

```
### GOOD
if x == 2: print x, y; x, y = y, x
```

* 関数呼び出しの引数リストが記述されている括弧の直前に、空白を挿入しないでください。

```
### BAD
function (1)
```

```
### GOOD
function(1)
```

* インデックスまたはスライシングが記述された括弧の直前に、空白を挿入しないでください。

```
### BAD
dict ['key'] = list [index]
```

```
### GOOD
dict['key'] = list[index]
```

* 次に示すバイナリ演算子については、必ず前後に空白を 1 つずつ挿入してください。

```
assignment ( = )
augmented assignment ( += , -= etc.)
comparisons ( == , < , > , != , <> , <= , >= , in , not in , is , is not )
Booleans ( and , or , not )
```

**行の長さに注意する:**

* 1 行の長さは 79 文字以内にしてください。

* 使用するエディタ ウィンドウの幅を制限することにより、複数のファイルを並べて表示できるようになるため、2 つのバージョンを並べて表示するコード レビュー ツールを使用して作業を行う場合に便利です。

* 複数の式が記述されている長い行の場合は、式を丸括弧で囲んで改行すると、1 行を複数の行に分割することができます。

**余分なコメントや冗長なコメントを記述しない:**

* コメントを少なくした方が、コードが読みやすくなる場合があります。特に、コメントの代わりに分かりやすい名前を使用すると効果的です。

* 適切な方法でコードを記述することにより、必要以上にコメントを入力することがなくなります。

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

> ヒント: コードの内容が簡単に理解できるようなコメントを入力し、処理内容が明確に理解できるようなコードを記述することが重要です。

**オープン ソース コードを確認する:**

* オープン ソース プロジェクトというプロジェクトがありますが、これは、多くの開発者が協力して立ち上げたプロジェクトです。これらのプロジェクトでは、チーム内で可能な限り効率的に作業を進めることができるように、読みやすいコードを記述することが求められます。そのため、これらのプロジェクトで使用されているソース コードを参照すると、開発者がどのようなコードを記述しているのかを確認することができます。

* 次の項目を確認することにより、命名規則を改善することができます。

* ニーズに適した命名規則になっているかどうか。

* 命名規則が原因で、機能や効率性に影響していないかどうか。

### C# (Zerotouch)の標準

**次に示す各 Wiki ページで、Dynamo で C# (Zerotouch)を記述する場合のガイド情報を参照することができます。**

* この Wiki ページには、コードのドキュメント化とテストを行う場合の一般的なコーディング標準が記載されています: [https://github.com/DynamoDS/Dynamo/wiki/Coding-Standards](https://github.com/DynamoDS/Dynamo/wiki/Coding-Standards)

* この Wiki ページには、ライブラリ、カテゴリ、ノード、ポート、略称に関する命名規則の標準が記載されています: [https://github.com/DynamoDS/Dynamo/wiki/Naming-Standards](https://github.com/DynamoDS/Dynamo/wiki/Naming-Standards)

**非管理オブジェクト:**

Python または C# で Dynamo のジオメトリ ライブラリ*(ProtoGeometry)*を使用してジオメトリ オブジェクトを作成した場合、それらのオブジェクトは仮想マシンによって管理されないため、それらの多くのオブジェクトについて、メモリを手動でクリーンアップする必要があります。 ネイティブ オブジェクトと非管理オブジェクトは、いずれも、**Dispose** メソッドまたは **using** キーワードを使用してクリーンアップすることができます。 概要については、次の Wiki エントリを参照してください: [https://github.com/DynamoDS/Dynamo/wiki/Zero-Touch-Plugin-Development#dispose--using-statement](https://github.com/DynamoDS/Dynamo/wiki/Zero-Touch-Plugin-Development#dispose--using-statement)

破棄する必要があるのは、プログラム内に返されることがない非管理オブジェクト、または参照情報が格納されない非管理オブジェクトだけです。ここからは、こうしたオブジェクトのことを「*中間ジオメトリ*」と呼ぶことにします。 次のサンプル コードでは、例として、このようなオブジェクトのクラスが記述されています。このコードに記述されている Zero Touch の C# 関数である **singleCube** は、立方体を 1 つだけ返しますが、この関数の実行中に 10000 個の立方体が作成されます。 この処理は、他のジオメトリが一部の中間構築ジオメトリとして使用されたものと想定することができます。

**この Zero Touch 関数を実行すると、かなりの確率で Dynamo がクラッシュします。**このコードでは 10000 個の立方体が作成されますが、格納されてプログラムに返されるのは、そのうちの 1 つだけです。 代わりに、プログラムに返す 1 つだけを除いて、残りの中間立方体をすべて破棄する必要があります。プログラムに返す立方体は、プログラム内に伝播されて他のノードで使用されるため、ここでは破棄しません。

```
public Cuboid singleCube(){

var output = Cuboid.ByLengths(1,1,1);

for(int i = 0; i<10000;i++){
output = Cuboid.ByLengths(1,1,1);
}
return output;
}
```

修正後のコードは次のようになります。

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

通常、破棄する必要があるジオメトリは、```Surfaces```、```Curves```、```Solids```だけです。 ただし、念のため、すべてのタイプのジオメトリ(```Vectors```、```Points```、```CoordinateSystems```)を破棄することをお勧めします。

