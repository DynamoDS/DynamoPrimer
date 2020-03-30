

## Creare

È possibile creare una serie di elementi di Revit in Dynamo con controllo parametrico completo. I nodi di Revit in Dynamo offrono la possibilità di importare elementi da geometrie generiche in tipi di categoria specifici (come muri e pavimenti). In questa sezione, si esaminerà l'importazione di elementi parametricamente flessibili con componenti adattivi.

![Creation](images/8-4/creation.jpg)

### Componenti adattivi

Un componente adattivo è una categoria di famiglia flessibile che si presta bene alle applicazioni generative. Al momento della creazione dell'istanza, è possibile creare un elemento geometrico complesso che sia controllato dalla posizione fondamentale dei punti adattivi.

![Componente adattivo](images/8-4/ac.jpg)

> Esempio di un componente adattivo a tre punti nell'Editor di famiglie. Questo genera una trave reticolare definita dalla posizione di ciascun punto adattivo. Nell'esercizio seguente, si utilizzerà questo componente per generare una serie di travi reticolari su una facciata.

#### Principi di interoperabilità

Il componente adattivo è un buon esempio di procedure ottimali di interoperabilità. È possibile creare una serie di componenti adattivi definendo i punti adattivi fondamentali. Inoltre, quando si trasferiscono questi dati in altri programmi, è possibile ridurre la geometria in dati semplici. L'importazione e l'esportazione con un programma come Excel seguono una logica simile.

Si supponga che un consulente per le facciate voglia conoscere la posizione degli elementi della trave reticolare senza dover eseguire l'analisi attraverso una geometria completamente articolata. In preparazione alla fabbricazione, il consulente può fare riferimento alla posizione dei punti adattivi per rigenerare la geometria in un programma come Inventor.

Il workflow che si imposterà nell'esercizio seguente consente di accedere a tutti questi dati durante la generazione della definizione per la creazione di elementi di Revit. Con questo processo, è possibile unire la concettualizzazione, la documentazione e la fabbricazione in un workflow senza problemi. Ciò crea un processo più intelligente ed efficiente per l'interoperabilità.

#### Più elementi ed elenchi

![Esercizio](images/8-4/Exercise/03.jpg)

Nell'esercizio seguente viene illustrato come Dynamo fa riferimento ai dati per la creazione di elementi di Revit. Per generare più componenti adattivi, è necessario definire un elenco di elenchi, dove ogni elenco contiene tre punti che rappresentano ciascun punto del componente adattivo. Questo aspetto è importante da tenere presente quando si gestiscono le strutture di dati in Dynamo.

### Esercizio

> Scaricare i file di esempio forniti con questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...). Un elenco completo di file di esempio è disponibile nell'Appendice.

> 1. [Creating.dyn](datasets/8-4/Creating.dyn)
2. [ARCH-Creating-BaseFile.rvt](datasets/8-4/ARCH-Creating-BaseFile.rvt)

![Esercizio](images/8-4/Exercise/10.jpg)

> A partire dal file di esempio di questa sezione (o proseguendo con il file di Revit della sessione precedente), viene visualizzata la stessa massa di Revit.

> 1. Questo è il file aperto.
2. Questo è il sistema di travi reticolari creato con Dynamo, collegato in modo intelligente alla massa di Revit.

![Esercizio](images/8-4/Exercise/08.jpg)

> Sono stati utilizzati i nodi *Select Model Element* e *Select Face*. Ora si scenderà di un ulteriore livello nella gerarchia della geometria e si utilizzerà *Select Edge*. Con il risolutore Dynamo impostato sull'esecuzione *"Automatico"*, il grafico viene aggiornato costantemente in base alle modifiche apportate nel file di Revit. Il bordo selezionato viene collegato dinamicamente alla topologia dell'elemento di Revit. Se la topologia* non cambia, la connessione tra Revit e Dynamo rimane intatta.

> 1. Selezionare la curva più in alto della facciata con vetrate. Questa si estende per l'intera lunghezza dell'edificio. Se non si riesce a selezionare il bordo, ricordarsi di scegliere la selezione in Revit passando il cursore del mouse sul bordo e premendo *"TAB"* finché il bordo desiderato non viene evidenziato.
2. Utilizzando due nodi *Select Edge*, selezionare ogni bordo che rappresenta l'inclinazione al centro della facciata.
3. Ripetere la stessa operazione per i bordi inferiori della facciata in Revit.
4. I nodi *Watch* mostrano che ora sono presenti linee in Dynamo. Questo valore viene convertito automaticamente nella geometria di Dynamo poiché i bordi stessi non sono elementi di Revit. Queste curve sono i riferimenti che verranno utilizzati per creare un'istanza di travi reticolari adattive nella facciata.

**Nota: per mantenere una topologia coerente, si sta facendo riferimento ad un modello che non ha facce o bordi supplementari aggiunti. Sebbene i parametri possano modificarne la forma, il modo in cui è stata creata rimane coerente.*

