<style>
td {background-color:#F9F9F9; vertical-align:top}
td img{width:100%}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(1){width:50px;padding-right:2px;padding-left: 2px;vertical-align: top}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(2){width:575px;}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(3){width:175px;padding:5px;vertical-align: middle}
.book .book-body .page-wrapper .page-inner section.normal table{box-shadow: 2px 2px 2px #BBBBBB}
/*td:nth-child(3) img{box-shadow: 2px 2px 5px #BBBBBB}*/
thead {display: none}
</style>



# INDEX OF NODES

##### This index provides additional information on all the nodes used in this primer, as well as other components you might find useful. This is just an introduction to some of the 500 nodes available in Dynamo.



Bulitin Functions
--

||||
|--|--|--|
|![IMAGE](images/A-2/Count.Large.jpg)|**Count**<br>Returns number of items in the specified list.|![IMAGE](images/nodes/Count.jpg)
|![IMAGE](images/A-2/Flatten.Large.jpg)|**Flatten**<br>Returns the flattened 1D list of the multidimensional input list.|![IMAGE](images/nodes/Flatten.jpg)
|![IMAGE](images/A-2/Map.Large.jpg)|**Map**<br>Maps a value into an input range|![IMAGE](images/nodes/Map.jpg)

Core
--

####Core.Color
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.jpg)|**Color.ByARGB**<br>Construct a color by alpha, red, green, and blue components.|![IMAGE](images/nodes/Color.ByARGB.jpg)
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.jpg)|**Color Range**<br>Get a color from a color gradient between a start color and an end color.|![IMAGE](images/nodes/ColorRange.jpg)
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.jpg)|**Color.Brightness**<br>Gets the brightness value for this color.|![IMAGE](images/nodes/Color.Brightness.jpg)
|![IMAGE](images/A-2/DSCore.Color.Components.Large.jpg)|**Color.Components**<br>Lists the components for the color in the order: alpha, red, green, blue.|![IMAGE](images/nodes/Color.Components.jpg)
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.jpg)|**Color.Saturation**<br>Gets the saturation value for this color|![IMAGE](images/nodes/Color.Saturation.jpg)
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.jpg)|**Color.Hue**<br>Gets the hue value for this color.|![IMAGE](images/nodes/Color.Hue.jpg)
||QUERY||
|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.jpg)|**Color.Alpha**<br>Find the alpha component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Alpha.jpg)
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.jpg)|**Color.Blue**<br>Find the blue component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Blue.jpg)
|![IMAGE](images/A-2/DSCore.Color.Green.Large.jpg)|**Color.Green**<br>Find the green component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Green.jpg)
|![IMAGE](images/A-2/DSCore.Color.Red.Large.jpg)|**Color.Red**<br>Find the red component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Red.jpg)

####Core.Display
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Display.ByGeometryColor.jpg)|**Display.ByGeometryColor**<br>Displays geometry using a color.|![IMAGE](images/nodes/Display.ByGeometryColor.jpg)

####Core.Input
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.jpg)|**Boolean**<br>Selection between a true and false.|![IMAGE](images/nodes/Boolean.jpg)
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.jpg)|**Code Block**<br>Allows for DesignScript code to be authored directly.|![IMAGE](images/nodes/CodeBlock.jpg)
|![IMAGE](images/A-2/DSCore.File.Directory.Large.jpg)|**Directory Path**<br>Allows you to select a directory on the system to get its path|![IMAGE](images/nodes/DirectoryPath.jpg)
|![IMAGE](images/A-2/DSCore.File.Filename.Large.jpg)|**File Path**<br>Allows you to select a file on the system to get its filename.|![IMAGE](images/nodes/FilePath.jpg)
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.jpg)|**Integer Slider**<br>A slider that produces integer values.|![IMAGE](images/nodes/IntegerSlider.jpg)
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.jpg)|**Number**<br> Creates a number.|![IMAGE](images/nodes/Number.jpg)
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.jpg)|**Number Slider**<br> A slider that produces numeric values.|![IMAGE](images/nodes/NumberSlider.jpg)
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.jpg)|**String**<br>Creates a string.|![IMAGE](images/nodes/String.jpg)

