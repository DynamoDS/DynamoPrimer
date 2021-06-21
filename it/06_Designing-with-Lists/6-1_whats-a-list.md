

## Che cos'è un elenco?

Un elenco è una raccolta di elementi o voci. Si prenda, ad esempio, un casco di banane. Ogni banana è una voce all'interno dell'elenco (o del casco). È più semplice raccogliere un casco di banane piuttosto che ogni singola banana e ciò vale anche per il raggruppamento di elementi secondo relazioni parametriche in una struttura di dati.

![Banane](images/6-1/Bananas_white_background_DS.jpg)

> Foto di [Augustus Binu](https://commons.wikimedia.org/wiki/File:Bananas_white_background_DS.jpg?fastcci_from=11404890&c1=11404890&d1=15&s=200&a=list).

Quando si fanno acquisti nei negozi di alimentari, si mettono tutti gli oggetti acquistati in una borsa. Questa borsa è anche un elenco. Per fare il pane alla banana, occorrono 3 caschi di banane (servono per fare *molto* pane alla banana). La borsa rappresenta un elenco di caschi di banane e ogni casco rappresenta un elenco di banane. La borsa è un elenco di elenchi (bidimensionali) e la banana è un elenco (unidimensionale).

In Dynamo, i dati dell'elenco vengono ordinati e la prima voce di ogni elenco ha un indice 0. Di seguito, saranno descritte la modalità di definizione degli elenchi in Dynamo e la modalità di relazione reciproca tra più elenchi.

## Indici in base zero

Una cosa che potrebbe sembrare strana all'inizio è che il primo indice di un elenco è sempre 0; non 1. Così, quando si parla della prima voce di un elenco, si intende in realtà la voce che corrisponde all'indice 0.

Ad esempio, se si dovesse contare il numero di dita della mano destra, è probabile aver contato da 1 a 5. Tuttavia, se si dovessero inserire le dita in un elenco, in Dynamo sarebbero stati assegnati loro indici compresi tra 0 e 4. Sebbene questo possa sembrare un po' strano ai principianti in fatto di programmazione, l'indice in base zero è una pratica standard nella maggior parte dei sistemi di calcolo.

![voci](images/6-1/items.jpg)

Nell'elenco sono ancora presenti 5 voci, questo perché l'elenco sta utilizzando un sistema di conteggio in base zero. E le voci memorizzate nell'elenco non devono essere solo numeri. Possono essere qualsiasi tipo di dati supportato da Dynamo, ad esempio punti, curve, superfici, famiglie e così via.

Spesso il modo più semplice per esaminare il tipo di dati memorizzati in un elenco è collegare un nodo di controllo all'output di un altro nodo. Per default, il nodo di controllo mostra automaticamente tutti gli indici sul lato sinistro dell'elenco e visualizza gli elementi di dati sul lato destro.

Questi indici sono un elemento fondamentale quando si utilizzano gli elenchi.

### Input e output

Per quanto riguarda gli elenchi, input e output variano a seconda del nodo di Dynamo utilizzato. Ad esempio, utilizzare un elenco di 5 punti e collegare questo output a due diversi nodi di Dynamo: *PolyCurve.ByPoints* e *Circle.ByCenterPointRadius*:

![Esempi di input](images/6-2/PolyCurve.Inputs.jpg)

> 1. L'input *points* per *PolyCurve.ByPoints* cerca *"Point[]"*. Rappresenta un elenco di punti.
2. L'output per *PolyCurve.ByPoints* è una PolyCurve singola creata da un elenco di cinque punti.
3. L'input *centerPoint* per *Circle.ByCenterPointRadius* richiede *"Point"*.
4. L'output per *Circle.ByCenterPointRadius* è un elenco di cinque cerchi i cui centri corrispondono all'elenco originale di punti.

I dati di input per *PolyCurve.ByPoints* e *Circle.ByCenterPointRadius* sono gli stessi, tuttavia il nodo PolyCurve fornisce una PolyCurve mentre il nodo Circle fornisce 5 cerchi con centri in ogni punto. In modo intuitivo, questa operazione ha senso: la PolyCurve viene disegnata come curva che collega i 5 punti, mentre i cerchi creano un cerchio diverso in ogni punto. Quindi cosa sta succedendo con i dati?

Posizionando il cursore sull'input *points* per *Polycurve.ByPoints*, si noterà che l'input cerca *"Point[]"*. Notare le parentesi alla fine. Rappresenta un elenco di punti e, per creare una PolyCurve, l'input deve essere un elenco per ogni PolyCurve. Questo nodo comprimerà pertanto ogni elenco in una PolyCurve.

Dall'altro lato, l'input *centerPoint* per *Circle.ByCenterPointRadius* richiede *"Point"*. Questo nodo cerca un punto, come elemento, per definire il punto centrale del cerchio. Per questo motivo, si ottengono cinque cerchi dai dati di input. Riconoscere queste differenze con gli input in Dynamo aiuta a comprendere meglio il funzionamento dei nodi durante la gestione dei dati.

### Collegamento

La corrispondenza dei dati è un problema senza una soluzione chiara. Si verifica quando un nodo ha accesso a input di dimensioni diverse. La modifica dell'algoritmo di corrispondenza dei dati può portare a risultati molto diversi.

Si immagini un nodo che crea segmenti di linea tra punti (Line.ByStartPointEndPoint). Avrà due parametri di input che forniscono entrambi le coordinate dei punti:

![Esempi di input](images/6-1/laceBase.jpg)

Come si può vedere, esistono diversi modi in cui è possibile disegnare linee tra questi gruppi di punti. Per trovare le opzioni del collegamento, fare clic con il pulsante destro del mouse sul centro di un nodo e scegliere il menu Collegamento.

### File di base

> Scaricare il file di esempio fornito con questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Lacing.dyn](datasets/6-1/Lacing.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

Per dimostrare le operazioni di collegamento riportate di seguito, si utilizzerà questo file di base per definire l'elenco più breve, l'elenco più lungo e il prodotto cartesiano.

![Esempi di input](images/6-1/lacing.jpg)

> 1. Si modificherà il collegamento in *Point.ByCoordinates*, ma non cambierà nient'altro del grafico riportato sopra.

#### L'elenco più breve

Il modo più semplice consiste nel collegare gli input uno ad uno finché uno dei flussi non si esaurisce. Viene definito l'algoritmo "l'elenco più breve". Questo è il funzionamento di default per i nodi di Dynamo:

![Esempi di input](images/6-1/shortestListDiagram.jpg)

![Esempi di input](images/6-1/shortestList.jpg)

> Impostando il collegamento su *Più breve*, si ottiene una linea diagonale di base composta da cinque punti. I cinque punti indicano la lunghezza dell'elenco minore, pertanto il collegamento con l'elenco più breve viene interrotto dopo che si è arrivati alla fine di un elenco.

#### L'elenco più lungo

L'algoritmo "l'elenco più lungo" continua a collegare gli input e a riutilizzare gli elementi, finché tutti i flussi non si esauriscono:

![Esempi di input](images/6-1/longestListDiagram.jpg)

![Esempi di input](images/6-1/longestList.jpg)

> Modificando il collegamento in *Più lungo*, si ottiene una linea diagonale che si estende verticalmente. Con lo stesso metodo del diagramma concettuale, l'ultima voce nell'elenco di 5 voci verrà ripetuta per raggiungere la lunghezza dell'elenco più lungo.

#### Prodotto cartesiano

Infine, il metodo Prodotto cartesiano rende possibili tutti i collegamenti:

![Esempi di input](images/6-1/crossProductDiagram.jpg)

![Esempi di input](images/6-1/crossProduct.jpg)

> Modificando il collegamento in *Prodotto cartesiano*, si ottiene ogni combinazione tra ciascun elenco, fornendo una griglia di punti 5 x 10. Si tratta di una struttura di dati equivalente per il prodotto cartesiano come mostrato nel diagramma concettuale riportato sopra, tranne per il fatto che i dati sono ora un elenco di elenchi. Collegando una PolyCurve, è possibile vedere che ogni elenco viene definito dal relativo valore X, restituendo una riga di linee verticali.

