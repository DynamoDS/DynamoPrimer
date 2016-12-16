##Nodes 節點
In Dynamo, **Nodes** are the objects you connect to form a Visual Program. Each **Node** performs an operation - sometimes that may be as simple as storing a number or it may be a more complex action such as creating or querying geometry.

在Dynamo中，節點是視覺化程式中的物件，每個節點都代表著一個動作（已經成形的程式碼），有時簡單如數字，有時卻可能是創造或獲取幾何形體的資訊。

###Anatomy of a Node 節點剖析
Most Nodes in Dynamo are composed of five parts. While there are exceptions, such as Input Nodes, the anatomy of each Node can be described as follows:

Dynamo中絕大多數的節點皆由五個部分組成。儘管有例外存在，像是代表輸入端的節點，但大部分可以節點的結構符合以下的敘述：

![Node Breakdown Point by Coordinates](images/3-1/00-AnatomyOfANode.png)
>1. Name - The Name of the Node with a Category.Name naming convention
2. Main - The main body of the Node - Right-clicking here presents options at the level of the whole Node
3. Ports (In and Out) - The receptors for Wires that supply the input data to the Node as well as the results of the Node's action
4. Data Preview - Hover or click to see a tooltip describing the results of the Node's action
5. Lacing Icon - Indicates the Lacing option specified for matching list inputs (more on that later)

>  1.名稱 - 節點的名稱，包含來源類型。有一定的命名結構。
 2.主體 - 節點的主體 - 右鍵點擊可展示該節點在該結構層級下能進行的操作。
 3.接口(輸入＆輸出) - 接收從其他節點產生的資料及輸出該節點產生的資料。
 4.資料預覽 - 將游標移至節點上或點擊節點可預覽該節點產生的資料結果。
 5.連結選項 - 提供輸入到此節點的資料的彼此交互的方式。

### Ports 接口
The Inputs and Outputs for Nodes are called Ports and act as the receptors for Wires. Data comes into the Node through Ports on the left and flows out of the Node after it has executed its operation on the right. Ports expect to receive data of a certain type. For instance, connecting a number such as *2.75* to the Ports on a Point By Coordinates Node will successfully result in creating a Point; however, if we supply *"Red"* to the same Port it will result in an error.

在節點中負責輸出及輸入的端口稱作接口，資料從左方接口輸入，右方接口輸出執行完的結果，接口會負責篩選輸入資料的類型。舉例而言，將數字2.75輸入到『座標-點』中，接口會接受並進行運算，產生點的物件。但是一旦將『red』提供給輸入端，就會產生錯誤。

> Tip: Hover over a Port to see a tooltip containing the data type expected.

＊小技巧：將游標移動到接口上檢視預期的輸入類型
![Port Labels-Point by Coordinates](images/3-1/01-Ports.png)
>1. Port Label
2. Tool Tip
3. Data Type

###States 狀態
Dynamo gives an indication of the state of the execution of your Visual Program by rendering Nodes with different color schemes based on each Node's status. Furthermore, hovering or right-clicking over the Name or Ports presents additional information and options.

Dynamo提供視覺程式執行的狀態檢視，利用不同的節點底色表示不同狀態。除此之外，點擊或是將游標移到節點名稱或是埠將提供額外資訊或選項。
![States](images/3-1/02-States2.png)

>1. Inactive - Grey Nodes are inactive and need to be connected with Wires to be part of the Program Flow in the active Workspace
2. Active - Nodes with a Dark Grey Name background are well-connected and have all of their inputs successfully connected
3. Warning - Yellow Nodes are in an Error state
4. Selected - Currently selected Nodes have an Aqua highlight on their border
5. Default Value - Right-click on an input Port - some Nodes have default values that can be used or not used
>   1.inactive 灰色節點代表尚未觸發，需要與整體程式連結才會成為被觸發的工作區。
    2.active 節點姓名背景色為鐵灰色之節點是與程式成功連結且所有的輸入都符合該節點需求。
    3.warning 黃色代表錯誤
    4.selected 被選擇的節點將會有水藍色邊框
    5.default value 右鍵點擊輸入埠，特定節點會展示出預設值

If your Visual Program contains warning or errors, Dynamo will provide additional information about the problem. Any Node that is Yellow will also have a tooltip above the Name. Hover your mouse over the tooltip to expand it.

如果你的視覺化程式中有錯誤存在，Dynamo將提供問題的額外資訊，任何黃色節點都同時會在節點上方出現教學指示。將游標移動到教學指示上將顯示所有資料。
> Tip: With this tooltip information in hand, examine the upstream Nodes to see if the data type or data structure required is in error.

＊小技巧：可檢視教學指示去檢查是否上一個節點的類型或是資料結構出現錯誤。
![Node Errors Tooltip](images/3-1/03-WarningTooltip.png)

> 1. Warning Tooltip - "Null" or no data cannot be understood as a Double ie. a number
2. Use the Watch Node to examine the input data
3. Upstream the Number Node is storing "Red" not a number
>   1.	錯誤提示：”Null”或是該資料類型與double不符合，例如 a
    2.	利用watch節點去檢查輸入的資料
    3.	上游端為類型是數字的節點，但儲存的red並非數字