####Core.List
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/DSCore.List.Create.Large.jpg)|**List.Create**<br>Makes a new list out of the given inputs.|![IMAGE](images/nodes/List.Create.jpg)
|![IMAGE](images/A-2/DSCore.List.Combine.Large.jpg)|**List.Combine**<br>Applies a combinator to each element in two sequences|![IMAGE](images/nodes/List.Combine.jpg)
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.jpg)|**Number Range**<br>Creates a sequence of numbers in the specified range.|![IMAGE](images/nodes/NumberRange.jpg)
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.jpg)|**Number Sequence**<br>Creates a sequence of numbers.|![IMAGE](images/nodes/NumberSequence.jpg)
||ACTIONS||
|![IMAGE](images/A-2/DSCore.List.Chop.Large.jpg)|**List.Chop**<br>Chop a list into a set of lists each containing the given amount of items.|![IMAGE](images/nodes/List.Chop.jpg)
|![IMAGE](images/A-2/DSCore.List.Count.Large.jpg)|**List.Count**<br>Gets the number of items stored in the given list.|![IMAGE](images/nodes/List.Count.jpg)
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.jpg)|**List.Flatten**<br>Flattens a nested list of lists by a certain amount.|![IMAGE](images/nodes/List.Flatten.jpg)
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.jpg)|**List.FilterByBoolMask**<br>Filters a sequence by looking up corresponding indices in a separate list of booleans.|![IMAGE](images/nodes/List.FilterByBoolMask.jpg)
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.jpg)|**List.GetItemAtIndex**<br>Gets an item from the given list that's located at the specified index.|![IMAGE](images/nodes/List.GetItemAtIndex.jpg)
|![IMAGE](images/A-2/DSCore.List.Map.Large.jpg)|**List.Map**<br>Applies a function over all elements of a list, generating a new list from the results|![IMAGE](images/nodes/List.Map.jpg)
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.jpg)|**List.Reverse**<br>Creates a new list containing the items of the given list but in reverse order|![IMAGE](images/nodes/List.Reverse.jpg)
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.jpg)|**List.ReplaceItemAtIndex**<br>Replace an item from the given list that's located at the specified index|![IMAGE](images/nodes/List.ReplaceItemAtIndex.jpg)
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.jpg)|**List.ShiftIndices**<br>Shifts indices in the list to the right by the given amount|![IMAGE](images/nodes/List.ShiftIndices.jpg)
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.jpg)|**List.TakeEveryNthItem**<br>Fetches items from the given list at indices that are multiples of the given value, after the given offset.|![IMAGE](images/nodes/List.TakeEveryNthItem.jpg)
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.jpg)|**List.Transpose**<br>Swaps rows and columns in a list of lists. If there are some rows that are shorter than others, null values are inserted as place holders in the resultant array such that it is always rectangular|![IMAGE](images/nodes/List.Transpose.jpg)

####Core.Logic
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.jpg)|**If**<br>Conditional statement. Checks the boolean value of the test input. If the test input is true, the result outputs the true input, otherwise the result outputs the false input.|![IMAGE](images/nodes/If.jpg)



####Core.Math
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Math.Cos.Large.jpg)|**Math.Cos**<br>Fines the cosine of an angle.|![IMAGE](images/nodes/Math.Cos.jpg)
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.jpg)|**Math.DegreesToRadians**<br>Converts an angle in degrees to an angle in radians.|![IMAGE](images/nodes/Math.DegreesToRadians.jpg)
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.jpg)|**Math.Pow**<br>Raises a number to the specified power.|![IMAGE](images/nodes/Math.Pow.jpg)
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.jpg)|**Math.RadiansToDegrees**<br>Converts an angle in radians to an angle in degrees.|![IMAGE](images/nodes/Math.RadiansToDegrees.jpg)
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.jpg)|**Math.RemapRange**<br>Adjusts the range of a list of numbers while preserving the distribution ratio.|![IMAGE](images/nodes/Math.RemapRange.jpg)
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.jpg)|**Math.Sin**<br>Finds the sine of an angle.|![IMAGE](images/nodes/Math.Sin.jpg)



