

# Geometrická parametrizace

Ve výpočetních návrzích se křivky a plochy často používají jako základ pro tvorbu složitějších geometrií. Aby se tyto jednoduché geometrie daly použít jako základ pro složitější geometrie, skript musí být schopen získat hodnoty, například pozici a orientaci, na jakémkoliv místě objektu. Získávání těchto hodnot křivky i plochy podporují a tomuto procesu se říká parametrizace.

Všem bodům na křivce lze přiřadit jedinečný parametr v rozsahu od 0 do 1. Pokud bychom chtěli vytvořit objekt NurbsCurve podle několika řídicích nebo interpolovaných bodů, první bod by měl parametr 0 a poslední bod by měl parametr 1. Přesnou hodnotu parametrů jednotlivých bodů nelze předem zjistit, což může znít jako omezení – tento problém však řeší několik pomocných funkcí. Plochy mají podobnou parametrizaci jako křivky, ale se dvěma parametry (u a v) místo jednoho. Pokud bychom chtěli vytvořit plochu s následujícími body:

```
pts = [ [p1, p2, p3],
[p4, p5, p6],
[p7, p8, p9] ];
```

Pak by měl bod p1 parametry u = 0, v = 0 a bod p9 by měl parametry u = 1, v = 1.

Parametrizace primárně neslouží k určování bodů použitých ke generování křivek, jejím hlavním použitím je určení pozic bodů vygenerovaných konstruktory NurbsCurve a NurbsSurface.

Křivky mají metodu *PointAtParameter*, která přijímá jeden parametr typu double v rozsahu od 0 do 1 a vrací objekt Point v tomto parametru. Například tento skript vyhledá body v parametrech 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9 a 1.0:

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

Podobně plochy mají metodu *PointAtParameter*, která přijímá dva parametry U a V generovaného bodu.

Ačkoliv získávání bodů na křivce nebo ploše může být užitečné, skripty často vyžadují určité geometrické vlastnosti v daném parametru, například směr křivky nebo plochy. Pomocí metody *CoordinateSystemAtParameter* lze získat nejen pozici, ale rovnou úplný orientovaný objekt CoordinateSystem v daném parametru křivky nebo plochy. Například následující skript získá orientované objekty CoordinateSystem podél rotované plochy a použije jejich orientaci k vygenerování čar, které budou vycházet z plochy kolmo:

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

Jak bylo zmíněno dříve, parametrizace není po celé délce křivky nebo plochy rovnoměrná, to znamená, že hodnota parametru 0.5 nemusí vždy znamenat střed a hodnota 0.25 nemusí vždy znamenat jednu čtvrtinu délky křivky nebo plochy. Z tohoto důvodu mají křivky další sadu parametrizačních příkazů, pomocí kterých lze najít bod v určité délce křivky.

