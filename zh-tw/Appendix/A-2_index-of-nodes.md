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
|![IMAGE](images/A-2/Count.Large.png)|**Count**<br>Returns number of items in the specified list.|![IMAGE](images/nodes/Count.png)
|![IMAGE](images/A-2/Flatten.Large.png)|**Flatten**<br>Returns the flattened 1D list of the multidimensional input list.|![IMAGE](images/nodes/Flatten.png)
|![IMAGE](images/A-2/Map.Large.png)|**Map**<br>Maps a value into an input range|![IMAGE](images/nodes/Map.png)

Core
--

####Core.Color
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Construct a color by alpha, red, green, and blue components.|![IMAGE](images/nodes/Color.ByARGB.png)
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Color Range**<br>Get a color from a color gradient between a start color and an end color.|![IMAGE](images/nodes/ColorRange.png)
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Gets the brightness value for this color.|![IMAGE](images/nodes/Color.Brightness.png)
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Lists the components for the color in the order: alpha, red, green, blue.|![IMAGE](images/nodes/Color.Components.png)
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Gets the saturation value for this color|![IMAGE](images/nodes/Color.Saturation.png)
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>Gets the hue value for this color.|![IMAGE](images/nodes/Color.Hue.png)
||QUERY||
|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Find the alpha component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Alpha.png)
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Find the blue component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Blue.png)
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Find the green component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Green.png)
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Find the red component of a color, 0 to 255.|![IMAGE](images/nodes/Color.Red.png)

####Core.Display
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Displays geometry using a color.|![IMAGE](images/nodes/Display.ByGeometryColor.png)

####Core.Input
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Boolean**<br>Selection between a true and false.|![IMAGE](images/nodes/Boolean.png)
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Code Block**<br>Allows for DesignScript code to be authored directly.|![IMAGE](images/nodes/CodeBlock.png)
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**<br>Allows you to select a directory on the system to get its path|![IMAGE](images/nodes/DirectoryPath.png)
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**File Path**<br>Allows you to select a file on the system to get its filename.|![IMAGE](images/nodes/FilePath.png)
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**<br>A slider that produces integer values.|![IMAGE](images/nodes/IntegerSlider.png)
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Number**<br> Creates a number.|![IMAGE](images/nodes/Number.png)
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider**<br> A slider that produces numeric values.|![IMAGE](images/nodes/NumberSlider.png)
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**<br>Creates a string.|![IMAGE](images/nodes/String.png)

####Core.List
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Makes a new list out of the given inputs.|![IMAGE](images/nodes/List.Create.png)
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Applies a combinator to each element in two sequences|![IMAGE](images/nodes/List.Combine.png)
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Number Range**<br>Creates a sequence of numbers in the specified range.|![IMAGE](images/nodes/NumberRange.png)
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Number Sequence**<br>Creates a sequence of numbers.|![IMAGE](images/nodes/NumberSequence.png)
||ACTIONS||
|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Chop a list into a set of lists each containing the given amount of items.|![IMAGE](images/nodes/List.Chop.png)
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Gets the number of items stored in the given list.|![IMAGE](images/nodes/List.Count.png)
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Flattens a nested list of lists by a certain amount.|![IMAGE](images/nodes/List.Flatten.png)
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Filters a sequence by looking up corresponding indices in a separate list of booleans.|![IMAGE](images/nodes/List.FilterByBoolMask.png)
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Gets an item from the given list that's located at the specified index.|![IMAGE](images/nodes/List.GetItemAtIndex.png)
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Applies a function over all elements of a list, generating a new list from the results|![IMAGE](images/nodes/List.Map.png)
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Creates a new list containing the items of the given list but in reverse order|![IMAGE](images/nodes/List.Reverse.png)
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Replace an item from the given list that's located at the specified index|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Shifts indices in the list to the right by the given amount|![IMAGE](images/nodes/List.ShiftIndices.png)
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Fetches items from the given list at indices that are multiples of the given value, after the given offset.|![IMAGE](images/nodes/List.TakeEveryNthItem.png)
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Swaps rows and columns in a list of lists. If there are some rows that are shorter than others, null values are inserted as place holders in the resultant array such that it is always rectangular|![IMAGE](images/nodes/List.Transpose.png)

