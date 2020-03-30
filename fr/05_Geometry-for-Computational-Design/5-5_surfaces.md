

## Surfaces

Lorsque vous passez de l'utilisation de courbes à l'utilisation de surfaces dans un modèle, vous pouvez commencer à représenter les objets que vous voyez dans un univers en trois dimensions. Tandis que les courbes ne sont pas toujours planes (elles sont en trois dimensions), l'espace qu'elles définissent est toujours lié à une dimension. Les surfaces nous donnent une autre dimension et un ensemble de propriétés supplémentaires que vous pouvez utiliser dans d'autres opérations de modélisation.

### Qu'est-ce qu'une surface ?

Une surface est une forme mathématique définie par une fonction et deux paramètres. Au lieu de ```t``` pour les courbes, vous utilisez ```U``` et ```V``` pour décrire l'espace de paramètre correspondant. Cela signifie que vous disposez de plus de données géométriques à partir desquelles dessiner lorsque vous utilisez ce type de géométrie. Par exemple, les courbes ont des vecteurs tangents et des plans normaux (qui peuvent pivoter ou se tordre le long de la courbe), alors que les surfaces ont des vecteurs normaux et des plans tangents qui seront cohérents dans leur orientation.

![Surface](images/5-5/Surface.jpg)

> 1. Surface
2. Isocourbe U
3. Isocourbe V
4. Coordonnées UV
5. Plan perpendiculaire
6. Vecteur normal

**Domaine de surface** : un domaine de surface est défini comme l'intervalle de paramètres (U,V) qui s'évaluent en un point tridimensionnel sur cette surface. Le domaine dans chaque dimension (U ou V) est généralement décrit par deux nombres (U Min à U Max) et (V Min à V Max).

![Surface](images/5-5/SurfaceParameter.jpg)

Bien que la forme de la surface ne paraisse pas rectangulaire et qu'elle puisse avoir localement un ensemble d'isocourbes plus ou moins étroit, l'"espace" défini par son domaine est toujours en deux dimensions. Dans Dynamo, les surfaces sont toujours considérées comme ayant un domaine défini par un minimum de 0.0 et un maximum de 1.0 dans les directions U et V. Les surfaces planes ou ajustées peuvent avoir des domaines différents.

**Isocourbe** (ou courbe isométrique) : courbe définie par une valeur U ou V constante sur la surface et par un domaine de valeurs pour l'autre direction U ou V correspondante.

**Coordonnée UV** : point dans l'espace de paramètre UV défini par U, V et parfois W.

![Coordonnée de surface](images/5-5/SurfaceCoordinate.jpg)

**Plan perpendiculaire** : plan perpendiculaire aux isocourbes U et V au niveau d'une coordonnée UV donnée.

**Vecteur normal** : vecteur définissant la direction vers le haut par rapport au plan perpendiculaire.

### Surfaces NURBS

Les **surfaces NURBS** sont assez comparables aux courbes NURBS. Les surfaces NURBS peuvent être considérées comme une grille de courbes NURBS qui vont dans deux directions. La forme d'une surface NURBS est définie par un certain nombre de points de contrôle et le degré de cette surface dans les directions U et V. Les mêmes algorithmes sont utilisés pour calculer la forme, les normales, les tangentes, les courbures et d'autres propriétés par le biais de points de contrôle, de poids et de degrés.

![Surface NURBS](images/5-5/NURBSsurface.jpg)

Dans le cas des surfaces NURBS, il existe deux directions impliquées par la géométrie, car les surfaces NURBS sont, quelle que soit la forme que vous voyez, des grilles rectangulaires de points de contrôle. Et même si ces directions sont souvent arbitraires par rapport au système de coordonnées général, vous les utiliserez fréquemment pour analyser vos modèles ou générer d'autres géométries basées sur la surface.

![Surface NURBS](images/5-5/NURBSsurface-Degree.jpg)

> 1. Degré (U,V) = (3,3)
2. Degré (U,V) = (3,1)
3. Degré (U,V) = (1,2)
4. Degré (U,V) = (1,1)

### Polysurfaces

Les **polysurfaces** sont composées de surfaces qui sont jointes sur une arête. Les polysurfaces offrent plus de deux définitions UV dimensionnelles, car vous pouvez maintenant parcourir les formes connectées au moyen de leur topologie.

> Bien que le terme "topologie" décrive généralement un concept relatif à la façon dont les composants sont connectés et/ou la topologie associée, dans Dynamo, il s'agit également d'un type de géométrie. Il s'agit en particulier d'une catégorie parent pour les surfaces, les polysurfaces et les solides.

![Polysurface](images/5-5/PolySurface.jpg)

La jonction de surfaces, parfois appelée face de fermeture, de cette manière vous permet de créer des formes plus complexes et de définir des détails sur la jointure. Vous pouvez appliquer facilement une opération de congé ou de chanfrein aux arêtes d'une polysurface.

Importez et évaluez une surface au niveau d'un paramètre dans Dynamo pour voir quel type d'informations vous pouvez extraire.

![Surfaces dans Dynamo](images/5-5/Dynamo_Surfaces.jpg)

> 1. *Surface.PointAtParameter* renvoie le point à une coordonnée UV donnée.
2. *Surface.NormalAtParameter* renvoie le vecteur normal à une coordonnée UV donnée.
3. *Surface.GetIsoline* renvoie la courbe isoparamétrique à une coordonnée U ou V. Notez l'entrée isoDirection.
> Téléchargez les fichiers d'exemple qui accompagnent cette image (cliquez avec le bouton droit de la souris et choisissez "Enregistrer le lien sous..."). Vous trouverez la liste complète des fichiers d'exemple dans l'annexe.

> 1. [Geometry for Computational Design - Surfaces.dyn](datasets/5-5/Geometry for Computational Design - Surfaces.dyn)
2. [Surface.sat](datasets/5-5/Surface.sat)