![Esercizio](images/8-4/Exercise/07.jpg)

> È necessario innanzitutto unire le curve e accorparle in un elenco. In questo modo è possibile *"raggruppare"* le curve per eseguire operazioni di geometria.

> 1. Creare un elenco per le due curve al centro della facciata.
2. Unire le due curve in una PolyCurve inserendo il componente *List.Create* in un nodo *Polycurve.ByJoinedCurves*.
3. Creare un elenco per le due curve nella parte inferiore della facciata.
4. Unire le due curve in una PolyCurve inserendo il componente *List.Create* in un nodo *Polycurve.ByJoinedCurves*.
5. Infine, unire le tre curve principali (una linea e due PolyCurve) in un elenco.

![Esercizio](images/8-4/Exercise/06.jpg)

> Si desidera sfruttare la curva superiore, che è una linea, e rappresenta l'estensione completa della facciata. Verranno creati piani lungo questa linea per intersecare il gruppo di curve raggruppate in un elenco.

> 1. Con un *blocco di codice*, definire un intervallo utilizzando la sintassi: ```0..1..#numberOfTrusses;```.
2. Inserire un *dispositivo di scorrimento dei numeri interi* nell'input per il blocco di codice. Come si poteva immaginare, questo rappresenterà il numero di travi reticolari. Notare che il dispositivo di scorrimento controlla il numero di elementi nell'intervallo definito da *0 *a *1*.
3. Inserire il *blocco di codice* nell'input *param* di un nodo *"Curve.PlaneAtParameter"* e inserire il bordo superiore all'input *curve*. Questo fornirà dieci piani, distribuiti uniformemente nell'estensione della facciata.

![Esercizio](images/8-4/Exercise/05.jpg)

> Un piano è un elemento di geometria astratto, che rappresenta uno spazio bidimensionale infinito. I piani sono ideali per le curve di livello e l'intersezione, come vengono impostati in questo passaggio.

> 1. Utilizzando il nodo *Geometry.Intersect* (notare il collegamento Globale), inserire *Curve.PlaneAtParameter* nell'input *entity* del nodo *Geometry.Intersect*. Inserire il nodo *List.Create* principale all'input *geometry*. Nella finestra di Dynamo vengono ora visualizzati i punti che rappresentano l'intersezione di ogni curva con i piani definiti.

![Esercizio](images/8-4/Exercise/04.jpg)

> Notare che l'output è un elenco di elenchi di elenchi. Sono troppi elenchi per gli scopi desiderati. Si intende eseguire una riduzione di livelli parziale qui. Occorre scendere di un livello nell'elenco e ridurre i livelli del risultato. A tale scopo, è necessario utilizzare l'operazione *List.Map*, come illustrato nel capitolo dell'elenco della guida introduttiva.

> 1. Inserire il nodo *Geometry.Intersect* nell'input dell'elenco *List.Map*.
2. Inserire un nodo *Flatten* nell'input f(x) di *List.Map*. I risultati forniscono 3 elenchi, ciascuno con un conteggio uguale al numero di travi reticolari.
3. Occorre modificare questi dati. Per creare un'istanza della trave reticolare, è necessario utilizzare lo stesso numero di punti adattivi definiti nella famiglia. Si tratta di un componente adattivo a tre punti, pertanto anziché tre elenchi con 10 elementi ciascuno (numberOfTrusses), si desidera ottenere 10 elenchi di tre elementi ciascuno. In questo modo è possibile creare 10 componenti adattivi.
4. Inserire *List.Map* in un nodo *List.Transpose*. Ora si dispone dell'output di dati desiderato.
5. Per verificare che i dati siano corretti, aggiungere un nodo *Polygon.ByPoints* all'area di disegno e controllare con l'anteprima di Dynamo.

![Esercizio](images/8-4/Exercise/03.jpg)

> Allo stesso modo in cui sono stati creati i poligoni, disporre i componenti adattivi.

> 1. Aggiungere un nodo *AdaptiveComponent.ByPoints* all'area di disegno, inserire il nodo *List.Transpose* nell'input *points*.
2. Utilizzando un nodo *Family Types*, selezionare la famiglia *"AdaptiveTruss"* e inserirla nell'input *familySymbol* del nodo *AdaptiveComponent.ByPoints*.

![Esercizio](images/8-4/Exercise/02.jpg)

> Se si effettua il controllo in Revit, ora le dieci travi reticolari presentano una spaziatura uniforme sulla facciata.

![Esercizio](images/8-4/Exercise/01.jpg)

> 1. Adattando il grafico, aumentare il valore *numberOfTrusses* a *40* modificando il *dispositivo di scorrimento*. Molte travi reticolari non sono molto realistiche, ma il collegamento parametrico funziona.

