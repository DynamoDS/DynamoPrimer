# Package Case Study - Mesh Toolkit

The Dynamo Mesh Toolkit provides tools to import meshes from external file formats, create a mesh from Dynamo geometry objects, and manually build meshes by their vertices and indices. The library also provides tools to modify meshes, repair meshes, or extract horizontal slices for use in fabrication.

![](<../../.gitbook/assets/meshToolkit case study 01.jpg>)

The Dynamo Mesh Toolkit is part of Autodesk's ongoing mesh research, and as such will continue to grow over the coming years. Expect new methods to appear on the toolkit frequently, and feel free to reach out to the Dynamo team with comments, bugs, and suggestions for new features.

### Meshes vs. Solids

The exercise below demonstrates some basic mesh operations using the Mesh Toolkit. In the exercise, we intersect a mesh with a series of planes, which can be computationally expensive using solids. Unlike a solid, a mesh has a set "resolution" and is not defined mathematically, but topologically, and we can define this resolution based on the task at hand. For more details on mesh to solid relationships, you can reference the[ Geometry For Computation Design](../../a-closer-look-at-dynamo-essential-nodes-and-concepts/5\_geometry-for-computational-design/) chapter in this primer. For a more thorough examination of Mesh Toolkit, you can reference the [Dynamo Wiki page.](https://github.com/DynamoDS/Dynamo/wiki/Dynamo-Mesh-Toolkit) Let's jump into the package in the exercise below.

### Install Mesh Toolkit

In Dynamo, go to _Packages > Search for Packages..._ in the top menu bar. In the search field, type _"MeshToolkit"_, all one word, minding the caps. Click Install to start the download. Simple as that!

![](<../../.gitbook/assets/meshToolkit case study - install package.jpg>)

## Exercise: Intersect Mesh

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/MeshToolkit.zip" %}

In this example, we will look at the Intersect node in the mesh toolkit. We will import a mesh and intersect it with a series of input planes to create slices. This is the starting point for preparing the model for fabrication on a laser cutter, waterjet cutter, or CNC mill.

Begin by opening _Mesh-Toolkit\_Intersect-Mesh.dyn in Dynamo._

![](<../../.gitbook/assets/meshToolkit case study - exercise 01.jpg>)

> 1. **File Path:** Locate the mesh file to import (_stanford\_bunny\_tri.obj_). Supported file types are .mix and .obj
> 2. **Mesh.ImportFile:** Connect the file path to import the mesh

![](<../../.gitbook/assets/meshToolkit case study - exercise 02.jpg>)

> 1. **Point.ByCoordinates:** Construct a point – this will be the center of an arc.
> 2. **Arc.ByCenterPointRadiusAngle:** Construct an arc around the point. This curve will be used to position a series of planes. \_\_ The settings are as follow: \_\_ `radius: 40, startAngle: -90, endAngle:0`

Create a series of planes oriented along the arc.

![](<../../.gitbook/assets/meshToolkit case study - exercise 03.jpg>)

> 1. **Code Block**: Create 25 numbers between 0 and 1.
> 2. **Curve.PointAtParameter:** Connect the arc to the _‘curve’_ input and the code block output to the _‘param’_ input to extract a series of points along the curve.
> 3. **Curve.TangentAtParameter:** Connect the same inputs as the previous node.
> 4. **Plane.ByOriginNormal:** Connect the points to the _‘origin’_ input and the vectors to the _‘normal’_ input to create a series of planes at each point.

Next, we will use these planes to intersect the mesh.

![](<../../.gitbook/assets/meshToolkit case study - exercise 04.jpg>)

> 1. **Mesh.Intersect:** Intersect the planes with the imported mesh, creating a series of polycurve contours. Right click on Node and set the lacing to longest
> 2. **PolyCurve.Curves:** Break the polycurves into their curve fragments.
> 3. **Curve.EndPoint:** Extract the end points of each curve.
> 4. **NurbsCurve.ByPoints:** Use the points to construct a nurbs curve. Use a Boolean node set to _True_ to close the curves.

Before we continue, switch off the preview for some of the Nodes such as: Mesh.ImportFile, Curve.EndPoint, Plane.ByOriginNormal & Arc.ByCenterPointRadiusAngle to see the result better.

![](<../../.gitbook/assets/meshToolkit case study - exercise 05.jpg>)

> 1. **Surface.ByPatch:** Construct surface patches for each contour to create “slices” of the mesh.

Add a second set of slices for a waffle/egg-crate effect.

![](<../../.gitbook/assets/meshToolkit case study - exercise 06.jpg>)

You may have noticed that the intersection operations calculate faster with a mesh vs. a comparable solid. Workflows such as the one demonstrated in this exercise lend themselves well to working with meshes.
