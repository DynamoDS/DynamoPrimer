

## Vettori, piani e sistemi di coordinate

Vettori, piani e sistemi di coordinate costituiscono il gruppo principale dei tipi di geometria astratta. Aiutano a definire la posizione, l'orientamento e il contesto spaziale della geometria di cui è necessario determinare la forma. Se dico che sono a New York, tra la 42° strada e Broadway (sistema di coordinate), a livello strada (piano), guardando verso nord (vettore), ho utilizzato questi "helper" per definire dove sono. Lo stesso vale per una custodia per il cellulare o un grattacielo. Per sviluppare il modello, è necessario questo contesto.

![Vettori, piani e coordinate](images/5-2/VectorsPlanesCoodinates.jpg)

### Che cos'è un vettore?

Un vettore è una quantità geometrica che descrive la direzione e l'intensità. I vettori sono astratti, ossia rappresentano una quantità, non un elemento geometrico. I vettori possono essere facilmente confusi con i punti perché sono entrambi composti da un elenco di valori. Tuttavia, esiste una differenza fondamentale: i punti descrivono una posizione in un determinato sistema di coordinate, mentre i vettori descrivono una differenza relativa nella posizione, che è identica a quella indicata come "direzione".

![Dettagli sui vettori](images/5-2/Vector-Detailed.jpg)

Se l'idea della differenza relativa è confusa, pensare al vettore AB come "Sono in piedi nel punto A, guardando verso il punto B." La direzione, da qui (A) a qui (B), è il vettore.

Suddividere ulteriormente i vettori nelle loro parti utilizzando la stessa notazione AB:

![Vettore ](images/5-2/Vector.jpg)

> 1. Il **punto iniziale** del vettore è denominato **base**.
2. Il **punto finale **del vettore è denominato **punta** o **senso**.
3. Il vettore AB non è uguale al vettore BA, il quale punta nella direzione opposta.

Per una visione in chiave comica dei vettori (e della loro definizione astratta), guardare la commedia classica L'aereo più pazzo del mondo e ascoltare la frase ironica, citata spesso:

> *Roger, Roger. Qual è il nostro vettore, Victor?*

I vettori sono un componente chiave per i modelli in Dynamo. Notare che, poiché si trovano nella categoria astratta di "helper", quando si crea un vettore, non verrà visualizzato alcun elemento nell'anteprima sfondo.

![Vettori in Dynamo](images/5-2/Dynamo-Vector.jpg)

> 1. È possibile utilizzare una linea come supporto in un'anteprima vettoriale.
> Scaricare il file di esempio fornito con questa immagine (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Geometry for Computational Design - Vectors.dyn](datasets/5-2/Geometry for Computational Design - Vectors.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

### Che cos'è un piano?

I piani sono "helper" astratti bidimensionali. Più in particolare, i piani sono concettualmente "piatti" e si estendono all'infinito in due direzioni. In genere, viene eseguito il rendering di un rettangolo più piccolo vicino all'origine.

![Piano](images/5-2/Plane.jpg)

Si potrebbe pensare: "Aspetta! Origine? Sembra un sistema di coordinate... come quello che utilizzo per modellare nel mio software CAD!"

Ed è corretto. La maggior parte del software di modellazione sfrutta i piani di costruzione o i "livelli" per definire un contesto bidimensionale locale in cui disegnare. Il piano XY, XZ, YZ (o nord, sudest) potrebbe sembrare più familiare. Sono tutti piani, che definiscono un contesto "piatto" infinito. I piani non hanno profondità, ma aiutano a descrivere anche la direzione: ogni piano ha un'origine, una direzione X, una direzione Y e una direzione Z (verso l'alto).

![Piani in Dynamo](images/5-2/Dynamo-Plane.jpg)

> 1. Sebbene siano astratti, i piani hanno una posizione di origine in modo da poterli posizionare nello spazio.
2. In Dynamo, il rendering dei piani viene eseguito nell'anteprima sfondo.
> Scaricare il file di esempio fornito con questa immagine (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Geometry for Computational Design - Planes.dyn](datasets/5-2/Geometry for Computational Design - Plane.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

### Che cos'è un sistema di coordinate?

Se si sono ben compresi i piani, non è difficile capire i sistemi di coordinate. Un piano ha tutte le stesse parti di un sistema di coordinate, a condizione che si tratti di un sistema di coordinate "euclideo" o "XYZ" standard.

Sono presenti, tuttavia, altri sistemi di coordinate alternativi, ad esempio cilindrici o sferici. Come si vedrà nelle sezioni successive, anche i sistemi di coordinate possono essere applicati ad altri tipi di geometria per definire una posizione su tale geometria.

![Sistema di coordinate](images/5-2/CoordinateSystem.jpg)

> Aggiunta di sistemi di coordinate alternativi - cilindrici, sferici

![Piani in Dynamo](images/5-2/Dynamo-CoordinateSystem.jpg)

> 1. Sebbene siano astratti, anche i sistemi di coordinate hanno una posizione di origine in modo da poterli individuare nello spazio.
2. In Dynamo, i sistemi di coordinate vengono sottoposti a rendering nell'anteprima sfondo come punto (origine) e linee che definiscono gli assi (X è rosso, Y è verde e Z è blu in base alla seguente convenzione).
> Scaricare il file di esempio fornito con questa immagine (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Geometry for Computational Design - Coordinate System.dyn](datasets/5-2/Geometry for Computational Design - Coordinate System.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

