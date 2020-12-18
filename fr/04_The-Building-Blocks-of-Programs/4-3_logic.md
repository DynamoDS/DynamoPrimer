

## Logique

La **logique**, ou plus spécifiquement, la **logique conditionnelle**, vous permet de spécifier une action ou un jeu d'actions en fonction d'un test. Après avoir évalué le test, vous obtenez une valeur booléenne représentant ```True``` ou ```False``` que vous pouvez utiliser pour contrôler le flux du programme.

### Valeurs booléennes

Les variables numériques peuvent stocker un intervalle entier de nombres différents. Les variables booléennes ne peuvent stocker que deux valeurs appelées True ou False, Yes ou No, 1 ou 0. Les valeurs booléennes sont rarement utilisées pour effectuer des calculs en raison de leur intervalle limité.

### Instructions conditionnelles

L'instruction "If" est un concept clé de la programmation : "If" cet *élément* a la valeur True, voici le *résultat*, sinon *autre chose* se produit. L'action résultant de l'instruction est déterminée par une valeur booléenne. Il existe plusieurs méthodes pour définir une instruction "If" dans Dynamo :

|Icône|Nom|Syntaxe|Entrées|Sorties|
| -- | -- | -- | -- | -- |
|![](../images/icons/DSCoreNodesUI-Logic-If-Large.jpg)|If|If|test, true, false|résultat|
|![](../images/icons/DSCoreNodesUI-Formula-Large.jpg)|Formule|IF(x,y,z)|x, y, z|résultat|
|![](../images/icons/Dynamo-Nodes-CodeBlockNodeModel-Large.jpg)|Bloc de code|(x?y:z)|x, y, z|résultat|

Voici un bref exemple de chacun de ces trois nœuds en action à l'aide de l'instruction conditionnelle "If" :

![](images/4-3/IFs.jpg)

> Dans cette image, la *valeur booléenne* est définie sur *True*, ce qui signifie que le résultat est une chaîne indiquant : *"voici le résultat si True".* Les trois nœuds qui créent l'instruction *If* fonctionnent de la même manière ici.

![](images/4-3/IFs2.jpg)

> Là encore, les nœuds fonctionnent de la même façon. Si la *valeur booléenne* est définie sur *False*, le résultat est le nombre *Pi*, tel que défini dans l'instruction *If* d'origine.

### Filtrage d'une liste

> Téléchargez le fichier d'exemple joint à cet exercice (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous...") : [Building Blocks of Programs - Logic.dyn](datasets/4-3/Building Blocks of Programs - Logic.dyn). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe.

Utilisez la logique pour séparer une liste de nombres en une liste de nombres pairs et une liste de nombres impairs.

![](images/4-3/01.jpg)

> 1. **Number Range :** ajoutez un intervalle de nombres dans la zone de dessin.
2. **Number :** ajoutez trois nœuds numériques dans la zone de dessin. La valeur de chaque nœud numérique doit être : *0.0* pour *start*, *10.0* pour *end* et *1.0* pour *step*.
3. **Sortie :** le résultat est une liste de 11 chiffres compris entre 0 et 10.
4. **Module (%) :** *Number Range* en *x* et *2.0* en *y*. Cela permet de calculer le reste pour chaque nombre de la liste divisé par 2. La sortie de cette liste vous donne une liste de valeurs alternant entre 0 et 1.
5. **Test d'égalité (==) :** permet d'ajouter un test d'égalité à la zone de dessin. Connectez la sortie du *module* à l'entrée *x* et *0.0* à l'entrée *y*.
6. **Watch :** la sortie du test d'égalité est une liste de valeurs alternant entre true et false. Il s'agit des valeurs utilisées pour séparer les éléments de la liste. *0* (ou *true*) représente des nombres pairs et *1* (ou *false*) des nombres impairs.
7. **List.FilterByBoolMask :** ce nœud filtre les valeurs dans deux listes différentes en fonction de la valeur booléenne d'entrée. Connectez le nœud *Number Range* d'origine à l'entrée *list* et la sortie du *test d'égalité* à l'entrée *mask*. La sortie *in* représente des valeurs True, tandis que la sortie *out* représente des valeurs False.
8. **Watch :** le résultat est une liste de nombres pairs et une liste de nombres impairs. Vous avez utilisé des opérateurs logiques pour séparer des listes en modèles.