####Core.Object
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.jpg)|**Object.IsNull**<br>Determines if the given object is null.|![IMAGE](images/nodes/Object.IsNull.jpg)

####Core.Scripting
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.jpg)|**Formula**<br>Evaluates mathematical formulas. Uses NCalc for evaluation. See http://ncalc.codeplex.com |![IMAGE](images/nodes/Formula.jpg)

####Core.String
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.jpg)|**String.Concat**<br>Concatenates multiple strings into a single string.|![IMAGE](images/nodes/String.Concat.jpg)
|![IMAGE](images/A-2/DSCore.String.Contains.Large.jpg)|**String.Contains**<br>Determines if the given string contains the given substring.|![IMAGE](images/nodes/String.Contains.jpg)
|![IMAGE](images/A-2/DSCore.String.Join.Large.jpg)|**String.Join**<br>Concatenates multiple strings into a single string, inserting the given separator between each joined string.|![IMAGE](images/nodes/String.Join.jpg)
|![IMAGE](images/A-2/DSCore.String.Split.Large.jpg)|**String.Split**<br>Divides a single string into a list of strings, with divisions determined by the given separater strings.|![IMAGE](images/nodes/String.Split.jpg)
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.jpg)|**String.ToNumber**<br>Converts a string to an integer or a double.|![IMAGE](images/nodes/String.ToNumber.jpg)


####Core.View
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.jpg)|**View.Watch**<br>Visualize the output of node.|![IMAGE](images/nodes/Watch.jpg)
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.jpg)|**View.Watch 3D**<br>Shows a dynamic preview of geometry.|![IMAGE](images/nodes/Watch3D.jpg)

Geometry
--

####Geometry.Circle
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.jpg)|**Circle.ByCenterPointRadius**<br>Creates a Circle with input center Point and radius in the world XY plane, with world Z as normal.|![IMAGE](images/nodes/Circle.ByCenterPointRadius.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.jpg)|**Circle.ByPlaneRadius**<br>Create a Circle centered at the input Plane origin (root), lying in the input Plane, with given radius.|![IMAGE](images/nodes/Circle.ByPlaneRadius.jpg)

####Geometry.CoordinateSystem
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.jpg)|**CoordinateSystem.ByOrigin**<br>Create a CoordinateSystem with origin at input Point, with X and Y Axes set as WCS X and Y axes|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.jpg)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Creates a CoordinateSystem at the specified cylindrical coordinate parameters with respet to the specified coordinate system|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.jpg)


####Geometry.Cuboid
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.jpg)|**Cuboid.ByLengths** (origin)<br>Create a Cuboid centered at input Point, with specified width, length, and height.|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.jpg)


####Geometry.Curve
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.jpg)|**Curve.Extrude** (distance)<br>Extrudes a Curve in the normal Vector direction.|![IMAGE](images/nodes/Curve.Extrude_Distance.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.jpg)|**Curve.PointAtParameter**<br>Get a Point on the Curve at a specified parameter between StartParameter() and EndParameter().|![IMAGE](images/nodes/Curve.PointAtParameter.jpg)

