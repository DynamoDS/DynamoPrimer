

## Importation de géométrie

Il existe plusieurs méthodes pour importer une géométrie dans Dynamo. Nous avons démontré l'importation des maillages à l'aide du package *Mesh Toolkit* dans la section précédente. Nous pouvons également importer des modèles solides à partir de fichiers .SAT. Avec ces processus, vous pouvez développer la géométrie sur une autre plate-forme, la charger dans Dynamo et appliquer des opérations paramétriques par le biais de la programmation visuelle.

Une autre méthode d'importation de géométrie utilise un processus appelé *Conversion ATF*. Dans ce cas, vous pouvez importer non seulement la géométrie, mais aussi la structure d'un fichier. Par exemple, vous pouvez choisir les calques d'un fichier .DWG à importer plutôt que d'importer l'ensemble du modèle. Vous trouverez plus de détails ci-dessous.

### Importation d'une géométrie depuis un fichier DWG

Les nœuds permettant d'importer un fichier DWG dans l'environnement Dynamo sont disponibles sous l'onglet *Conversion* (remarque : ces outils sont uniquement disponibles dans [Dynamo Studio](http://www.autodesk.com/products/dynamo-studio/overview)). Les exemples suivants montrent une série de composants utilisés pour rechercher un fichier, en importer le contenu et le convertir en géométrie Dynamo utilisable. Dynamo vous permet également de filtrer et de sélectionner des objets spécifiques à importer à partir d'un fichier DWG, comme vous allez le voir ci-dessous. Pour plus d'informations sur l'importation de géométrie à partir d'un fichier DWG, consultez le [billet de blog de Ben Goh ici](http://dynamobim.org/dwg-import-in-dynamo-studio-0-9-1/).

### Obtention d'objets importés

La méthode la plus simple pour importer un fichier DWG dans Dynamo Studio consiste à importer l'intégralité du fichier dans l'espace de travail :

![GetImportedObjects](images/5-8/GetImportedObjects.jpg)

> 1. Utilisez le composant Chemin d'accès au fichier pour rechercher le fichier DWG à importer dans Dynamo.
2. Connectez-vous à **FileLoader.FromPath** pour lire le fichier.
3. Utilisez le composant **FileLoader.GetImportedObjects** pour analyser la géométrie dans Dynamo Studio.
4. **ImportedObject.ConvertToGeometries** convertit les objets en géométrie utilisable dans l'espace de travail Dynamo.

Comme illustré dans l'image ci-dessus, tous les types de géométrie du fichier DWG (surfaces, maillages, courbes et lignes) sont importés dans Dynamo.

### Filtre d'objet

Pour spécifier quelles géométries sont importées à partir du fichier DWG, des nœuds **ObjectFilter** supplémentaires peuvent être ajoutés à la définition. Le nœud **ObjectFilter** est compatible avec le nœud **FileLoader** ou une liste de nœuds **ImportedObject**, et génère une liste **ImportedObject**.

Les images suivantes montrent les instructions conditionnelles dans chaque nœud **ObjectFilter**. Tout nœud **ImportedObject** qui satisfait à l'une des conditions répertoriées passera par le filtre. Le filtrage peut être basé sur le libellé de la couche (nom de la couche, par exemple), le type de géométrie, la couleur diffuse, etc., et peut être utilisé conjointement avec d'autres filtres pour affiner la sélection.

![ObjectFilter1](images/5-8/ObjectFilter01.jpg)

> 1. Remplacez **FileLoader.GetImportedObjects** par **ObjectFilter** pour rechercher des conditions spécifiques dans le fichier DWG. Dans ce cas, seule la géométrie de surface sera importée, en supprimant toutes les géométries de courbe et de ligne visibles dans l'image précédente.
2. Connectez le filtre à **ImportedObject.ConvertToGeometries** pour importer la géométrie filtrée.

En ajoutant deux filtres avec des instructions conditionnelles différentes, vous pouvez diviser la liste de géométrie en plusieurs flux :

![ObjectFilter2](images/5-8/ObjectFilter02.jpg)

> 1. Remplacez **FileLoader.GetImportedObjects** par deux modules **ObjectFilter** ayant des instructions conditionnelles différentes. Cette opération permet de séparer la géométrie d'un fichier en deux flux différents.
2. Connectez le filtre à **ImportedObject.ConvertToGeometries** pour importer la géométrie filtrée.
3. Connectez **ImportedObject.ConvertToGeometries** à **Display.ByGeometryColor** pour visualiser chaque flux dans une couleur différente.

### Sélection d'objets explicites

Le nœud **ObjectSelector** propose une autre méthode pour importer des objets à partir du fichier DWG. Au lieu d'utiliser des filtres, cette méthode nous permet de choisir précisément les objets et les calques à importer dans Dynamo.

![Point à courbe](images/5-8/ObjectSelector.jpg)

> 1. Remplacez **FileLoader.GetImportedObjects** par **ObjectSelector** pour appeler des calques et des objets spécifiques dans un fichier DWG.
2. Connectez le filtre à **ImportedObject.ConvertToGeometries**.

