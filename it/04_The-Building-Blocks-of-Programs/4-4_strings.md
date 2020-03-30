

## Stringhe

Formalmente, una **stringa** è una sequenza di caratteri che rappresenta una costante letterale o un tipo di variabile. Informalmente, una stringa sta programmando un linguaggio per il testo. Sono stati utilizzati i numeri, sia interi che decimali, per determinare i parametri ed è possibile fare lo stesso con il testo.

### Creazione di stringhe

Le stringhe possono essere utilizzate per una vasta gamma di applicazioni, tra cui la definizione di parametri personalizzati, l'annotazione di gruppi di documentazione e l'analisi tramite set di dati basati su testo. Il nodo String si trova in Core > Input Category.

![Esempi di stringhe](images/4-4/4-4-1-005.jpg)

> I nodi di esempio riportati sopra sono stringhe. Un numero può essere rappresentato come una stringa, una lettera o un'intera matrice di testo.

### Esecuzione di una query sulle stringhe

> Scaricare il file di esempio fornito con questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Building Blocks of Programs - Strings.dyn](datasets/4-4/Building Blocks of Programs - Strings.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

È possibile analizzare una grande quantità di dati rapidamente eseguendo una query sulle stringhe. Saranno descritte alcune operazioni di base che possono accelerare un workflow e aiutare ad ottenere l'interoperabilità del software.

Nell'immagine riportata di seguito è mostrata una stringa di dati proveniente da un foglio di calcolo esterno. La stringa rappresenta i vertici di un rettangolo nel piano XY. Si eseguiranno alcune operazioni di divisione delle stringhe nel mini-esercizio:

![StringSplit](images/4-4/4-4-1-001.jpg)

> 1. Il separatore ";" divide ogni vertice del rettangolo. In questo modo viene creato un elenco con 4 voci per ogni vertice.

![StringSplit](images/4-4/4-4-1-003.jpg)

> 1. Premendo il pulsante "*+*" al centro del nodo, si crea un nuovo separatore.
2. Aggiungere una stringa "*,*" all'area di disegno e collegarla all'input del nuovo separatore.
3. Il risultato è ora un elenco di dieci voci. Il nodo viene prima diviso in base a *separator0*, quindi in base a *separator1*.

Sebbene possa sembrare che l'elenco di voci riportato sopra contenga numeri, tali elementi vengono comunque considerati come singole stringhe in Dynamo. Per creare punti, è necessario convertire il tipo di dati da una stringa in un numero. Questa operazione viene eseguita con il nodo String.ToNumber.

![StringSplit](images/4-4/4-4-1-002.jpg)

> 1. Questo nodo è semplice. Collegare i risultati di String.Split all'input. L'output non risulta diverso, ma il tipo di dati è ora un *numero* anziché una *stringa*.

![StringToNumber](images/4-4/4-4-1-004.jpg)

> 1. Con alcune operazioni aggiuntive di base, ora si dispone di un rettangolo disegnato in corrispondenza dell'origine in base all'input di stringa originale.

### Manipolazione di stringhe

Poiché una stringa è un oggetto di testo generico, ospita un'ampia gamma di applicazioni. Si esamineranno alcune delle principali azioni in Core > String Category in Dynamo:

Questo metodo consente di unire insieme due stringhe in ordine. In questo modo, si acquisisce ogni stringa letterale in un elenco e si crea una stringa unita.

![Concatenazione](images/4-4/4-4-1-007.jpg)

> Nell'immagine riportata sopra è rappresentata la concatenazione di tre stringhe:

> 1. Aggiungere o sottrarre stringhe alla concatenazione facendo clic sui pulsanti +/- al centro del nodo.
2. L'output fornisce una stringa concatenata, con spazi e segni di punteggiatura inclusi.

Il metodo di unione è molto simile a quello della concatenazione, tranne per il fatto che presenta un livello aggiunto di punteggiatura.

Se è stato utilizzato Excel, è possibile che sia stato notato un file CSV. Questo è l'acronimo di Comma Separated Values, ossia valori separati da virgola. Per creare una struttura dei dati simile, si potrebbe utilizzare una virgola (o in questo caso, due trattini) come separatore con il nodo String.Join: ![Concatenazione](images/4-4/4-4-1-006.jpg)

> Nell'immagine riportata sopra è rappresentata l'unione di due stringhe:

> 1. L'input separator consente di creare una stringa che divide le stringhe unite.

### Utilizzo di stringhe

In questo esercizio, si utilizzeranno i metodi di esecuzione delle query e manipolazione delle stringhe per analizzare l'ultima strofa di [Fermandosi accanto a un bosco in una sera di neve](http://www.poetryfoundation.org/poem/171621) di Robert Frost. Non è l'applicazione più pratica, ma aiuterà a cogliere le azioni concettuali delle stringhe mentre vengono applicate alle righe leggibili di ritmo e rima.

![Divisione di una stringa](images/4-4/4-4-4/00.jpg)

> Iniziare con una stringa di base divisa della strofa. Si noti innanzitutto che la scrittura è formattata in base alle virgole. Questo formato verrà utilizzato per separare ogni riga in singoli elementi.

> 1. La stringa di base viene incollata in un nodo String.
2. Un altro nodo String viene utilizzato per indicare il separatore. In questo caso, si utilizza una virgola.
3. Un nodo String.Split viene aggiunto all'area di disegno e collegato alle due stringhe.
4. L'output ora mostra che le righe sono state separate in singoli elementi.

![Divisione di una stringa](images/4-4/4-4-4/01.jpg)

> Ora, viene la parte interessante della poesia: le ultime due righe. La strofa originale era un elemento di dati. Questi dati sono stati separati in singoli elementi nel primo passaggio. Ora occorre cercare il testo in questione. E sebbene sia *possibile* farlo selezionando le ultime due voci dell'elenco, se si trattasse di un intero libro, non si vorrebbe leggere tutto e isolare manualmente gli elementi.

> 1. Invece di cercare manualmente, utilizzare un nodo String.Contains per eseguire una ricerca di un set di caratteri. Questa operazione è simile all'esecuzione del comando "Trova" in un elaboratore di testi. In questo caso, se all'interno della voce viene trovata una sottostringa, viene restituito "true" o "false".
2. Nell'input "searchFor", definire una sottostringa che si sta cercando all'interno della strofa. Utilizzare un nodo String con il testo "And miles".
3. L'output fornisce un elenco di false e true. Questa logica booleana verrà utilizzata per filtrare gli elementi nel passaggio successivo.

![Divisione di una stringa](images/4-4/4-4-4/02.jpg)

> 1. List.FilterByBoolMask è il nodo che si desidera utilizzare per escludere false e true. L'output "in" restituisce le istruzioni con un input "mask" di "true", mentre l'output "out" restituisce quelle che sono "false".
2. L'output di "in" è come previsto e fornisce le due righe finali della strofa.

![Divisione di una stringa](images/4-4/4-4-4/03.jpg)

> Ora, si desidera enfatizzare la ripetizione della strofa unendo insieme le due righe. Quando si visualizza l'output del passaggio precedente, si noterà che nell'elenco sono presenti due voci:

> 1. Utilizzando due nodi List.GetItemAtIndex, è possibile isolare le voci utilizzando i valori di 0 e 1 come l'input index.
2. L'output per ogni nodo fornisce, in ordine, le due righe finali.

![Divisione di una stringa](images/4-4/4-4-4/04.jpg)

> Per unire questi due voci in una, utilizzare il nodo String.Join:

> 1. Dopo aver aggiunto il nodo String.Join, si noterà che è necessario un separatore.
2. Per creare il separatore, aggiungere un nodo String all'area di disegno e digitare una virgola.
3. L'output finale ha unito le ultime due voci in un unico elemento.

Può sembrare complesso isolare le ultime due righe ed è vero, perché le operazioni di stringa spesso richiedono un lavoro iniziale. Ma sono scalabili e possono essere applicate a set di dati di grandi dimensioni con relativa facilità. Se si lavora in modo parametrico con fogli di calcolo e interoperabilità, assicurarsi di tenere a mente le operazioni di stringa.

