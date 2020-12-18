

## Ajout à votre bibliothèque

Vous venez de créer un nœud personnalisé et de l'appliquer à un processus spécifique dans le graphique Dynamo. Vous souhaitez en outre conserver ce nœud dans la bibliothèque Dynamo pour établir des références à d'autres graphiques. Pour ce faire, vous allez publier le nœud localement. Cette procédure est semblable à celle utilisée pour publier un package, que vous verrez plus en détail dans le chapitre suivant.

### Publication locale d'un nœud personnalisé

Nous allons avancer à l'aide du nœud personnalisé que vous avez créé dans la section précédente. Avec la publication locale, le nœud sera accessible dans votre bibliothèque Dynamo lorsque vous ouvrirez une nouvelle session. Si le nœud n'est pas publié, un graphique Dynamo qui fait référence à un nœud personnalisé doit également comporter ce nœud personnalisé dans son dossier (ou le nœud personnalisé doit être importé dans Dynamo à l'aide de l'option *Fichier > Importer une bibliothèque*).

> Téléchargez le fichier d'exemple joint à cet exercice (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous..."). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe. [PointsToSurface.dyf](datasets/10-3/PointsToSurface.dyf)

![](images/10-3/AddingToLibrary- 05.jpg)

> Après avoir ouvert le nœud personnalisé PointsToSurface, le graphique ci-dessus s'affiche dans l'éditeur de nœuds personnalisés Dynamo. Vous pouvez également ouvrir un nœud personnalisé en double-cliquant dessus dans l'éditeur graphique Dynamo.

![](images/10-3/AddingToLibrary- 04.jpg)

> 1. Pour publier un nœud personnalisé localement, cliquez simplement avec le bouton droit de la souris sur la zone de dessin et choisissez *"Publier ce nœud personnalisé..."*.

![](images/10-3/AddingToLibrary- 03.jpg)

> Remplissez les informations pertinentes comme dans l'image ci-dessus et choisissez *"Publier localement"*. Notez que le champ Groupe définit l'élément principal accessible à partir du menu Dynamo.

![](images/10-3/AddingToLibrary- 02.jpg)

> Choisissez un dossier pour héberger tous les nœuds personnalisés que vous envisagez de publier localement. Dynamo consultera ce dossier à chaque chargement. Par conséquent, assurez-vous que le dossier réside dans un emplacement permanent. Accédez à ce dossier et choisissez *"Sélectionner un dossier"*. Votre nœud Dynamo est désormais publié localement et restera dans votre barre d'outils Dynamo chaque fois que vous chargez le programme.

![](images/10-3/AddingToLibrary- 01.jpg)

> 1. Pour vérifier l'emplacement du dossier de nœud personnalisé, accédez à *Paramètres > Gérer les chemins d'accès de nœud et de package...*

![](images/10-3/AddingToLibrary- 00.jpg)

> Dans cette fenêtre, vous voyez que deux chemins sont disponibles : *AppData\Itinérance\Dynamo...* désigne l'emplacement par défaut des packages Dynamo installés en ligne. *Documents\DynamoCustomNodes...* fait référence à l'emplacement des nœuds personnalisés publiés localement. *

> 1. Vous pouvez déplacer le chemin d'accès au dossier local vers le bas dans la liste affichée ci-dessus (en sélectionnant le chemin d'accès au dossier et en cliquant sur la flèche vers le bas située à gauche des noms de chemin). Le dossier racine est le chemin par défaut des installations de package. Ainsi, en conservant le chemin d'installation par défaut du package Dynamo comme dossier par défaut, les packages en ligne sont séparés des nœuds publiés localement.*

![](images/10-3/AddingToLibrary- 00A.jpg)

> Nous avons changé l'ordre des noms de chemin pour que le chemin par défaut de Dynamo devienne l'emplacement d'installation du package.

![](images/10-3/AddingToLibrary- 06.jpg)

> En accédant à ce dossier local, vous trouvez le nœud personnalisé d'origine dans le dossier *".dyf"*, qui est l'extension d'un fichier de nœud personnalisé Dynamo. Vous pouvez modifier le fichier dans ce dossier et le nœud sera mis à jour dans l'interface utilisateur. Vous pouvez également ajouter des nœuds au dossier *DynamoCustomNode* principal et Dynamo les ajoutera à votre bibliothèque au redémarrage.

![](images/10-3/library.jpg)

> Dynamo se charge désormais à chaque fois avec *"PointsToSurface"* dans le groupe *"DynamoPrimer"* de votre bibliothèque Dynamo.

