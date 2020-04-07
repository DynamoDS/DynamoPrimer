

### Cos'è la programmazione visiva?

La progettazione spesso implica la definizione di relazioni visive, sistemiche o geometriche tra le parti di un progetto. Per la maggior parte delle volte, queste relazioni vengono sviluppate da workflow che consentono di passare dal concetto al risultato tramite regole. Forse senza saperlo, si lavora in modo algoritmico: definendo un insieme di azioni passo-passo che seguono una logica di base di input, elaborazione e output. La programmazione consente di continuare a lavorare in questo modo, ma formalizzando gli algoritmi.

### Algoritmi alla mano

Sebbene offra alcune potenti opportunità, il termine **algoritmo** può portare con sé alcune errate concezioni. Gli algoritmi possono generare cose impreviste, incontrollate o fantastiche, ma non sono magici. In realtà sono piuttosto semplici, di per sé. Verrà utilizzato un esempio tangibile come una gru origami. Si inizierà con un foglio di carta quadrato (input), si seguirà una serie di passaggi di piegatura (azioni di elaborazione) e si genererà una gru (output).

![Gru origami](images/1-1/00-OrigamiCrane.png)

Quindi dov'è l'algoritmo? Si tratta di una serie di passaggi astratti, che possono essere rappresentati in due modi: dal punto di vista testuale o grafico.

**Istruzioni testuali:**

1. Iniziare con un foglio di carta quadrato, colorato su lato verso l'alto. Ripiegare a metà e aprire. Quindi, ripiegare a metà sull'altro lato.
2. Capovolgere il foglio sul lato bianco. Ripiegare il foglio a metà, piegare bene e aprire, quindi ripiegare nuovamente nell'altra direzione.
3. Utilizzando le pieghe create, portare i 3 angoli superiori del modello nell'angolo inferiore. Appiattire il modello.
4. Ripiegare i lembi triangolari superiori al centro e spiegare.
5. Ripiegare la parte superiore del modello verso il basso, piegare bene e spiegare.
6. Aprire il lembo più alto del modello, riportandolo verso l'alto e premendo contemporaneamente i lati del modello verso l'interno. Appiattire, piegando bene.
7. Capovolgere il modello e ripetere i passaggi 4-6 sull'altro lato.
8. Ripiegare i lembi superiori al centro.
9. Ripetere l'operazione sull'altro lato.
10. Ripiegare entrambe le "gambe" del modello, piegare molto bene, quindi spiegare.
11. Ripiegare le "gambe" rovesciandole all'interno lungo le pieghe appena create.
12. Ripiegare un lato rovesciandolo all'interno per creare una testa, quindi ripiegare le ali.
13. Ora è stata realizzata una gru.

**Istruzioni grafiche:**

![Necessario aggiornamento - Gru origami](images/1-1/01-OrigamiCraneInstructions.png)

### Programmazione definita

L'utilizzo di uno di questi insiemi di istruzioni dovrebbe creare una gru e, se si è seguita la procedura, è stato applicato un algoritmo. L'unica differenza è il modo in cui si legge la formalizzazione di quell'insieme di istruzioni e che porta alla **programmazione**. La programmazione, spesso abbreviata da *programmazione informatica*, è l'atto di formalizzare l'elaborazione di una serie di azioni in un programma eseguibile. Se le istruzioni precedenti per creare una gru sono state convertite in un formato che il computer può leggere ed eseguire, si sta parlando di programmazione.

La chiave al primo ostacolo che si troverà nella programmazione è che occorre ricorrere a qualche forma di astrazione per comunicare in modo efficace con il computer. Questo prende la forma di un numero qualsiasi di linguaggi di programmazione, come JavaScript, Python o C. Se si può scrivere un insieme di istruzioni ripetibili, come per la gru origami, occorre solo convertirlo per il computer. Si è sulla buona strada per avere un computer in grado di creare una gru o persino una moltitudine di gru differenti, dove ciascuna di esse varia leggermente. Questo è il potere della programmazione: il computer eseguirà ripetutamente qualsiasi attività, o serie di attività, assegnata, senza ritardi e senza errori umani.

#### Programmazione visiva definita

> Scaricare il file di esempio fornito con questo esercizio (fare clic con il pulsante destro del mouse e scegliere Salva link con nome...): [Visual Programming - Circle Through Point.dyn](datasets/1-1/Visual Programming - Circle Through Point.dyn). Un elenco completo di file di esempio è disponibile nell'Appendice.

Se ci fosse stato assegnato il compito di scrivere istruzioni per ripiegare una gru origami, come si potrebbe procedere? Utilizzando la grafica, il testo o una combinazione dei due metodi?

Se la risposta è la grafica, allora la **programmazione visiva** è sicuramente la soluzione ideale. Il processo è essenzialmente lo stesso per la programmazione e la programmazione visiva. Utilizzano la stessa struttura di formalizzazione; tuttavia, si definiscono le istruzioni e le relazioni del programma attraverso un'interfaccia utente grafica (o "visiva"). Anziché digitare il testo associato tramite sintassi, vengono collegati tra loro i nodi preconfezionati. Di seguito è riportato un confronto dello stesso algoritmo - "disegnare un cerchio attraverso un punto" - programmato con nodi e codice:

**Programma visivo:**

![Programma Visual Basic ](images/1-1/03-BasicVisualProgram.png)

**Programma testuale:**

```
myPoint = Point.ByCoordinates(0.0,0.0,0.0);
x = 5.6;
y = 11.5;
attractorPoint = Point.ByCoordinates(x,y,0.0);
dist = myPoint.DistanceTo(attractorPoint);
myCircle = Circle.ByCenterPointRadius(myPoint,dist);
```

I risultati del nostro algoritmo:

![Cerchio attraverso un punto](images/1-1/04-CircleThroughPoint.png)

La caratteristica visiva della programmazione in questo modo abbatte la barriera iniziale e di frequente parla con i progettisti. Dynamo rientra nel paradigma della programmazione visiva, ma, come si vedrà più avanti, è possibile comunque utilizzare anche la programmazione testuale nell'applicazione.

