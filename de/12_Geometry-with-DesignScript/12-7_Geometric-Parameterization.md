# Geometrische Parametrisierung

Bei computergestützten Entwürfen werden Kurven und Oberflächen häufig als zugrunde liegendes Gerüst verwendet, auf dem die spätere Geometrie konstruiert wird. Damit diese erste Geometrie als Grundlage für spätere Geometrien genutzt werden kann, muss das Skript fähig sein, Merkmale wie Position und Ausrichtung über das gesamte Objekt hinweg extrahieren zu können. Sowohl Kurven als auch Oberflächen unterstützen diese Extraktion, die als Parametrisierung bezeichnet wird.

Alle Punkte auf einer Kurve kann man sich so vorstellen, dass sie einen eindeutigen Parameter zwischen 0 und 1 aufweisen. Wenn wir eine NurbsCurve basierend auf mehreren Steuerpunkten oder interpolierten Punkten erstellen möchten, hat der erste Punkt den Parameter 0 und der letzte Punkt den Parameter 1. Es ist nicht möglich, im Voraus wissen, welchen genauen Parameter ein Zwischenpunkt aufweist. Dies kann wie eine schwerwiegende Einschränkung klingen, wird jedoch durch eine Reihe von nützlichen Funktionen aufgewogen. Oberflächen weisen eine ähnliche Parametrisierung wie Kurven auf, allerdings mit zwei Parametern statt nur einem, die als u und v bezeichnet werden. Wenn wir eine Oberfläche aus den folgenden Punkten erstellen möchten, gilt:

```js
pts = [ [p1, p2, p3],
        [p4, p5, p6],
        [p7, p8, p9] ];
```

p1 hat die Parameter u = 0 v = 0, während p9 die Parameter u = 1 v = 1 aufweist.

Parametrisierung ist nicht sehr hilfreich, wenn Sie Punkte zum Erstellen von Kurven ermitteln möchten. Der Hauptzweck liegt darin, die Positionen der Zwischenpunkte zu bestimmen, die von den Konstruktoren NurbsCurve und NurbsSurface generiert werden.

Kurven haben die Methode *PointAtParameter*, die ein einzelnes double-Argument zwischen 0 und 1 annimmt und das Punktobjekt an diesem Parameter zurückgibt. Dieses Skript ermittelt beispielsweise die Punkte an den Parametern 0, .1, .2, .3, .4, .5, .6, .7, .8, .9 und 1:

![](images/12-7/GeometricParameterization_01.png)

```js
pts = {};
pts[0] = Point.ByCoordinates(4, 0, 0);
pts[1] = Point.ByCoordinates(6, 0, 1);
pts[2] = Point.ByCoordinates(4, 0, 2);
pts[3] = Point.ByCoordinates(4, 0, 3);
pts[4] = Point.ByCoordinates(4, 0, 4);
pts[5] = Point.ByCoordinates(3, 0, 5);
pts[6] = Point.ByCoordinates(4, 0, 6);

crv = NurbsCurve.ByPoints(pts);

pts_at_param = crv.PointAtParameter(0..1..#11);

// draw Lines to help visualize the points
lines = Line.ByStartPointEndPoint(pts_at_param, 
    Point.ByCoordinates(4, 6, 0));
```

Analog dazu haben Oberflächen eine Methode *PointAtParameter*, die zwei Argumente annimmt, nämlich die u- und v-Parameter des generierten Punkts.

Das Extrahieren einzelner Punkte auf einer Kurve und Oberfläche kann nützlich sein, Skripte erfordern jedoch häufig die genauen geometrischen Merkmale an einem Parameter, z. B. in welche Richtung die Kurve bzw. Oberfläche gewandt ist. Die Methode *CoordinateSystemAtParameter* findet nicht nur die Position, sondern ein ausgerichtetes Koordinatensystem am Parameter einer Kurve oder Oberfläche. Beispielsweise extrahiert das folgende Skript ausgerichtete Koordinatensysteme entlang einer Rotationsfläche und verwendet die Ausrichtung der Koordinatensysteme, um Linien zu generieren, die senkrecht zur Oberfläche stehen:

![](images/12-7/GeometricParameterization_02.png)

```js
pts = {};
pts[0] = Point.ByCoordinates(4, 0, 0);
pts[1] = Point.ByCoordinates(3, 0, 1);
pts[2] = Point.ByCoordinates(4, 0, 2);
pts[3] = Point.ByCoordinates(4, 0, 3);
pts[4] = Point.ByCoordinates(4, 0, 4);
pts[5] = Point.ByCoordinates(5, 0, 5);
pts[6] = Point.ByCoordinates(4, 0, 6);
pts[7] = Point.ByCoordinates(4, 0, 7);

crv = NurbsCurve.ByPoints(pts);

axis_origin = Point.ByCoordinates(0, 0, 0);
axis = Vector.ByCoordinates(0, 0, 1);

surf = Surface.ByRevolve(crv, axis_origin, axis, 90,
    140);

cs_array = surf.CoordinateSystemAtParameter(
    (0..1..#7)<1>, (0..1..#7)<2>);

def make_line(cs : CoordinateSystem) { 
	lines_start = cs.Origin;
    lines_end = cs.Origin.Translate(cs.ZAxis, -0.75);
    
    return = Line.ByStartPointEndPoint(lines_start, 
        lines_end);
}

lines = make_line(Flatten(cs_array));
```

Wie bereits erwähnt, ist die Parametrisierung nicht immer gleichmäßig über die Länge einer Kurve oder Oberfläche hinweg, was bedeutet, dass der Parameter 0.5 nicht immer dem Mittelpunkt und 0.25 nicht immer einem Viertel der Länge entlang einer Kurve oder Oberfläche entspricht. Um diese Einschränkung zu umgehen, verfügen Kurven über einen zusätzlichen Satz von Parametrisierungsbefehlen, mit denen Sie einen Punkt mit einer bestimmten Länge entlang einer Kurve finden können.

