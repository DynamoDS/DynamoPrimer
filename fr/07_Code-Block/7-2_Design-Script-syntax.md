

## Syntaxe DesignScript

Vous avez peut-être remarqué que les noms des nœuds dans Dynamo ont un point commun : chaque nœud utilise la syntaxe *"."* sans espaces. Cela est dû au fait que le texte situé en haut de chaque nœud représente la syntaxe réelle pour l'écriture de scripts, et que la syntaxe *"."* (ou *notation par points*) sépare un élément des méthodes qu'il est possible d'appeler. Cette syntaxe permet de convertir facilement les scripts visuels en scripts basés sur du texte.

![Noms de nœud](images/7-2/apple.jpg)

Prenons une pomme paramétrique comme analogie générale de la notation par points : comment pouvez-vous la traiter dans Dynamo ? Voici quelques méthodes que vous allez exécuter sur la pomme avant de la manger. (Remarque : il ne s'agit pas de méthodes Dynamo réelles) :

|Visible de tous|Notation par points|Sortie|
| -- | -- | -- |
|De quelle couleur est la pomme ?|Apple.color|rouge|
|La pomme est-elle mûre ?|Apple.isRipe|true|
|Combien la pomme pèse-t-elle ?|Apple.weight|170 g|
|D'où vient la pomme ?|Apple.parent|arborescence|
|Qu'est-ce que la pomme crée ?|Apple.children|graines|
|Cette pomme est-elle produite localement ?|Apple.distanceFromOrchard|100 km|

Je ne sais pas ce que vous en pensez, mais à en juger par les sorties du tableau ci-dessus, cette pomme est très appétissante. Je pense que je vais la manger : *Apple.eat()*.

### Notation par points dans le bloc de code

En ayant à l'esprit l'analogie de la pomme, examinez *Point.ByCoordinates* et découvrez comment créer un point à l'aide du bloc de code :

![Noms de nœud](images/7-2/cbn02.jpg)

> La syntaxe du *bloc de code* ```Point.ByCoordinates(0,10);``` donne le même résultat qu'un nœud *Point.ByCoordinates* dans Dynamo, sauf que vous pouvez créer un point à l'aide d'un nœud. Cette opération est plus efficace que la connexion d'un nœud distinct à *"X"* et *"Y"*.

> 1. La syntaxe *Point.ByCoordinates* du bloc de code vous permet d'indiquer les entrées dans le même ordre que le nœud prêt à l'emploi *(X,Y)*.

### Appel de nœuds

Vous pouvez appeler n'importe quel nœud standard dans la bibliothèque par le biais d'un bloc de code tant que le nœud n'est pas un *nœud d'interface utilisateur* spécial : les nœuds dotés d'une fonction d'interface utilisateur spéciale. Par exemple, vous pouvez appeler *Circle.ByCenterPointRadius*, mais il n'est pas logique d'appeler un nœud *Watch 3D*.

Il existe généralement trois types de nœuds standard (la plupart des nœuds de votre bibliothèque) :

* **Create** : permet de créer (ou de construire) un élément
* **Action** : permet d'effectuer une action sur un élément
* **Query** : permet d'obtenir une propriété d'un élément existant

La bibliothèque est organisée en fonction de ces catégories. Les méthodes ou les nœuds de ces trois types sont traités différemment lorsqu'ils sont appelés dans un bloc de code.

![Noms de nœud](images/7-2/cbn12.jpg)

#### Create

La catégorie "Create" permet de créer une géométrie à partir de zéro. Vous entrez des valeurs de gauche à droite dans le bloc de code. Ces entrées apparaissent dans le même ordre que les entrées du nœud de haut en bas : ![Noms de nœud](images/7-2/demo1.jpg)

> En comparant le nœud *Line.ByStartPointEndPoint* et la syntaxe correspondante dans le bloc de code, vous obtenez les mêmes résultats.

#### Action

Une action est une opération effectuée sur un objet de ce type. Pour appliquer une action à un élément, Dynamo utilise la *notation par points*, commune à de nombreux langages de codage. Une fois que vous avez l'élément, tapez un point, puis le nom de l'action. L'entrée de la méthode de type action est mise entre parenthèses tout comme celle des méthodes de type création. Cependant, il n'est pas nécessaire de spécifier la première entrée que vous voyez sur le nœud correspondant. Au lieu de cela, vous devez indiquer l'élément sur lequel vous effectuez l'action :

![Noms de nœud](images/7-2/cbn04.jpg)

> 1. Étant donné que le nœud *Point.Add *est un nœud de type action, la syntaxe fonctionne un peu différemment.
2. Les entrées sont (1) le *point* et (2) le *vecteur* à ajouter. Dans un *bloc de code*, le point (l'élément) est nommé *"pt"*. Pour ajouter un vecteur nommé *"vec" *à *"pt"*, écrivez *pt.Add(vec)* ou : élément, point, action. L'action Ajouter ne possède qu'une seule entrée, ou toutes les entrées du nœud *Point.Add* sauf la première. La première entrée du nœud *Point.Add* est le point lui-même.

#### Query

Les méthodes de type Query permettent d'obtenir une propriété d'un objet. Puisque l'objet lui-même est l'entrée, vous n'avez pas besoin de spécifier d'entrées. Aucune parenthèse n'est requise.

![Noms de nœud](images/7-2/cbn05.jpg)

### Qu'en est-il de la combinaison ?

Avec des nœuds, la combinaison est légèrement différente de celle avec le bloc de code. Avec les nœuds, l'utilisateur clique avec le bouton droit de la souris sur le nœud et sélectionne l'option de combinaison à effectuer. Avec le bloc de code, l'utilisateur dispose d'un contrôle bien plus précis sur la structure des données. La méthode de raccourci du bloc de code utilise des *guides de réplication* pour définir la manière dont plusieurs listes unidimensionnelles sont associées. Les nombres mis entre crochets angulaires "<>" définissent la hiérarchie de la liste imbriquée obtenue : <1>,<2>,<3>, etc. 
![Combinaison](images/7-2/lacing.jpg)

> 1. Dans cet exemple, un raccourci est utilisé pour définir deux intervalles (vous trouverez plus d'informations sur le raccourci dans la section suivante de ce chapitre). En résumé, ```0..1;``` équivaut à ```{0,1}``` et ```-3...-7```équivaut à ```{-3,-4,-5,-6,-7}```. Le résultat vous donne des listes de 2 valeurs X et 5 valeurs Y. Si vous n'utilisez pas de guides de réplication avec ces listes incohérentes, vous obtenez une liste de deux points, correspondant à la longueur de la liste la plus courte. Les guides de réplication vous permettent de trouver toutes les combinaisons possibles de 2 et 5 coordonnées (ou, un **Produit vectoriel**).
2. La syntaxe ```Point.ByCoordinates(x_vals<1>,y_vals<2>);``` vous permet d'obtenir **deux** listes contenant chacune **cinq** éléments.
3. La syntaxe ```Point.ByCoordinates(x_vals<2>,y_vals<1>);``` vous permet d'obtenir **cinq** listes contenant chacune **deux** éléments.

Avec cette notation, vous pouvez également indiquer le type de liste dominant : 2 listes de 5 éléments ou 5 listes de 2 éléments. Dans cet exemple, la modification de l'ordre des guides de réplication crée une liste de lignes de points ou une liste de colonnes de points dans une grille.

### Nœud vers code

Bien que les méthodes de bloc de code susmentionnées puissent prendre en charge certains éléments, Dynamo inclut une fonctionnalité appelée "Nœud vers code" qui facilite le processus. Pour utiliser cette fonction, sélectionnez un réseau de nœuds dans votre graphique Dynamo, cliquez avec le bouton droit de la souris sur la zone de dessin et sélectionnez "Nœud vers code". Dynamo convertit ces nœuds en bloc de code, avec toutes les entrées et sorties ! Non seulement cet outil est idéal pour découvrir les blocs de code, mais il vous permet également de travailler avec un graphique Dynamo paramétrique et plus efficace. Ne manquez pas la fin de l'exercice ci-dessous : vous découvrirez l'utilisation de "Nœud vers code".

![Combinaison](images/7-2/nodeToCode.jpg)

### Exercice

> Téléchargez le fichier d'exemple joint à cet exercice (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous..."). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe. [Dynamo-Syntax_Attractor-Surface.dyn](datasets/7-2/Dynamo-Syntax_Attractor-Surface.dyn)

Pour afficher la puissance du bloc de code, vous allez convertir une définition de champ d'attraction existante en formulaire de bloc de code. L'utilisation d'une définition existante montre comment le bloc de code est lié aux scripts visuels et est utile pour découvrir la syntaxe DesignScript. ![Exercice](images/7-2/Exercise/01.jpg)

> Commencez par recréer la définition dans l'image ci-dessus (ou en ouvrant le fichier d'exemple).

> 1. Notez que la combinaison sur *Point.ByCoordinates* a été définie sur *Produit vectoriel*.
2. Chaque point d'une grille est déplacé vers le haut dans la direction Z en fonction de sa distance par rapport au point de référence.
3. Une surface est recréée et épaissie, créant ainsi un renflement dans la géométrie par rapport à la distance par rapport au point de référence.

![Exercice](images/7-2/Exercise/07.jpg)

> 1. En commençant au début, définissez d'abord le point de référence : ```Point.ByCoordinates(x,y,0);```. Utilisez la même syntaxe *Point.ByCoordinates* que celle indiquée dans la partie supérieure du nœud du point de référence.
2. Les variables *x* et *y* sont insérées dans le bloc de code afin que vous puissiez les mettre à jour de façon dynamique avec des curseurs.
3. Ajoutez des *curseurs* aux entrées du *bloc de code* qui vont de *-50* à *50*. Vous pouvez ainsi étendre la grille Dynamo par défaut.

![Exercice](images/7-2/Exercise/06.jpg)

> 1. Dans la deuxième ligne du *bloc de code*, définissez un raccourci pour remplacer le nœud Number Sequence : ```coordsXY = (-50..50..#11);```. Cette question est abordée plus en détail dans la section suivante. Pour le moment, notez que ce raccourci est équivalent au nœud *Number Sequence* dans le script visuel.

![Exercice](images/7-2/Exercise/05.jpg)

> 1. Vous devez désormais créer une grille de points à partir de la séquence *coordsXY*. Pour ce faire, utilisez la syntaxe *Point.ByCoordinates*, et lancez un *produit vectoriel* de la liste de la même manière que dans le script visuel. Pour ce faire, entrez la ligne : ```gridPts = Point.ByCoordinates(coordsXY<1>,coordsXY<2>,0);```. Les crochets angulaires indiquent la référence du produit vectoriel.
2. Le nœud *Watch3D* présente une grille de points sur la grille Dynamo.

![Exercice](images/7-2/Exercise/04.jpg)

> 1. Difficulté : déplacer la grille de points vers le haut en fonction de leur distance par rapport au point de référence. Tout d'abord, appelez ce nouvel ensemble de points *transPts*. Étant donné qu'une conversion est une action sur un élément existant, utilisez ```gridPts.Translate``` au lieu de ```Geometry.Translate...```.
2. Le nœud réel sur la zone de dessin indique trois entrées. La géométrie à convertir est déjà déclarée, car vous effectuez l'action sur cet élément (avec *gridPts.Translate*). Les deux entrées restantes seront insérées entre parenthèses de la fonction : *direction* et *distance*.
3. La direction est assez simple :·utilisez un nœud ```Vector.ZAxis()``` pour vous déplacer verticalement.
4. La distance entre le point de référence et chaque point de grille doit encore être calculée. Pour ce faire, effectuez une action au point de référence de la même manière : ```refPt.DistanceTo(gridPts)```.
5. La dernière ligne de code vous donne les points convertis : ```transPts = gridPts.Translate(Vector.ZAxis(),refPt.DistanceTo(gridPts));```.

![Exercice](images/7-2/Exercise/03.jpg)

> 1. Vous disposez à présent d'une grille de points avec la structure de données appropriée pour créer une surface NURBS. Construisez la surface en utilisant ```srf = NurbsSurface.ByControlPoints(transPts);```.

![Exercice](images/7-2/Exercise/02.jpg)

> 1. Enfin, pour ajouter de la profondeur à la surface, construisez un solide en utilisant ```solide = srf.Thicken(5);```. Dans ce cas, la surface a été épaissie de 5 unités dans le code, mais vous pouvez toujours déclarer cela comme variable (en l'appelant *thickness* par exemple), puis contrôler cette valeur avec un curseur.

### Simplifier le graphique avec "Nœud vers code"

La fonctionnalité "Nœud vers code" permet d'automatiser d'un simple clic l'ensemble de l'exercice que vous venez de réaliser. Non seulement cette fonctionnalité est très utile pour créer des définitions personnalisées et des blocs de code réutilisables, mais elle est également un outil très pratique pour apprendre à utiliser des scripts dans Dynamo :

![Exercice](images/7-2/Exercise/09.jpg)

> 1. Commencez par le script visuel existant de l'étape 1 de l'exercice. Sélectionnez tous les nœuds, cliquez avec le bouton droit de la souris sur la zone de dessin et sélectionnez *"Nœud vers code"*. C'est aussi simple que ça.

![Exercice](images/7-2/Exercise/08.jpg)

> Dynamo a automatisé une version texte du graphique visuel, de la combinaison, etc. Testez cette opération sur vos scripts visuels et libérez la puissance du bloc de code !