####Geometry.Geometry
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.jpg)|**Geometry.DistanceTo**<br>Obtain the distance from this Geometry to another.|![IMAGE](images/nodes/Geometry.DistanceTo.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.jpg)|**Geometry.Explode**<br>Separates compound or non-separated elements into their component parts|![IMAGE](images/nodes/Geometry.Explode.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.jpg)|**Geometry.ImportFromSAT**<br>List of imported geometries|![IMAGE](images/nodes/Geometry.ImportFromSAT.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.jpg)|**Geometry.Rotate** (basePlane)<br>Rotates an object around the Plane origin and normal by a specified degree.|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.jpg)|**Geometry.Translate**<br>Translates any geometry type by the given distance in the given direction.|![IMAGE](images/nodes/Geometry.Translate.jpg)

####Geometry.Line
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.jpg)|**Line.ByBestFitThroughPoints**<br>Creates a Line best approximating a scatter plot of Points.|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.jpg)|**Line.ByStartPointDirectionLength**<br>Create a straight Line starting at Point, extending in Vector direction by specified length.|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.jpg)|**Line.ByStartPointEndPoint**<br>Creates a straight Line between two input Points.|![IMAGE](images/nodes/Line.ByStartPointEndPoint.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.jpg)|**Line.ByTangency**<br>Create a Line tangent to the input Curve, positioned at the parameter Point of the input Curve.|![IMAGE](images/nodes/Line.ByTangency.jpg)
||QUERY||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.jpg)|**Line.Direction**<br>The direction of the Curve.|![IMAGE](images/nodes/Line.Direction.jpg)

####Geometry.NurbsCurve
||||
|--|--|--|
||Create||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.jpg)|**NurbsCurve.ByControlPoints**<br>Create a BSplineCurve by using explicit control points.|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.jpg)|**NurbsCurve.ByPoints**<br>Create a BSplineCurve by interpolating between points|![IMAGE](images/nodes/NurbsCurve.ByPoints.jpg)qcomm

####Geometry.NurbsSurface
||||
|--|--|--|
||Create||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.jpg)|**NurbsSurface.ByControlPoints**<br>Create a NurbsSurface by using explicit control Points with specified U and V degrees.|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.jpg)|**NurbsSurface.ByPoints**<br>Creates a NurbsSurface with specified interpolated points and U and V degrees. The resultant surface will pass through all of the points.|![IMAGE](images/nodes/NurbsSurface.ByPoints.jpg)

####Geometry.Plane
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.jpg)|**Plane.ByOriginNormal**<br>Create a Plane centered at root Point, with input normal Vector.|![IMAGE](images/nodes/Plane.ByOriginNormal.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.jpg)|**Plane.XY**<br>Creates a plane in the world XY|![IMAGE](images/nodes/Plane.XY.jpg)

####Geometry.Point
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.jpg)|**Point.ByCartesianCoordinates**<br>Form a Point in th egiven coordinate system with 3 cartesian coordinates|![IMAGE](images/nodes/Point.ByCartesianCoordinates.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.jpg)|**Point.ByCoordinates** (2d)<br> Form a Point in the XY plane given two 2 Cartesian coordinates.  The Z component is 0.|![IMAGE](images/nodes/Point.ByCoordinates_2D.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.jpg)|**Point.ByCoordinates** (3d)<br>Form a Point given 3 Cartesian coordinates.|![IMAGE](images/nodes/Point.ByCoordinates_3D.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.jpg)|**Point.Origin**<br>Get the Origin point (0,0,0)|![IMAGE](images/nodes/Point.Origin.jpg)
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.jpg)|**Point.Add**<br>Add a vector to a point. The same as Translate (Vector).|![IMAGE](images/nodes/Point.Add.jpg)
||QUERY||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.jpg)|**Point.X**<br>Get the X component of a point|![IMAGE](images/nodes/Point.X.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.jpg)|**Point.Y**<br>Get the Y component of a point|![IMAGE](images/nodes/Point.Y.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.jpg)|**Point.Z**<br>Get the Z component of a point|![IMAGE](images/nodes/Point.Z.jpg)


