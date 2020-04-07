

# Nodi Dictionary

Dynamo 2.0 consente di visualizzare un'ampia varietà di nodi Dictionary da utilizzare. Ciò include i nodi di *Create, Action e Query*.

![IMMAGINE](images/9-2/9-2_dictionaryNodes.png)

* ```Dictionary.ByKeysValues``` creerà un dizionario con le chiavi e i valori forniti *(il numero di voci corrisponderà all'input più breve dell'elenco).*
* ```Dictionary.Components``` produrrà i componenti del dizionario di input *(è l'opposto del nodo Create).*
* ```Dictionary.RemoveKeys``` produrrà un nuovo oggetto dizionario con le chiavi di input rimosse.
* ```Dictionary.SetValueAtKeys``` creerà un nuovo dizionario basato sulle chiavi di input e sui valori per sostituire il valore corrente nelle chiavi corrispondenti.
* ```Dictionary.ValueAtKey``` restituirà il valore nella chiave di input.
* ```Dictionary.Count``` indicherà il numero di coppie chiave-valore presenti nel dizionario.
* ```Dictionary.Keys``` restituirà le chiavi attualmente memorizzate nel dizionario.
* ```Dictionary.Values``` restituirà i valori attualmente memorizzati nel dizionario.

##### _La correlazione complessiva dei dati con i dizionari rappresenta un'alternativa significativa al vecchio metodo di utilizzo di indici ed elenchi._

