

## Creazione di un nodo personalizzato

Dynamo offre diversi metodi per la creazione di nodi personalizzati. È possibile creare nodi personalizzati da zero, da un grafico esistente o esplicitamente in C#. In questa sezione verrà descritta la creazione di un nodo personalizzato nell'interfaccia utente di Dynamo da un grafico esistente. Questo metodo è ideale per la pulizia dell'area di lavoro, nonché per la creazione di una sequenza di nodi da riutilizzare altrove.

### Nodi personalizzati per il mappaggio UV

Nell'immagine seguente, viene associato un punto da una superficie ad un'altra utilizzando le coordinate UV. Questo concetto verrà utilizzato per creare una superficie a pannelli che faccia riferimento alle curve nel piano XY. Qui verranno creati pannelli quadrangolari per la suddivisione in pannelli, ma utilizzando la stessa logica, è possibile creare una vasta gamma di pannelli con il mappaggio UV. Si tratta di un'ottima opportunità per lo sviluppo di nodi personalizzati perché si potrà ripetere più facilmente un processo simile in questo grafico o in altri workflow di Dynamo.

![](images/10-2/uvMap2-01-01.jpg)

### Creazione di un nodo personalizzato da un grafico esistente

> Scaricare e decomprimere i file di esempio per questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...). Un elenco completo di file di esempio è disponibile nell'Appendice. [UV-CustomNode.zip](datasets/10-2/UV-CustomNode.zip)

Iniziare creando un grafico che si desidera nidificare in un nodo personalizzato. In questo esempio, verrà creato un grafico che associa i poligoni da una superficie di base ad una superficie di destinazione utilizzando le coordinate UV. Questo processo di mappaggio UV è un metodo utilizzato di frequente, il che lo rende un buon candidato per un nodo personalizzato. Per ulteriori informazioni sulle superfici e sullo spazio UV, vedere la sezione 5.5. Il grafico completo è *UVmapping_Custom-Node.dyn* del file .zip scaricato in precedenza.

![Esercizio](images/10-2/UVmapping01.jpg)

> 1. **Code Block:** creare un intervallo di 10 numeri compreso tra -45 e 45 utilizzando un blocco di codice.
2. **Point.ByCoordinates:** collegare l'output di Code Block agli input x e y e impostare il collegamento su Globale. Ora dovrebbe essere presente una griglia di punti.
3. **Plane.ByOriginNormal:** collegare l'output *Point* all'input *"origin"* per creare un piano in corrispondenza di ciascuno dei punti. Verrà utilizzato il vettore normale di default (0,0,1).
4. **Rectangle.ByWidthLength:** collegare i piani del passaggio precedente all'input *"plane"* e utilizzare un Code Block con un valore di *10* per specificare la larghezza e la lunghezza.

Ora dovrebbe essere visibile una griglia di rettangoli. Associare questi rettangoli ad una superficie di destinazione utilizzando le coordinate UV.

![Esercizio](images/10-2/UVmapping02.jpg)

> 1. **Polygon.Points:** collegare l'output Rectangle del passaggio precedente all'input *polygon* per estrarre i punti degli angoli di ogni rettangolo. Questi sono i punti che verranno associati alla superficie di destinazione.
2. **Rectangle.ByWidthLength:** utilizzare un Code Block con un valore di *100* per specificare la larghezza e la lunghezza di un rettangolo. Sarà il contorno della superficie di base.
3. **Surface.ByPatch:** collegare l'output Rectangle del passaggio precedente all'input *"closedCurve"* per creare una superficie di base.
4. **Surface.UVParameterAtPoint:** collegare l'output *Point* del nodo *Polygon.Points* e l'output *Surface* del nodo *Surface.ByPatch* per restituire il parametro UV in ogni punto.

Ora che sono presenti una superficie di base e un gruppo di coordinate UV, è possibile importare una superficie di destinazione e associare i punti tra le superfici.

![Esercizio](images/10-2/UVmapping03.jpg)

> 1. **File Path:** selezionare il percorso del file della superficie che si desidera importare. Il tipo di file deve essere .SAT. Fare clic sul pulsante *"Sfoglia..."* e individuare il file *UVmapping_srf.sat* nel file .zip scaricato in precedenza.
2. **Geometry.ImportFromSAT:** collegare il percorso del file per importare la superficie. La superficie importata dovrebbe essere visualizzata nell'anteprima della geometria.
3. **UV:** collegare l'output del parametro UV ad un nodo *UV.U* e *UV.V*.
4. **Surface.PointAtParameter:** collegare la superficie importata, nonché le coordinate u e v. Ora dovrebbe essere visualizzata una griglia di punti 3D sulla superficie di destinazione.

