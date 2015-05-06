## 3.2 WIRES

Wires connect between Nodes to create relationships and establish the Flow of our Visual Program. We can think of them literally as electrical wires that carry pulses of data from one object to the next.



Typically Dynamo visual programs are executed from left to right and you can read the program that way to understand the Program Flow.


###3.2.1 Program Flow
Wires connect the output Port from one Node to the input Port of another Node. This directionality establishes the flow of data in the Visual Program. Although we can arrange our Nodes however we desire in the Workspace, because the output Ports are located on the right side of Nodes and the input Ports are on the left side, we can generally say that the Program Flow moves from left to right.

![NEEDS UPDATE](images/3-2/Placeholder.png)

###3.2.2 Creating Wires
You create a Wire using the mouse left-clicking on a Port and then left-clicking on the port of another Node to create a connection.
Wires appear as dashed while being dragged and solid lines when successfully connected.

![NEEDS UPDATE](images/3-2/Placeholder.png)

###3.2.3 Editing Wires

To disconnect a Wire, left-click on the output Node and pull the Wire away.

![NEEDS UPDATE](images/3-2/Placeholder.png)

###3.2.4 Wire Previews
By default, our Wires will be previewed with a gray stroke. When a Node is selected, it will render any connecting Wire with the same aqua highlight as the Node.

![NEEDS UPDATE](images/3-2/Placeholder.png)
> 1. Default Wire
2. Highlighted Wire

Dynamo also allows us to customize how our Wires look in the Workspace through the View Menu. Here we can toggle between Curve or Polyline Wires or turn them off all together.

![NEEDS UPDATE](images/3-2/Placeholder.png)

> 1. View > Connectors > Connector Type > Curves / Polylines
2. View > Connectors > Show Connectors


