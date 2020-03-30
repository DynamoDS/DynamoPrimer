

## Punti

Se la geometria è il linguaggio di un modello, i punti sono l'alfabeto. I punti sono la base su cui vengono create tutte le altre geometrie: sono necessari almeno due punti per creare una curva, almeno tre punti per creare un poligono o una faccia della mesh e così via. La definizione della posizione, dell'ordine e della relazione tra i punti (provare una funzione seno) consente di definire una geometria di ordine più alto, ad esempio oggetti riconosciuti come cerchi o curve.

![Da punto a curva](images/5-3/PointsAsBuildingBlocks-1.jpg)

> 1. Un cerchio che utilizza le funzioni ```x=r*cos(t)``` e ```y=r*sin(t)```
2. Una curva seno che utilizza le funzioni ```x=(t)``` e ```y=r*sin(t)```

### Cos'è un punto?

Un punto è definito da niente di più che uno o più valori denominati coordinate. Il numero di valori delle coordinate necessari per definire il punto dipende dal sistema di coordinate o dal contesto in cui si trova. Il tipo di punto più comune in Dynamo è presente nel sistema di coordinate globali tridimensionale e dispone di tre coordinate [X,Y,Z].

![Punto](images/5-3/Point.jpg)

### Punto come coordinate

I punti possono esistere anche in un sistema di coordinate bidimensionale. La convenzione ha una notazione di lettere diversa a seconda del tipo di spazio impiegato. È possibile che si stia utilizzando [X,Y] su un piano o [U,V] se si è su una superficie.

![Punto come coordinate](images/5-3/Coordinates.jpg)

> 1. Un punto nel sistema di coordinate euclideo: [X,Y,Z]
2. Un punto in un sistema di coordinate di parametri delle curve: [t]
3. Un punto in un sistema di coordinate di parametri delle superfici: [U,V]

Sebbene potrebbe sembrare controintuitivo, i parametri per le curve e le superfici sono continui e si estendono oltre il bordo della geometria specificata. Poiché le forme che definiscono lo spazio del parametro risiedono in un sistema di coordinate globali tridimensionale, è sempre possibile convertire una coordinata parametrica in una coordinata "globale". Il punto [0.2, 0.5] sulla superficie, ad esempio, è uguale al punto [1.8, 2.0, 4.1] nelle coordinate globali.

![Punti in Dynamo](images/5-3/Dynamo-Points.jpg)

> 1. Punto nelle coordinate XYZ globali supposte
2. Punto rispetto ad un determinato sistema di coordinate (cilindrico)
3. Punto come coordinata UV su una superficie
> Scaricare il file di esempio fornito con questa immagine (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Geometry for Computational Design - Points.dyn](datasets/5-3/Geometry for Computational Design - Points.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

