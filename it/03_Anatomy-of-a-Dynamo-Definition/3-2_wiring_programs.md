

## Fili

I fili si collegano tra i nodi per creare relazioni e stabilire il flusso del programma visivo. Si può pensare ai fili letteralmente come fili elettrici che trasmettono impulsi di dati da un oggetto a quello successivo.

### Flusso di programma

I fili collegano la porta di output di un nodo alla porta di input di un altro nodo. Questa direzionalità definisce il **flusso di dati** nel programma visivo. Sebbene sia possibile disporre i nodi in qualsiasi modo si desideri nell'area di lavoro, poiché le porte di output sono posizionate sul lato destro dei nodi e le porte di input si trovano sul lato sinistro, in genere è possibile affermare che il flusso del programma si sposta da sinistra verso destra.

![Flusso di programma](images/3-2/00-ProgramFlow.png)

### Creazione di fili

Per creare un filo, fare clic con il pulsante sinistro del mouse su una porta, quindi fare clic sulla porta di un altro nodo per creare un collegamento. Mentre è in corso il processo di creazione di un collegamento, il filo risulterà tratteggiato e verrà eseguito lo snap per diventare linee continue quando è stato collegato correttamente. I dati fluiscono sempre attraverso questo filo dall'output all'input. È tuttavia possibile creare il filo in entrambe le direzioni in termini di una sequenza di clic sulle porte collegate.

> Suggerimento: prima di completare il collegamento con il secondo clic, consentire lo snap del filo ad una porta e posizionare il cursore del mouse in tale punto per visualizzare la descrizione comando della porta.

![Creazione di fili](images/3-2/01-CreatingWires.png)

> 1. Fare clic sulla porta di output ```seq``` del nodo Number Sequence.
2. Mentre si sposta il mouse verso un'altra porta, il filo risulta tratteggiato.
3. Fare clic sulla porta di input ```y``` di Point.ByCoordinates per completare il collegamento.

### Modifica di fili

Spesso è necessario regolare il flusso di programma nel programma visivo modificando i collegamenti rappresentati dai fili. Per modificare un filo, fare clic sulla porta di input del nodo già collegato. Si hanno ora a disposizione due opzioni:

![Modifica di fili](images/3-2/02-EditingWires.png)

> 1. Si tratta del filo esistente.
2. Per modificare il collegamento in una porta di input, fare clic su un'altra porta di input.
3. Per rimuovere il filo, trascinarlo e fare clic con il pulsante sinistro del mouse sull'area di lavoro.

*Nota: è ora disponibile una funzionalità aggiuntiva per lo spostamento di più fili contemporaneamente. Questo argomento è disponibile in [http://dynamobim.org/dynamo-1-3-release/](http://dynamobim.org/dynamo-1-3-release/).

### Anteprime di fili

Per default, i fili verranno visualizzati in anteprima con un tratto di colore grigio. Quando si seleziona un nodo, verrà eseguito il rendering di qualsiasi filo collegato con la stessa evidenziazione di color azzurro del nodo.

![Anteprima di fili](images/3-2/03-WirePreview.png)

> 1. Filo di default
2. Filo evidenziato

Dynamo consente inoltre di personalizzare l'aspetto dei fili nell'area di lavoro tramite il menu Visualizza > Connettori. Qui è possibile passare dai fili delle curve a quelli delle polilinee e viceversa oppure disattivarli tutti insieme.

![Connettori dei fili](images/3-2/04-WireConnectors.png)

> 1. Tipo di connettore: curve
2. Tipo di connettore: polilinee

