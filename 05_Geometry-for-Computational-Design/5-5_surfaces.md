## Surfaces
As we move from using Curves to using Surfaces in a model, we can now begin to represent objects we see in our three dimensional world. While Curves are not always planar ie. they are three dimensional, the space they define is always bound to one dimension. Surfaces give us another dimension and a collection of additional properties we can use within other modeling operations.

### What's a Surface?
A Surface is a mathematical shape defined by a function and two parameters, Instead of ```t``` for Curves, we use ```U``` and ```V``` to describe the corresponding parameter space. This means we have more geometrical data to draw from when working with this type of Geometry. For example, Curves have tangent vectors and normal planes (which can rotate or twist along the curve's length), whereas Surfaces have normal vectors and tangent planes that will be consistent in their orientation.

![Surface](images/5-5/Surface.png)
> 1. Surface
2. U Isocurve
3. V Isocurve
4. UV Coordinate
5. Perpendicular Plane
6. Normal Vector

**Surface Domain**: A surface domain is defined as the range of (U,V) parameters that evaluate into a three dimensional point on that surface. The domain in each dimension (U or V) is usually described as two numbers (U Min to U Max) and (V Min to V Max).

![Surface](images/5-5/SurfaceParameter.png)

Although the shape of the Surface by not look "rectangular" and it locally may have a tighter or looser set of isocurves, the "space" defined by its domain is always two dimensional. In Dynamo, Surfaces are always understood to have a domain defined by a minimum of 0.0 and maximum of 1.0 in both U and V directions. Planar or trimmed Surfaces may have different domains.

**Isocurve** (or Isoparametric Curve): A curve defined by a constant U or V value on the surface and a domain of values for the corresponding other U or V direction.

**UV Coordinate**: The Point in UV Parameter Space defined by U, V, and sometimes W.

![Surface Coordinate](images/5-5/SurfaceCoordinate.png)

**Perpendicular Plane**: A Plane that is perpendicular to both U and V Isocurves at a given UV Coordinate.

**Normal Vector**: A Vector defining the direction of "up" relative to the Perpendicular Plane.


### NURBS Surfaces
**NURBS Surfaces** are very similar to NURBS curves. You can think of NURBS Surfaces as a grid of NURBS Curves that go in two directions. The shape of a NURBS Surface is defined by a number of control points and the degree of that surface in the U and V directions. The same algorithms are used to calculate shape, normals, tangents, curvatures and other properties by way of control points, weights and degree.


![NURBS Surface](images/5-5/NURBSsurface.png)

In the case of NURBS surfaces, there are two directions implied by the geometry, because NURBS surfaces are, regardless of the shape we see, rectangular grids of control points. And even though these directions are often arbitrary relative to the world coordinate system, we will use them frequently to analyze our models or generate other geometry based on the Surface.

![NURBS Surface](images/5-5/NURBSsurface-Degree.jpg)
> 1. Degree (U,V) = (3,3)
2. Degree (U,V) = (3,1)
3. Degree (U,V) = (1,2)
4. Degree (U,V) = (1,1)

### Polysurfaces
**Polysurfaces** are composed of Surfaces that are joined across an edge. Polysurfaces offer more than two dimensional UV definition in that we can now move through the connected shapes by way of their Topology.

>While "Topology" generally describes a concept around how parts are connected and/or related Topology in Dynamo is also a type of Geometry. Specifically it is a parent category for Surfaces, Polysurfaces, and Solids.

![PolySurface](images/5-5/PolySurface.png)

Sometimes called patches, joining Surfaces in this manner allows us to make more complex shapes as well as define detail across the seam. Conveniently we can apply a fillet or chamfer operation to the edges of a Polysurface.

Let's import and evaluate a Surface at a Parameter in Dynamo to see what kind of information we can extract.



![Surfaces in Dynamo](images/5-5/Dynamo_Surfaces.png)
> 1. *Surface.PointAtParameter* returns the Point at a given UV Coordinate
2. *Surface.NormalAtParameter* returns the Normal Vector at a given UV Coordinate
3. *Surface.GetIsoline* returns the Isoparametric Curve at a U or V Coordinate - note the isoDirection input.

>Download the example files that accompanies this image (Right click and "Save Link As..."). A full list of example files can be found in the Appendix.
1. [Geometry for Computational Design - Surfaces.dyn](datasets/5-5/Geometry for Computational Design - Surfaces.dyn)
2. [Surface.sat](datasets/5-5/Surface.sat)




