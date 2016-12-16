##Data 資料
Data is the stuff of our programs. It travels through Wires, supplying inputs for Nodes where it gets processed into a new form of output data. Let's review the definition of data, how it's structured, and begin using it in Dynamo.

資料是我們在程式設計所要處理的對象，他藉由線來流動並為節點提供輸入，將其處理為新形式的資料，讓我們來複習一下資料的定義，包括他怎麼建構的和怎麼在Dynamo裡使用。

###What is Data? 什麼是資料?
Data is a set of values of qualitative or quantitative variables. The simplest form of data is numbers such as ```0```, ```3.14```, or ```17```. But data can also be of a number of different types: a variable representing changing numbers (```height```); characters (```myName```); geometry (```Circle```); or a list of data items (```1,2,3,5,8,13,...```). We need data to add to the input Ports of Dynamo's Nodes - we can have data without actions but we need data to process the actions that our Nodes represent. When we've added a Node to the Workspace, if it doesn't have any inputs supplied, the result will be a function, not the result of the action itself.

資料是變數的一組數量上或性質上的值，最簡單的資料形式是數字像是0、3.14、17。但資料也可以是許多不同類型的: 一個代表改變數字的變數(Height)；字符(myName)；幾何(Circle)；或一列資料項目(1,2,3,5,8,13…)。我們需要在Dynamo節點的輸入位置加入資料-可以在沒有執行的前提下拿到資料，但我們必須使用這些資料來執行每個節點所代表的程序。當我們新增了一個節點在工作空間，如果我們沒有給定應該輸入的資料，那結果就會呈現一個涵式，並不是動作本身的數值。
![Data and Actions](images/4-1/00-DataAndActions.png)

> 1. Simple Data
2. Data and Action (A Node) successfully executes
3. Action (A Node) without Data Inputs returns a generic function
> (1).	簡單的資料
(2).	資料和動作(一個節點)成功執行
(3).	一個沒有資料輸入的動作(一個節點)會回傳一個泛用函式

###Beware of Nulls 注意空數值
The ```'null'``` type represents the absence of data. While this is an abstract concept, you will likely come across this while working with Visual Programming. If an action doesn't create a valid result, the Node will return a null. Testing for nulls and removing nulls from data structure is a crucial part to creating robust programs.

‘null’類型代表裡面沒有資料。這是一個抽象的概念，你可能會在使用視覺化編程時遇到這個。如果一個動作沒有創造一個有效的數值，節點就會回傳null。測試null和把null從資料中移除是創造強大程序的關鍵。
| Icon | Name/Syntax | Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |
| ![](../images/icons/DSCore-Object-IsNull-Large.png) | Object.IsNull | obj | bool |

###Data Structures 資料結構
When we are Visual Programming, we can very quickly generate a lot of data and require a means of managing its hierarchy. This is the role of Data Structures, the organizational schemes in which we store data. The specifics of Data Structures and how to use them vary from programming language to programming language. In Dynamo, we add hierarchy to our data through Lists. We will explore this in depth in later chapters, but let's start simply:

當我們在進行視覺化程式設計時，我們可以很快的產生龐大資料量因而需要一種管理其層次結構的方法，這是資料結構所扮演的腳色，一個讓我們儲存數據時的組織計劃，資料結構的特殊性和怎麼使用它們是會隨著編程語言的改變而變的，在Dynamo裡，我們用list來增加資料的層級，我們將會在後面的章節深入討論，但我們先從簡單的開始: 

A list represents a collection of items placed into one structure of data:
* I have five fingers (*items*) on my hand (*list*).
* There are ten houses (*items*) on my street (*list*).

一個清單代表一個眾多項目的集合並置入在一個資料結構裡:

	我有五隻手指頭(項目)在我手上(清單)
	那裡有十個房子(項目)在街上(清單)

![List Breakdown](images/4-1/01-ListBreakdown.png)

> 1. A **Number Sequence** node defines a list of numbers by using a *start*, *amount*, and *step* input. With these nodes, we've created two separate lists of ten numbers, one which ranges from *100-109* and another which ranges from *0-9*.
2. The **List.GetItemAtIndex** node selects an item in a list at a specific index.  When choosing *0*, we get the first item in the list (*100* in this case).
3. Applying the same process to the second list, we get a value of *0*, the first item in the list.
4. Now we merge the two lists into one by using the **List.Create** node.  Notice that the node creates a *list of lists.* This changes the structure of the data.
5. When using **List.GetItemAtIndex** again, with index set to *0*, we get the first list in the list of lists.  This is what it means to treat a list as an item, which is somewhat different from other scripting languages. We will get more advanced with list manipulation and data structure in later chapters.

