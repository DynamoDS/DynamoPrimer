# Geometrische boolesche Operationen

*Intersect*, *Trim* und *SelectTrim* werden hauptsächlich für niedrigerdimensionale Geometrien wie Punkte, Kurven und Oberflächen genutzt. Volumenkörper-Geometrie verfügt über einen zusätzlichen Satz von Methoden zum Ändern der Form nach ihrer Erstellung, sowohl durch Subtraktion von Material, ähnlich wie *Trim*, als auch durch Kombination von Elementen zu einem größeren Ganzen.

Die Methode *Union* nimmt zwei Volumenkörper-Objekte und erstellt ein einzelnes Volumenkörper-Objekt aus dem Raum, der von beiden Objekten abgedeckt wird. Der Überlappungsbereich zwischen den einzelnen Objekten wird zur endgültigen Form kombiniert. In diesem Beispiel werden eine Kugel und ein Quader in einer einzigen Volumenkörper-Kugel-Quader-Form kombiniert:

![](images/12-9/GeometricBooleans_01.png)

```js
s1 = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(4, 0,
    0), 6);

combined = s1.Union(s2);
```

Die Methode *Difference* subtrahiert ähnlich wie *Trim* die Inhalte des eingegebenen Werkzeug-Volumenkörpers vom Basis-Volumenkörper. In diesem Beispiel kerben wir eine Kugel leicht ein:

![](images/12-9/GeometricBooleans_02.png)

```js
s = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(10, 0,
    0), 6);

result = s.Difference(tool);
```

Die Methode *Intersect* gibt den überlappenden Volumenkörper zwischen zwei Eingabe-Volumenkörpern zurück. Im folgenden Beispiel wurde *Difference* zu *Intersect* geändert, und der resultierende Volumenkörper entspricht dem ursprünglich eingekerbten Leerraum:

![](images/12-9/GeometricBooleans_03.png)

```js
s = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
    CoordinateSystem.Identity().Origin.Translate(10, 0,
    0), 6);

result = s.Intersect(tool);
```

