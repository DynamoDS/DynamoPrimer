# Dictionaries - Revit Use-Cases

Have you ever wanted to look up something in Revit by a piece of data that it has?
#### Chances are if you have you've done something like this:


![IMAGE](images/9-4/9-4_roomLookupByIndex.png)
>In the image above we are collecting all of the rooms in the Revit model, getting the index of the room we want (by room number), and finally grabbing the room at the index.

### Now let's recreate this idea using dictionaries.

> Download the example file that accompanies this exercise \(Right click and "Save Link As..."\): [RoomDictionary.dyn](datasets/9-4_roomDictionary.dyn). A full list of example files can be found in the Appendix.

![IMAGE](images/9-4/9-4_roomDictionary-01.png)
First we need to collect all of the rooms in our Revit model.
>* We choose the Revit category we want to work with, (In this case, we are working with rooms).
* We tell Dynamo to collect all of those elements

![IMAGE](images/9-4/9-4_roomDictionary-02.png)
Next, we need to decide what keys we are going to use to look up this data by. (Information on keys can be found on the section, [9-1 What is a dictionary?](9-1_What-is-a-dictionary,md)).
>* The data that we will use is the room number.


![IMAGE](images/9-4/9-4_roomDictionary-03.png)
Now we will create the dictionary with the given keys and elements.
>* The node, `Dictionary.ByKeysValues` will create a dictionary given the appropriate inputs.
* `Keys` need to be a string, while `values` can be a variety of object types.

![IMAGE](images/9-4/9-4_roomDictionary-04.png)
Lastly, we can retrieve a room from the dictionary with its room number now.
>* `String` will be the key that we are using to look up an object from the dictionary.
* `Dictionary.ValueAtKey` will obtain the object from the dictionary now.

---

### Using this same dictionary logic, we can create dictionaries with grouped objects as well. If we wanted to look up all rooms at a given level we can modify the above graph as follows.

![IMAGE](images/9-4/9-4_roomDictionary-05.png)
>* Rather than using the room number as the key, we can now use a parameter value, (in this case we will use level).

![IMAGE](images/9-4/9-4_roomDictionary-06.png)
>* Now, we can group the rooms by the level that they reside on.

![IMAGE](images/9-4/9-4_roomDictionary-07.png)
>* With the elements grouped by the level, we can now use the shared keys (unique keys) as our key for our dictionary, and the lists of rooms as the elements.

![IMAGE](images/9-4/9-4_roomDictionary-08.png)
>* Lastly, using the levels in the Revit model, we can look up which rooms reside on that level in the dictionary. `Dictionary.ValueAtKey` will take the level name and return the room objects at that level.


The opportunities for Dictionary use are really endless. The ability to relate your BIM data in Revit to the element itself poses a variety of use cases.
