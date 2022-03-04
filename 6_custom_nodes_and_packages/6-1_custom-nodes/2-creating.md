# Creating a Custom Node

Dynamo offers several different methods for creating custom nodes. You can build custom nodes from scratch, from an existing graph, or explicitly in C#. In this section we will cover building a custom node in the Dynamo UI from an existing graph. This method is ideal for cleaning up the workspace, as well as packaging a sequence of nodes to reuse elsewhere.

## Exercise: Custom Nodes for UV Mapping

### Part I: Start with a Graph

In the image below, we map a point from one surface to another using UV coordinates. We'll use this concept to create a panelized surface which references curves in the XY plane. We'll create quad panels for our panelization here, but using the same logic, we can create a wide variety of panels with UV mapping. This is a great opportunity for custom node development because we will be able to repeat a similar process more easily in this graph or in other Dynamo workflows.

![](<../../.gitbook/assets/custom node for uv mapping pt I - 01.jpg>)

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/UV-CustomNode.zip" %}

Let’s start by creating a graph that we want to nest into a custom node. In this example, we will create a graph that maps polygons from a base surface to a target surface, using UV coordinates. This UV mapping process is something we use frequently, making it a good candidate for a custom node. For more information on surfaces and UV space, refer to the [Surface ](../../5\_essential\_nodes\_and\_concepts/5-2\_geometry-for-computational-design/5-surfaces.md)page. The complete graph is _UVmapping\_Custom-Node.dyn_ from the .zip file downloaded above.

![](<../../.gitbook/assets/custom node for uv mapping pt I - 02.jpg>)

> 1. **Code Block:** Use this line to create a range of 10 numbers between -45 and 45 `45..45..#10;`
> 2. **Point.ByCoordinates:** Connect the output of the **Code Block** to the ‘x’ and ‘y’ inputs and set the lacing to cross-reference. You should now have a grid of points.
> 3. **Plane.ByOriginNormal:** Connect the _‘Point’_ output to the _‘origin’_ input to create a plane at each of the points. The default normal vector of (0,0,1) will be used.
> 4. **Rectangle.ByWidthLength:** Connect the planes from the previous step into the _‘plane’_ input, and use a **Code Block** with a value of _10_ to specify the width and length.

You should now see a grid of rectangles. Let’s map these rectangles to a target surface using UV coordinates.

![](<../../.gitbook/assets/custom node for uv mapping pt I - 03.jpg>)

> 1. **Polygon.Points:** Connect the **Rectangle.ByWidthLength** output from the previous step to the _‘polygon’_ input to extract the corner points of each rectangle. These are the points that we will map to the target surface.
> 2. **Rectangle.ByWidthLength:** Use a **Code Block** with a value of _100_ to specify the width and length of a rectangle. This will be the boundary of our base surface.
> 3. **Surface.ByPatch:** Connect the **Rectangle.ByWidthLength** from the previous step to the _‘closedCurve’_ input to create a base surface.
> 4. **Surface.UVParameterAtPoint:** Connect the _‘Point’_ output of the **Polygon.Points** node and the _‘Surface’_ output of the **Surface.ByPatch** node to return the UV parameter at each point.

Now that we have a base surface and a set of UV coordinates, we can import a target surface and map the points between surfaces.

![](<../../.gitbook/assets/custom node for uv mapping pt I - 04.jpg>)

> 1. **File Path:** Select the file path of the surface you want to import. The file type should be .SAT. Click the _"Browse..."_ button and navigate to the _UVmapping\_srf.sat_ file from the .zip file downloaded above.
> 2. **Geometry.ImportFromSAT:** Connect the file path to import the surface. You should see the imported surface in the geometry preview.
> 3. **UV:** Connect the UV parameter output to a _UV.U_ and a _UV.V_ node.
> 4. **Surface.PointAtParameter:** Connect the imported surface as well as the u and v coordinates. You should now see a grid of 3D points on the target surface.

The final step is to use the 3D points to construct rectangular surface patches.

![](<../../.gitbook/assets/custom node for uv mapping pt I - 05.jpg>)

> 1. **PolyCurve.ByPoints:** Connect the points on the surface to construct a polycurve through the points.
> 2. **Boolean:** Add a **Boolean** to the workspace and connect it to the _‘connectLastToFirst’_ input and toggle to True to close the polycurves. You should now see rectangles mapped to the surface.
> 3. **Surface.ByPatch:** Connect the polycurves to the _‘closedCurve’_ input to construct surface patches.

### Part II: From Graph to Custom Node

Now let’s select the nodes that we want to nest into a Custom Node, thinking about what we want to be the inputs and outputs of our node. We want our Custom Node to be as flexible as possible, so it should be able to map any polygons, not just rectangles.

Select the following Nodes (beginning with Polygon.Points), right click on the workspace and select ‘Create Custom Node’.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 01.jpg>)

In the Custom Node Properties dialog, assign a name, description, and category to the Custom Node.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 02.jpg>)

> 1. Name: MapPolygonsToSurface
> 2. Description: Map polygon(s) from a base to target surface
> 3. Add-ons Category: Geometry.Curve

The Custom Node has considerably cleaned up the workspace. Notice that the inputs and outputs have been named based on the original nodes. Let’s edit the Custom Node to make the names more descriptive.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 03.jpg>)

Double click the Custom Node to edit it. This will open a workspace with a yellow background representing the inside of the node.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 04.jpg>)

> 1. **Inputs:** Change the input names to _baseSurface_ and _targetSurface_.
> 2. **Outputs:** Add an additional output for the mapped polygons.

Save the custom node and return to the home workspace. Notice the **MapPolygonsToSurface** node reflects the changes we just made.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 05.jpg>)

We can also add to the robustness of the Custom Node by adding in **Custom Comments**. Comments can help to hint at the input and output types or explain the functionality of the node. Comments will appear when the user hovers over an input or output of a Custom Node.

Double click the Custom Node to edit it. This will re-open the yellow background workspace.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 06.jpg>)

> 1. Begin editing the Input **Code Block**. To start a Comment, type "//" followed by the comment text. Type anything that may help to clarify the Node - Here we will describe the _targetSurface_.
> 2. Let's also set the default value for the _inputSurface_ by setting the input type equal to a value. Here, we will set the default value to the original **Surface.ByPatch** set.

Comments can also be applied to the Outputs.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 07.jpg>)

> Edit the text in the Output Code Block. Type "//" followed by the comment text. Here we will clarify the _Polygons_ and the _surfacePatches_ Outputs by adding a more in-depth description.

![](<../../.gitbook/assets/custom node for uv mapping pt II - 08.jpg>)

> 1. Hover over the Custom Node Inputs to see the Comments.
> 2. With the default value set on our _inputSurface_, we can also run the definition without a surface input.
