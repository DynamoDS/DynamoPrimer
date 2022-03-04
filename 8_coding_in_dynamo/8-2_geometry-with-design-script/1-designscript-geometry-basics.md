# DesignScript Geometry Basics

### Point

The simplest geometrical object in the Dynamo standard geometry library is a point. All geometry is created using special functions called constructors, which each return a new instance of that particular geometry type. In Dynamo, constructors begin with the name of the object’s type, in this case Point, followed by the method of construction. To create a three dimensional point specified by x, y, and z Cartesian coordinates, use the _ByCoordinates_ constructor:

![](../../.gitbook/assets/GeometryBasics\_01.png)

```js
// create a point with the following x, y, and z
// coordinates:
x = 10;
y = 2.5;
z = -6;

p = Point.ByCoordinates(x, y, z);
```

Constructors in Dynamo are typically designated with the “_By_” prefix, and invoking these functions returns a newly created object of that type. This newly created object is stored in the variable named on the left side of the equal sign.

Most objects have many different constructors, and we can use the _BySphericalCoordinates_ constructor to create a point lying on a sphere, specified by the sphere’s radius, a first rotation angle, and a second rotation angle (specified in degrees):

![](../../.gitbook/assets/GeometryBasics\_02.png)

```js
// create a point on a sphere with the following radius,
// theta, and phi rotation angles (specified in degrees)
radius = 5;
theta = 75.5;
phi = 120.3;
cs = CoordinateSystem.Identity();

p = Point.BySphericalCoordinates(cs, radius, theta,
    phi);
```

### From Point to Line

Points can be used to construct higher dimensional geometry such as lines. We can use the _ByStartPointEndPoint_ constructor to create a Line object between two points:

![](../../.gitbook/assets/GeometryBasics\_03.png)

```js
// create two points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

// construct a line between p1 and p2
l = Line.ByStartPointEndPoint(p1, p2);
```

### From Line to Surface

Similarly, lines can be used to create higher dimensional surface geometry, for instance using the _Loft_ constructor, which takes a series of lines or curves and interpolates a surface between them.

![](../../.gitbook/assets/GeometryBasics\_04.png)

```js
// create points:
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

p5 = Point.ByCoordinates(9, -10, -2);
p6 = Point.ByCoordinates(-11, -12, -4);

// create lines:
l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);
l3 = Line.ByStartPointEndPoint(p5, p6);

// loft between cross section lines:
surf = Surface.ByLoft([l1, l2, l3]);
```

### From Surface to Solid

Surfaces too can be used to create higher dimensional solid geometry, for instance by thickening the surface by a specified distance. Many objects have functions attached to them, called methods, allowing the programmer to perform commands on that particular object. Methods common to all pieces of geometry include _Translate_ and _Rotate_, which respectively translate (move) and rotate the geometry by a specified amount. Surfaces have a _Thicken_ method, which take a single input, a number specifying the new thickness of the surface.

![](../../.gitbook/assets/GeometryBasics\_05.png)

```js
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);

surf = Surface.ByLoft([l1, l2]);

// true indicates to thicken both sides of the Surface:
solid = surf.Thicken(4.75, true);
```

### Intersect

_Intersection_ commands can extract lower dimensional geometry from higher dimensional objects. This extracted lower dimensional geometry can form the basis for higher dimensional geometry, in a cyclic process of geometrical creation, extraction, and recreation. In this example, we use the generated Solid to create a Surface, and use the Surface to create a Curve.

![](../../.gitbook/assets/GeometryBasics\_06.png)

```js
p1 = Point.ByCoordinates(3, 10, 2);
p2 = Point.ByCoordinates(-15, 7, 0.5);

p3 = Point.ByCoordinates(5, -3, 5);
p4 = Point.ByCoordinates(-5, -6, 2);

l1 = Line.ByStartPointEndPoint(p1, p2);
l2 = Line.ByStartPointEndPoint(p3, p4);

surf = Surface.ByLoft([l1, l2]);

solid = surf.Thicken(4.75, true);

p = Plane.ByOriginNormal(Point.ByCoordinates(2, 0, 0),
    Vector.ByCoordinates(1, 1, 1));

int_surf = solid.Intersect(p);

int_line = int_surf.Intersect(Plane.ByOriginNormal(
    Point.ByCoordinates(0, 0, 0),
    Vector.ByCoordinates(1, 0, 0)));
```
