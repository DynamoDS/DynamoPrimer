

## Mesh

Nel campo della modellazione computazionale, le mesh sono una delle forme più pervasive di rappresentazione della geometria 3D. La geometria della mesh può essere un'alternativa flessibile e leggera all'utilizzo di NURBS e le mesh vengono utilizzate per tutto, dal rendering e dalle visualizzazioni alla fabbricazione digitale e alla stampa 3D.

### Cos'è una mesh?

Una mesh è una raccolta di quadrilateri e triangoli che rappresenta una geometria di superfici o solidi. Analogamente ai solidi, la struttura di un oggetto mesh include vertici, bordi e facce. Sono disponibili ulteriori proprietà che rendono anche univoche le mesh, come le normali.

![Elementi della mesh](images/5-7/MeshElements2.jpg)

> 1. Vertici della mesh
2. Bordi della mesh *I bordi con una sola faccia adiacente vengono denominati "nudi". Tutti gli altri bordi sono "vestiti"
3. Facce della mesh

### Elementi della mesh

Dynamo definisce le mesh utilizzando una struttura di dati di faccia-vertice. Al livello più elementare, questa struttura è semplicemente una raccolta di punti raggruppati in poligoni. I punti di una mesh sono denominati vertici, mentre i poligoni simili a superfici sono denominati facce. Per creare una mesh, è necessario un elenco di vertici e un sistema per raggruppare tali vertici in facce denominate gruppo di indici.

![](images/5-7/meshFacesVertices.jpg)

> 1. Elenco dei vertici
2. Elenco dei gruppi di indici per definire le facce

#### Vertici + normali dei vertici

I vertici di una mesh sono semplicemente un elenco di punti. L'indice dei vertici è molto importante quando si costruisce una mesh o si ottengono informazioni sulla struttura di una mesh. Per ogni vertice, esiste anche una normale del vertice corrispondente (vettore) che descrive la direzione media delle facce associate e consente di comprendere l'orientamento in ingresso e in uscita della mesh.

![Vertici + normali](images/5-7/vertexNormals.jpg)

> 1. Vertici
2. Normali dei vertici

#### Facce

Una faccia è un elenco ordinato di tre o quattro vertici. La rappresentazione della "superficie" di una faccia della mesh è pertanto implicita in base alla posizione dei vertici indicizzati. Si dispone già dell'elenco dei vertici che compongono la mesh, quindi, invece di fornire singoli punti per definire una faccia, si utilizza semplicemente l'indice dei vertici. Questo consente anche di utilizzare lo stesso vertice in più di una faccia.

![](images/5-7/meshFaces.jpg)

> 1. Una faccia quadrangolare composta con indici 0, 1, 2 e 3
2. Una faccia triangolare composta con indici 1, 4 e 2; notare che i gruppi di indici possono essere spostati nel loro ordine - purché la sequenza sia ordinata in senso antiorario, la faccia verrà definita correttamente

### Mesh e superfici NURBS

Quali sono le differenze tra la geometria della mesh e la geometria NURBS? Quando è consigliabile utilizzare una al posto dell'altra?

#### Parametrizzazione

In un capitolo precedente, si è visto che le superfici NURBS sono definite da una serie di curve NURBS che vanno in due direzioni. Queste direzioni sono etichettate ```U``` e ```V``` e consentono la parametrizzazione di una superficie NURB in base ad un dominio di superficie bidimensionale. Le curve stesse sono memorizzate come equazioni nel computer, consentendo il calcolo delle superfici risultanti ad un grado di precisione arbitrariamente ridotto. Può essere difficile, tuttavia, combinare insieme più superfici NURBS. L'unione di due superfici NURBS determina una polisuperficie, in cui diverse sezioni della geometria avranno parametri UV e definizioni delle curve differenti.

![Punti di controllo](images/5-7/NURBSvsMESH-01.jpg)

> 1. Superficie
2. Curva isoparametrica (isoparm)
3. Punto di controllo della superficie
4. Poligono di controllo della superficie
5. Punto isoparametrico
6. Cornice della superficie
7. Mesh
8. Bordo nudo
9. Rete della mesh
10. Spigoli mesh
11. Normale del vertice
12. Faccia della mesh/Normale della faccia della mesh

Le mesh, invece, sono costituite da un numero discreto di facce e vertici esattamente definiti. La rete di vertici in genere non può essere definita da coordinate ```UV``` semplici e, poiché le facce sono distinte, il grado di precisione viene integrato nella mesh e può essere modificato solo mediante l'affinamento della mesh e l'aggiunta di più facce. La mancanza di descrizioni matematiche consente alle mesh di gestire in modo più flessibile la geometria complessa all'interno di una singola mesh.

### Influenza locale rispetto a globale

Un'altra importante differenza è rappresentata dall'entità con cui una modifica locale nella geometria della mesh o NURBS influisce sull'intera forma. Lo spostamento di un vertice di una mesh influisce solo sulle facce adiacenti a tale vertice. Nelle superfici NURBS, l'entità dell'influenza è più complessa e dipende dal grado della superficie, nonché dai pesi e dai nodi dei punti di controllo. In generale, tuttavia, lo spostamento di un singolo punto di controllo in una superficie NURBS crea un cambiamento più uniforme e più esteso nella geometria.

![Modifica](images/5-7/NURBSvsMESH-02.jpg)

> 1. Superficie NURBS: lo spostamento di un punto di controllo ha un'influenza che si estende lungo la forma.
2. Geometria della mesh: lo spostamento di un vertice influisce solo sugli elementi adiacenti.

Un'analogia che può essere utile è confrontare un'immagine vettoriale (composta da linee e curve) con un'immagine raster (composta da singoli pixel). Se si esegue lo zoom avanti di un'immagine vettoriale, le curve restano nitide e chiare, mentre lo zoom avanti di un'immagine raster consente di ottenere pixel più grandi. In questa analogia, le superfici NURBS possono essere confrontate con un'immagine vettoriale perché esiste una relazione matematica uniforme, mentre la mesh si comporta in modo simile ad un'immagine raster con una risoluzione impostata.

### Mesh Toolkit

Le funzionalità della mesh di Dynamo possono essere estese installando il pacchetto [Mesh Toolkit](https://github.com/DynamoDS/Dynamo/wiki/Dynamo-Mesh-Toolkit). Dynamo Mesh Toolkit fornisce strumenti per importare mesh da formati di file esterni, creare mesh da oggetti della geometria di Dynamo e generare manualmente mesh in base ai vertici e agli indici. La libreria fornisce inoltre strumenti per modificare e correggere la mesh o estrarre sezioni orizzontali da utilizzare nella fabbricazione.

Per un esempio relativo all'utilizzo di Mesh Toolkit, vedere il capitolo 10.2.

![Mesh Toolkit](images/5-7/MeshToolKit.jpg)

