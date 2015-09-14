<style>
img{width:100%}
</style>

##Package Case Study – Mesh Toolkit

https://github.com/DynamoDS/Dynamo/wiki/Dynamo-Mesh-Toolkit

The Dynamo Mesh Toolkit provides tools to import meshes from external file formats, create a mesh from Dynamo geometry objects, and manually build meshes by their vertices and indices. The library also provides tools to modify meshes, repair meshes, or extract horizontal slices for use in fabrication.

The Dynamo Mesh Toolkit is part of Autodesk's ongoing mesh research, and as such will continue to grow over the coming years. Expect new methods to appear on the toolkit frequently, and feel free to reach out to the Dynamo team with comments, bugs, and suggestions for new features.


### Exercise
>Download the example file that accompanies this exercise (Right click and "Save Link As..."). A full list of example files can be found in the Appendix. [Mesh-Toolkit_Intersect-Mesh.dyn](datasets/10-3/Mesh-Toolkit_Intersect-Mesh.dyn)

In this example, we will look at the Intersect node in the mesh toolkit. We will import a mesh and intersect it with a series of input planes to create slices. This is the starting point for preparing the model for fabrication on a laser cutter, waterjet cutter, or CNC mill.

![Import Mesh](images/10-3/contour01.png)
>1.	**File Path:** Locate the mesh file to import. Supported file types are .mix and .obj
2. **Mesh.ImportFile:** Connect the file path to import the mesh

![Intersect](images/10-3/contour02.png)
> 1. **Point.ByCoordinates:** Construct a point – this will be the center of an arc
2. **Arc.ByCenterPointRadiusAngle:** Construct an arc around the point. This curve will be used to position a series of planes.

![Intersect](images/10-3/contour03.png)
> 1. Code Block: Create a range of numbers between zero and one
2. **Curve.PointAtParameter:** Connect the arc to the *‘curve’* input and the code block output to the *‘param’* input to extract a series of points along the curve
3. **Curve.TangentAtParameter:** Connect the same inputs as the previous node
4. **Plane.ByOriginNormal:** Connect the points to the *‘origin’* input and the vectors to the *‘normal’* input to create a series of planes at each point

You should now see a series of planes oriented along the arc. Next, we will use these planes to intersect the mesh.

![Intersect](images/10-3/contour04.png)
> 1. **Mesh.Intersect:** Intersect the planes with the imported mesh, creating a series of polycurve contours
2. **PolyCurve.Curves:** Break the polycurves into their curve fragments
3. **Curve.EndPoint:** Extract the end points of each curve
4. **NurbsCurve.ByPoints:** Use the points to construct a nurbs curve. Use a Boolean node set to *True* to close the curves

![Intersect](images/10-3/contour05.png)
> 1. **Surface.ByPatch:** Construct surface patches for each contour to create “slices” of the mesh

![Intersect](images/10-3/contour06.png)
> Add a second set of slices for a waffle/egg-crate effect.
