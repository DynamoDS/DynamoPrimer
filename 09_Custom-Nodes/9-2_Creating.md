## Creating a Custom Node
Dynamo offers several different methods for creating custom nodes. You can build custom nodes from scratch, from an existing graph, or explicitly in C#. In this section we will cover building a custom node in the Dynamo UI from an existing graph. This method is ideal for cleaning up the workspace, as well as packaging a sequence of nodes to reuse elsewhere.

###Custom Nodes for UV Mapping
In the image below, we map a point from one surface to another using UV coordinates. We'll use this concept to create a panelized surface which references curves in the XY plane. We'll create quad panels for our panelization here, but using the same logic, we can create a wide variety of panels with UV mapping. This is a great opportunity for custom node development because we will be able to repeat a similar process more easily in this graph or in other Dynamo workflows.

![](images/9-2/uvMap2-01-01.jpg)

### Creating a Custom Node from an Existing Graph

> Download and unzip the example files for this exercise (Right click and choose "Save Link As..."). A full list of example files can be found in the Appendix. [UV-CustomNode.zip](datasets/9-2/UV-CustomNode.zip)

Let’s start by creating a graph that we want to nest into a custom node. In this example, we will create a graph that maps polygons from a base surface to a target surface, using UV coordinates. This UV mapping process is something we use frequently, making it a good candidate for a custom node. For more information on surfaces and UV space, see section 5.5. The complete graph is *UVmapping_Custom-Node.dyn* from the .zip file downloaded above.

![Exercise](images/9-2/UVmapping01.png)
> 1. **Code Block:** Create a range of 10 numbers between 45 and negative 45 using a code block.
2. **Point.ByCoordinates:** Connect the output of the Code Block to the ‘x’ and ‘y’ inputs and set the lacing to cross-reference. You should now have a grid of points.
3. **Plane.ByOriginNormal:** Connect the *‘Point’* output to the *‘origin’* input to create a plane at each of the points. The default normal vector of (0,0,1) will be used.
4.  **Rectangle.ByWidthLength:** Connect the planes from the previous step into the *‘plane’* input, and use a Code Block with a value of *10* to specify the width and length.

You should now see a grid of rectangles. Let’s map these rectangles to a target surface using UV coordinates.

![Exercise](images/9-2/UVmapping02.png)
>1. **Polygon.Points:** Connect the Rectangle output from the previous step to the *‘polygon’* input to extract the corner points of each rectangle. These are the points that we will map to the target surface.
2. **Rectangle.ByWidthLength:** Use a Code Block with a value of *100* to specify the width and length of a rectangle. This will be the boundary of our base surface.
3. **Surface.ByPatch:** Connect the Rectangle from the previous step to the *‘closedCurve’* input to create a base surface.
4. **Surface.UVParameterAtPoint:** Connect the *‘Point’* output of the *Polygon.Points* node and the *‘Surface’* output of the *Surface.ByPatch* node to return the UV parameter at each point.

Now that we have a base surface and a set of UV coordinates, we can import a target surface and map the points between surfaces.

![Exercise](images/9-2/UVmapping03.png)
>1. **File Path:** Select the file path of the surface you want to import. The file type should be .SAT. Click the *"Browse..."* button and navigate to the *UVmapping_srf.sat* file from the .zip file downloaded above.
2. **Geometry.ImportFromSAT:** Connect the file path to import the surface. You should see the imported surface in the geometry preview.
3. **UV:** Connect the UV parameter output to a *UV.U* and a *UV.V* node.
4. **Surface.PointAtParameter:** Connect the imported surface as well as the u and v coordinates. You should now see a grid of 3D points on the target surface.

The final step is to use the 3D points to construct rectangular surface patches.

![Exercise](images/9-2/UVmapping04.png)
>1.	**PolyCurve.ByPoints:** Connect the points on the surface to construct a polycurve through the points.
2. **Boolean:** Add a Boolean to the workspace and connect it to the *‘connectLastToFirst’* input and toggle to True to close the polycurves. You should now see rectangles mapped to the surface.
3. **Surface.ByPatch:** Connect the polycurves to the *‘closedCurve’* input to construct surface patches.

Now let’s select the nodes that we want to nest into a Custom Node, thinking about what we want to be the inputs and outputs of our node. We want our Custom Node to be as flexible as possible, so it should be able to map any polygons, not just rectangles.

![Exercise](images/9-2/UVmapping05.png)
> Select the above nodes (beginning with *Polygon.Points*), right click on the workspace and select *‘node from selection’*.

![Exercise](images/9-2/UVmapping06.png)
> In the Custom Node Properties dialog, assign a name, description, and category to the Custom Node.

![Exercise](images/9-2/UVmapping07.png)
> The Custom Node has considerably cleaned up the workspace. Notice that the inputs and outputs have been named based on the original nodes. Let’s edit the Custom Node to make the names more descriptive.

![Exercise](images/9-2/UVmapping08.png)
> Double click the Custom Node to edit it. This will open a workspace with a yellow background representing the inside of the node.
1. **Inputs:** Change the input names to *baseSurface* and *targetSurface*.
2. **Outputs:** Add an additional output for the mapped polygons.

>Save the custom node and return to the home workspace.

![Exercise](images/9-2/UVmapping09.png)
> The **MapPolygonsToSurface** node reflects the changes we just made.
