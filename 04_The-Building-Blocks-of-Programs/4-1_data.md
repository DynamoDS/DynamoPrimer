## 4.1 Data

### 4.1.1 Types
#### Numbers
![](../images/icons/Dynamo-Nodes-DoubleInput-Large.png)
#### Booleans
![](../images/icons/DSCoreNodesUI-BoolSelector-Large.png)
#### Strings
![](../images/icons/Dynamo-Nodes-StringInput-Large.png)
## Geometry
![](images/4-1/CompGeom-01-Dimensionality-01.png)
#####Points
![](../images/icons/Autodesk-DesignScript-Geometry-Point-ByCoordinates-double-double-double-Large.png)

A point is a location in space. For this primer, our coordinate system is X,Y, and Z. A point has a value for X, a value for Y, and a value for Z.


#####Vectors
![](../images/icons/Autodesk-DesignScript-Geometry-Vector-ByCoordinates-double-double-double-Large.png)

A vector is a geometric quantity describing Direction and Magnitude. Vectors are abstract; ie. they represent a quantity, not a geometrical element.

#####Planes
![](../images/icons/Autodesk-DesignScript-Geometry-Plane-XY-Large.png)

Planes are “Flat” and extend infinitely in two directions, defining a local coordinate system.

#####Nurbs
![](../images/icons/Autodesk-DesignScript-Geometry-NurbsCurve-ControlPoints-Large.png) ![](../images/icons/Autodesk-DesignScript-Geometry-NurbsSurface-ControlPoints-Large.png)

NURBS (non-uniform rational B-splines) are mathematical representations that can accurately model any shape from a simple 2D line, circle, arc, or box to the most complex 3D free-form organic surface or solid.  They are created with rational algorithms and are infinitely differentiable.

#####Meshes
![](../images/icons/Autodesk-DesignScript-Geometry-Mesh-ByPointsFaceIndices-Large.png)

A mesh is a collection of vertices, edges and faces which define a polyhedral object.  Meshes are often used for rendering and animation, and are generally 'lighter weight' than nurbs (meaning, they have smaller file sizes and render more quickly).  The tradeoff is that meshes are limited in their resolution.

#####Meshes vs. Nurbs
Generally, we can say that Nurbs are to Meshes as Vectors are to Pixels.  They are significantly different geometry types, and using the propery geometry type for surfaces is critical for parametric modeling and file management.

![nurbs and meshes](images/4-1/4-1-1/4-1-1-Mesh-Nurb.png)
#####Solids
![](../images/icons/Autodesk-DesignScript-Geometry-Solid-ThinShell-Large.png)


##### "Null"

### 4.1.2 Hierarchy

#### Item(s)
![](../images/icons/DSCore-List-MaximumItem-Large.png)

An item represents one single value, whether by itself or as part of a list.  This can be any data type.
#### List(s)
![](../images/icons/DSCore-List-Create-Large.png)

A list represents a collection of items.

**With respect to data structure, lists are regarded as items in Dynamo.**  In other words, Dynamo functions with a top-down hierarchy for data structure. What does this mean?  Let's walk-through it with an example:
![Series of Diagrams](images/4-1/4-2-Items-Lists-005.png)

### 4.2.2 Exercise

