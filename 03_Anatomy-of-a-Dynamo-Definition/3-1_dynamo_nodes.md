## 3.1 NODES 

In Dynamo, Nodes are the objects you add to the Workspace and connect to form a Visual Program. Each Node performs an operation - sometimes as simple as storing a number to more complex actions such as creating or querying geometry. 

###3.1.1 Anatomy of a Node
(Text)

![NEEDS UPDATE - Node Breakdown Point by Coordinates](images/Placeholder.png)
>1. Name
2. Main
3. Ports (In and Out)
4. Data Preview
5. Lacing Icon

###3.1.2 Ports
The Inputs and Outputs for Nodes are called Ports and are the receptors for Wires. Data comes into the Node through Ports on the left and flows out of the Node after it has executed its operation on the right. Ports expect to receive data of a certain type. For instance, connecting a number such as 2.75 to the Ports on a Point By Coordinates Node will successfully result in creating a Point; however, if we supply "Red" to the same Port it will result in an error.

> Tip: Hover over a Port to see a tooltip containing the data type expected.

![NEEDS UPDATE - Ports](images/Placeholder.png)

* Label
* Tool Tip
* * Data Type
* * Description

###3.1.3 States
Dynamo 

![NEEDS UPDATE - Node States](images/Placeholder.png)

>1. Inactive - Grey Nodes are inactive and need to be connected with Wires to be part of the Program Flow in the active Workspace.
2. Active - Nodes with a Dark Grey Name background are well-connected and have all of their inputs successfully connected. They are part of the active Program Flow.
3. Warning - Yellow Nodes are in an Error state. 
4. Selected - Currently selected Nodes have an Aqua highlight on their border. 

If your Visual Program contains warning or errors, Dynamo will provide additional information about the problem. Any Node that is Yellow will also have a tooltip above the Name. Hover your mouse over the tooltip to expand it. 

![NEEDS UPDATE - Node Errors](images/Placeholder.png)

> Tip: With this tooltip information in hand, examine the upstream Nodes to see if the data type or data structure required is in error.