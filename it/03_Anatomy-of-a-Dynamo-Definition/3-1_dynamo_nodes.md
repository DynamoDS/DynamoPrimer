

## Nodi

In Dynamo, i **nodi** sono gli oggetti collegati per formare un programma visivo. Ogni **nodo** esegue un'operazione; talvolta può essere semplice come memorizzare un numero o può essere un'azione più complessa come creare o sottoporre a query la geometria.

### Struttura di un nodo

La maggior parte dei nodi in Dynamo è composta da cinque parti. Sebbene vi siano eccezioni, ad esempio i nodi di input, la struttura di ogni nodo può essere descritta come segue: ![Punto di interruzione del nodo in base alle coordinate](images/3-1/00-AnatomyOfANode.png)

> 1. Nome: il nome del nodo con una convenzione di denominazione Category.Name.
2. Principale: il corpo principale del nodo. Facendo clic con il pulsante destro del mouse qui vengono visualizzate le opzioni a livello dell'intero nodo.
3. Porte (entrata e uscita): i ricettori dei fili che forniscono i dati di input al nodo e i risultati dell'azione del nodo.
4. Icona di collegamento: indica l'opzione Collegamento specificata per gli input dell'elenco corrispondenti (verranno fornite ulteriori informazioni in seguito).
5. Valore di default: fare clic con il pulsante destro del mouse su una porta di input. Alcuni nodi presentano valori di default che è possibile utilizzare o meno.

### Condotti

Gli input e gli output per i nodi sono denominati porte e fungono da prese per i fili. I dati entrano nel nodo mediante le porte a sinistra e fuoriescono dal nodo dopo che è stata eseguita l'operazione a destra. Si prevede che le porte ricevano dati di un certo tipo. Ad esempio, se si collega un numero come *2.75* alle porte su un nodo Point.ByCoordinates, la creazione di un punto verrà eseguita correttamente. Se tuttavia si specifica *Red* nella stessa porta, verrà generato un errore.

> Suggerimento: posizionare il cursore su una porta per visualizzare una descrizione comando contenente il tipo di dati previsto.

![Etichette della porta-Punto per coordinate](images/3-1/01-Ports.png)

> 1. Etichetta della porta
2. Descrizione comando
3. Tipo di dati
4. Default Value

### Stati

In Dynamo viene fornita un'indicazione dello stato di esecuzione del programma visivo tramite il rendering dei nodi con diversi schemi di colori basati sullo stato di ogni nodo. Inoltre, se si posiziona il cursore o si fa clic con il pulsante destro del mouse sul nome o sulle porte, vengono visualizzate informazioni e opzioni aggiuntive.

![Stati](images/3-1/02-States2.png)

> 1. Attivo: i nodi con uno sfondo con nome di colore grigio scuro sono collegati correttamente, così come tutti i relativi input.
2. Inattivo: i nodi grigi sono inattivi e devono essere collegati con i fili per far parte del flusso di programma nell'area di lavoro attiva.
3. Stato di errore: il colore rosso indica che il nodo è in uno stato di errore.
4. Congelamento: un nodo trasparente ha l'opzione Congelamento attivata, con conseguente sospensione dell'esecuzione del nodo.
5. Selezionato: i nodi attualmente selezionati hanno un'evidenziazione di color azzurro sul bordo.
6. Avvertimento: i nodi gialli si trovano in uno stato di avviso, pertanto potrebbero contenere tipi di dati errati.
7. Anteprima di sfondo: il colore grigio scuro indica che l'anteprima della geometria è disattivata.

Se il programma visivo contiene avvertimenti o errori, in Dynamo verranno fornite ulteriori informazioni sul problema. Qualsiasi nodo giallo avrà anche una descrizione comando sopra il nome. Posizionare il cursore del mouse sulla descrizione comando per espanderla.

> Suggerimento: con queste informazioni sulla descrizione comando, esaminare i nodi a monte per verificare se la struttura di dati o il tipo di dati richiesto è errato.

![Descrizione comando degli errori dei nodi](images/3-1/03-WarningTooltip.jpg)

> 1. Descrizione comando di avviso: impossibile interpretare un valore "null" o i dati come Double, ossia un numero.
2. Utilizzare il nodo Watch per esaminare i dati di input.
3. A monte il nodo Number memorizza Red e non un numero.