![Esercizio](images/8-4/Exercise/00.jpg)

> 1. Semplificando il sistema di travi reticolari, è possibile ridurre il valore a *15* per *numberOfTrusses*.

![Esercizio](images/8-4/Exercise/00a.jpg)

> E per il test finale, selezionando la massa in Revit e modificando i parametri di istanza, è possibile modificare la forma dell'edificio e osservare come la trave reticolare fa la stessa cosa. Ricordarsi che questo grafico di Dynamo deve essere aperto per poter visualizzare questo aggiornamento e il collegamento verrà interrotto non appena verrà chiuso.

### Elementi forma diretta

Un altro metodo per importare la geometria di Dynamo parametrica in Revit è con DirectShape. In breve, l'elemento DirectShape e le classi correlate supportano la possibilità di memorizzare forme geometriche create esternamente in un documento di Revit. La geometria può includere mesh o solidi chiusi. DirectShape è principalmente destinato all'importazione di forme da altri formati di dati, ad esempio IFC o STEP, dove non sono disponibili informazioni sufficienti per creare un elemento di Revit "reale". Analogamente al workflow IFC e STEP, la funzionalità DirectShape funziona correttamente con l'importazione di geometrie create da Dynamo nei progetti di Revit come elementi reali.

Si esaminerà dettagliatamente l'argomento e si svolgerà un esercizio per importare la geometria di Dynamo come DirectShape nel progetto di Revit. Utilizzando questo metodo, è possibile assegnare la categoria, il materiale e il nome di una geometria importata, mantenendo comunque un collegamento parametrico al grafico di Dynamo.

### Esercizio

> Scaricare i file di esempio forniti con questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...). Un elenco completo di file di esempio è disponibile nell'Appendice.

> 1. [DirectShape.dyn](datasets/8-4/DirectShape.dyn)
2. [ARCH-DirectShape-BaseFile.rvt](datasets/8-4/ARCH-DirectShape-BaseFile.rvt)

![Esercizio](images/8-4/Exercise/DS-05.png)

> Per iniziare, aprire il file di esempio per questa lezione: ARCH-DirectShape-BaseFile.rvt.

> 1. Nella vista 3D, si utilizza la massa dell'edificio della lezione precedente.
2. Lungo il bordo dell'atrio vi è una curva di riferimento, che verrà utilizzata come curva di riferimento in Dynamo.
3. Lungo il bordo opposto dell'atrio vi è un'altra curva di riferimento, a cui si farà riferimento anche in Dynamo.

![Esercizio](images/8-4/Exercise/DS-04.png)

> 1. Per fare riferimento alla geometria in Dynamo, verrà utilizzato *Select Model Element* per ogni membro in Revit. Selezionare la massa in Revit e importare la geometria in Dynamo utilizzando *Element.Faces*. La massa dovrebbe ora essere visibile nell'anteprima di Dynamo.
2. Importare una curva di riferimento in Dynamo utilizzando *Select Model Element* e *CurveElement.Curve*.
3. Importare l'altra curva di riferimento in Dynamo utilizzando *Select Model Element* e *CurveElement.Curve*.

![Esercizio](images/8-4/Exercise/DS-03.png)

> 1. Eseguendo lo zoom indietro e la panoramica a destra nel grafico di esempio, viene visualizzato un gruppo esteso di nodi; si tratta di operazioni geometriche che generano la struttura del tetto a pergolato visibile nell'anteprima di Dynamo. Questi nodi vengono generati utilizzando la funzionalità *Nodo da aggiungere al codice*, come descritto nella [sezione del blocco di codice](../07_Code-Block/7-2_Design-Script-syntax.md#Node) della guida introduttiva.
2. La struttura è gestita da tre parametri principali: Diagonal Shift, Camber e Radius.

![Esercizio](images/8-4/Exercise/DS-06.png)

> Zoom con un'occhiata ravvicinata ai parametri per questo grafico. È possibile adattarli per ottenere diversi output della geometria.

![Esercizio](images/8-4/Exercise/DS-02.jpg)

> 1. Se si trascina il nodo *DirectShape.ByGeometry* nell'area di disegno, è possibile notare che presenta quattro input: **geometry, category, material** e **name**.
2. La geometria sarà il solido creato dalla parte di creazione della geometria del grafico.
3. L'input della categoria viene scelto tramite il nodo *Categories* dell'elenco a discesa. In questo caso si utilizzerà "Telaio strutturale".
4. L'input del materiale viene selezionato attraverso la serie di nodi riportata sopra, anche se in questo caso può essere definito più semplicemente come "Default".

![Esercizio](images/8-4/Exercise/DS-01.jpg)

> Dopo aver eseguito Dynamo, tornando in Revit, il progetto contiene la geometria importata sul tetto. Si tratta di un elemento del telaio strutturale, anziché di un modello generico. Il collegamento parametrico a Dynamo rimane intatto.


