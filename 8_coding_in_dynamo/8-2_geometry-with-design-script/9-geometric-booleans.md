# Geometric Booleans

_Intersect_, _Trim_, and _SelectTrim_ are primarily used on lower-dimensional geometry such as Points, Curves, and Surfaces. Solid geometry on the other hand, has an additional set of methods for modifying form after their construction, both by subtracting material in a manner similar to _Trim_ and combining elements together to form a larger whole.

### Union

The _Union_ method takes two solid objects and creates a single solid object out of the space covered by both objects. The overlapping space between objects is combined into the final form. This example combines a Sphere and a Cuboid into a single solid Sphere-Cube shape:

![](../../.gitbook/assets/GeometricBooleans\_01.png)

```js
s1 = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(4, 0,
    0), 6);

combined = s1.Union(s2);
```

### Difference

The _Difference_ method, like _Trim_, subtracts away the contents of the input tool solid from the base solid. In this example we carve out a small indentation out of a sphere:

![](../../.gitbook/assets/GeometricBooleans\_02.png)

```js
s = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(10, 0,
    0), 6);

result = s.Difference(tool);
```

### Intersect

The _Intersect_ method returns the overlapping Solid between two solid Inputs. In the following example, _Difference_ has been changed to _Intersect_, and the resulting Solid is the missing void initially carved out:

![](../../.gitbook/assets/GeometricBooleans\_03.png)

```js
s = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(10, 0,
    0), 6);

result = s.Intersect(tool);
```