>(1).	一個Number Sequence節點定義了一清單的數字藉由開始、數量、間距。有了這些節點，我們創造了兩個分開的十個數字的清單。一個是從100到109，另外一個是從0到9
(2).	List.GetItemAtIndex節點選擇了在清單裡的特定項目。當選擇0，我們會得到清單裡第一個項目(在這裡式100)
(3).	對第二個清單執行同樣的程序，我們得到數值0，正是清單的地一個項目。
(4).	現在我們用List.Create節點將兩個清單結合成一個。注意到這個節點創造了清單裡面的清單。這改變了資料的結構。
(5).	當再次使用List.GetItemAtIndex節點，然後將指定數字設為0，我們就會得到清單裡的第一個清單。這就是因為他將清單當作成了一個項目，這點和其他的語言有以一點不一樣。我們會在後面章節操作更進階的資料結構。

The key concept to understand about data hierarchy in Dynamo: **with respect to data structure, lists are regarded as items.**  In other words, Dynamo functions with a top-down process for understanding data structures. What does this mean? Let's walk through it with an example.

了解Dynamo裡資料層級的關鍵: 對於資料結構，清單被視為項目。換句話說，可以由Dynamo由上而下的程序概念來了解資料結構。這是什麼意思? 讓我們來演練一個例子。

### Using Data to Make a Chain of Cylinders 使用資料來製造一整列圓柱體
>Download the example file that accompanies this exercise (Right click and "Save Link As..."): [Building Blocks of Programs - Data.dyn](datasets/4-1/Building Blocks of Programs - Data.dyn). A full list of example files can be found in the Appendix.

>下載和此例子有關的範例檔案，右鍵按儲存連結為: Building Blocks of Programs - Data.dyn ，整個範例檔案的清單都可以在附件裡面找到。

In this first example, we assemble a shelled cylinder which walks through the geometry hierarchy discussed in this section.

在這第一個範例裡，我們組裝一個帶殼的圓柱體，在本節中討論的幾何層級。
![](images/4-1/1.png)
> 1. **Point.ByCoordinates -** after adding the node to canvas, we see a point at the origin of the Dynamo preview grid.  The default values of the *x,y*, and *z* inputs are *0.0*, giving us a point at this location.

>(1).	Point.ByCoordinates，再加入節點之後，我們看到一個位在Dynamo預覽網格原點的點，預設輸入的x,y,z值是0.0，給了我們位在這個座標的點。
![](images/4-1/2.png)
> 1. **Plane.ByOriginNormal -** The next step in the geometry hierarchy is a plane.  There are several ways to construct a plane, and we are using an origin and normal for the input.  The origin is the point node created in the previous step.
2. **Vector.ZAxis -** this is a unitized vector in the z direction.  Notice there are not inputs, only a vector of [0,0,1] value.  We use this as the *normal* input for the *Plane.ByOriginNormal* node.  This gives us a rectangular plane in the Dynamo preview.

> (1).	Plane.ByOriginNormal ，在幾何層級的下一步就是一個平面。有非常多的方法可以建構一個平面，而我們使用原點和法向量來輸入。原點就是上一步所創造的。
(2)  Vector.ZAxis – 這是一個Z方向上的單位向量。注意到這裡不用輸入任何值， 
   卻產生一個[0,0,1]的值。我們用這個當作法向量輸入Plane.ByOriginNormal 節
   點，這給我們在Dynamo預覽視圖裡面產生一個長方形平面。

![](images/4-1/3.png)
> 1. **Circle.ByPlaneRadius -** Stepping up the hierarchy, we now create a curve from the plane in our previous step.  After plugging into the node, we get a circle at the origin.  The default radius on the node is value of *1*.

>(1).  Circle.ByPlaneRadius，往更高層級邁進，我們現在要用前一個步驟創造了一個在平面上的曲線。在拖曳進去節點之後，我們得到一個圓心在原點的圓。預設的半徑值為1。
![](images/4-1/4.png)
> 1. **Curve.Extrude -** Now we make this thing pop by giving it some depth and going in the third dimension.  This node creates a surface from a curve by extruding it.  The default distance on the node is *1*, and we should see a cylinder in the viewport.

>(1).	Curve.Extrude 現在我們利用給他一些第三個維度的厚度來讓他好看一點。這個節點利用擠出從曲線創造了一個面。預設的擠出距離是1，而我們能在試圖裡看到一個圓柱了。
![](images/4-1/5.png)
> 1. **Surface.Thicken -** This node gives us a closed solid by offsetting the surface a given distance and closing the form.  The default thickness value is *1*, and we see a shelled cylinder in the viewport in line with these values.

>(1).	Surface.Thicken – 這個節點利用偏移平面一個給定的距離來給了我們一個封閉的實體。預設厚度值為1，而我們在視圖中看到一個依據我們給值的有殼圓柱體。
![](images/4-1/6.png)
> 1. **Number Slider -** Rather than using the default values for all of these inputs, let's add some parametric control to the model.
2. **Domain Edit - **after adding the number slider to the canvas, click the caret in the top left to reveal the domain options.
3. **Min/Max/Step -** change the *min*, *max*, and *step* values to *0*,*2*, and *0.01* respectively. We are doing this to control the size of the overall geometry.

>(1).	Number Slider 與其用在輸入的位置用預設值，不如我們增加一些參數來控制模型
(2).	*Domain Edit  再增加number slider 進入視圖之後，點擊左上角的插入符號以顯示定義域選項
(3).	Min/Max/Step 分別改變最小、最大和間距值成0、2和0.01。我們用這個方法來控制整個幾何的大小。

