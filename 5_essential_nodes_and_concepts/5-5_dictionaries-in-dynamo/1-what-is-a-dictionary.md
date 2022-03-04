# What is a Dictionary

Dynamo 2.0 introduces the concept of separating the dictionary data type from the list data type. This change can pose some significant changes to how you create and work with data in your workflows. Prior to 2.0, dictionaries and lists were combined as a data type. In short, lists were actually dictionaries with integer keys.

### **What is a dictionary?**

A dictionary is a data type composed of a collection of key-value pairs where each key is unique in each collection. A dictionary has no order and basically you can “look things up” using a key instead of an index value like in a list. _In Dynamo 2.0, keys can only be strings._

### **What is a list?**

A list is a data type composed of a collection of ordered values. In Dynamo, lists use integers as index values.

### **Why was this change made and why should I care?**

The separation of dictionaries from lists introduces dictionaries as a first-class citizen that you can use to quickly and easily store and lookup values without needing to remember an index value or maintain a strict list structure throughout your workflow. During user testing, we saw a significant reduction in graph size when dictionaries were utilized instead of several `GetItemAtIndex` nodes.

### **What are the changes?**

* _Syntax_ changes have occurred that change how you will initialize and work with dictionaries and lists in code blocks.
  * Dictionaries use the following syntax `{key:value}`
  * Lists use the following syntax `[value,value,value]`
* _New nodes_ have been introduced to the library to help you create, modify, and query dictionaries.
* Lists created in v1.x code blocks will automatically be migrated on load of the script to the new list syntax that uses square brackets `[ ]` instead of curly brackets `{ }` \
  ****

![](<../../.gitbook/assets/what is a dictionary - what are the changes.jpg>)

****

### **Why should I care? What would you use these for?**

In computer science, Dictionaries - like lists- are collections of objects. While lists are in a specific order, dictionaries are _unordered_ collections. They are not reliant on sequential numbers (indices), instead, they utilize _keys._

In the image below we demonstrate a potential use case of a dictionary. Often times dictionaries are used to relate two pieces of data that might not have a direct correlation. In our case, we are connecting the Spanish version of a word to the English version for later lookup.&#x20;

![](<../../.gitbook/assets/what is a dictionary - what would you use these for.jpg>)

> 1. Build a dictionary to relate the two pieces of data.
> 2. Get the value with the given key.
