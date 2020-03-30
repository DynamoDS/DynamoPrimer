

# Interseção e aparar

Muitos dos exemplos até agora têm se concentrado na construção de geometria dimensional maior com base em objetos dimensionais menores. Os métodos de interseção permitem que essa geometria dimensional maior gere objetos dimensionais menores, enquanto os comandos Trim e Select Trim permitem que o script modifique fortemente as formas geométricas após a criação.

O método *Intersect* é definido em todas as partes da geometria no Dynamo, o que significa que, em teoria, qualquer parte da geometria pode fazer interseção com qualquer outra parte da geometria. Naturalmente, algumas interseções são sem sentido, como interseções envolvendo pontos, já que o objeto resultante será sempre o próprio ponto de entrada. As outras combinações possíveis de interseções entre objetos são descritas no gráfico a seguir. A tabela a seguir descreve o resultado de diversas operações de interseção:

**Interseção**

|*Com:*|Superfície|Curva|Plano|Sólido|
| -- | -- | -- | -- | -- |
|**Superfície**|Curva|Ponto|Ponto, Curva|Superfície|
|**Curva**|Ponto|Ponto|Ponto|Curva|
|**Plano**|Curva|Ponto|Curva|Curva|
|**Sólido**|Superfície|Curva|Curva|Sólido|

O exemplo a seguir demonstra a interseção de um plano com uma NurbsSurface. A intersecção gera uma matriz NurbsCurve, que pode ser usada como qualquer outra NurbsCurve.

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

O método *Trim* é muito similar ao método Intersect, pois ele é definido para quase todas as partes da geometria. No entanto, há muito mais limitações em *Trim* do que em *Intersect*.

**Recortar**

||*Usando:* Ponto|Curva|Plano|Superfície|Sólido|
| -- | -- | -- | -- | -- | -- |
|*Em:* curva|Sim|Não|Não|Não|Não|
|Polígono|-|Não|Sim|Não|Não|
|Superfície|-|Sim|Sim|Sim|Sim|
|Sólido|-|-|Sim|Sim|Sim|

Algo a ser observado sobre os métodos *Trim* é o requisito de um ponto de “seleção”, um ponto que determina qual geometria será descartada e quais elementos devem ser mantidos. O Dynamo localiza e descarta a geometria recortada mais próxima do ponto selecionado.

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

