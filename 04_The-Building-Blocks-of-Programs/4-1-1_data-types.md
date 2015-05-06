### 4.1.1 Types
#### Numbers
![](../images/icons/Dynamo-Nodes-DoubleInput-Large.png)
#### Booleans
![](../images/icons/DSCoreNodesUI-BoolSelector-Large.png)
#### Strings
![](../images/icons/Dynamo-Nodes-StringInput-Large.png)
#### Geometry
#####Points
![](../images/icons/Autodesk-DesignScript-Geometry-Point-ByCoordinates-double-double-double-Large.png)

A point is a location in space. For this primer, our coordinate system is X,Y, and Z. A point has a value for X, a value for Y, and a value for Z.
![Diagram of Point](images/Placeholder.png)
#####Vectors
![](../images/icons/Autodesk-DesignScript-Geometry-Vector-ByCoordinates-double-double-double-Large.png)

A vector is a geometric quantity describing Direction and Magnitude. Vectors are abstract; ie. they represent a quantity, not a geometrical element.
![Diagram of Vector](images/Placeholder.png)
#####Planes
![](../images/icons/Autodesk-DesignScript-Geometry-Plane-XY-Large.png)

Planes are “Flat” and extend infinitely in two directions, defining a local coordinate system.
![Diagram of Plane](images/Placeholder.png)
#####Nurbs
![](../images/icons/Autodesk-DesignScript-Geometry-NurbsCurve-ControlPoints-Large.png) ![](../images/icons/Autodesk-DesignScript-Geometry-NurbsSurface-ControlPoints-Large.png)

NURBS (non-uniform rational B-splines) are mathematical representations that can accurately model any shape from a simple 2D line, circle, arc, or box to the most complex 3D free-form organic surface or solid.  They are created with rational algorithms and are infinitely differentiable.
![Diagram of Nurbs Curve + Surface](images/Placeholder.png)
#####Meshes
![](../images/icons/Autodesk-DesignScript-Geometry-Mesh-ByPointsFaceIndices-Large.png)

A mesh is a collection of vertices, edges and faces which define a polyhedral object.  Meshes are often used for rendering and animation, and are generally 'lighter weight' than nurbs (meaning, they have smaller file sizes and render more quickly).  The tradeoff is that meshes are limited in their resolution.
![Diagram of Nurbs Curve + Surface](images/Placeholder.png)
#####Meshes vs. Nurbs
Generally, we can say that Nurbs are to Meshes as Vectors are to Pixels.  They are significantly different geometry types, and using the propery geometry type for surfaces is critical for parametric modeling and file management.
![nurbs and meshes](images/4-1/4-1-1/4-1-1-Mesh-Nurb.png)
#####Solids
![](../images/icons/Autodesk-DesignScript-Geometry-Solid-ThinShell-Large.png)


##### "Null"
