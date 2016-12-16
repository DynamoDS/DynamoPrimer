##Dynamo 函式庫

**Dynamo 函式庫** 包含了我們加到工作區（workspace） 用來定義給視覺化程式執行的節點。在函式庫裡面，我們可以搜尋或者瀏覽節點。
這邊的節點包含了：已經安裝的基本節點, 我們定義的客製化節點, 我們加到Dynamo從套件管理員得到的節點 —並且依照分類階層組織起來。讓我們來看一下究竟是如何組織起來，並且看看那些經常使用的重要節點吧～

The **Dynamo Library** contains the Nodes we add to the Workspace to define Visual Programs for execution. In the Library, we can search for or browse to Nodes. The Nodes contained here - the basic Nodes installed, Custom Nodes we define, and Nodes from the Package Manager that we add to Dynamo - are organizaed hierachically by category. Let's review this organization and explore the key Nodes we will use frequently.

###函式庫的圖書館
我們在應用程式中所使用的Dynamo **函式庫** 實際上是一群的功能函式庫，每一個都包含了被種類分群的節點。 這剛開始聽起來有點遲鈍，不過對於組織那些跟著Dynamo預設安裝的節點而言卻是一個很具有彈性的框架。也同時為了後續增加新的客製節點與額外模組提供更好的方式。

###Library of Libraries
The Dynamo **Library** that we interface with in the application is actually a collection of functional libraries, each containing Nodes grouped by Category. While this may seem obtuse at first, it is a flexible framework for organizing the Nodes that come with the default installation of Dynamo - and it's even better down the road when we start extending this base functionality with Custom Nodes and additional Packages.

####組織方式
Dynamo 的 **函式庫** 視窗是由階層組織過的函式庫組成。 當我們一層一層向下看，依序瀏覽「函式庫」、「函式庫的分類」、「分類的子分類」來找到想要找的節點。

####The Organizational Scheme
The **Library** section of the Dynamo UI is composed of hierarchically organized libraries. As we drill down into the Library, we are sequentially browsing a library, the library's categories, and the category's sub-categories to find the Node.

![函式庫分層](images/3-3/00-LibraryBrowsing.png)
> 1. 函式庫視窗 - Dynamo的UI界面。
2. 函式庫 - 一群相關的分類, 例如 **Geometry**（幾何）。
3. 分類 - 一群相關的節點，例如跟圓形有關的 **Circles**。
4. 子分類 - 將一個分類中的節點另外分群，最常見的例如： **Create**（創造）, **Action**（動作）, or **Query**（搜尋）。
5. 節點 - 為了執行動作而被加入到工作區（workspace）的物件。

Library Hierarchy
> 1. The Library - The region of the Dynamo Interface
2. A Library - A collection of related Categories, such as **Geometry**
3. A Category - A collection of related Nodes such as everything related to **Circles**
4. A Subcategory - Breakdown of the Nodes within the Category, typically by **Create**, **Action**, or **Query**
5. A Node - The objects that are added to the Workspace to perform an action

####命名規則
每個函式庫的階層關係可以從節點的名字看得出來，也可以使用搜尋欄或Code Blocks（使用Dynamo腳本語言）。除了使用關鍵字找到節點，也可以輸入用英文句號分隔的階層關係。

以 「函式庫.分類.節點名稱」的格式輸入節點位置的時候，不同部份的字詞可能會顯示不同的結果，例如：

Typing in different portions of the Node's place in the Library hierarchy in the ```library.category.nodeName``` format returns different results:

####Naming Conventions
The hierarchy of each library is reflected in the Name of Nodes added to the Workspace, which we can also use in the Search Field or with Code Blocks (which use the *Dynamo textual language*). Beyond using key words to try to find Nodes, we can type the hierarchy separated with a period.

Typing in different portions of the Node's place in the Library hierarchy in the ```library.category.nodeName``` format returns different results:

![Searching the Library - create from three "naming" pngs](images/3-3/01-LibrarySearching.png)

> 1. ```library.category.nodeName```
2. ```category.nodeName```
3. ```nodeName``` or ```keyword```



一般來說在工作區裡面的節點名稱會被給予 ```category.nodeName``` 格式，跟著一些需注意的例外狀況，特別是「輸入」與「檢視」類別的節點。注意被給予相同命名的節點以及差異分類：
	

