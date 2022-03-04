# Revit Use-Cases

Have you ever wanted to look up something in Revit by a piece of data that it has?

Chances are if you have you've done something like the following example.

In the image below we are collecting all of the rooms in the Revit model, getting the index of the room we want (by room number), and finally grabbing the room at the index.

![](<../../.gitbook/assets/dictionary - collect room in revit model.jpg>)

> 1. Collect all rooms in the model.
> 2. Room number to find.
> 3. Get the room number and find what index it is at.
> 4. Obtain the room at the index.

## Exercise : Room Dictionary

### Part I: Creating Room Dictionary

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/roomDictionary.dyn" %}

Now let's recreate this idea using dictionaries. First we need to collect all of the rooms in our Revit model.

![](<../../.gitbook/assets/dictionary - exercise I - 01.jpg>)

> 1. We choose the Revit category we want to work with, (In this case, we are working with rooms).
> 2. We tell Dynamo to collect all of those elements

Next, we need to decide what keys we are going to use to look up this data by. (Information on keys can be found on the section, [What is a dictionary?](9-1\_what-is-a-dictionary.md)).

![](<../../.gitbook/assets/dictionary - exercise I - 02.jpg>)

> 1. The data that we will use is the room number.

Now we will create the dictionary with the given keys and elements.

![](<../../.gitbook/assets/dictionary - exercise I - 03.jpg>)

> 1. The node, **Dictionary.ByKeysValues** will create a dictionary given the appropriate inputs.
> 2. `Keys` need to be a string, while `values` can be a variety of object types.

Lastly, we can retrieve a room from the dictionary with its room number now.

![](<../../.gitbook/assets/dictionary - exercise I - 04.jpg>)

> 1. `String` will be the key that we are using to look up an object from the dictionary.
> 2. **Dictionary.ValueAtKey** will obtain the object from the dictionary now.

### Part II: Values Look Up

Using this same dictionary logic, we can create dictionaries with grouped objects as well. If we wanted to look up all rooms at a given level we can modify the above graph as follows.

![](<../../.gitbook/assets/dictionary - exercise II - 01.jpg>)

> 1. Rather than using the room number as the key, we can now use a parameter value, (in this case we will use level).

![](<../../.gitbook/assets/dictionary - exercise II - 02.jpg>)

> 1. Now, we can group the rooms by the level that they reside on.

![](<../../.gitbook/assets/dictionary - exercise II - 03.jpg>)

> 1. With the elements grouped by the level, we can now use the shared keys (unique keys) as our key for our dictionary, and the lists of rooms as the elements.

![](<../../.gitbook/assets/dictionary - exercise II - 04.jpg>)

> 1. Lastly, using the levels in the Revit model, we can look up which rooms reside on that level in the dictionary. `Dictionary.ValueAtKey` will take the level name and return the room objects at that level.

The opportunities for Dictionary use are really endless. The ability to relate your BIM data in Revit to the element itself poses a variety of use cases.
