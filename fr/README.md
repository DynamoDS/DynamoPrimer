

# Guide Dynamo

## Pour Dynamo v2.0

Téléchargez le [guide Dynamo v1.3 ici](http://primer.dynamobim.org/en/Appendix/DynamoPrimer-Print1_3.pdf)

![Logo Dynamo](images/dynamo_logo_dark-trim.jpg)

> Dynamo est une plate-forme de programmation visuelle open source pour les concepteurs.

### Bienvenue

Vous venez d'ouvrir le guide Dynamo, un guide complet de programmation visuelle dans Autodesk Dynamo Studio. Ce guide est un projet continu visant à partager les bases de la programmation. Les rubriques suivantes concernent l'utilisation de la géométrie de calcul, les recommandations pour la conception basée sur des règles, des applications de programmation pluridisciplinaires et plus encore, avec la plate-forme Dynamo.

La puissance de Dynamo est offerte par une large gamme d'activités liées à la conception. Dynamo vous offre une liste étendue de méthodes facilement accessibles pour commencer à utiliser les logiciels suivants :

* **Découvrez** la programmation visuelle
* **Connectez** les workflows de différents logiciels
* **Interagissez** avec une communauté active d'utilisateurs, de contributeurs et de développeurs
* **Développez** une plate-forme open source pour une amélioration continue

Dans le cadre de cette activité et de l'opportunité passionnante de travailler avec Dynamo, nous avons besoin d'un document du même calibre, le guide Dynamo.

Il comprend des chapitres développés avec Mode Lab. Ces chapitres portent sur les bases essentielles pour développer vos propres programmes visuels avec Dynamo et les principales connaissances sur la façon d'améliorer Dynamo. Voici ce que vous pouvez attendre de ce guide :

* **Contexte** : qu'est-ce que la "programmation visuelle" et quels sont les concepts à comprendre pour explorer Dynamo ?
* **Mise en route** : comment obtenir Dynamo et créer un premier programme ?
* **Qu'est-ce qu'un programme** : quelles sont les fonctionnalités de Dynamo et comment les utiliser ?
* **Blocs de construction** : que sont les données et quels en sont les types fondamentaux à utiliser dans mes programmes ?
* **Géométrie pour la conception** : comment utiliser les éléments géométriques dans Dynamo ?
* **Listes, listes, listes** : comment gérer et coordonner les structures de données ?
* **Code dans les nœuds** : comment commencer à étendre Dynamo avec son propre code ?
* **Solution informatique BIM** : comment utiliser Dynamo avec un modèle Revit ?
* **Nœuds personnalisés** : comment créer ses propres nœuds ?
* **Packages** : comment partager ses outils avec la communauté ?

C'est une occasion passionnante de découvrir Dynamo, de travailler avec Dynamo et de faire du développement pour Dynamo. C'est parti !

---

### Open Source

Le projet Dynamo Primer est open source. Nous nous efforçons de fournir du contenu de qualité et prenons en compte vos commentaires. Si vous souhaitez signaler un problème à un niveau quelconque, veuillez le publier sur la page des problèmes GitHub : [https://github.com/DynamoDS/DynamoPrimer/issues](https://github.com/DynamoDS/DynamoPrimer/issues)

Si vous souhaitez contribuer à une nouvelle section, à des modifications ou à tout autre élément de ce projet, consultez le référentiel GitHub pour commencer : [https://github.com/DynamoDS/DynamoPrimer](https://github.com/DynamoDS/DynamoPrimer).

---

### Le projet Dynamo Primer

Dynamo Primer est un projet open source, initié par Matt Jezyk et l'équipe de développement Dynamo chez Autodesk.

**Mode Lab** a été chargé d'écrire la première édition du guide. Nous remercions l'équipe pour tous ses efforts afin d'établir cette précieuse ressource.

[![](images/MODELAB_Logo.png)](http://modelab.is)

**John Pierson de Parallax Team** a été chargé de mettre à jour le guide pour qu'il contienne les révisions de Dynamo 2.0.

[![](images/PRLX_Logo.jpg)](http://www.parallaxteam.com/)

### Remerciements

Un grand merci à Ian Keough pour avoir lancé et dirigé le projet Dynamo.

Merci à Matt Jezyk, Ian Keough, Zach Kron, Racel Williams et Colin McCrone pour leur collaboration enthousiaste et pour l'opportunité de participer à un large éventail de projets Dynamo.

### Logiciels et ressources

**Dynamo** La version stable* actuelle de Dynamo est la version 2.1.0

[http://dynamobim.com/download/](http://dynamobim.com/download/) ou [http://dynamobuilds.com](http://dynamobuilds.com)

*Remarque : à partir de Revit 2020, Dynamo est fourni avec les versions de Revit, ce qui fait que l'installation manuelle n'est pas requise. Pour plus d'informations, consultez ce [billet de blog](https://dynamobim.org/dynamo-core-2-1-release/).

**DynamoBIM** La meilleure source d'informations supplémentaires, de contenu de formation et de forums est le site Web DynamoBIM.

[http://dynamobim.org](http://dynamobim.org)

**Dynamo GitHub** Dynamo est un projet de développement open source sur GitHub. Pour contribuer, découvrez DynamoDS.

[https://github.com/DynamoDS/Dynamo](https://github.com/DynamoDS/Dynamo)

**Contact** Faites-nous part de tous les problèmes rencontrés dans ce document.

Dynamo@autodesk.com

### Licence

Copyright 2019 Autodesk

Autorisé par la Licence Apache, version 2.0 (la "Licence") ; vous ne devez utiliser ce fichier que conformément à la Licence. Vous pouvez obtenir une copie de la Licence à l'adresse

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Sauf si cela est requis par la loi applicable ou convenu par écrit, le logiciel distribué dans le cadre de la Licence est distribué "EN L'ÉTAT", SANS GARANTIES OU CONDITIONS D'AUCUNE SORTE, expresses ou implicites. Consultez la Licence pour connaître les autorisations et les limitations existant dans une langue spécifique dans le cadre de la Licence.

