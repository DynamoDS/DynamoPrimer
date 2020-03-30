

# Parametrizzazione geometrica

Nelle progettazioni computazionali, le curve e le superfici vengono spesso utilizzate come l'impalcatura sottostante per costruire la geometria successiva. Per poter utilizzare questa geometria iniziale come base per la geometria successiva, lo script deve essere in grado di estrarre qualità quali la posizione e l'orientamento nell'intera area dell'oggetto. Sia le curve che le superfici supportano questa estrazione, che è denominata parametrizzazione.

Tutti i punti su una curva possono essere considerati come un parametro unico compreso tra 0 e 1. Se si desidera creare una NurbsCurve basata su diversi punti di controllo o interpolati, il primo punto avrà il parametro 0 e l'ultimo punto avrà il parametro 1. Non è possibile sapere in anticipo quale sia l'esatto parametro qualunque sia il punto intermedio, il che potrebbe sembrare una limitazione grave, tuttavia ciò è mitigato da una serie di funzioni di utilità. Le superfici hanno una parametrizzazione simile a quella delle curve, anche se con due parametri invece di uno, denominati u e v. Se si desidera creare una superficie con i seguenti punti:

```
pts = [ [p1, p2, p3],
[p4, p5, p6],
[p7, p8, p9] ];
```

p1 avrebbe il parametro u = 0 v = 0, mentre p9 avrebbe i parametri u = 1 v = 1.

La parametrizzazione non è particolarmente utile per determinare i punti utilizzati per generare le curve; il suo uso principale è determinare le posizioni dei punti intermedi generati dai costruttori NurbsCurve e NurbsSurface.

Le curve hanno un metodo *PointAtParameter*, che utilizza un singolo argomento doppio compreso tra 0 e 1 e restituisce l'oggetto Point in corrispondenza di tale parametro. Ad esempio, questo script trova i Point in corrispondenza dei parametri 0, .1, .2, .3, .4, .5, .6, .7, .8, .9 e 1:

![](images/12-7/GeometricParameterization_01.png)

```
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

Analogamente, le superfici hanno un metodo *PointAtParameter* che utilizza due argomenti, il parametro u e v del Point generato.

Sebbene l'estrazione di punti singoli su una curva e una superficie possa essere utile, gli script spesso richiedono la conoscenza delle particolari caratteristiche geometriche in corrispondenza di un parametro, ad esempio qual è la direzione della curva o della superficie. Il metodo *CoordinateSystemAtParameter* non solo individua la posizione, ma anche un CoordinateSystem orientato in corrispondenza del parametro di una curva o superficie. Ad esempio, il seguente script estrae i CoordinateSystem orientati lungo una superficie di rivoluzione e utilizza l'orientamento dei CoordinateSystem per generare linee che si staccano dalla normale alla superficie:

![](images/12-7/GeometricParameterization_02.png)

```
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

Come detto in precedenza, la parametrizzazione non è sempre uniforme per tutta la lunghezza di una curva o di una superficie, ovvero il parametro 0.5 non corrisponde sempre al punto medio e 0.25 non sempre corrisponde al punto un quarto lungo una curva o superficie. Per ovviare a questa limitazione, le curve dispongono di un insieme aggiuntivo di comandi di parametrizzazione che consentono di trovare un punto in corrispondenza di lunghezze specifiche lungo una curva.

