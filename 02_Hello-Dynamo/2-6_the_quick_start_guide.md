## 2.4. GETTING STARTED

Now that we have familiarized ourselves with the interface layout and navigating the Workspace, our next step is to understand the typical workflow for developing a graph in Dynamo. Let's get started by creating a dynamically sized circle and then create an array of circles with varying radii.

###2.4.1. Defining Objectives and Relationships
Before we add anything to the Dynamo Workspace, it is key that we have a solid understanding of what we are trying to achieve and what the significant relationships will be. Remember that anytime we are connecting two Nodes, we are creating an explicit link between them - we may change the flow of data later, but once connected we've commited to that relationship. In this exercise we want to create a circle (*Objective*) where the radius input is defined by a distance to a nearby point (*Relationship*). 

![NEEDS UPDATE - Hand Sketch of Circle](images/Placeholder.png)

> A point that defines a distance-based relationship is commonly referred to as an "Attractor." Here the distance to our Attractor Point will be used to specify how big our circle should be. 

###2.4.2. Adding Nodes to the Workspace
Now that we have our Objectives and Relationships sketched we can begin creating our graph. We need the Nodes that will represent the sequence of actions Dynamo will execute. Since we know we are trying to create a circle, let's start by locating a Node that do so. Using the Search field or browing through the Library, we will find that there is more than one way to create a circle. 

![NEEDS UPDATE - Side by Side of Browse and Search](images/Placeholder.png)
> 1. Browse to Geometry > Circle > Circle By Point and Radius
2. Search > "Circle by Point..."

Let's add the Circle By Point and Radius Node to the Workspace by clicking on it in the Library - this should add the Node to the center of the Workspace. 

![NEEDS UPDATE - Circle Added](images/Placeholder.png)

> 1. The Circle.ByPointandRadius Node

We also will need Point By Coordinates, Number Input, and Number Slider Nodes.

![NEEDS UPDATE - Objects Added](images/Placeholder.png)

> 1. Geometry > Point > Point by Coordinates
2. Geometry > Geometry > Distance To
2. Core > Input > Number
3. Core > Input > Number Slider

###2.4.3 Connecting Nodes with Wires
Now that we have a few Nodes, we need to connect the Ports of the Nodes with Wires. These connections will define the flow of data through the Graph. 

![NEEDS UPDATE - Connections made](images/Placeholder.png)
> 1. Number to Point by Coordinates
2. Number Sliders to Point by Coordinates
3. Point by Coordinates (2) to Distance To
4. Point by Coordinates and Distance To to Circle by Center Point and Radius

###2.4.4 Executing the Graph
With our Graph defined, all we need to do is tell Dynamo to execute it. By clicking on Run in the Execution Bar, the Nodes will be activated, data will pass through the Wires, and we should see the results of the Graph in the 

![NEEDS UPDATE - After Run](images/Placeholder.png)
> 1. Click Run - In Manual Mode, we need to Click Run to execute the graph
2. Node Preview - Hovering your mouse over the box on the lower right corner of a Node will give you a pop up of the results
3. 3D Preview - If any of our Nodes create geometry, we will see it in the 3D Preview.

###2.4.5 Adding Detail

![NEEDS UPDATE - After Run](images/Placeholder.png)

###2.4.6 Adding complexity
Text

![NEEDS UPDATE - Hand Sketch of Array of Circles](images/Placeholder.png)


