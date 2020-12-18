

# Nœuds de dictionnaire

Dynamo 2.0 présente une variété de nœuds de dictionnaire à notre disposition. Cela inclut les nœuds *create, action et query*.

![IMAGE](images/9-2/9-2_dictionaryNodes.png)

* ```Dictionary.ByKeysValues``` crée un dictionnaire avec les valeurs et les clés fournies. *(Le nombre d'entrées correspond à la liste d'entrées la plus courte possible)*
* ```Dictionary.Components``` produira les composants du dictionnaire d'entrée. *(Il s'agit de l'inverse du nœud create.)*
* ```Dictionary.RemoveKeys``` crée un objet de dictionnaire dont les clés d'entrée ont été supprimées.
* ```Dictionary.SetValueAtKeys``` crée un dictionnaire basé sur les clés d'entrée et les valeurs pour remplacer la valeur en cours au niveau des clés correspondantes.
* ```Dictionary.ValueAtKey``` renvoie la valeur à la clé d'entrée.
* ```Dictionary.Count``` vous indique le nombre de paires clés-valeurs dans le dictionnaire.
* ```Dictionary.Keys``` renvoie les clés actuellement stockées dans le dictionnaire.
* ```Dictionary.Values``` renvoie les valeurs actuellement stockées dans le dictionnaire.

##### _Le fait de pouvoir lier les données de manière globale avec les dictionnaires constitue une excellente solution de remplacement, par rapport à la méthode de travail classique avec les index et les listes._