Typically the Name of the Node in the Workspace will be rendered in the ```category.nodeName``` format, with some notable exceptions particularly in the Input and View Categories. Beware of similarly named Nodes and note the category difference:

![Node Names](images/3-3/02-NodeNames.png)

> 1. ```Point.ByCoordinates``` 及 ```UV.ByCoordinates``` 有一樣的名字可是卻是來自於不同的分類
2. 來自大部份函式庫的節點包含了種類的格式
3. Notable exceptions include Built-in Functions, Core.Input, Core.View, and Operators


123

> 1. ```Point.ByCoordinates``` and ```UV.ByCoordinates``` have the same Name but come from different categories
2. Nodes from most libraries will include the category format
3. Notable exceptions include Built-in Functions, Core.Input, Core.View, and Operators

###常用節點
Dynamo 在安裝的時候就已經包含了數以百計的基本姊點，有哪些是我們開發視覺化程式的時候比較重要的呢？讓我們聚焦在這些可以讓我們定義參數（**Input**）、查看行為結果（**Watch**）以及自行創造功能（**Code Block**）的節點們吧。

###Frequently Used Nodes
With hundreds of Nodes included in the basic installation of Dynamo, which ones are essential for developing our Visual Programs? Let's focus on those that let us define our program's parameters (**Input**), see the results of a Node's action (**Watch**), and define inputs or functionality by way of a shortcut (**Code Block**).

#### 輸入（Input）
輸入節點是使用者在我們的視覺化程式中主要的工具。-對於你自己或者其他使用者而言　- to interface with the key parameters. Here are the Nodes available in the Input Category of the Core Library:

#### Input
Input Nodes are the primary means for the User of our Visual Program - be that yourself or someone else - to interface with the key parameters. Here are the Nodes available in the Input Category of the Core Library:

![Input Nodes](images/3-3/03-InputNodes.png)
> 1. 布林值（Boolean）
2. 數值（Number）
3. 字串（String）
4. 數值滑條（Number Slider）
5. 整數滑條（Integer Slider）
6. 資料夾路徑（Directory Path）
7. 檔案路徑（File Path）
123
> 1. Boolean
2. Number
3. String
4. Number Slider
5. Integer Slider
6. Directory Path
7. File Path

####查看（Watch）
「查看」節點對於管理你的視覺化程式執行過程的資料很重。雖然你可以利用節點資料預覽來看到當下的資料，不過你可能會想要保持你的資料在**查看**節點或者利用**Watch3D**節點來查看他的幾何形狀。以上兩者都可以在核心函式庫的查看分類中找到。

####Watch
The Watch Nodes are essential to managing the data that is flowing through your Visual Program. While you can view the result of a Node through the Node data preview, you may want to keep it revealed in a **Watch** Node or see the geometry results through a **Watch3D** Node. Both of these are found in the View Category in the Core Library.


> Tip: Occasionally the 3D Preview can be distracting when your Visual Program contains a lot of Nodes. Consider unchecking the Showing Background Preview option in the Settings Menu and using a Watch3D Node to preview your geometry.

![Watch and Watch3D](images/3-3/04-WatchNodes.png)

> 1. Watch - Note that when you select an item in the Watch Node it will be tagged in the Watch3D and 3D Previews
2. Watch3D - Grab the bottom right grip to resize and navigate with you mouse the same way you would in the 3D Preview

####Code Block
**Code Block** Nodes can be used to define a block of code with lines separated by semi-colons. This can be as simple as ```X/Y```. We can also use Code Blocks as a short cut to defining a Number Input or call to another Node's functionality. The syntax to do so follows the Naming Convention of the Dynamo textual language in Section 3.2.3. Let's try to make a Circle with this shortcut:

![Code Block Shortcut](images/3-3/05-CodeBlock.png)

>1. Double Click to create a **Code Block** Node
2. Type ```Circle.ByCenterPointRadius(x,y);```
3. Clicking on the Workspace to clear the selection should add ```x``` and ```y``` inputs automatically
4. Create a **Point.ByCoordinates** Node and a **Number Slider** then connect them to the inputs of the Code Block
5. The result of executing the Visual Program should be a circle in the 3D Preview

ooo

