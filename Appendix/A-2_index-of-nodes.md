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
|Count|Returns number of items in the specified list.|![IMAGE](images/A-2/Count.Large.png)
|Flatten|Returns the flattened 1D list of the multidimensional input list.|![IMAGE](images/A-2/Flatten.Large.png)
|Map|Maps a value into an input range|![IMAGE](images/A-2/Map.Large.png)

Core
--

####Core.Color
||||
|--|--|--|
|**Create**|||
|Color.ByARGB|Construct a color by alpha, red, green, and blue components.|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|
|Color Range|Get a color from a color gradient between a start color and an end color.|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|
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

####Core.Display
||||
|--|--|--|
|**Create**|||
|Display<br>.ByGeometryColor|Displays geometry using a color.|![IMAGE](images/A-2/Display.ByGeometryColor.png)

####Core.Input
||||
|--|--|--|
|**Actions**|||
|Boolean|Selection between a true and false.|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)
|Code Block|Allows for DesignScript code to be authored directly.|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)
|Directory Path|Allows you to select a directory on the system to get its path|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)
|File Path|Allows you to select a file on the system to get its filename.|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)
|Integer Slider|A slider that produces integer values.|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)
|Number| Creates a number.|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)
|Number Slider| A slider that produces numeric values.|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)
|String|Creates a string.|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)

####Core.List
||||
|--|--|--|
|**Create**|||
|List.Create|Makes a new list out of the given inputs.|![IMAGE](images/A-2/DSCore.List.Create.Large.png)
|Number Range|Creates a sequence of numbers in the specified range.|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)
|Number Sequence|Creates a sequence of numbers.|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)
|**Actions**|||
|List.Chop|Chop a list into a set of lists each containing the given amount of items.|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)
|List.Count|Gets the number of items stored in the given list.|![IMAGE](images/A-2/DSCore.List.Count.Large.png)
|List.Flatten|Flattens a nested list of lists by a certain amount.|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)
|List<br>.FilterByBoolMask|Filters a sequence by looking up corresponding indices in a separate list of booleans.|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)
|List<br>.GetItemAtIndex|Gets an item from the given list that's located at the specified index.|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)
|List<br>.TakeEveryNthItem|Fetches items from the given list at indices that are multiples of the given value, after the given offset.|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)

####Core.Logic
||||
|--|--|--|
|**Actions**|||
|If|Conditional statement. Checks the boolean value of the test input. If the test input is true, the result outputs the true input, otherwise the result outputs the false input.|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)



####Core.Math
||||
|--|--|--|
|**Actions**|||
|Math.Cos|Fines the cosine of an angle.|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)
|Math<br>.DegreesToRadians|Converts an angle in degrees to an angle in radians.|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)
|Math.Pow|Raises a number to the specified power.|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)
|Math<br>.RadiansToDegrees|Converts an angle in radians to an angle in degrees.|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)
|Math.RemapRange|Adjusts the range of a list of numbers while preserving the distribution ratio.|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)
|Math.Sin|Finds the sine of an angle.|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)



####Core.Object
||||
|--|--|--|
|**Actions**|||
|Object.IsNull|Determines if the given object is null.|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)

####Core.Scripting
||||
|--|--|--|
|**Actions**|||
|Formula|Evaluates mathematical formulas. Uses NCalc for evaluation. See http://ncalc.codeplex.com |![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)

####Core.String
||||
|--|--|--|
|**Actions**|||
|String.Concat|Concatenates multiple strings into a single string.|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)
|String.Contains|Determines if the given string contains the given substring.|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)
|String.Join|Concatenates multiple strings into a single string, inserting the given separator between each joined string.|![IMAGE](images/A-2/DSCore.String.Join.Large.png)
|String.Split|Divides a single string into a list of strings, with divisions determined by the given separater strings.|![IMAGE](images/A-2/DSCore.String.Split.Large.png)
|String.ToNumber|Converts a string to an integer or a double.|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)





####Core.View
||||
|--|--|--|
|**Actions**|||
|View.Watch|Visualize the output of node.|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)
|View.Watch 3D|Shows a dynamic preview of geometry.|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)
Geometry
--

####Geometry.Circle
||||
|--|--|--|
|**Create**|||
|Circle<br>.ByCenterPointRadius|Creates a Circle with input center Point and radius in the world XY plane, with world Z as normal.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)
|Circle<br>.ByPlaneRadius|Create a Circle centered at the input Plane origin (root), lying in the input Plane, with given radius.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)

####Geometry.Cuboid
||||
|--|--|--|
|**Create**|||
|Cuboid.ByLengths<br>(origin)|Create a Cuboid centered at input Point, with specified width, length, and height.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)


####Geometry.Curve
||||
|--|--|--|
|**Actions**|||
|Curve.Extrude<br>(distance)|Extrudes a Curve in the normal Vector direction.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)
|Curve<br>.PointAtParameter|Get a Point on the Curve at a specified parameter between StartParameter() and EndParameter().|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)

####Geometry.Geometry
||||
|--|--|--|
|**Actions**|||
|Geometry.DistanceTo|Obtain the distance from this Geometry to another.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)
|Geometry.Rotate<br>(basePlane)|Rotates an object around the Plane origin and normal by a specified degree.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)

####Geometry.Plane
||||
|--|--|--|
|**Create**|||
|Plane.ByOriginNormal|Create a Plane centered at root Point, with input normal Vector.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)
|Plane.XY|Creates a plane in the world XY|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)

####Geometry.Point
||||
|--|--|--|
|**Create**|||
|Point.ByCoordinates<br>(2d)| Form a Point in the XY plane given two 2 cartesian coordinates.  The Z component is 0.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|
|Point.ByCoordinates<br>(3d)|Form a Point given 3 cartesian coordinates.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|

####Geometry.Polycurve
||||
|--|--|--|
|**Create**|||
|Polycurve.ByPoints|Make PolyCurve from sequence of lines connecting points. For clode curve last point should be in the same location as the start point.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)

####Geometry.Sphere
||||
|--|--|--|
|**Create**|||
|Sphere<br>.ByCenterPointRadius|Create a Solid Sphere centered at the input Point, with given radius.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)

####Geometry.Surface
||||
|--|--|--|
|**Actions**|||
|Surface.Thicken|Thicken Surface into a Solid, extruding in the direction of Surface normals on both sides of the Surface.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)

####Geometry.UV
||||
|--|--|--|
|**Create**|||
|UV.ByCoordinates|Create a UV from two doubles.|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)

####Geometry.Vector
||||
|--|--|--|
|**Create**|||
|Vector.XAxis|Gets the canonical X axis Vector (1,0,0)|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)
|Vector.YAxis|Gets the canonical Y axis Vector (0,1,0)|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)
|Vector.ZAxis|Gets the canonical Z axis Vector (0,0,1)|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)


Operators
--
||||
|--|--|--|
|+|Addition|![IMAGE](images/A-2/add.Large.png)
|*|Multiplication|![IMAGE](images/A-2/mul.Large.png)
|%|Modular Division|![IMAGE](images/A-2/mod.Large.png)
|<|Less Than|![IMAGE](images/A-2/lt.Large.png)
|>|Greater Than|![IMAGE](images/A-2/gt.Large.png)
|==|Equality boolean operater. Tests for equality between two values.|![IMAGE](images/A-2/eq.Large.png)