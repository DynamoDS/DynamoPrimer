<style>
td {background-color:#F9F9F9; vertical-align:top}
td img{display:block;width:100%;max-width: 100px;}
td:nth-child(1){width:150px;}
td:nth-child(2){width:550px;}
td:nth-child(3){width:100px;}
thead {display: none}
</style>


# INDEX OF NODES

##### This index provides additional information on all the nodes used in this primer, as well as other components you might find useful. This is just an introduction to some of the 500 nodes available in Dynamo.



Bulitin Functions
--

||||
|--|--|--|
|Flatten|Returns the flattened 1D list of the multidimensional input list.|![IMAGE](images/A-2/Flatten.Large.png)

Core
--

####Core.Color
||||
|--|--|--|
|**Create**|||
|Color.ByARGB|Construct a color by alpha, red, green, and blue components.|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|
|Color<br>.BuildColorFromRange|Get a color from a color gradient between a start color and an end color.|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|
|**Actions**|||
|Color.Brightness|Gets the brightness value for this color.|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|
|Color.Components|Lists the components for the color in the order: alpha, red, green, blue.|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|
|Color.Saturation|Gets the saturation value for this color|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|
|Color.Hue|Gets the hue value for this color.|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|
|**Query**|||
|Color.Alpha|Find the alpha component of a color, 0 to 255.|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|
|Color.Blue|Find the blue component of a color, 0 to 255.|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|
|Color.Green|Find the green component of a color, 0 to 255.|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|
|Color.Red|Find the red component of a color, 0 to 255.|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|

####Core.Input
||||
|--|--|--|
|**Actions**|||
|Boolean|Selection between a true and false.|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)
|Code Block|Allows for DesignScript code to be authored directly.|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)
|Integer Slider|A slider that produces integer values.|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)
|Number| Creates a number.|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)
|Number Slider| A slider that produces numeric values.|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)
|String|Creates a string.|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)

####Core.List
||||
|--|--|--|
|**Create**|||
|List.Create|Makes a new list out of the given inputs.|![IMAGE](images/A-2/DSCore.List.Create.Large.png)
|Number Sequence|Creates a sequence of numbers.|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)
|**Actions**|||
|List.Chop|Chop a list into a set of lists each containing the given amount of items.|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)
|List.Flatten|Flattens a nested list of lists by a certain amount.|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)

####Core.View
||||
|--|--|--|
|**Actions**|||
|View.Watch|Visualize the output of node.|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)

Geometry
--

####Geometry.Circle
||||
|--|--|--|
|**Create**|||
|Circle<br>.ByCenterPointRadius|Creates a Circle with input center Point and radius in the world XY plane, with world Z as normal.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)

####Geometry.Geometry
||||
|--|--|--|
|**Actions**|||
|Geometry.DistanceTo|Obtain the distance from this Geometry to another.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)

####Geometry.Point
||||
|--|--|--|
|**Create**|||
|Point.ByCoordinates<br>(2d)| Form a Point in the XY plane given two 2 cartesian coordinates.  The Z component is 0.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|
|Point.ByCoordinates<br>(3d)|Form a Point given 3 cartesian coordinates.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|

####Geometry.UV
||||
|--|--|--|
|**Create**|||
|UV.ByCoordinates|Create a UV from two doubles.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)

Operators
--

||||
|--|--|--|
|+|Addition|![IMAGE](images/A-2/add.Large.png)
|*|Multiplication|![IMAGE](images/A-2/mul.Large.png)