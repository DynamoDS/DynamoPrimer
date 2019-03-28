

# Kurven: Interpolierte Punkte und Steuerpunkte

Es gibt zwei grundlegende Methoden zum Erstellen von Freiform-Kurven in Dynamo: Die Angabe einer Sammlung von Punkten, zwischen denen Dynamo eine glatte Kurve interpoliert, oder eine einfachere Methode, bei der die zugrunde liegenden Steuerpunkte einer Kurve mit einem bestimmten Grad angegeben werden. Interpolierte Kurven sind nützlich, wenn ein Konstrukteur genau weiß, welche Form eine Linie annehmen soll, oder wenn der Entwurf bestimmte Beschränkungen aufweist, wo die Kurve verlaufen kann und wo nicht. Mit Steuerpunkten angegebene Kurven sind im Wesentlichen eine Reihe gerader Liniensegmente, die über einen Algorithmus in die endgültige Kurvenform geglättet werden. Das Festlegen einer Kurve mit Steuerpunkten eignet sich zum Experimentieren mit unterschiedlichen Kurvenformen mit verschiedenen Glättungsgraden, oder wenn glatte Übergänge zwischen Kurvensegmenten erforderlich sind.

Zum Erstellen einer interpolierten Kurve übergeben Sie einfach eine Sammlung von Punkten an die Methode *NurbsCurve.ByPoints*.

![](images/12-4/Curves_01.png)

```
num_pts = 6;

s = Math.Sin(0..360..#num_pts) * 4;

pts = Point.ByCoordinates(1..30..#num_pts, s, 0);

int_curve = NurbsCurve.ByPoints(pts);
```

Die generierte Kurve schneidet jeden der eingegebenen Punkte und beginnt dabei am ersten und endet am letzten Punkt der Sammlung. Mit einem optionalen periodischen Parameter kann eine periodische Kurve erstellt werden, die geschlossen ist. Dynamo füllt das fehlende Segment automatisch aus, sodass kein duplizierter (mit dem Startpunkt identischer) Endpunkt erforderlich ist.

![](images/12-4/Curves_02.png)

```
pts = Point.ByCoordinates(Math.Cos(0..350..#10),
Math.Sin(0..350..#10), 0);

// create an closed curve
crv = NurbsCurve.ByPoints(pts, true);

// the same curve, if left open:
crv2 = NurbsCurve.ByPoints(pts.Translate(5, 0, 0),
false);
```

NurbsCurves werden in ähnlicher Weise erstellt, wobei die Eingabepunkte die Endpunkte eines geraden Liniensegments darstellen und ein zweiter Parameter den Betrag und die Art der Glättung der Kurve angibt, was als Grad bezeichnet wird.* Eine Kurve mit dem Grad 1 ist nicht geglättet, sondern eine Polylinie.

![](images/12-4/Curves_03.png)

```
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 1 is a polyline
ctrl_curve = NurbsCurve.ByControlPoints(pts, 1);
```

Eine Kurve mit dem Grad 2 wird so geglättet, dass die Kurve den Mittelpunkt der Polyliniensegmente schneidet und tangential zu diesem ist:

![](images/12-4/Curves_04.png)

```
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 2 is smooth
ctrl_curve = NurbsCurve.ByControlPoints(pts, 2);
```

Dynamo unterstützt NURBS-Kurven (Non-Uniform Rational B-Spline) bis zu 20 Grad. Das folgende Skript veranschaulicht die Auswirkungen steigender Glättungsstufen auf die Form einer Kurve:

![](images/12-4/Curves_05.png)

```
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
Math.Sin(0..360..#num_pts) * 4, 0);

def create_curve(pts : Point[], degree : int) 
{
return = NurbsCurve.ByControlPoints(pts,
degree);
}

ctrl_crvs = create_curve(pts, 1..11);
```

Beachten Sie, dass Sie mindestens einen Steuerpunkt mehr angeben müssen als der Grad, den die Kurve aufweist.

Ein weiterer Vorteil der Kurvenerstellung mittels Steuerscheitelpunkten ist die Möglichkeit, Tangentialität zwischen einzelnen Kurvensegmenten beizubehalten. Dies erfolgt durch Extrahieren der Richtung zwischen den letzten beiden Steuerpunkten, und Fortsetzen dieser Richtung mit den ersten beiden Steuerpunkten der folgenden Kurve. Im folgenden Beispiel werden zwei getrennte NURBS-Kurven erstellt, die so glatt wie eine einzige Kurve sind:

![](images/12-4/Curves_06.png)

```
pts_1 = {};

pts_1[0] = Point.ByCoordinates(0, 0, 0);
pts_1[1] = Point.ByCoordinates(1, 1, 0);
pts_1[2] = Point.ByCoordinates(5, 0.2, 0);
pts_1[3] = Point.ByCoordinates(9, -3, 0);
pts_1[4] = Point.ByCoordinates(11, 2, 0);

crv_1 = NurbsCurve.ByControlPoints(pts_1, 3);

pts_2 = {};

pts_2[0] = pts_1[4];
end_dir = pts_1[4].Subtract(pts_1[3].AsVector());

pts_2[1] = Point.ByCoordinates(pts_2[0].X + end_dir.X,
pts_2[0].Y + end_dir.Y, pts_2[0].Z + end_dir.Z);

pts_2[2] = Point.ByCoordinates(15, 1, 0);
pts_2[3] = Point.ByCoordinates(18, -2, 0);
pts_2[4] = Point.ByCoordinates(21, 0.5, 0);

crv_2 = NurbsCurve.ByControlPoints(pts_2, 3);
```

* Dies ist eine sehr einfache Beschreibung der NURBS-Kurvengeometrie. Eine präzisere und detailliertere Erläuterung finden Sie bei Pottmann et al. 2007 (siehe Referenzen).