####Core.Logic
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>Conditional statement. Checks the boolean value of the test input. If the test input is true, the result outputs the true input, otherwise the result outputs the false input.|![IMAGE](images/nodes/If.png)



####Core.Math
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Fines the cosine of an angle.|![IMAGE](images/nodes/Math.Cos.png)
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Converts an angle in degrees to an angle in radians.|![IMAGE](images/nodes/Math.DegreesToRadians.png)
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Raises a number to the specified power.|![IMAGE](images/nodes/Math.Pow.png)
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Converts an angle in radians to an angle in degrees.|![IMAGE](images/nodes/Math.RadiansToDegrees.png)
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Adjusts the range of a list of numbers while preserving the distribution ratio.|![IMAGE](images/nodes/Math.RemapRange.png)
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Finds the sine of an angle.|![IMAGE](images/nodes/Math.Sin.png)



####Core.Object
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Determines if the given object is null.|![IMAGE](images/nodes/Object.IsNull.png)

####Core.Scripting
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**Formula**<br>Evaluates mathematical formulas. Uses NCalc for evaluation. See http://ncalc.codeplex.com |![IMAGE](images/nodes/Formula.png)

####Core.String
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Concatenates multiple strings into a single string.|![IMAGE](images/nodes/String.Concat.png)
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Determines if the given string contains the given substring.|![IMAGE](images/nodes/String.Contains.png)
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Concatenates multiple strings into a single string, inserting the given separator between each joined string.|![IMAGE](images/nodes/String.Join.png)
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Divides a single string into a list of strings, with divisions determined by the given separater strings.|![IMAGE](images/nodes/String.Split.png)
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Converts a string to an integer or a double.|![IMAGE](images/nodes/String.ToNumber.png)


####Core.View
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Visualize the output of node.|![IMAGE](images/nodes/Watch.png)
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Shows a dynamic preview of geometry.|![IMAGE](images/nodes/Watch3D.png)

Geometry
--

####Geometry.Circle
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Creates a Circle with input center Point and radius in the world XY plane, with world Z as normal.|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>Create a Circle centered at the input Plane origin (root), lying in the input Plane, with given radius.|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)

####Geometry.CoordinateSystem
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Create a CoordinateSystem with origin at input Point, with X and Y Axes set as WCS X and Y axes|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Creates a CoordinateSystem at the specified cylindrical coordinate parameters with respet to the specified coordinate system|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)


####Geometry.Cuboid
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths** (origin)<br>Create a Cuboid centered at input Point, with specified width, length, and height.|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)