![](images/4-1/7.png)
> 1. **Number Sliders -** In all of the default inputs, let's copy and paste this number slider (select the slider, hit Ctrl+C, then Ctrl+V) several times, until all of the inputs with defaults have a slider instead.  Some of the slider values will have to be larger than zero to get the definition to work (ie: you need an extrusion depth in order to have a surface to thicken).

>(1).	Number Sliders  在所有的預設輸入值中，讓我們來複製貼上這個Number Sliders(選擇這個 Sliders 按Ctrl+C, 後再按 Ctrl+V)，做了幾次後，直到所有的預設輸入都可以由Slider取代。有些Slider的值必須要大於零才能讓它的定義有意義(ie: 你會需要一個擠出深度來讓它有一個平面可以給予厚度)

We've now created a parametric shelled cylinder with these sliders.  Try to flex some of these parameters and see the geometry update dynamically in the Dynamo viewport.

我們已經利用Sliders創造了一個參數化的殼狀圓柱體。試著改變他們的參數來感受一下再Dynamo視圖裡動態更新的幾何圖形。
![](images/4-1/8.png)
> 1. **Number Sliders -** taking this a step further, we've added a lot of sliders to the canvas, and need to clean up the interface of the tool we just created.  Right click on one slider, select "Rename..." and change each slider to the appropriate name for its parameter.  You can reference the image above for names.

>(1).	Number Sliders 在更進一步，我們已經新增了很多的Sliders再視圖裡了，然後我們需要清理一下我們剛剛所創造工具的介面。右鍵點擊Slider，選擇重新命名並更名每個Slider成最適合他們參數的名字。你可以參考上面圖片的命名方式。

At this point, we've created an awesome thickening cylinder thing.  This is one object currently, let's look at how to create an array of cylinders that remains dynamically linked.  To do this, we're going to create a list of cylinders, rather than working with a single item.

到了這一步，我們已經創造了一個很棒的有厚圓柱體。但這目前只是單一物件，讓我們來看看要如何至製造一個陣列的圓柱體而且也是保持有動態連結的。為了達成這個目的，我們要先去創造一清單的圓柱體，而不是只針對一個。

![](images/4-1/9.png)
> 1. **Addition (+) -** Our goal is to add a row of cylinders next to the cylinder we've created.  If we want to add one cylinder adjacent to the current one, we need to consider both radius of the cylinder and the thickness of its shell.  We get this number by adding the two values of the sliders.

>(1).	 Addition (+) – 我們的目標是要增加一列圓柱體在我們已經創造的圓柱體旁邊。如果我們想要創造一個圓柱體在現有的旁邊的話，我們必須要考慮兩個圓柱體的半徑和它們的厚度。我們從加入兩個Slider的值來得到這些數值。
![](images/4-1/10.png)
> This step is more involved so let's walk through it slowly: the end goal is to create a list of numbers which define the locations of each cylinder in a row.

>
1. **Multiplication -** First, we want to multiply the value from the previous step by 2. The value from the previous step represents a radius, and we want to move the cylinder the full diameter.
2. **Number Sequence -** we create an array of numbers with this node.  The first input is the *multiplication* node from the previous step into the *step* value.  The *start* value can be set to *0.0* using a *number* node.
3.  **Integer Slider - ** For the *amount* value, we connect an integer slider. This will define how many cylinders are created.
4. **Output - ** This list shows us the distance moved for each cylinder in the array, and is parametrically driven by the original sliders.

這一步涉及比較多，所以讓我們慢慢來解析他。最終目的是要創造一清單的數來定義列裡每一個圓柱體的定位。1. Multiplication – 第一，我們想要將前一步驟所產生的職權不乘與2。Number Sequence – 我們利用這個節點創造一個陣列的數。第一個輸入是要從上一個步驟的Multiplication節點來輸入間距值。開始值可以用number節點設成0.0。 3. *Integer Slider - *我們連接數量輸入的位置和 integer slider。這會定義有幾個圓柱體要被生成。 4. *Output - * 這個清單展示了陣列裡每個圓柱體所移動的距離並由原本的slider參數化驅動。
![](images/4-1/11.png)
> 1. This step is simple enough - plug the sequence defined in the previous step into the *x* input of the original *Point.ByCoordinates*.  This will replace the slider *pointX* which we can delete. We now see an array of cylinders in the viewport (make sure the integer slider is larger than 0).
>(1).	這個步驟很簡單 – 將前一步驟所定義的序列插入到原本Point.ByCoordinates 的X輸入位置，這個會取代我們刪除的slider PointX。我們現在可以在視圖裡看到一個陣列的圓柱體(要確認整數slider大於0)。
![](images/4-1/12.png)
> The chain of cylinders is still dynamically linked to all of the sliders.  Flex each slider to watch the definition update!

整個圓柱體鏈是維持和所有slider的動態連結關係的，可以改變一下每個slider來看一下定義的變化。
