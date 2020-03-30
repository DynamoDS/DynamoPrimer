

## Importazione della geometria

Esistono diversi modi per importare la geometria in Dynamo. È stato dimostrato come importare le mesh utilizzando *Mesh Toolkit* nella sezione precedente. È inoltre possibile importare modelli di solidi da file .SAT. Con questi processi, è possibile sviluppare la geometria in un'altra piattaforma, caricarla in Dynamo e applicare operazioni parametriche attraverso la programmazione visiva.

Un altro metodo per l'importazione della geometria prevede l'utilizzo di un processo denominato *ATF Translation*. In questo caso, è possibile importare non solo la geometria, ma la struttura di un file. Ad esempio, è possibile scegliere quali layer di un file DWG importare anziché importare l'intero modello. Lo si mostrerà di seguito più in dettaglio.

### Importazione della geometria da un file DWG

I nodi per l'importazione di un file DWG nell'ambiente Dynamo sono disponibili nella scheda di *traslazione* (nota: questi strumenti sono disponibili solo in [Dynamo Studio](http://www.autodesk.com/products/dynamo-studio/overview)). Nei seguenti esempi è mostrata una serie di componenti utilizzati per cercare un file, importarne il contenuto e convertirlo in geometria di Dynamo utilizzabile. Dynamo offre anche la possibilità di filtrare e selezionare oggetti specifici da importare da un file DWG, come illustrato di seguito. Per ulteriori informazioni sull'importazione della geometria da un file DWG, leggere il [post del blog di Ben Goh qui](http://dynamobim.org/dwg-import-in-dynamo-studio-0-9-1/).

### Recupero di oggetti importati

Il modo più semplice per importare un file DWG in Dynamo Studio consiste nell'importare l'intero file nell'area di lavoro:

![GetImportedObjects](images/5-8/GetImportedObjects.jpg)

> 1. Utilizzare il componente File Path per individuare il file DWG da importare in Dynamo.
2. Collegarlo a **FileLoader.FromPath** per leggere il file.
3. Utilizzare il componente **FileLoader.GetImportedObjects** per analizzare la geometria in Dynamo Studio.
4. **ImportedObject.ConvertToGeometries** convertirà gli oggetti in geometria utilizzabile nell'area di lavoro di Dynamo.

Come mostrato nell'immagine precedente, tutti i tipi di geometria nel file DWG, ovvero superfici, mesh, curve e linee, vengono importati in Dynamo.

### Filtro di oggetti

Per specificare quali geometrie vengono importate dal file DWG, è possibile aggiungere alla definizione ulteriori nodi **ObjectFilter**. Il nodo **ObjectFilter** è compatibile con **FileLoader** o con un elenco di **ImportedObject** e genera un elenco **ImportedObject**.

Nelle seguenti immagini sono mostrate le istruzioni condizionali all'interno di ogni nodo **ObjectFilter**. Qualsiasi **ImportedObject** che soddisfa una qualunque delle condizioni elencate passerà attraverso il filtro. Il filtraggio può essere basato su etichetta del layer (ossia il nome del layer), tipo di geometria, colore diffuso e così via e può essere utilizzato insieme ad altri filtri per affinare la selezione.

![ObjectFilter1](images/5-8/ObjectFilter01.jpg)

> 1. Sostituire **FileLoader.GetImportedObjects** con **ObjectFilter** per cercare condizioni specifiche nel file DWG. In questo caso verrà importata solo la geometria di superficie, rimuovendo tutta la geometria della curva e della linea visibile nell'immagine precedente.
2. Collegare il filtro a **ImportedObject.ConvertToGeometries** per importare la geometria filtrata.

Aggiungendo due filtri con istruzioni condizionali differenti, è possibile dividere l'elenco della geometria in più flussi:

![ObjectFilter2](images/5-8/ObjectFilter02.jpg)

> 1. Sostituire **FileLoader.GetImportedObjects** con due moduli **ObjectFilter** di diverse istruzioni condizionali. In questo modo la geometria verrà separata da un file in due diversi flussi.
2. Collegare il filtro a **ImportedObject.ConvertToGeometries** per importare la geometria filtrata.
3. Collegare **ImportedObject.ConvertToGeometries** a **Display.ByGeometryColor** per visualizzare ogni flusso in un colore diverso.

### Selezione di oggetti esplicita

Il nodo **ObjectSelector** fornisce un metodo alternativo per l'importazione di oggetti dal file DWG. Anziché utilizzare i filtri, questo metodo consentirà di scegliere in modo specifico quali oggetti e layer verranno importati in Dynamo.

![Da punto a curva](images/5-8/ObjectSelector.jpg)

> 1. Sostituire **FileLoader.GetImportedObjects** con **ObjectSelector** per chiamare layer e oggetti specifici all'interno di un file DWG.
2. Collegare il filtro a **ImportedObject.ConvertToGeometries**.