Il passaggio finale consiste nell'utilizzare i punti 3D per costruire superfici di chiusura rettangolari.

![Esercizio](images/10-2/UVmapping04.jpg)

> 1. **PolyCurve.ByPoints:** collegare i punti sulla superficie per costruire una PolyCurve attraverso i punti.
2. **Boolean:** aggiungere un valore booleano all'area di lavoro e collegarlo all'input *"connectLastToFirst"* e attivare True per chiudere le PolyCurve. Ora dovrebbero essere visualizzati i rettangoli associati alla superficie.
3. **Surface.ByPatch:** collegare le PolyCurve all'input *"closedCurve"* per costruire superfici di chiusura.

A questo punto, selezionare i nodi che si desidera nidificare in un nodo personalizzato, pensando agli input e agli output del nodo stesso. Si desidera che il nodo personalizzato sia il più flessibile possibile, pertanto dovrebbe essere associabile ad eventuali poligoni, non solo ai rettangoli.

![Esercizio](images/10-2/UVmapping05.jpg)

> Selezionare i nodi indicati sopra (a partire da *Polygon.Points*), fare clic con il pulsante destro del mouse sull'area di lavoro e selezionare *Nuovo nodo dalla selezione*.

![Esercizio](images/10-2/UVmapping06.jpg)

> Nella finestra di dialogo Proprietà nodo personalizzato, assegnare un nome, una descrizione e una categoria al nodo personalizzato.

![Esercizio](images/10-2/UVmapping07.jpg)

> Il nodo personalizzato ha notevolmente ripulito l'area di lavoro. Notare che gli input e gli output sono stati denominati in base ai nodi originali. Modificare il nodo personalizzato per rendere i nomi più descrittivi.

![Esercizio](images/10-2/UVmapping08.jpg)

> Fare doppio clic sul nodo personalizzato per modificarlo. Verrà aperta un'area di lavoro con uno sfondo giallo che rappresenta l'interno del nodo.

> 1. **Input:** modificare i nomi di input in *baseSurface* e *targetSurface*.
2. **Output:** aggiungere un altro output ai poligoni associati.
> Salvare il nodo personalizzato e tornare all'area di lavoro iniziale.

![Esercizio](images/10-2/UVmapping09.jpg)

> Il nodo **MapPolygonsToSurface** riflette le modifiche appena apportate.

È inoltre possibile potenziare la robustezza del nodo personalizzato mediante l'aggiunta di **commenti personalizzati**. I commenti possono aiutare a visualizzare suggerimenti sui tipi di input e output o spiegare le funzionalità del nodo. I commenti vengono visualizzati quando l'utente posiziona il cursore del mouse su un input o un output di un nodo personalizzato.

![Commento personalizzato](images/10-2/UVmapping_Custom1.jpg)

> Fare doppio clic sul nodo personalizzato per modificarlo. Verrà riaperta l'area di lavoro con lo sfondo giallo.

> 1. Iniziare a modificare il blocco del codice di input. Per iniziare a scrivere un commento, digitare "//" seguito dal testo del commento. Digitare tutto ciò che potrebbe essere utile per chiarire il nodo. Qui verrà descritto l'input *targetSurface*.
2. Definire inoltre il valore di default per *inputSurface* impostando il tipo di input uguale ad un valore. Qui, si imposterà il valore di default sul nodo Surface.ByPatch originale impostato.

![Commento personalizzato](images/10-2/UVmapping_Custom1_.jpg)

> I commenti possono essere applicati anche agli output. Iniziare a modificare il testo nel blocco del codice di output. Per iniziare a scrivere un commento, digitare "//" seguito dal testo del commento. Qui verranno chiariti gli output *Polygons* e *surfacePatches* aggiungendo una descrizione più approfondita.

![Commento personalizzato](images/10-2/UVmapping_Custom2.jpg) >

1. Posizionare il cursore del mouse sugli input del nodo personalizzato per visualizzare i commenti.
2. Con il valore di default impostato su *inputSurface*, è inoltre possibile eseguire la definizione senza un input Surface.