### De la logique à la géométrie

En partant de la logique établie dans le premier exercice, appliquez cette configuration dans une opération de modélisation.

![](images/4-3/02.png) Partez de l'exercice précédent avec les mêmes nœuds. Les seules exceptions (outre la modification du format) sont les suivantes :

> 1. Les valeurs d'entrée ont changé.
2. L'entrée list de *List.FilterByBoolMask* est déconnectée. Pour l'instant, mettez ces nœuds de côté. Vous les utiliserez plus tard dans l'exercice.

![](images/4-3/03.png)

> Commencez par connecter les nœuds ensemble, comme illustré dans l'image ci-dessus. Ce groupe de nœuds représente une équation paramétrique permettant de définir une courbe de ligne. Remarques :

> 1. Le **premier curseur** doit avoir une valeur minimale de 1, une valeur maximale de 4 et un pas de 0.01.
2. Le **deuxième curseur** doit avoir une valeur minimale de 0, une valeur maximale de 1 et un pas de 0.01.
3. **PolyCurve.ByPoints :** si vous copiez le diagramme de nœud ci-dessus, vous obtenez une courbe sinusoïdale dans la fenêtre d'aperçu Dynamo.

Méthode utilisée ici pour les entrées : utilisez des nœuds Number pour obtenir davantage de propriétés statiques et des curseurs de numérotation sur les valeurs plus flexibles. Conservez l'intervalle de nombres d'origine défini au début de cette étape. Toutefois, la courbe sinusoïdale créée ici doit garder une certaine flexibilité. Vous pouvez déplacer ces curseurs pour observer la fréquence et l'amplitude de la courbe se mettre à jour.

![](images/4-3/04.png)

> Vous allez désormais passer à la définition. Examinez le résultat final pour pouvoir référencer ce que vous obtenez. Les deux premières étapes sont effectuées séparément, mais vous devez maintenant les connecter. Utilisez la courbe sinusoïdale de base pour déterminer l'emplacement des composants de zipper, et utilisez la logique True/False pour alterner entre les petites boîtes et les grandes boîtes.

![](images/4-3/05.png)

> 1. **Math.RemapRange :** à l'aide de la séquence de nombres créée à l'étape 1, créez une nouvelle série de nombres en remappant l'intervalle. Les nombres d'origine de l'étape 1 sont compris entre 0 et 100. Ces nombres sont compris entre 0 et 1, respectivement par les entrées *newMin* et *newMax*.

![](images/4-3/06.png)

> 1. **Curve.PointAtParameter : **connectez *Polycurve.ByPoints* (de l'étape 2) à *curve* et *Math.RemapRange* à *param*. Cette étape permet de créer des points le long de la courbe. Remappez les nombres entre 0 et 1, car l'entrée *param* recherche les valeurs dans cet intervalle. Une valeur de *0* représente le point de départ, une valeur de *1* représente les points de fin. Tous les nombres compris entre ces valeurs sont évalués dans l'intervalle *[0,1]*.

![](images/4-3/07.png)

> 1. **List.FilterByBoolMask :** connectez *Curve.PointAtParameter* de l'étape précédente à l'entrée *list*.
2. **Watch :** un nœud Watch pour *in* et un nœud Watch pour *out* indique que deux listes représentent des index pairs et des index impairs. Ces points sont ordonnés de la même façon sur la courbe, illustrée à l'étape suivante.

![](images/4-3/08.png)

> 1. **Cuboid.ByLengths :** recréez les connexions illustrées à l'image ci-dessus pour obtenir un zipper le long de la courbe sinusoïdale. Ici, un cuboïde ne représente qu'une boîte, et vous définissez sa taille en fonction du point de courbe au centre de la boîte. La logique de la division paire/impaire doit maintenant être claire dans le modèle.

![](images/4-3/matrix.png)

> 1. **Number Slider :** en revenant au début de la définition, ajustez le curseur de numérotation et observer le zipper se mettre à jour. La rangée supérieure des images représente un intervalle de valeurs pour le curseur de numérotation supérieur. Il s'agit de la fréquence de l'onde.
2. **Number Slider :** la ligne inférieure des images représente un intervalle de valeurs pour le curseur inférieur. Il s'agit de l'amplitude de l'onde.

