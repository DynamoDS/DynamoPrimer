

# Schnittpunkt und Stutzen

Viele der bisherigen Beispiele bezogen sich auf die Konstruktion einer höherdimensionalen Geometrie aus niedrigerdimensionalen Objekten. Mit Intersection-Methoden können diese höherdimensionalen Geometrien Objekte mit niedrigerer Dimension generieren, während die Befehle Trim und SelectTrim es ermöglichen, geometrische Formen mit Skripts stark zu ändern, nachdem sie erstellt wurden.

Die Methode *Intersect* ist für alle Geometrieobjekte in Dynamo definiert. Das bedeutet, dass theoretisch jedes Geometrieobjekt mit einem beliebigen anderen geschnitten werden kann. Natürlich sind einige Überschneidungen nicht von Bedeutung, wie z. B. Schnittpunkte von Punkten, da das resultierende Objekt immer der Eingabepunkt selbst sein wird. Andere mögliche Kombinationen von Überschneidungen zwischen Objekten sind in der folgenden Tabelle beschrieben. Die folgende Tabelle zeigt die Ergebnisse verschiedener Überschneidungsoperationen:

**Intersect**

|*Mit:*|Oberfläche|Kurve|Ebene|Volumenkörper|
| -- | -- | -- | -- | -- |
|**Oberfläche**|Kurve|Punkt|Punkt, Kurve|Oberfläche|
|**Kurve**|Punkt|Punkt|Punkt|Kurve|
|**Ebene**|Kurve|Punkt|Kurve|Kurve|
|**Volumenkörper**|Oberfläche|Kurve|Kurve|Volumenkörper|

Das folgende sehr einfache Beispiel zeigt die Überschneidung einer Ebene mit einer NurbsSurface. Die Überschneidung erzeugt ein NurbsCurve-Array, das wie jede andere NurbsCurve verwendet werden kann.

![](images/12-8/IntersectionAndTrim_01.png)

```
// python_points_5 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_5, 3, 3);

WCS = CoordinateSystem.Identity();

pl = Plane.ByOriginNormal(WCS.Origin.Translate(0, 0,
0.5), WCS.ZAxis);

// intersect surface, generating three closed curves
crvs = surf.Intersect(pl);

crvs_moved = crvs.Translate(0, 0, 10);
```

Die Methode *Trim* ähnelt der Methode Intersect insofern, dass sie ebenfalls für nahezu jedes Geometrieobjekt definiert ist. Es bestehen jedoch für *Trim* weitaus mehr Einschränkungen als für *Intersect*.

**Trim**

|    |*Verwendet:* Punkt|Kurve|Ebene|Oberfläche|Volumenkörper|
| -- | -- | -- | -- | -- | -- |
|*Auf:* Kurve|Ja|Nein|Nein|Nein|Nein|
|Polygon|-|Nein|Ja|Nein|Nein|
|Oberfläche|-|Ja|Ja|Ja|Ja|
|Volumenkörper|-|-|Ja|Ja|Ja|

Erwähnenswert bei den *Trim*-Methoden ist die Anforderung eines Select-Punkts, der bestimmt, welche Geometrie verworfen und welche Teile beibehalten werden sollen. Dynamo sucht und verwirft die gestutzte Geometrie, die dem ausgewählten Punkt am nächsten liegt.

![](images/12-8/IntersectionAndTrim_02.png)

```
// python_points_5 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_5, 3, 3);

tool_pts = Point.ByCoordinates((-10..20..10)<1>,
(-10..20..10)<2>, 1);

tool = NurbsSurface.ByPoints(tool_pts);

pick_point = Point.ByCoordinates(8, 1, 3);

result = surf.Trim(tool, pick_point);
```

