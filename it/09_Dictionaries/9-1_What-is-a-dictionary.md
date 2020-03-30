# Dizionari
Dynamo 2.0 introduce il concetto di separazione del tipo di dati del dizionario dal tipo di dati dell'elenco. Questa modifica può portare a modifiche significative al modo in cui si creano e si utilizzano i dati nei workflow. Prima della versione 2.0, i dizionari e gli elenchi venivano combinati come tipo di dati. In breve, gli elenchi erano in realtà dizionari con chiavi di numeri interi.

* #### Che cos'è un dizionario?
Un dizionario è un tipo di dati composto da una raccolta di coppie chiave-valore, in cui ogni chiave è univoca in ogni raccolta. Un dizionario non ha un ordine e in pratica è possibile cercare elementi mediante una chiave anziché un valore di indice, come in un elenco. *In Dynamo 2.0, le chiavi possono essere solo stringhe.*

* #### Che cos'è un elenco?
Un elenco è un tipo di dati composto da una raccolta di valori ordinati. In Dynamo, gli elenchi utilizzano numeri interi come valori di indice.

* #### Perché questo aspetto è stato cambiato e perché dovrebbe essere importante?
La separazione dei dizionari dagli elenchi introduce i dizionari come cittadino di prima classe che è possibile utilizzare per memorizzare e cercare i valori in modo semplice e rapido, senza dover ricordare un valore di indice o mantenere una struttura di elenchi rigorosa durante tutto il workflow. Durante i test degli utenti, è stata riscontrata una riduzione significativa della dimensione del grafico quando sono stati utilizzati dizionari anziché diversi nodi ```GetItemAtIndex```.

* #### Quali sono i cambiamenti?
  * Sono state apportate modifiche alla *sintassi* che consentono di modificare la modalità di inizializzazione e utilizzo dei dizionari e degli elenchi nei blocchi di codice.
    * I dizionari utilizzano la seguente sintassi ```{key:value}```.
    * Gli elenchi utilizzano la seguente sintassi ```[value,value,value]```.
  * Nella libreria sono stati introdotti *nuovi nodi* per aiutare a creare, modificare o sottoporre a query i dizionari.
  * Gli elenchi creati nei blocchi di codice 1.x verranno migrati automaticamente al caricamento dello script nella nuova sintassi dell'elenco che utilizza parentesi quadre ```[ ]``` anziché parentesi graffe ```{ }```. ![IMMAGINE](images/9-1/DYN20_Dictionary.png)

* #### Perché dovrebbe essere importante? Per cosa si utilizzerebbero questi elementi?
Nel settore scientifico dei computer, i dizionari, come gli elenchi, sono raccolte di oggetti. Sebbene gli elenchi siano in un ordine specifico, i dizionari sono raccolte *non ordinate*. Non si basano su numeri sequenziali (indici), ma utilizzano *chiavi*.

Nella seguente immagine viene illustrato un caso di utilizzo potenziale di un dizionario. Spesso i dizionari vengono utilizzati per correlare due dati che potrebbero non avere una correlazione diretta. In questo caso, si sta collegando la versione spagnola di una parola alla versione inglese per una successiva ricerca. ![IMMAGINE](images/9-1/9-1_dictionaryExample.png)

