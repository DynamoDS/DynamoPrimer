# Nodes and Wires

## Nodes

In Dynamo, **Nodes** are the objects you connect to form a Visual Program. Each **Node** performs an operation - sometimes that may be as simple as storing a number or it may be a more complex action such as creating or querying geometry.

### Anatomy of a Node

Most Nodes in Dynamo are composed of five parts. While there are exceptions, such as Input Nodes, the anatomy of each Node can be described as follows:

![](<../.gitbook/assets/nodes and wires - nodes anatomy.jpg>)

> 1. Name - The Name of the Node with a `Category.Name` naming convention
> 2. Main body - The main body of the Node - Right-clicking here presents options at the level of the whole Node
> 3. Ports (In and Out) - The receptors for Wires that supply the input data to the Node as well as the results of the Node's action
> 4. Default Value - Right-click on an input Port - some Nodes have default values that can be used or not used.
> 5. Lacing Icon - Indicates the [Lacing option](../5\_essential\_nodes\_and\_concepts/5-4\_designing-with-lists/1-whats-a-list.md#lacing) specified for matching list inputs (more on that later)

### Nodes Input/Output Ports

The Inputs and Outputs for Nodes are called Ports and act as the receptors for Wires. Data comes into the Node through Ports on the left and flows out of the Node after it has executed its operation on the right.

Ports expect to receive data of a certain type. For instance, connecting a number such as _2.75_ to the Ports on a Point By Coordinates Node will successfully result in creating a Point; however, if we supply _"Red"_ to the same Port it will result in an error.

{% hint style="info" %}
Tip: Hover over a Port to see a tooltip containing the data type expected.
{% endhint %}

![](<../.gitbook/assets/nodes and wires - nodes input and tooltip (1).jpg>)

> 1. Port Label
> 2. Tool Tip
> 3. Data Type
> 4. Default Value

### Node States

Dynamo gives an indication of the state of the execution of your Visual Program by rendering Nodes with different color schemes based on each Node's status. The hierarchy of states follows this sequence: Error > Warning > Info > Preview.

Hovering or right-clicking over the Name or Ports presents additional information and options.

![](<../.gitbook/assets/nodes and wires - node states.jpg>)

> 1. Active - Nodes with a Dark Grey Name background are well-connected and have all of their inputs successfully connected
> 2. Error State - Red status bar underneath the Node indicates that the Node is in an Error State
> 3. Freeze - A Transparent node has Freeze turned on, suspending the execution of the node
> 4. Background Preview - Grey status bar underneath the Node and eye icon ![](<../.gitbook/assets/nodes and wires - preview off.jpg>) indicates that the geometry preview is switched off.
> 5. Selected - Currently selected Nodes have an Aqua highlight on their border
> 6. Warning - Yellow status bar underneath the Node indicates Warning state, meaning they either lack input data or may have incorrect data types.

#### Handling Error or Warning Nodes

If your Visual Program contains warning or errors, Dynamo will provide additional information about the problem. Any Node that is Yellow will also have a tooltip above the Name. Hover your mouse over the warning ![](<../.gitbook/assets/nodes and wires - node warning icon.png>) or error ![](<../.gitbook/assets/nodes and wires - node error icon.png>) tooltip icon to expand it.

{% hint style="info" %}
Tip: With this tooltip information in hand, examine the upstream Nodes to see if the data type or data structure required is in error.
{% endhint %}

![](<../.gitbook/assets/nodes and wires - nodes with warning tooltip.jpg>)

> 1. Warning Tooltip - "Null" or no data cannot be understood as a Double ie. a number
> 2. Use the Watch Node to examine the input data
> 3. Upstream the Number Node is storing "Red" not a number

## Wires

Wires connect between Nodes to create relationships and establish the Flow of our Visual Program. We can think of them literally as electrical wires that carry pulses of data from one object to the next.

### Program Flow <a href="#program-flow" id="program-flow"></a>

Wires connect the output Port from one Node to the input Port of another Node. This directionality establishes the **Flow of Data** in the Visual Program.

Input Ports are on the left side and the Output Ports are located on the right side of Nodes, hence, we can generally say that the Program Flow moves from left to right.

![](<../.gitbook/assets/nodes and wires - flow of data (1).jpg>)

### Creating Wires <a href="#creating-wires" id="creating-wires"></a>

Create a Wire by left-click on a Port subsequently left-click on the port of another Node to create a connection. While we are in the process of making a connection, the Wire will appear dashed and will snap to become solid lines when successfully connected.

The data will always flow through this Wire from output to input; however, we may create the wire in either direction in terms of the sequence of clicking on the connected Ports.

![](<../.gitbook/assets/nodes and wires - creating a wire.gif>)

### Editing Wires <a href="#editing-wires" id="editing-wires"></a>

Frequently we will want to adjust the Program Flow in our Visual Program by editing the connections represented by the Wires. To edit a Wire, left click on the input Port of the Node that is already connected. You now have two options:

* Change connection to an input Port, left-click on another input Port

![](<../.gitbook/assets/NODESA\~1 (1).GIF>)

* To remove the Wire, pull the Wire away and left-click on Workspace

![](<../.gitbook/assets/nodes and wires - edit wires remove.gif>)

* Reconnect multiple wires using Shift+left-click

![](<../.gitbook/assets/nodes and wires - edit multi ports.gif>)

* Duplicate a wire using Ctrl+left-click

![](<../.gitbook/assets/nodes and wires - duplicate wire.gif>)

#### Default vs Highlighted Wires <a href="#wire-previews" id="wire-previews"></a>

By default, our Wires will be previewed with a gray stroke. When a Node is selected, it will render any connecting Wire with the same aqua highlight as the Node.

![](<../.gitbook/assets/nodes and wires - default vs highlighted wires (1).jpg>)

> 1. Highlighted Wire
> 2. Default Wire

**Hide Wires by Default**

In case you prefer to hide the Wires in your graph, you can find this option from View > Connectors > untick Show Connectors.

With this setting, only the selected Nodes and its joining Wires will be shown in faint aqua highlight.

![](<../.gitbook/assets/nodes and wires - hide wires setting (1).gif>)

#### Hide Individual Wire Only

You can also hide selected wire only by Right-clicking on the Nodes output > select Hide Wires

![](<../.gitbook/assets/nodes and wires - hide selected wire.gif>)
