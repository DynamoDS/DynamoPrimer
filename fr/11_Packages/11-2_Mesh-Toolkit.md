

## Étude de cas de package – Mesh Toolkit

Le package Dynamo Mesh Toolkit fournit des outils permettant d'importer des maillages à partir de formats de fichiers externes, de créer un maillage à partir d'objets de géométrie Dynamo et de créer manuellement des maillages à partir de leurs sommets et index. La bibliothèque fournit également des outils permettant de modifier et de réparer les maillages, ainsi que d'extraire des sections horizontales à utiliser lors de la fabrication.

![Importer le maillage](images/11-3/mtIntro.jpg)

Le package Dynamo Mesh Toolkit s'inscrit dans le cadre des recherches en cours d'Autodesk sur les maillages, et il continuera à évoluer au cours des prochaines années. Attendez-vous à voir apparaître fréquemment de nouvelles méthodes applicables à ce package, et n'hésitez pas à faire parvenir à l'équipe de Dynamo vos commentaires, bogues et suggestions en vue d'intégrer de nouvelles fonctionnalités.

### Maillages et solides

L'exercice ci-dessous présente certaines opérations de maillage de base à l'aide de Mesh Toolkit. Dans l'exercice, nous allons entrecouper un maillage avec une série de plans, une opération qui peut s'avérer coûteuse en ressources informatiques si elle est effectuée avec des solides. Contrairement à un solide, un maillage a une "résolution" établie et n'est pas défini sur un plan mathématique, mais topologique. Cette résolution peut être définie sur la base de la tâche en cours. Pour plus d'informations sur les relations entre les maillages et les solides, reportez-vous au chapitre [Géométrie pour la conception informatique](../05_Geometry-for-Computational-Design/5_geometry-for-computational-design.md) de ce guide. Pour en savoir plus sur le package Mesh Toolkit, vous pouvez consulter la page [wiki de Dynamo.](https://github.com/DynamoDS/Dynamo/wiki/Dynamo-Mesh-Toolkit) Nous allons aborder le package dans l'exercice ci-dessous.

### Installation de Mesh Toolkit

![Importer le maillage](images/11-3/mt.jpg)

> Dans Dynamo, accédez à *Packages > Rechercher un package...* dans la barre de menus supérieure. Dans le champ de recherche, tapez *"MeshToolkit"* en un mot, en gardant les majuscules. Cliquez sur la flèche de téléchargement correspondant au package approprié pour votre version de Dynamo. C'est aussi simple que ça !

### Exercice

> Téléchargez et décompressez les fichiers d'exemple de cet exercice (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous..."). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe. [MeshToolkit.zip](datasets/11-2/MeshToolkit.zip)

Commencez par ouvrir *Mesh-Toolkit_Intersect-Mesh.dyn dans Dynamo.* Dans cet exemple, nous allons examiner le nœud Intersect dans Mesh Toolkit. Nous allons importer un maillage et l'entrecouper avec une série de plans d'entrée pour créer des sections. Il s'agit du point de départ pour préparer le modèle pour la fabrication sur un découpeur au laser, une machine de coupe à jet d'eau ou une fraiseuse commandée par ordinateur.

![Importer le maillage](images/11-3/contour01.jpg)

> 1. **Chemin d'accès au fichier :** recherchez le fichier de maillage à importer (*stanford_bunny_tri.obj*). Les types de fichiers pris en charge sont .mix et .obj.
2. **Mesh.ImportFile :** associez le chemin d'accès au fichier pour importer le maillage.

![Intersect](images/11-3/contour02.jpg)

> 1. **Point.ByCoordinates :** crée un point. Il s'agit du centre d'un arc.
2. **Arc.ByCenterPointRadiusAngle** : crée un arc autour du point. Cette courbe sera utilisée pour positionner une série de plans.

![Intersect](images/11-3/contour03.jpg)

> 1. Code Block : crée une plage de nombres entre zéro et un.
2. **Curve.PointAtParameter :** connectez l'arc à l'entrée *‘curve’* et le bloc de code de sortie à l'entrée *‘param’* pour extraire une série de points le long de la courbe.
3. **Curve.TangentAtParameter :** connectez les mêmes entrées que le nœud précédent.
4. **Plan.ByOriginNormal :** connectez les points à l'entrée *‘origin’* et les vecteurs à l'entrée *‘normal’* pour créer une série de plans à chaque point.

Vous devriez maintenant voir une série de plans orientés le long de l'arc. Vous allez ensuite utiliser ces plans pour entrecouper le maillage.

![Intersect](images/11-3/contour04.jpg)

> 1. **Mesh.Intersect :** entrecoupez les plans avec le maillage importé, ce qui crée une série de contours de polycourbe.
2. **PolyCurve.Curves :** divisez les polycourbes en fragments de courbe.
3. **Curve.EndPoint :** extrayez les points de fin de chaque courbe.
4. **NurbsCurve.ByPoints :** utilisez les points pour construire une courbe NURBS. Utilisez un nœud booléen défini sur *Vrai (True)* pour fermer les courbes.

![Intersect](images/11-3/contour05.jpg)

> 1. **Surface.ByPatch :** créez des corrections de surface pour chaque contour afin de créer des "sections" du maillage.

![Intersect](images/11-3/contour06.jpg)

> Ajoutez un deuxième jeu de sections pour un effet gaufré/alvéolé.

Vous avez peut-être remarqué que les opérations d'intersection sont calculées plus rapidement avec un maillage plutôt qu'avec un solide comparable. Les workflows tels que ceux présentés dans cet exercice se prêtent bien à l'utilisation de maillages.

