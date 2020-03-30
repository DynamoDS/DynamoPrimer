

# Intersezione e taglio

Molti degli esempi riportati finora si sono concentrati sulla costruzione di geometria dimensionale maggiore a partire da oggetti dimensionali minori. I metodi di intersezione consentono a questa geometria dimensionale maggiore di generare oggetti dimensionali minori, mentre i comandi di taglio e selezione del taglio consentono di modificare pesantemente le forme geometriche mediante script dopo la creazione.

Il metodo *Intersect* è definito su tutti gli elementi della geometria in Dynamo, ovvero, in teoria qualsiasi elemento della geometria può essere intersecato con qualsiasi altro elemento della geometria. Naturalmente alcune intersezioni sono insignificanti, come le intersezioni che coinvolgono i punti, poiché l'oggetto risultante sarà sempre il punto di input stesso. Le altre possibili combinazioni di intersezioni tra gli oggetti sono descritte nel seguente grafico, in cui è illustrato il risultato di diverse operazioni di intersezione:

**Intersezione**

|*Con:*|Superficie|Curva|Piano|Uniforme|
| -- | -- | -- | -- | -- |
|**Superficie**|Curva|Punto|Punto, curva|Superficie|
|**Curva**|Punto|Punto|Punto|Curva|
|**Piano**|Curva|Punto|Curva|Curva|
|**Solido**|Superficie|Curva|Curva|Uniforme|

Nel semplicissimo esempio riportato di seguito è mostrata l'intersezione di un piano con una NurbsSurface. L'intersezione genera una serie di NurbsCurve, che può essere utilizzata come qualsiasi altra NurbsCurve.

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

Il metodo *Trim* è molto simile al metodo Intersect, in quanto viene definito per quasi ogni elemento della geometria. Tuttavia, esistono molte più limitazioni per *Trim* rispetto a *Intersect*.

**Taglia**

||*Mediante:* Point|Curva|Piano|Superficie|Uniforme|
| -- | -- | -- | -- | -- | -- |
|*Su* Curva|Sì|No|No|No|No|
|Poligono|-|No|Sì|No|No|
|Superficie|-|Sì|Sì|Sì|Sì|
|Uniforme|-|-|Sì|Sì|Sì|

Qualcosa da notare sui metodi *Trim* è il requisito di un punto di "selezione", un punto che determina quale geometria eliminare e quali elementi mantenere. In Dynamo viene trovata ed eliminata la geometria ritagliata più vicina al punto di selezione.

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

