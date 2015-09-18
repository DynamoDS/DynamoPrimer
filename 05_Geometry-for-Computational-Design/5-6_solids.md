## Solids
Lorem

### What's a Solid?
Solids consist of one or more Surfaces that contain volume by way of a closed boundary that defines "in" or "out."

![Solids](images/5-6/Solids.png)

### Topology

### Operations


### Boolean Operations
Solid boolean operations are efficient and time-saving procedures for constructing geometry. A single boolean is actually performing four operations: intersect two or more objects, split them at the intersections, delete unwanted portions of the geometry, and join everything back together. There are three solid boolean operations defining which parts of the geometry are kept.
![Solid Boolean](images/5-6/SolidBooleans.png)
> 1. **Union:** Remove the overlapping portions of the solids and join them into a single solid
2. **Difference:** Subtract one solid from another. The solid to be subtracted is referred to as a tool
3. **Intersection:** Keep only the intersecting volume of the two solids

In addition to these three operations, Dynamo has Solid.DifferenceAll and Solid.UnionAll nodes for performing difference and union operations with multiple solids. 

[image]
