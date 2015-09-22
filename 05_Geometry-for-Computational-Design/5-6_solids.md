
<style>
img{width:100%}
</style>

## Solids
If we want to construct more complex models that cannot be created from a single surface or define an explicit volume, we must now venture into the realm of Solids (and Polysurfaces). Even a simple cube is complex enough to need six surfaces, one per face. Solids give access to two key concepts that Surfaces do not - a more refined topological description (faces, edges, vertices) and boolean operations.

### What's a Solid?
Solids consist of one or more Surfaces that contain volume by way of a closed boundary that defines "in" or "out." Regardless of how many of these Surfaces there are, they must form a "watertight" volume to be considered a Solid. Solids can be created by joining Surfaces or Polysurfaces together, or using operations such as loft, sweep, and revolve. Sphere, cube, cone and cylinder primitives are also Solids. A cube with at least one face removed counts as a Polysurface which has a some similar properties, but it is not a Solid.

![Solids](images/5-6/Primitives.png)
> 1. A Plane is made of a single Surface and is not a Solid.
2. A Sphere is made of one Surface but *is* a Solid.
3. A Cone is made of two surfaces joined together to make a Solid.
4. A Cylinder is made of three surfaces joined together to make a Solid.
5. A Cube is made of six surfaces joined together to make a Solid.

### Topology
Solids are made up of three types of elements: vertices, edges, and faces. Faces are the surfaces that make up the Solid. Edges are the Curves that define the connection between adjacent faces, and vertices are the start and end points of those Curves. These elements can be queried using the Topology nodes.

![Topology](images/5-6/topology.png)

>1. Faces
2. Edges
3. Vertices

### Operations
Solids can be modified by filleting or chamfering their edges to eliminate sharp corners and angles. The chamfer operation creates a ruled surface between two faces, while a fillet blends between faces to maintain tangency. 
![](images/5-6/SolidOperations.png)
>1. Solid Cube
2. Chamfered Cube
3. Filleted Cube

### Boolean Operations
Solid boolean operations are methods for combining two or more Solids. A single boolean is actually performing four operations: 
1. **Intersect** two or more objects
2. **Split** them at the intersections
3. **Delete** unwanted portions of the geometry
4. **Join** everything back together 

This makes Solid booleans a powerful time-saving process. There are three Solid boolean operations defining which parts of the geometry are kept.
![Solid Boolean](images/5-6/SolidBooleans.png)
> 1. **Union:** Remove the overlapping portions of the Solids and join them into a single Solid
2. **Difference:** Subtract one Solid from another. The Solid to be subtracted is referred to as a tool. Note that you could invert which Solid is the tool to keep the inverse volume.
3. **Intersection:** Keep only the intersecting volume of the two Solids

In addition to these three operations, Dynamo has **Solid.DifferenceAll** and **Solid.UnionAll** nodes for performing difference and union operations with multiple Solids. 
![](images/5-6/BooleanAll.png)
> 1. **UnionAll:** Union operation with sphere and outward-facing cones
2. **DifferenceAll:** Difference operation with sphere and inward-facing cones

Let's use a few boolean operations to create a spiky ball.

![](images/5-6/spikyBallExample.png)
> 1. **Sphere.ByCenterPointRadius**: Create base Solid
2. **Topology.Faces**, **Face.SurfaceGeometry**: Query the faces of the Solid and convert to surface geometry- in this case, the sphere has only one face
3. **Cone.ByPointsRadii**: Construct cones using points on the surface
4. **Solid.UnionAll**: Union the cones and the sphere
5. **Topology.Edges**: Query the edges of the new Solid
6. **Solid.Fillet**: Fillet the edges of the spiky ball

> Download the example files that accompanies this image (Right click and "Save Link As..."). A full list of example files can be found in the Appendix. [Geometry for Computational Design - Solids.dyn](datasets/5-6/Geometry for Computational Design - Solids.dyn)