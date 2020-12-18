# Dictionnaires
Dynamo 2.0 introduit le concept de séparation du type de données de dictionnaire du type de données de liste. Ce changement peut entraîner des modifications importantes de la façon dont vous créez et utilisez les données dans vos workflows. Avant la version 2.0, les dictionnaires et les listes étaient combinés en tant que type de données. En résumé, les listes étaient en fait des dictionnaires avec des clés d'entier.

* #### Qu'est-ce qu'un dictionnaire ?
Un dictionnaire est un type de données composé d'un ensemble de paires clé-valeur, où chaque clé est unique dans chaque ensemble. Un dictionnaire n'a pas d'ordre et vous pouvez, en fait, rechercher des éléments à l'aide d'une clé au lieu d'une valeur d'index, comme dans une liste. *Dans Dynamo 2.0, les clés peuvent uniquement être des chaînes.*

* #### Qu'est-ce qu'une liste ?
Une liste est un type de données composé d'un ensemble de valeurs ordonnées. Dans Dynamo, les listes utilisent des entiers comme valeurs d'index.

* #### Pourquoi ce changement a-t-il été fait et en quoi suis-je concerné ?
La séparation des dictionnaires et des listes place les dictionnaires comme citoyens de première classe que vous pouvez utiliser pour stocker et rechercher rapidement et facilement des valeurs, sans avoir à mémoriser une valeur d'index ou à maintenir une structure de listes stricte tout au long de votre workflow. Lors des tests utilisateur, nous avons constaté une réduction significative de la taille du graphique lorsque les dictionnaires étaient utilisés à la place de plusieurs nœuds ```GetItemAtIndex```.

* #### Quels sont les changements ?
  * Des modifications de *syntaxe* ont été apportées. Elles changent la façon dont vous allez initialiser et utiliser les dictionnaires et les listes dans les blocs de code.
    * Les dictionnaires utilisent la syntaxe suivante : ```{key:value}```
    * Les listes utilisent la syntaxe suivante ```[value,value,value]```
  * De *nouveaux nœuds* ont été introduits dans la bibliothèque pour vous aider à créer et à modifier les dictionnaires, ainsi qu'à leur envoyer des requêtes.
  * Les listes créées dans les blocs de code 1.x seront automatiquement migrées au chargement du script vers la nouvelle syntaxe de liste qui utilise des crochets ```[ ]``` au lieu des accolades ```{ }``` ![IMAGE](images/9-1/DYN20_Dictionary.png)

* #### En quoi suis-je concerné ? Dans quel but dois-je les utiliser ?
En informatique, les dictionnaires, comme les listes, sont des collections d'objets. Tandis que les listes suivent un ordre spécifique, les dictionnaires sont des ensembles *non ordonnés*. Ils ne dépendent pas des numéros séquentiels (index), mais utilisent des *clés*.

Dans l'image ci-dessous, nous présentons un cas d'utilisation potentiel d'un dictionnaire. Souvent, les dictionnaires servent à relier deux types de données qui ne possèdent pas de corrélation directe. Dans notre cas, nous connectons la version espagnole d'un mot à la version anglaise pour une recherche ultérieure. ![IMAGE](images/9-1/9-1_dictionaryExample.png)

