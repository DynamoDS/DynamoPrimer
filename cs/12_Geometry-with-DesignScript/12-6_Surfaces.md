

# Plochy: Interpolace, řídicí body, spojení profilů, rotace

Dvourozměrná varianta objektu NurbsCurve je objekt NurbsSurface, který lze stejně jako křivku Nurbs volného tvaru vytvořit dvěma základními způsoby: zadáním sady základních bodů a interpolací mezi nimi, nebo explicitním zadáním řídicích bodů plochy. Interpolované plochy jsou užitečné jako křivky volného tvaru v případě, kdy konstruktér zná přesný tvar potřebné plochy, nebo pokud musí plocha procházet určitými body. Na druhou stranu, plochy vytvořené pomocí řídicích bodů mohou být užitečnější pro průzkum různých návrhových možností a úrovní vyhlazování.

Chcete-li vytvořit interpolovanou plochu, jednoduše vygenerujte dvourozměrnou kolekci bodů s přibližným tvarem plochy. Kolekce musí mít rovné, nezubaté hrany. Plochu z těchto bodů lze vytvořit metodou *NurbsSurface.ByPoints*.

![](images/12-6/Surfaces_01.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

Plochu Nurbs volného tvaru lze vytvořit také určením řídicích bodů plochy. Podobně jako u křivek Nurbs, řídicí body si lze představit jako reprezentaci čtyřúhelníkové sítě s rovnými segmenty, která bude v závislosti na stupni plochy vyhlazena do konečné podoby. Chcete-li vytvořit plochu Nurbs pomocí řídicích bodů, zadejte do metody *NurbsSurface.ByPoints* další dva parametry, které budou naznačovat stupně podřazených křivek v obou směrech plochy.

![](images/12-6/Surfaces_02.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

Stupeň objektu NurbsSurface lze zvýšit a změnit tím výslednou geometrii plochy:

![](images/12-6/Surfaces_03.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

Podobně jako lze plochy vytvářet interpolací mezi sadou vstupních bodů, lze je vytvářet také interpolací mezi sadou základních křivek. Tomu se říká spojení profilů. Křivku spojením profilů lze vytvořit pomocí konstruktoru *Surface.ByLoft*, jediným jeho parametrem je kolekce vstupních křivek.

![](images/12-6/Surfaces_04.png)

```
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

Plochy rotace jsou dalším typem ploch vytvořených tažením základní křivky kolem střední osy. Pokud jsou interpolované plochy dvourozměrnou variantou interpolovaných křivek, pak plochy rotace jsou dvourozměrnou variantou kružnic a oblouků.

Plochy rotace se určují pomocí základní křivky, která reprezentuje „hranu“ plochy, dále pomocí počátku osy, základního bodu plochy, směru osy, středního „hlavního“ směru a počátečního a koncového úhlu tažení. Tyto parametry se zadávají jako vstup do konstruktoru *Surface.Revolve*.

![](images/12-6/Surfaces_05.png)

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

surf = Surface.ByRevolve(crv, axis_origin, axis, 0,
360);
```

