

# Intersection et ajustement

Beaucoup de ces exemples se sont jusqu'ici concentrés sur la construction d'une géométrie dimensionnelle plus élevée à partir d'objets dimensionnels inférieurs. Les méthodes d'intersection permettent à cette géométrie dimensionnelle plus élevée de générer des objets dimensionnels inférieurs, tandis que les commandes d'ajustement et de sélection d'ajustement permettent au script de modifier considérablement les formes géométriques après leur création.

La méthode *Intersect* est définie sur tous les éléments de géométrie dans Dynamo, ce qui signifie en théorie que tout élément de géométrie peut être entrecoupé avec n'importe quel autre élément de géométrie. Naturellement, certaines intersections n'ont pas de sens, comme les intersections impliquant des points, car l'objet résultant sera toujours le point d'entrée lui-même. Les autres combinaisons possibles d'intersections entre des objets sont décrites dans le tableau suivant. Le tableau suivant présente le résultat de diverses opérations d'intersection :

**Intersect**

|*Avec :*|Surface|Courbe|Plan|Solide|
| -- | -- | -- | -- | -- |
|**Surface**|Courbe|Point|Point, courbe|Surface|
|**Courbe**|Point|Point|Point|Courbe|
|**Plan**|Courbe|Point|Courbe|Courbe|
|**Solide**|Surface|Courbe|Courbe|Solide|

L'exemple très simple suivant illustre l'intersection d'un plan avec une NurbsSurface. L'intersection génère un réseau de NurbsCurves, qui peut être utilisé comme toute autre NurbsCurve.

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

La méthode *Trim* ressemble fortement à la méthode Intersect, dans le sens où elle est définie pour presque chaque élément de géométrie. Toutefois, la méthode *Trim* comporte beaucoup plus de limitations que la méthode *Intersect*.

**Trim**

||*Utilise :* Point|Courbe|Plan|Surface|Solide|
| -- | -- | -- | -- | -- | -- |
|*Sur :* Courbe|Oui|Non|Non|Non|Non|
|Objet Polygon|-|Non|Oui|Non|Non|
|Surface|-|Oui|Oui|Oui|Oui|
|Solide|-|-|Oui|Oui|Oui|

Il est à noter que les méthodes *Trim* nécessitent un point de "sélection", qui détermine la géométrie à ignorer et les éléments à conserver. Dynamo recherche et ignore la géométrie ajustée la plus proche du point de sélection.

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

