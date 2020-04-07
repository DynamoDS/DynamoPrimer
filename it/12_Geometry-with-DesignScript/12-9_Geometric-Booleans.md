# Operazioni booleane geometriche

*Intersect*, *Trim* e *SelectTrim* vengono utilizzati principalmente nella geometria dimensionale minore come punti, curve e superfici. La geometria solida, invece, presenta un insieme aggiuntivo di metodi per la modifica della forma dopo la costruzione, sottraendo il materiale in modo simile a *Trim* e combinando gli elementi insieme per formare un intero più grande.

Il metodo *Union* utilizza due oggetti solidi e crea un singolo oggetto solido partendo dallo spazio coperto da entrambi gli oggetti. Lo spazio sovrapposto tra oggetti viene combinato nella forma finale. In questo esempio si combina una sfera e un cuboide in un'unica forma solida sfera-cubo:

![](images/12-9/GeometricBooleans_01.png)

```js
s1 = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(4, 0,
    0), 6);

combined = s1.Union(s2);
```

Il metodo *Difference*, come *Trim*, sottrae il contenuto del solido strumento di input dal solido di base. In questo esempio, viene ritagliata una piccola rientranza da una sfera:

![](images/12-9/GeometricBooleans_02.png)

```js
s = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(10, 0,
    0), 6);

result = s.Difference(tool);
```

Il metodo *Intersect* restituisce il solido sovrapposto tra due input solidi. Nel seguente esempio, *Difference* è stato modificato in *Intersect* e il solido risultante è il vuoto mancante inizialmente ritagliato:

![](images/12-9/GeometricBooleans_03.png)

```js
s = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(10, 0,
    0), 6);

result = s.Intersect(tool);
```