####Geometry.Curve
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (distance)<br>Extrudes a Curve in the normal Vector direction.|![IMAGE](images/nodes/Curve.Extrude_Distance.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Get a Point on the Curve at a specified parameter between StartParameter() and EndParameter().|![IMAGE](images/nodes/Curve.PointAtParameter.png)

####Geometry.Geometry
||||
|--|--|--|
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Obtain the distance from this Geometry to another.|![IMAGE](images/nodes/Geometry.DistanceTo.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Separates compound or non-separated elements into their component parts|![IMAGE](images/nodes/Geometry.Explode.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>List of imported geometries|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Rotates an object around the Plane origin and normal by a specified degree.|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Translates any geometry type by the given distance in the given direction.|![IMAGE](images/nodes/Geometry.Translate.png)

####Geometry.Line
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Creates a Line best approximating a scatter plot of Points.|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Create a straight Line starting at Point, extending in Vector direction by specified length.|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Creates a straight Line between two input Points.|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Create a Line tangent to the input Curve, positioned at the parameter Point of the input Curve.|![IMAGE](images/nodes/Line.ByTangency.png)
||QUERY||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>The direction of the Curve.|![IMAGE](images/nodes/Line.Direction.png)

####Geometry.NurbsCurve
||||
|--|--|--|
||Create||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Create a BSplineCurve by using explicit control points.|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Create a BSplineCurve by interpolating between points|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm

####Geometry.NurbsSurface
||||
|--|--|--|
||Create||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Create a NurbsSurface by using explicit control Points with specified U and V degrees.|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Creates a NurbsSurface with specified interpolated points and U and V degrees. The resultant surface will pass through all of the points.|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)

####Geometry.Plane
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Create a Plane centered at root Point, with input normal Vector.|![IMAGE](images/nodes/Plane.ByOriginNormal.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Creates a plane in the world XY|![IMAGE](images/nodes/Plane.XY.png)

####Geometry.Point
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Form a Point in th egiven coordinate system with 3 cartesian coordinates|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2d)<br> Form a Point in the XY plane given two 2 Cartesian coordinates.  The Z component is 0.|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3d)<br>Form a Point given 3 Cartesian coordinates.|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Get the Origin point (0,0,0)|![IMAGE](images/nodes/Point.Origin.png)
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Add a vector to a point. The same as Translate (Vector).|![IMAGE](images/nodes/Point.Add.png)
||QUERY||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Get the X component of a point|![IMAGE](images/nodes/Point.X.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Get the Y component of a point|![IMAGE](images/nodes/Point.Y.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Get the Z component of a point|![IMAGE](images/nodes/Point.Z.png)


####Geometry.Polycurve
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Make PolyCurve from sequence of lines connecting points. For closed curve last point should be in the same location as the start point.|![IMAGE](images/nodes/PolyCurve.ByPoints.png)

####Geometry.Rectangle
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (Plane)<br>Create a Rectangle centered at input Plane root, with input width (Plane X axis length) and (Plane Y axis length).|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)

####Geometry.Sphere
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Create a Solid Sphere centered at the input Point, with given radius.|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)

####Geometry.Surface
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Create a Surface by lofting between input cross section Curves|![IMAGE](images/nodes/Surface.ByLoft.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Create a Surface by filling in the interior of a closed boundary defined by input Curves.|![IMAGE](images/nodes/Surface.ByPatch.png)
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Offset Surface in direction of Surface normal by specified distance|![IMAGE](images/nodes/Surface.Offset.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Return the Point at a specified U and V parameters.|![IMAGE](images/nodes/Surface.PointAtParameter.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Thicken Surface into a Solid, extruding in the direction of Surface normals on both sides of the Surface.|![IMAGE](images/nodes/Surface.Thicken.png)

####Geometry.UV
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Create a UV from two doubles.|![IMAGE](images/nodes/UV.ByCoordinates.png)

####Geometry.Vector
||||
|--|--|--|
||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**<br>Form a Vector by 3 Euclidean coordinates|![IMAGE](images/nodes/Vector.ByCoordinates.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Gets the canonical X axis Vector (1,0,0)|![IMAGE](images/nodes/Vector.XAxis.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Gets the canonical Y axis Vector (0,1,0)|![IMAGE](images/nodes/Vector.YAxis.png)
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Gets the canonical Z axis Vector (0,0,1)|![IMAGE](images/nodes/Vector.ZAxis.png)
||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>Get the normalized version of a vector|![IMAGE](images/nodes/Vector.Normalized.png)



Operators
--
||||
|--|--|--|
|![IMAGE](images/A-2/add.Large.png)|**+**<br>Addition|![IMAGE](images/nodes/Addition.png)
|![IMAGE](images/A-2/sub.Large.png)|**-**<br>Subtraction|![IMAGE](images/nodes/Subtraction.png)
|![IMAGE](images/A-2/mul.Large.png)|**\***<br>Multiplication|![IMAGE](images/nodes/Multiplication.png)
|![IMAGE](images/A-2/div.Large.png)|**/**<br>Division|![IMAGE](images/nodes/Division.png)
|![IMAGE](images/A-2/mod.Large.png)|**%**<br>Modular Division finds the remainder of the first input after dividing by the second input|![IMAGE](images/nodes/ModularDivision.png)
|![IMAGE](images/A-2/lt.Large.png)|**<**<br>Less Than|![IMAGE](images/nodes/LessThan.png)
|![IMAGE](images/A-2/gt.Large.png)|**>**<br>Greater Than|![IMAGE](images/nodes/GreaterThan.png)
|![IMAGE](images/A-2/eq.Large.png)|**==**<br>Equality tests for equality between two values.|![IMAGE](images/nodes/Equality.png)
