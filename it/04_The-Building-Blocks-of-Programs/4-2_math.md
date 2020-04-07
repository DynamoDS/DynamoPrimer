

## Matematica

Se il formato più semplice di dati è rappresentato dai numeri, il modo più semplice per correlare tali numeri è la matematica. Dai semplici operatori come la divisione fino alle funzioni trigonometriche e alle formule più complesse, la matematica è un ottimo modo per iniziare ad esplorare relazioni e modelli numerici.

### Operatori aritmetici

Gli operatori sono un insieme di componenti che utilizzano funzioni algebriche con due valori di input numerico, che producono un valore di output (addizione, sottrazione, moltiplicazione, divisione e così via). Questi sono disponibili in Operators > Actions.

|Icona|Nome|Sintassi|Input|Output|
| -- | -- | -- | -- | -- |
|![](../images/icons/add-Large.jpg)|Aggiungi|+|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/sub-Large.jpg)|Sottrazione|-|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/mul-Large.jpg)|Moltiplica|*|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/div-Large.jpg)|Dividi|/|var[]...[], var[]...[]|var[]...[]|

### Formula parametrica

> Scaricare il file di esempio fornito con questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Building Blocks of Programs - Math.dyn](datasets/4-2/Building Blocks of Programs - Math.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

Dagli operatori, il passaggio logico successivo consiste nel combinare operatori e variabili per formare una relazione più complessa attraverso le **formule**. Verrà creata una formula che può essere controllata da parametri di input, come i dispositivi di scorrimento.

![](images/4-2/4-2-5/01.png)

> 1. **Number Sequence:** definire una sequenza di numeri in base a tre input: *start, amount* e *step*. Questa sequenza rappresenta la "t" nell'equazione parametrica, pertanto si desidera utilizzare un elenco di dimensioni sufficienti per definire una spirale.

Con il passaggio precedente è stato creato un elenco di numeri per definire il dominio parametrico. La spirale dorata viene definita come l'equazione: ![](images/4-2/4-2-5/x.gif)=![](images/4-2/4-2-5/goldenSpiral.gif) e ![](images/4-2/4-2-5/y.gif)=![](images/4-2/4-2-5/goldenSpiral2.gif). Il gruppo di nodi riportato di seguito rappresenta questa equazione sotto forma di programmazione visiva.

![](images/4-2/4-2-5/02.png)

> Quando si scorre il gruppo di nodi, provare a prestare attenzione al parallelo tra il programma visivo e l'equazione scritta.

> 1. **Number Slider:** aggiungere due dispositivi di scorrimento numerici all'area di disegno. Questi dispositivi di scorrimento rappresenteranno le variabili *a* e *b* dell'equazione parametrica. Rappresentano una costante flessibile o parametri che è possibile regolare per ottenere il risultato desiderato.
2. ***:** il nodo della moltiplicazione è rappresentato da un asterisco. Questa opzione verrà utilizzata ripetutamente per collegare le variabili della moltiplicazione.
3. **Math.RadiansToDegrees:** i valori "*t*" devono essere convertiti in gradi per la loro valutazione nelle funzioni trigonometriche. Tenere presente che, in Dynamo, per default vengono utilizzati i gradi per valutare queste funzioni.
4. **Math.Pow:** come funzione di "*t*" e del numero "*e*" si crea la sequenza di Fibonacci.
5. **Math.Cos e Math.Sin:** queste due funzioni trigonometriche differenziano rispettivamente la coordinata x e la coordinata y di ogni punto parametrico.
6. **Watch: **ora è possibile vedere che l'output comprende due elenchi, che saranno le coordinate *x* e *y* dei punti utilizzati per generare la spirale.

### Dalla formula alla geometria

Ora, la maggior parte dei nodi del passaggio precedente funzionerà correttamente, ma richiede molto lavoro. Per creare un workflow più efficiente, esaminare i **blocchi di codice** (sezione 3.3.2.3) per definire una stringa di espressioni di Dynamo in un nodo. In questa serie successiva di passaggi, verrà utilizzata l'equazione parametrica per disegnare la spirale di Fibonacci. ![](images/4-2/4-2-5/03.png)

> 1. **Point.ByCoordinates:** collegare il nodo della moltiplicazione superiore all'input "*x*" e quello inferiore all'input "*y*". Viene visualizzata una spirale parametrica di punti sullo schermo.

![](images/4-2/4-2-5/03aaa.png)

> 1. **Polycurve.ByPoints:** collegare Point.ByCoordinates del passaggio precedente a *points*. È possibile lasciare *connectLastToFirst* senza input perché non si sta creando una curva chiusa. In questo modo si crea una spirale che passa per ogni punto definito nel passaggio precedente.

A questo punto è stata completata la spirale di Fibonacci. Da qui procedere ulteriormente con due esercizi separati, che si chiameranno Nautilus e Girasole. Si tratta di astrazioni di sistemi naturali, ma le due diverse applicazioni della spirale di Fibonacci saranno ben rappresentate.

### Dalla spirale al Nautilus

![](images/4-2/4-2-5/03.png)

> 1. Come punto di partenza, iniziare con lo stesso passaggio dell'esercizio precedente: la creazione di una serie di punti della spirale con il nodo **Point.ByCoordinates**.

![](images/4-2/4-2-5/03aa.png)

> 1. **Polycurve.ByPoints:** di nuovo, questo è il nodo dell'esercizio precedente, che verrà utilizzato come riferimento.
2. **Circle.ByCenterPointRadius:** in questo caso, verrà utilizzato un nodo Circle con gli stessi input del passaggio precedente. Il valore di default del raggio è *1.0*, pertanto viene visualizzato un output immediato dei cerchi. Diventa immediatamente evidente l'ulteriore divergenza dei punti rispetto all'origine.

![](images/4-2/4-2-5/03a.png)

> 1. **Circle.ByCenterPointRadius:** per creare una serie più dinamica di cerchi, collegare la sequenza numerica originale (sequenza "*t*") al valore del raggio.
2. **Number Sequence:** questa è la serie originale di "*t*". Collegando questo valore al valore del raggio, i centri dei cerchi sono ancora più divergenti dall'origine, ma il raggio dei cerchi aumenta, creando uno stravagante grafico a forma di cerchio di Fibonacci. Punti bonus se lo si rende 3D.

### Dal Nautilus al modello della ﬁllotassi

Ora che è stato creato un involucro di Nautilus circolare, si può passare alle griglie parametriche. Si utilizzerà una rotazione di base sulla spirale di Fibonacci per creare una griglia di Fibonacci e il risultato verrà modellato dopo la [crescita dei semi di girasole.](http://ms.unimelb.edu.au/~segerman/papers/sunflower_spiral_fibonacci_metric.pdf)

![](images/4-2/4-2-5/03.png)

> 1. Ancora una volta, come punto di partenza, si inizia con lo stesso passaggio dell'esercizio precedente: la creazione di una serie di punti della spirale con il nodo **Point.ByCoordinates**.

![](images/4-2/4-2-5/04.png)

> 1. **Geometry.Rotate:** sono disponibili diverse opzioni di Geometry.Rotate; assicurarsi di aver scelto il nodo con *geometry*, *basePlane* e *degrees* come input. Collegare **Point.ByCoordinates** all'input geometry.
2. **Plane.XY:** collegare all'input *basePlane*. Si ruoterà attorno all'origine, che è la stessa posizione della base della spirale.
3. **Range:** per l'input degrees, si desidera creare più rotazioni. È possibile farlo rapidamente con un componente di Range. Collegarlo all'input *degrees*.
4. **Number:** per definire l'intervallo di numeri, aggiungere tre nodi di numeri all'area di disegno in ordine verticale. Dall'alto verso il basso, assegnare rispettivamente i valori di *0.000, 360.000* e *120.000*. Questi determinano la rotazione della spirale. Notare i risultati di output del nodo **Range** dopo aver collegato i tre nodi di numero al nodo stesso.

L'output sta iniziando a somigliare ad un vortice. Regolare alcuni dei parametri di **Range** e vedere come cambiano i risultati: ![](images/4-2/4-2-5/05.png)

> 1. Modificare la dimensione di incremento del nodo **Range** da *120.000* a *36.000*. Notare che in questo modo si creano più rotazioni e quindi si fornisce una griglia più densa.

![](images/4-2/4-2-5/06.png)

> 1. Modificare la dimensione di incremento del nodo **Range** da *36.000* a *3.600*. In questo modo si ottiene una griglia molto più densa e la direzionalità della spirale non è chiara. Ecco, è stato creato un girasole.

