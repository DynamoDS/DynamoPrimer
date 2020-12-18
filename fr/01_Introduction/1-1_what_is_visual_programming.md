

### Qu'est-ce que la programmation visuelle ?

L'activité de conception implique souvent l'établissement de relations visuelles, systémiques ou géométriques entre les différentes parties d'une conception. La plupart du temps, ces relations sont développées par des workflows qui permettent de passer du concept au résultat grâce à des règles. Sans le savoir, vous travaillez par le biais d'algorithmes, c'est-à-dire en définissant un ensemble d'actions progressives qui suivent une logique de base d'entrée, de traitement et de sortie. La programmation permet de travailler de cette façon, mais tout en appliquant des algorithmes.

### Présentation des algorithmes

Même s'il offre de puissantes opportunités, le terme **algorithme** peut véhiculer quelques idées fausses. Les algorithmes peuvent générer des éléments inattendus, imprévisibles ou sympas, mais ils ne sont pas magiques. Ils sont en réalité assez simples, tels qu'ils sont. Prenez un exemple concret comme une grue en origami. Tout d'abord, prenez une feuille de papier carrée (entrée), puis suivez une série d'étapes de pliage (actions de traitement) afin d'obtenir une grue (sortie).

![Grue en origami](images/1-1/00-OrigamiCrane.png)

Où est l'algorithme ? Il s'agit de l'ensemble d'étapes abstrait qu'il est possible de représenter de deux façons : textuellement ou graphiquement.

**Instructions textuelles :**

1. Tout d'abord, prenez une feuille de papier carrée, la partie colorée vers le haut. Pliez la feuille en deux et ouvrez-la. Ensuite, pliez la feuille en deux de l'autre côté.
2. Retournez la feuille, côté blanc vers le haut. Pliez la feuille en deux, marquez bien le pli et ouvrez la feuille, puis repliez-la dans l'autre sens.
3. En utilisant les plis que vous avez faits, placez les 3 coins supérieurs du modèle vers le bas. Aplanissez le modèle.
4. Pliez les rabats triangulaires supérieurs au centre, puis dépliez-lez.
5. Pliez la partie supérieure du modèle vers le bas, marquez bien le pli et dépliez.
6. Ouvrez le rabat supérieur du modèle en le ramenant vers le haut et en appuyant simultanément sur les côtés du modèle vers l'intérieur. Aplanissez et marquez bien le pli.
7. Retournez le modèle et répétez les étapes 4 à 6 de l'autre côté.
8. Pliez les rabats supérieurs vers le centre.
9. Répétez l'opération de l'autre côté.
10. Pliez les deux "jambes" du modèle vers le haut, marquez bien les plis, puis dépliez.
11. Ramenez les "jambes" vers l'intérieur le long des plis que vous venez de faire.
12. Ramenez les pointes à l'intérieur afin de créer une tête, puis pliez les ailes.
13. Vous obtenez une grue.

**Instructions graphiques :**

![Mise à jour nécessaire – Grue en origami](images/1-1/01-OrigamiCraneInstructions.png)

### Programmation définie

Ces séries d'instructions permettent toutes les deux de créer une grue, et si vous avez correctement suivi les étapes, vous avez appliqué un algorithme. La seule différence est la façon dont vous lisez l'application de cet ensemble d'instructions qui conduit à la **programmation**. La programmation, terme couramment employé pour la *programmation informatique*, consiste à formaliser le traitement d'une série d'actions dans un programme exécutable. Si vous écrivez les instructions susmentionnées (permettant de créer une grue) dans un format que votre ordinateur peut lire et exécuter, vous faites de la programmation.

La clé, mais aussi le premier obstacle de la programmation, est de s'appuyer sur une forme abstraite afin de communiquer efficacement avec son ordinateur. Cela prend la forme de n'importe quel langage de programmation, tel que JavaScript, Python ou C. Si vous pouvez écrire un ensemble d'instructions reproductibles, comme pour la grue en origami, vous n'avez besoin de le traduire que pour l'ordinateur. Vous êtes en passe de configurer l'ordinateur pour que ce dernier puisse créer une grue ou même une multitude de grues différentes où chacune varie légèrement. C'est la puissance de la programmation : l'ordinateur exécute plusieurs fois les tâches, ou ensembles de tâches, que vous lui affectez, sans délai ni erreur humaine.

#### Programmation visuelle définie

> Téléchargez le fichier d'exemple joint à cet exercice (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous...") : [Visual Programming - Circle Through Point.dyn](datasets/1-1/Visual Programming - Circle Through Point.dyn). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe.

Si vous étiez chargé d'écrire des instructions de pliage afin de créer une grue en origami, comment procéderiez-vous ? Voulez-vous les créer sous forme de graphiques, de texte ou une combinaison des deux ?

Si votre réponse contenait des graphiques, alors la **programmation visuelle** est certainement pour vous. Le processus est pratiquement le même pour la programmation que pour la programmation visuelle. Elles utilisent le même cadre d'application ; cependant, vous définissez les instructions et les relations de votre programme par le biais d'une interface utilisateur graphique (ou "visuelle"). Au lieu de taper du texte lié par syntaxe, vous connectez des nœuds pré-intégrés ensemble. Voici une comparaison de l'algorithme "dessiner un cercle par point" programmé avec des nœuds ou du code :

**Programme visuel :**

![Programme visuel de base ](images/1-1/03-BasicVisualProgram.png)

**Programme textuel :**

```
myPoint = Point.ByCoordinates(0.0,0.0,0.0);
x = 5.6;
y = 11.5;
attractorPoint = Point.ByCoordinates(x,y,0.0);
dist = myPoint.DistanceTo(attractorPoint);
myCircle = Circle.ByCenterPointRadius(myPoint,dist);
```

Résultats de l'algorithme :

![Cercle par point ](images/1-1/04-CircleThroughPoint.png)

La caractéristique visuelle de la programmation permet de réduire les obstacles à l'entrée et de communiquer fréquemment avec les concepteurs. Dynamo est intégré dans le paradigme de la programmation visuelle, mais vous verrez plus tard qu'il est également possible d'utiliser la programmation textuelle dans l'application.