####Geometry.Polycurve
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.jpg)|**Polycurve.ByPoints**<br>Make PolyCurve from sequence of lines connecting points. For closed curve last point should be in the same location as the start point.|![IMAGE](images/nodes/PolyCurve.ByPoints.jpg)

####Geometry.Rectangle
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.jpg)|**Rectangle.ByWidthLength** (Plane)<br>Create a Rectangle centered at input Plane root, with input width (Plane X axis length) and (Plane Y axis length).|![IMAGE](images/nodes/Rectangle.ByWidthLength.jpg)

####Geometry.Sphere
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.jpg)|**Sphere.ByCenterPointRadius**<br>Create a Solid Sphere centered at the input Point, with given radius.|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.jpg)

####Geometry.Surface
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.jpg)|**Surface.ByLoft**<br>Create a Surface by lofting between input cross section Curves|![IMAGE](images/nodes/Surface.ByLoft.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.jpg)|**Surface.ByPatch**<br>Create a Surface by filling in the interior of a closed boundary defined by input Curves.|![IMAGE](images/nodes/Surface.ByPatch.jpg)
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.jpg)|**Surface.Offset**<br>Offset Surface in direction of Surface normal by specified distance|![IMAGE](images/nodes/Surface.Offset.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.jpg)|**Surface.PointAtParameter**<br>Return the Point at a specified U and V parameters.|![IMAGE](images/nodes/Surface.PointAtParameter.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.jpg)|**Surface.Thicken**<br>Thicken Surface into a Solid, extruding in the direction of Surface normals on both sides of the Surface.|![IMAGE](images/nodes/Surface.Thicken.jpg)

####Geometry.UV
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.jpg)|**UV.ByCoordinates**<br>Create a UV from two doubles.|![IMAGE](images/nodes/UV.ByCoordinates.jpg)

####Geometry.Vector
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.jpg)|**Vector.ByCoordinates**<br>Form a Vector by 3 Euclidean coordinates|![IMAGE](images/nodes/Vector.ByCoordinates.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.jpg)|**Vector.XAxis**<br>Gets the canonical X axis Vector (1,0,0)|![IMAGE](images/nodes/Vector.XAxis.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.jpg)|**Vector.YAxis**<br>Gets the canonical Y axis Vector (0,1,0)|![IMAGE](images/nodes/Vector.YAxis.jpg)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.jpg)|**Vector.ZAxis**<br>Gets the canonical Z axis Vector (0,0,1)|![IMAGE](images/nodes/Vector.ZAxis.jpg)
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.jpg)|**Vector.Normalized**<br>Get the normalized version of a vector|![IMAGE](images/nodes/Vector.Normalized.jpg)



Operators
--
||||
|--|--|--|
|![IMAGE](images/A-2/add.Large.jpg)|**+**<br>Addition|![IMAGE](images/nodes/Addition.jpg)
|![IMAGE](images/A-2/sub.Large.jpg)|**-**<br>Subtraction|![IMAGE](images/nodes/Subtraction.jpg)
|![IMAGE](images/A-2/mul.Large.jpg)|**\***<br>Multiplication|![IMAGE](images/nodes/Multiplication.jpg)
|![IMAGE](images/A-2/div.Large.jpg)|**/**<br>Division|![IMAGE](images/nodes/Division.jpg)
|![IMAGE](images/A-2/mod.Large.jpg)|**%**<br>Modular Division finds the remainder of the first input after dividing by the second input|![IMAGE](images/nodes/ModularDivision.jpg)
|![IMAGE](images/A-2/lt.Large.jpg)|**<**<br>Less Than|![IMAGE](images/nodes/LessThan.jpg)
|![IMAGE](images/A-2/gt.Large.jpg)|**>**<br>Greater Than|![IMAGE](images/nodes/GreaterThan.jpg)
|![IMAGE](images/A-2/eq.Large.jpg)|**==**<br>Equality tests for equality between two values.|![IMAGE](images/nodes/Equality.jpg)
