

# Superfici: punti interpolati e di controllo, loft, rivoluzione

L'analogia bidimensionale con una NurbsCurve è la NurbsSurface e, come la NurbsCurve di forma libera, le NurbsSurface possono essere costruite con due metodi di base: l'inserimento di un insieme di punti base con l'interpolazione di Dynamo tra di essi e l'indicazione esplicita dei punti di controllo della superficie. Come per le curve a mano libera, le superfici interpolate sono utili quando un progettista conosce con precisione la forma che una superficie deve assumere o se un progetto richiede che la superficie attraversi punti di vincolo. Dall'altra parte, le superfici create mediante punti di controllo possono essere più utili per la progettazione esplorativa in diversi livelli di levigatezza.

Per creare una superficie interpolata, è sufficiente generare una raccolta bidimensionale di punti che si avvicinano alla forma di una superficie. La raccolta deve essere rettangolare, ovvero non irregolare. Il metodo *NurbsSurface.ByPoints* costruisce una superficie da questi punti.

![](images/12-6/Surfaces_01.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

surf = NurbsSurface.ByPoints(python_points_1);
```

Le NurbsSurface di forma libera possono essere create anche specificando i punti di controllo sottostanti di una superficie. Come per le NurbsCurve, i punti di controllo possono essere considerati come la rappresentazione di una mesh quadrilatera con segmenti retti, che, a seconda del grado della superficie, viene levigata nella forma della superficie finale. Per creare una NurbsSurface tramite punti di controllo, includere due parametri aggiuntivi a *NurbsSurface.ByPoints*, indicando i gradi delle curve sottostanti in entrambe le direzioni della superficie.

![](images/12-6/Surfaces_02.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 2 with smooth segments
surf = NurbsSurface.ByPoints(python_points_1, 2, 2);
```

È possibile aumentare il grado della NurbsSurface per modificare la geometria della superficie risultante:

![](images/12-6/Surfaces_03.png)

```
// python_points_1 is a set of Points generated with
// a Python script found in Chapter 12, Section 10

// create a surface of degree 6
surf = NurbsSurface.ByPoints(python_points_1, 6, 6);
```

Così come è possibile creare le superfici interpolando un insieme di punti di input, è possibile crearle interpolando un insieme di curve di base. Questa procedura è denominata loft. Viene creata una curva di loft utilizzando il costruttore *Surface.ByLoft*, con una raccolta di curve di input come unico parametro.

![](images/12-6/Surfaces_04.png)

```
// python_points_2, 3, and 4 are generated with
// Python scripts found in Chapter 12, Section 10

c1 = NurbsCurve.ByPoints(python_points_2);
c2 = NurbsCurve.ByPoints(python_points_3);
c3 = NurbsCurve.ByPoints(python_points_4);

loft = Surface.ByLoft([c1, c2, c3]);
```

Le superfici di rivoluzione sono un tipo aggiuntivo di superficie creato tramite l'estrusione di una curva di base attorno ad un asse centrale. Se le superfici interpolate sono l'analogia bidimensionale con le curve interpolate, le superfici di rivoluzione sono l'analogia bidimensionale con i cerchi e gli archi.

Le superfici di rivoluzione sono specificate da una curva di base, che rappresenta lo "spigolo" della superficie; l'origine di un asse, il punto base della superficie; la direzione di un asse, la direzione centrale; un angolo iniziale di sweep e un angolo finale di sweep. Questi vengono utilizzati come input per il costruttore *Surface.Revolve*.

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

