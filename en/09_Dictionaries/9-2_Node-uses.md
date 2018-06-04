# Dictionary Nodes

Dynamo 2.0 exposes a variety of Dictionary nodes for our use. This includes _create, action, and query_ nodes.


![IMAGE](images/9-2/9-2_dictionaryNodes.png)

* `Dictionary.ByKeysValues` will create a dictionary with the supplied values and keys. _(The number of entries will be whatever the shortest list input is)_
* `Dictionary.Components` will produce the components of the input dictionary. _(This is the reverse of the create node.)_
* `Dictionary.RemoveKeys` will produce a new dictionary object with the input keys removed.
* `Dictionary.SetValueAtKeys` will produce a new dictionary based on the input keys and the values to replace the current value at the corresponding keys.
* `Dictionary.ValueAtKey` will return the value at the input key.
* `Dictionary.Count` will tell you how many key value pairs are in the dictionary.
* `Dictionary.Keys` will return what keys are currently stored in the dictionary.
* `Dictionary.Values` will return what values are currently stored in the dictionary.

##### _Overall relating data with dictionaries is a magnificent alternative to the old method of working with indices and lists._
