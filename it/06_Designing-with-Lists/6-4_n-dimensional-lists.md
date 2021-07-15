

## Elenchi n-dimensionali

Per rendere le cose più complicate, aggiungere ancora più livelli alla gerarchia. La struttura di dati può essere espansa ben oltre un elenco bidimensionale di elenchi. Poiché gli elenchi sono elementi di per sé in Dynamo, è possibile creare dati con il maggior numero possibile di quote.

Qui come analogia si utilizzeranno le bambole matrioske russe. Ogni elenco può essere considerato come un contenitore contenente più elementi. Ogni elenco ha le sue proprietà ed è anche considerato come il suo oggetto.

![Bambole](images/6-4/145493363_fc9ff5164f_o.jpg)

> Una serie di bambole matrioske russe (foto di [Zeta](https://www.flickr.com/photos/beppezizzi/145493363)) è un'analogia per gli elenchi n-dimensionali. Ogni livello rappresenta un elenco e ogni elenco contiene voci al suo interno. Nel caso di Dynamo, ogni contenitore può avere più contenitori all'interno (che rappresentano le voci di ogni elenco).

Gli elenchi n-dimensionali sono difficili da spiegare visivamente, ma in questo capitolo sono stati creati alcuni esercizi che si concentrano sull'utilizzo di elenchi che si estendono per oltre due dimensioni.

## Mappaggio e combinazioni

Il mappaggio è probabilmente la parte più complessa della gestione di dati in Dynamo ed è particolarmente importante quando si utilizzano gerarchie complesse di elenchi. Con la serie di esercizi riportati di seguito, sarà illustrato quando utilizzare il mappaggio e le combinazioni quando i dati diventano multidimensionali.

Le introduzioni preliminari di List.Map e List.Combine sono disponibili nella sezione precedente. Nell'ultimo esercizio riportato di seguito, questi nodi verranno utilizzati in una struttura di dati complessa.

### Esercizio - Elenchi 2D - Base

> Scaricare i file di esempio forniti con questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...). Un elenco completo di file di esempio è disponibile nell'Appendice. 
1.[n-Dimensional-Lists.dyn](datasets/6-4/n-Dimensional-Lists.dyn) 
2.[n-Dimensional-Lists.sat](datasets/6-4/n-Dimensional-Lists.sat)

Questo esercizio è il primo di una serie di tre che si concentra sull'articolazione della geometria importata. Ogni parte di questa serie di esercizi incrementerà la complessità della struttura di dati.

![Esercizio](images/6-4/Exercise/A/04.jpg)

> 1. Si inizia con il file .sat nella cartella dei file degli esercizi. È possibile selezionare questo file utilizzando il nodo *File Path*.
2. Con *Geometry.ImportFromSAT*, la geometria viene importata nell'anteprima di Dynamo come due superfici.

![Esercizio](images/6-4/Exercise/A/03.jpg)

> Per questo esercizio, si desidera eseguire una procedura semplice e utilizzare una delle superfici.

> 1. Selezionare l'indice di *1 *per acquisire la superficie superiore. Questa operazione viene eseguita con il nodo *List.GetItemAtIndex*.

![Esercizio](images/6-4/Exercise/A/02.jpg)

> Il passaggio successivo consiste nel dividere la superficie in una griglia di punti.

> 1. Utilizzando *Code Block*, inserire queste due righe di codice:
```
0..1..#10;
0..1..#5;
```

2. Con *Surface.PointAtParameter*, collegare i due valori di Code Block a *u *e *v*. Modificare il *collegamento* di questo nodo in *Prodotto vettoriale*.
3. L'output mostra la struttura di dati, visibile anche nell'anteprima di Dynamo.

![Esercizio](images/6-4/Exercise/A/01.jpg)

> 1. Per esaminare come è organizzata la struttura di dati, collegare *NurbsCurve.ByPoints* all'output di *Surface.PointAtParameter*.
2. Notare che sono presenti dieci curve che percorrono verticalmente la superficie.

![Esercizio](images/6-4/Exercise/A/00.jpg)

> 1. Un nodo *List.Transpose* di base inverte le colonne e le righe di un elenco di elenchi.
2. Collegando l'output di *List.Transpose* a *NurbsCurve.ByPoints*, si ottengono cinque curve che percorrono orizzontalmente la superficie.

### Esercizio - Elenchi 2D - Avanzato

Viene aumentata la complessità. Si supponga di voler eseguire un'operazione sulle curve create nell'esercizio precedente. Forse si desidera correlare queste curve ad un'altra superficie ed eseguire il loft tra di esse. Ciò richiede maggiore attenzione alla struttura di dati, ma la logica sottostante è la stessa.

![Esercizio](images/6-4/Exercise/B/07.jpg)

> 1. Iniziare con un passaggio dell'esercizio precedente, isolando la superficie superiore della geometria importata con il nodo *List.GetItemAtIndex*.

![Esercizio](images/6-4/Exercise/B/06.jpg)

> 1. Utilizzando *Surface.Offset*, eseguire l'offset della superficie di un valore di *10*.

![Esercizio](images/6-4/Exercise/B/05.jpg)

> 1. Allo stesso modo dell'esercizio precedente, definire *Code Block* con queste due righe di codice:
```
0..1..#10;
0..1..#5;
```

2. Collegare questi output a due nodi *Surface.PointAtParameter*, ciascuno con il *collegamento* impostato su *Prodotto vettoriale*. Uno di questi nodi è collegato alla superficie originale, mentre l'altro è collegato alla superficie di offset.

![Esercizio](images/6-4/Exercise/B/04.jpg)

> 1. Come nell'esercizio precedente, collegare gli output a due nodi *NurbsCurve.ByPoints*.
2. L'anteprima di Dynamo mostra due curve, corrispondenti a due superfici.

![Esercizio](images/6-4/Exercise/B/03.jpg)

> 1. Utilizzando *List.Create*, è possibile combinare i due gruppi di curve in un elenco di elenchi.
2. Notare dall'output che sono presenti due elenchi con dieci voci ciascuno, che rappresentano ogni serie di curve NURBS collegate.
3. Se si esegue *Surface.ByLoft*, è possibile rendere visivamente chiara questa struttura di dati. Il nodo esegue il loft di tutte le curve in ogni sottoelenco.

![Esercizio](images/6-4/Exercise/B/02.jpg)

> 1. Utilizzando *List.Transpose*, tenere presente che si stanno invertendo tutte le colonne e le righe. Questo nodo trasferirà due elenchi di dieci curve in dieci elenchi di due curve. Ora si ha ogni curva NURBS correlata alla curva adiacente sull'altra superficie.
2. Utilizzando *Surface.ByLoft*, si arriva a una struttura con nervatura.

![Esercizio](images/6-4/Exercise/B/01.jpg)

> 1. In alternativa a *List.Transpose* utilizzare *List.Combine*. In questo modo verrà eseguito un *"combinatore"* in ogni sottoelenco.
2. In questo caso, si utilizza *List.Create *come *"combinatore"*, che crea un elenco di ogni voce nei sottoelenchi.
3. Utilizzando il nodo *Surface.ByLoft*, si ottengono le stesse superfici del passaggio precedente. La trasposizione è più semplice da utilizzare in questo caso, ma quando la struttura di dati diventa ancora più complessa, *List.Combine* è più affidabile.

![Esercizio](images/6-4/Exercise/B/00.jpg)

> 1. Tornando indietro di alcuni passaggi, per cambiare l'orientamento delle curve nella struttura con nervatura, si desidera utilizzare List.Transpose prima di collegarsi a *NurbsCurve.ByPoints*. In questo modo verranno invertite le colonne e le righe, ottenendo 5 nervature orizzontali.

### Esercizio - Elenchi 3D

Adesso si farà un passo avanti. In questo esercizio, si utilizzeranno entrambe le superfici importate, creando una gerarchia di dati complessa. Tuttavia, il nostro obiettivo è completare la stessa operazione con la stessa logica sottostante.

![Esercizio](images/6-4/Exercise/C/12.jpg)

> 1. Iniziare con il file importato dell'esercizio precedente.

![Esercizio](images/6-4/Exercise/C/11.jpg)

> 1. Come nell'esercizio precedente, utilizzare il nodo *Surface.Offset* per eseguire l'offset di un valore di *10*.
2. Notare dall'output che sono state create due superfici con il nodo di offset.

![Esercizio](images/6-4/Exercise/C/10.jpg)

> 1. Allo stesso modo dell'esercizio precedente, definire Code Block con queste due righe di codice:
```
0..1..#20;
0..1..#10;
```

2. Collegare questi output a due nodi *Surface.PointAtParameter*, ciascuno con il collegamento impostato su *Globale*. Uno di questi nodi è collegato alle superfici originali, mentre l'altro è collegato alle superfici di offset.

![Esercizio](images/6-4/Exercise/C/09.jpg)

> 1. Come nell'esercizio precedente, collegare gli output a due nodi *NurbsCurve.ByPoints*.
2. Osservando l'output di *NurbsCurve.ByPoints*, si noterà che questo è un elenco di due elenchi, che è più complesso rispetto all'esercizio precedente. I dati vengono suddivisi in categorie in base alla superficie sottostante, pertanto è stato aggiunto un altro livello ai dati strutturati.
3. Notare che le cose diventano più complesse nel nodo *Surface.PointAtParameter*. In questo caso abbiamo un elenco di elenchi di elenchi.

![Esercizio](images/6-4/Exercise/C/08.jpg)

> 1. Utilizzando il nodo *List.Create*, le curve NURBS vengono unite in una struttura di dati, creando un elenco di elenchi di elenchi.
2. Collegando un nodo *Surface.ByLoft*, si ottiene una versione delle superfici originali, in quanto ciascuna di esse rimane nel proprio elenco, così come è stata creata dalla struttura di dati originale.

![Esercizio](images/6-4/Exercise/C/07.jpg)

> 1. Nell'esercizio precedente, è stato possibile utilizzare *List.Transpose* per creare una struttura a nervatura. Questo metodo non funzionerà qui. Una trasposizione deve essere utilizzata in un elenco bidimensionale e, poiché disponiamo di un elenco tridimensionale, un'operazione di "inversione di colonne e righe" non sarà facile. Tenere presente che gli elenchi sono oggetti, pertanto *List.Transpose* inverte gli elenchi con sottoelenchi, ma non inverte le curve NURBS ad un elenco inferiore nella gerarchia.

![Esercizio](images/6-4/Exercise/C/06.jpg)

> 1. *List.Combine* funzionerà meglio in questo caso. Per ottenere strutture di dati più complesse, si desidera utilizzare i nodi *List.Map* e *List.Combine*.
2. Utilizzando *List.Create *come *"combinatore"*, verrà creata una struttura di dati che funzionerà meglio.

![Esercizio](images/6-4/Exercise/C/05.jpg)

> 1. La struttura di dati deve ancora essere trasposta ad un livello più basso nella gerarchia. Per eseguire questa operazione, utilizzare *List.Map*. Funziona come *List.Combine*, tranne che con un elenco di input, anziché due o più.
2. La funzione che verrà applicata a *List.Map* è *List.Transpose*, che consente di invertire le colonne e le righe dei sottoelenchi all'interno dell'elenco principale.

![Esercizio](images/6-4/Exercise/C/04.jpg)

> 1. Infine, è possibile eseguire il loft delle curve NURBS con una gerarchia di dati corretta, restituendo una struttura a nervatura.

![Esercizio](images/6-4/Exercise/C/03.jpg)

> 1. Aggiungere profondità alla geometria con un nodo *Surface.Thicken*.

![Esercizio](images/6-4/Exercise/C/02.jpg)

> 1. Sarà utile aggiungere una superficie ottenendone due di supporto per questa struttura. Utilizzare quindi *List.GetItemAtIndex* per selezionare la superficie posteriore dalle superfici di loft dei passaggi precedenti.

![Esercizio](images/6-4/Exercise/C/01.jpg)

> 1. E con l'ispessimento di queste superfici selezionate, l'articolazione è completata.

![Esercizio](images/6-4/Exercise/C/00.jpg)

> Non è la sedia a dondolo più comoda di sempre, ma include molti dati.

![Esercizio](images/6-4/Exercise/C/32.jpg)

> Come ultimo passaggio, invertire la direzione dei membri striati. Dal momento che è stata utilizzata la trasposizione nell'esercizio precedente, si farà qualcosa di simile qui.

> 1. Poiché c'è un livello in più nella gerarchia, è necessario utilizzare *List.Map* con una funzione *List.Tranpose* per modificare la direzione delle curve NURBS.

![Esercizio](images/6-4/Exercise/C/31.jpg)

> 1. Potrebbe essere necessario aumentare il numero di pedate, in modo da poter modificare Code Block in:
```
0..1..#20;
0..1..#10;
```

![Esercizio](images/6-4/Exercise/C/30.jpg)

> La prima versione della sedia a dondolo era elegante, quindi il secondo modello offre una versione sportiva e informale della seduta.

