

# Traslazione, rotazione e altre trasformazioni

Alcuni oggetti della geometria possono essere creati indicando in modo esplicito le coordinate x, y e z nello spazio tridimensionale. Più spesso, tuttavia, la geometria viene spostata nella sua posizione finale utilizzando le trasformazioni geometriche sull'oggetto stesso o sul relativo CoordinateSystem sottostante.

La trasformazione geometrica più semplice è una traslazione, che sposta un oggetto in base ad un numero specificato di unità nelle direzioni x, y e z.

![](images/12-5/Transformations_01.png)

```
// create a point at x = 1, y = 2, z = 3
p = Point.ByCoordinates(1, 2, 3);

// translate the point 10 units in the x direction,
// -20 in y, and 50 in z
// p2’s new position is x = 11, y = -18, z = 53
p2 = p.Translate(10, -20, 50);
```

Sebbene tutti gli oggetti in Dynamo possano essere convertiti aggiungendo il metodo *.Translate* alla fine del nome dell'oggetto, le trasformazioni più complesse richiedono la trasformazione dell'oggetto da un CoordinateSystem sottostante ad un nuovo CoordinateSystem. Ad esempio, per ruotare un oggetto di 45 gradi attorno all'asse x, è necessario trasformare l'oggetto dal CoordinateSystem esistente senza rotazione ad un CoordinateSystem che è stato ruotato di 45 gradi attorno all'asse x con il metodo *.Transform*:

![](images/12-5/Transformations_02.png)

```
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Rotate(Point.ByCoordinates(0, 0),
Vector.ByCoordinates(1,0,0.5), 25);

// get the existing coordinate system of the cube
old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

Oltre a essere traslati e ruotati, è possibile creare anche CoordinateSystems messi in scala o tagliati. Un CoordinateSystem può essere messa in scala con il metodo *.Scale*:

![](images/12-5/Transformations_03.png)

```
cube = Cuboid.ByLengths(CoordinateSystem.Identity(),
10, 10, 10);

new_cs = CoordinateSystem.Identity();
new_cs2 = new_cs.Scale(20);

old_cs = CoordinateSystem.Identity();

cube2 = cube.Transform(old_cs, new_cs2);
```

I CoordinateSystems tagliati vengono creati mediante l'inserimento di vettori non ortogonali nel costruttore CoordinateSystem.

![](images/12-5/Transformations_04.png)

```
new_cs = CoordinateSystem.ByOriginVectors(
Point.ByCoordinates(0, 0, 0),
Vector.ByCoordinates(-1, -1, 1),
Vector.ByCoordinates(-0.4, 0, 0));

old_cs = CoordinateSystem.Identity();

cube = Cuboid.ByLengths(CoordinateSystem.Identity(), 
5, 5, 5);

new_curves = cube.Transform(old_cs, new_cs);
```

La messa in scala e il taglio sono trasformazioni geometriche relativamente più complesse rispetto alla rotazione e alla traslazione, pertanto non tutti gli oggetti di Dynamo possono essere sottoposti a queste trasformazioni. Nella seguente tabella sono riportati i contorni degli oggetti di Dynamo che possono presentare CoordinateSystem messi in scala in modo non uniforme e i CoordinateSystem tagliati.

|Classe|CoordinateSystem messo in scala in modo non uniforme|CoordinateSystem tagliato|
| -- | -- | -- |
|Arco|No|No|
|NurbsCurve|Sì|Sì|
|NurbsSurface|No|No|
|Cerchio|No|No|
|Linea|Sì|Sì|
|Piano|No|No|
|Punto|Sì|Sì|
|Poligono|No|No|
|Uniforme|No|No|
|Superficie|No|No|
|Testo|No|No|

