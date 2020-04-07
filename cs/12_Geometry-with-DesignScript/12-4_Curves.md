# Křivky: Interpolované a řídicí body

V aplikaci Dynamo existují dva základní způsoby, jak vytvořit křivky volného tvaru: určením kolekce bodů a interpolací vyhlazené křivky mezi nimi, nebo určením řídicích bodů křivky. Interpolované křivky jsou užitečné, když konstruktér přesně ví, jaký tvar má linie mít, nebo pokud návrh obsahuje konkrétní omezení, kudy křivka může a nemůže procházet. Křivky určené řídicími body jsou vlastně úsečky, které algoritmus vyhladí do podoby konečné křivky. Určení křivky pomocí řídicích bodů je užitečné pro zkoušení různých tvarů s různou mírou vyhlazení, nebo pokud je potřeba dosáhnout plynulého přechodu mezi úsečkami.

Chcete-li vytvořit interpolovanou křivku, jednoduše zadejte kolekci bodů do metody *NurbsCurve.ByPoints*.

![](images/12-4/Curves_01.png)

```js
num_pts = 6;

s = Math.Sin(0..360..#num_pts) * 4;

pts = Point.ByCoordinates(1..30..#num_pts, s, 0);

int_curve = NurbsCurve.ByPoints(pts);
```

Vygenerovaná křivka protne všechny vstupní body, počínaje prvním bodem a konče posledním bodem v kolekci. Pomocí volitelného parametru lze vytvořit periodickou uzavřenou křivku. Aplikace Dynamo chybějící segment automaticky vytvoří, proto není potřeba zadávat koncový bod stejný jako počáteční bod.

![](images/12-4/Curves_02.png)

```js
pts = Point.ByCoordinates(Math.Cos(0..350..#10),
    Math.Sin(0..350..#10), 0);

// create an closed curve
crv = NurbsCurve.ByPoints(pts, true);

// the same curve, if left open:
crv2 = NurbsCurve.ByPoints(pts.Translate(5, 0, 0),
    false);
```

Křivky Nurbs lze vygenerovat stejným způsobem, vstupní body reprezentují koncové body úsečky a druhý parametr určuje sílu a typ vyhlazení, kterému se říká stupeň.* Křivka se stupněm 1 nemá žádné vyhlazení, jedná se o lomenou čáru.

![](images/12-4/Curves_03.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 1 is a polyline
ctrl_curve = NurbsCurve.ByControlPoints(pts, 1);
```

Křivka se stupněm 2 je vyhlazená tak, že protíná a je kolmá ke středům úseček:

![](images/12-4/Curves_04.png)

```js
num_pts = 6;

pts = Point.ByCoordinates(1..30..#num_pts,
    Math.Sin(0..360..#num_pts) * 4, 0);

// a B-Spline curve with degree 2 is smooth
ctrl_curve = NurbsCurve.ByControlPoints(pts, 2);
```

Aplikace Dynamo podporuje křivky NURBS (nerovnoměrné racionální křivky B-spline) až do stupně 20 a následující skript demonstruje účinek vyšších stupňů vyhlazení na tvar křivky:

![](images/12-4/Curves_05.png)

```js
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

Poznámka: křivka musí mít alespoň o jeden řídicí bod více, než je její stupeň.

Další výhodou tvorby křivek pomocí řídicích bodů je možnost zachování tečnosti mezi jednotlivými segmenty. To lze provést tak, že se získá směr mezi posledními dvěma řídicími body a v tomto směru se bude pokračovat u prvních dvou řídicích bodů následující křivky. V následujícím příkladu jsou vytvořeny dvě samostatné křivky NURBS, které jsou vyhlazené jako jedna křivka:

![](images/12-4/Curves_06.png)

```js
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

* Jedná se o velmi zjednodušený popis geometrie křivky NURBS, přesnější a podrobnější popis naleznete v literatuře (Pottmann, et al, 2007).

