# Lists of Lists

### Lists of Lists

Let's add one more tier to the hierarchy. If we take the deck of cards from the original example and create a box which contains multiple decks, the box now represents a list of decks, and each deck represents a list of cards. This is a list of lists. For the analogy in this section, the image below contains a list of coin rolls, and each roll contains a list of pennies.

![Coins](../../.gitbook/assets/coins-521245\_640.jpg)

> Photo by [Dori](https://commons.wikimedia.org/wiki/File:Stack\_of\_coins\_0214.jpg).

### Query

What **queries** can we make from the list of lists? This accesses existing properties.

* Number of coin types? 2.
* Coin type values? $0.01 and $0.25.
* Material of quarters? 75% copper and 25% nickel.
* Material of pennies? 97.5% zinc and 2.5% copper.

### Action

What **actions** can we perform on the list of lists? This changes the list of lists based on a given operation.

* Select a specific stack of quarters or pennies.
* Select a specific quarter or penny.
* Rearrange the stacks of quarters and pennies.
* Shuffle the stacks together.

Again, Dynamo has an analagous node for each one of the operations above. Since we're working with abstract data and not physical objects, we need a set of rules to govern how we move up and down the data hierarchy.

When dealing with lists of lists, the data is layered and complex, but this provides an opportunity to do some awesome parametric operations. Let's break down the fundamentals and discuss a few more operations in the lessons below.

## Exercise

### Top-Down Hierarchy

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Top-Down-Hierarchy.dyn" %}

The fundamental concept to learn from this section: **Dynamo treats lists as objects in and of themselves**. This top-down hierarchy is developed with object-oriented programming in mind. Rather than selecting sub-elements with a command like **List.GetItemAtIndex**, Dynamo will select that index of the main list in the data structure. And that item can be another list. Let's break it down with an example image:

![top-down](<../../.gitbook/assets/lists of lists - top down hierachy.jpg>)

> 1. With **Code Block**, we've defined two ranges: `0..2; 0..3;`
> 2. These ranges are connected to a **Point.ByCoordinates** node with lacing set to _"Cross Product"_. This creates a grid of points, and also returns a list of lists as an output.
> 3. Notice that the **Watch** node gives 3 lists with 4 items in each list.
> 4. When using **List.GetItemAtIndex**, with an index of 0, Dynamo selects the first list and all of its contents. Other programs may select the first item of every list in the data structure, but Dynamo employs a top-down hierarchy when dealing with data.

### List.Flatten

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Flatten.dyn" %}

Flatten removes all tiers of data from a data structure. This is helpful when the data hierarchies are not necessary for your operation, but it can be risky because it removes information. The example below shows the result of flattening a list of data.

![Exercise](<../../.gitbook/assets/lists of lists - flatten 01.jpg>)

> 1. Insert one line of code to define a range in **Code Block**: `-250..-150..#4;`
> 2. Plugging the _code block_ into the _x_ and _y_ input of a **Point.ByCoordinates** node, we set the lacing to _"Cross Product"_ to get a grid of points.
> 3. The **Watch** node shows that we have a list of lists.
> 4. A **PolyCurve.ByPoints** node will reference each list and create a respective polycurve. Notice in the Dynamo preview that we have four polycurves representing each row in the grid.

![Exercise](<../../.gitbook/assets/lists of lists - flatten 02.jpg>)

> 1. By inserting a _flatten_ before the polycurve node, we've created one single list for all of the points. The **PolyCurve.ByPoints** node references a list to create one curve, and since all of the points are on one list, we get one zig-zag polycurve which runs throughout the entire list of points.

There are also options for flattening isolated tiers of data. Using the **List.Flatten** node, you can define a set number of data tiers to flatten from the top of the hierarchy. This is a really helpful tool if you're struggling with complex data structures which are not necessarily relevant to your workflow. And another option is to use the flatten node as a function in **List.Map**. We'll discuss more about **List.Map** below.

### Chop

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Chop.dyn" %}

When parametric modeling, there are also times where you'll want to modify the data structure to an existing list. There are many nodes available for this as well, and chop is the most basic version. With chop, we can partition a list into sublists with a set number of items.

The chop command divides lists based on a given list length. In some ways, chop is the opposite of flatten: rather than removing data structure, it adds new tiers to it. This is a helpful tool for geometric operations like the example below.

![Exercise](<../../.gitbook/assets/lists of lists - chop.jpg>)

### List.Map

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Map.dyn" %}

A **List.Map/Combine** applies a set function to an input list, but one step down in the hierarchy. Combinations are the same as Maps, except combinations can have multiple inputs corresponding to the input of a given function.

_Note: This exercise was created with a previous version of Dynamo. Much of the_ **List.Map** _functionality has been resolved with the addition of the_ **List@Level** _feature. For more information, see_ [_List@Level_](6-3\_lists-of-lists.md#listlevel) _below._

As a quick introduction, let's review the **List.Count** node from a previous section.

The **List.Count** node counts all of the items in a list. We'll use this to demonstrate how **List.Map** works.

![](<../../.gitbook/assets/lists of lists - map 01.jpg>)

> 1.  Insert two lines of code into the **Code Block**: `-50..50..#Nx; -50..50..#Ny;`
>
>     After typing in this code, the code block will create two inputs for Nx and Ny.
> 2. With two _integer sliders_, define the _Nx_ and _Ny_ values by connecting them to the **Code Block**.
> 3. Connect each line of the code block into the respective _X_ and _Y_ inputs of a **Point.ByCoordinates** node. Right click the node, select "Lacing", and choose _"Cross Product"_. This creates a grid of points. Because we defined the range from -50 to 50, we are spanning the default Dynamo grid.
> 4. A _**Watch**_ node reveals the points created. Notice the data structure. We've created a list of lists. Each list represents a row of points of the grid.

![Exercise](<../../.gitbook/assets/lists of lists - map 02.jpg>)

> 1. Attach a **List.Count** node to the output of the watch node from the previous step.
> 2. Connect a **Watch** node to the **List.Count** output.

Notice that the List.Count node gives a value of 5. This is equal to the "Nx" variable as defined in the code block. Why is this?

* First, the **Point.ByCoordinates** node uses the "x" input as the primary input for creating lists. When Nx is 5 and Ny is 3, we get a list of 5 lists, each with 3 items.
* Since Dynamo treats lists as objects in and of themselves, a **List.Count** node is applied to the main list in the hierarchy. The result is a value of 5, or, the number of lists in the main list.

![Exercise](<../../.gitbook/assets/lists of lists - map 03.jpg>)

> 1. By using a **List.Map** node, we take a step down in the hierarchy and perform a _"function"_ at this level.
> 2. Notice that the **List.Count** node has no input. It is being used as a function, so the **List.Count** node will be applied to every individual list one step down in the hierarchy. The blank input of **List.Count** corresponds to the list input of **List.Map**.
> 3. The results of **List.Count** now gives a list of 5 items, each with a value of 3. This represents the length of each sublist.

### **List.Combine**

_Note: This exercise was created with a previous version of Dynamo. Much of the List.Combine functionality has been resolved with the addition of the_ **List@Level** _feature. For more information, see_ [_List@Level_](6-3\_lists-of-lists.md#listlevel) _below._

In this exercise, we will use **List.Combine** to demonstrate how it can be used to apply a function across separate lists of objects.

Start by setting up two lists of points.

![Exercise](<../../.gitbook/assets/lists of lists - combined 01.jpg>)

> 1. Use **Sequence** node to generate 10 values, each with a 10 step increment.
> 2. Connect the result to the x input of a **Point.ByCoordinates** node. This will create a list of points in Dynamo.
> 3. Add a second **Point.ByCoordinates** node to the workspace, use the same **Sequence** output as its x input, but use an **Interger Slider** as its y input, and set its value to 31 (it can be any value as long as they do not overlap with the first set of points) so the 2 sets of points are not overlapped on top of each other.

Next, we will use **List.Combine** to apply a function on objects in 2 separate lists. In this case, it will be a simple draw line function.

![Exercise](<../../.gitbook/assets/lists of lists - combined 02.jpg>)

> 1. Add **List.Combine** to the workspace and connect the 2 set of points as its list0 & list1 input.
> 2. Use a **Line.ByStartPointEndPoint** as the input function for **List.Combine**.&#x20;

Once completed, the 2 set of points are zipped/paired together through a **Line.ByStartPointEndPoint** function and returning 10 lines in Dynamo.

{% hint style="info" %}
Refer to exercise in n-Dimensional Lists to see another example of using List.Combine.
{% endhint %}

### List@Level

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Listatlevel.dyn" %}

Preferred to **List.Map**, the **List@Level** feature allows you to directly select which level of list you want to work with right at the input port of the node. This feature can be applied to any incoming input of a node and will allow you access the levels of your lists quicker and easier than other methods. Just tell the node what level of the list you want to use as the input and let the node do the rest.

In this exercise, we will use the **List@Level** feature to isolate a specific level of data.

![List@Level](<../../.gitbook/assets/lists of lists - list at level 01.jpg>)

We will start with a simple 3D grid of points.

> 1. The grid is constructed with a Range for X, Y and Z, we know that the data is structured with 3 tiers: an X List, Y List and Z List.
> 2. These tiers exist at different **Levels**. The Levels are indicated at the bottom of the Preview Bubble. The list Levels columns correspond to the list data above to help identify which level to work within.
> 3. The list levels are organized in reverse order so that the lowest level data is always in “L1”. This will help ensure that your graphs will work as planned, even if anything is changed upstream.

![List@Level](<../../.gitbook/assets/lists of lists - list at level 02.jpg>)

> 1. To use the **List@Level** function, click '>'. Inside this menu, you will see two checkboxes.
> 2. **Use Levels** - This enables the **List@Level** functionality. After clicking on this option, you will be able to click through and select the input list levels you want the node to use. With this menu, you can quickly try out different level options by clicking up or down.
> 3. _Keep list structure_ – If enabled, you will have the option to keep that input’s level structure. Sometimes, you may have purposefully organized your data into sublists. By checking this option, you can keep your list organization intact and not lose any information.

With our simple 3D grid, we can access and visualize the list structure by toggling through the List Levels. Each list level and index combination will return a different set of points from our original 3D set.

![](<../../.gitbook/assets/lists of lists - list at level 03.jpg>)

> 1. “@L2” in DesignScript allows us to select only the List at Level 2. The List at Level 2 with the index 0 includes only the first set of Y points, returning only the XZ grid.
> 2. If we change the Level filter to “L1”, we will be able to see everything in the first List Level. The List at Level 1 with the index 0 includes all of our 3D points in a flat list.
> 3. If we try the same for “L3” we will see only the third List Level points. The List at Level 3 with the index 0 includes only the first set of Z points, returning only an XY grid.
> 4. If we try the same for “L4” we will see only the third List Level points. The List at Level 4 with the index 0 includes only the first set of X points, returning only an YZ grid.

Although this particular example can also be created with **List.Map**, **List@Level** greatly simplifies the interaction, making it easy to access the node data. Take a look below at a comparison between a **List.Map** and **List@Level** methods:

![](<../../.gitbook/assets/lists of lists - list at level 04.jpg>)

> 1. Although both methods will give us access to the same points, the **List@Level** method allows us to easily toggle between layers of data within a single node.
> 2. To access a point grid with **List.Map**, we will need a **List.GetItemAtIndex** node alongside the **List.Map**. For every list level that we are stepping down, we will need to use an additional **List.Map** node. Depending on the complexity of your lists, this could require you to add a significant amount of **List.Map** Nodes to your graph to access the right level of information.
> 3. In this example, a **List.GetItemAtIndex** node with a **List.Map** node returns the same set of points with the same list structure as the **List.GetItemAtIndex** with '@L3' selected.

### Transpose

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Transpose.dyn" %}

Transpose is a fundamental function when dealing with lists of lists. Just as in spreadsheet programs, a transpose flips the columns and rows of a data structure. We'll demonstrate this with a basic matrix below, and in the following section, we'll demonstrate how a transpose can be use to create geometric relationships.

![Transpose](../../.gitbook/assets/transpose1.jpg)

Let's delete the **List.Count** nodes from the previous exercise and move on to some geometry to see how the data structured.

![](<../../.gitbook/assets/lists of lists - transpose 01.jpg>)

> 1. Connect a **PolyCurve.ByPoints** to the output of the watch node from **Point.ByCoordinates**.
> 2. The output shows 5 polycurves, and we can see the curves in our Dynamo preview. The Dynamo node is looking for a list of points (or a list of lists of points in this case) and creating a single polycurve from them. Essentially, each list has converted to a curve in the data structure.

![](<../../.gitbook/assets/lists of lists - transpose 02.jpg>)

> 1. A **List.Transpose** node will switch all of the items with all of the lists in a list of lists. This sounds complicated, but it's the same logic as transpose in Microsoft Excel: switching columns with rows in a data structure.
> 2. Notice the abstract result: the transpose changed the list structure from a 5 lists with 3 items each to 3 lists with 5 items each.
> 3. Notice the geometric result: using **PolyCurve.ByPoints**, we get 3 polycurves in the perpendicular direction to the original curves.

## Code Block for List Creation

Code block shorthand uses "\[]" to define a list. This is a much faster and more fluid way to create list than the **List.Create** node. **Code block** is discussed in more detail in [Code Blocks and DesignScript](../../8\_coding\_in\_dynamo/8-1\_code-blocks-and-design-script/). Reference the image below to note how a list with multiple expressions can be defined with code block.

![](<../../.gitbook/assets/lists of lists - codeblock for list creation 01.jpg>)

#### Code Block Query

**Code block** shorthand uses "\[]" as a quick and easy way to select specific items that you want from a complex data structure. **Code blocks** are discussed in more detail in [Code Block and DesignScript chapter](../../8\_coding\_in\_dynamo/8-1\_code-blocks-and-design-script/). Reference the image below to note how a list with multiple data types can be queried with code block.

![](<../../.gitbook/assets/lists of lists - codeblock for list creation 02.jpg>)

## Exercise - Querying and Inserting Data

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/ReplaceItems.dyn" %}

This exercise uses some of the logic established in the previous one to edit a surface. Our goal here is intuitive, but the data structure navigation will be more involved. We want to articulate a surface by moving a control point.

Begin with the string of nodes above. We are creating a basic surface which spans the default Dynamo grid.

![](<../../.gitbook/assets/list of lists - exercise cb insert & query 01.jpg>)

> 1. Using **Code Block**, insert these two lines of code and connect to the _u_ and _v_ inputs of **Surface.PointAtParameter**, respectively: `-50..50..#3;` `-50..50..#5;`
> 2. Be sure to set the Lacing of **Surface.PointAtParameter** to _"Cross Product"_.
> 3. The **Watch** node show that we have a list of 3 lists, each with 5 items.

In this step, we want to query the central point in the grid we've created. To do this we'll select the middle point in the middle list. Makes sense, right?

![](<../../.gitbook/assets/list of lists - exercise cb insert & query 02.jpg>)

> 1. To confirm that this is the correct point, we can also click through the watch node items to confirm that we're targeting the correct one.
> 2. Using **Code Block**, we'll write a basic line of code for querying a list of lists:\
>    `points[1][2];`
> 3. Using **Geometry.Translate**, we'll move the selected point up in the _Z_ direction by _20_ units.

![](<../../.gitbook/assets/list of lists - exercise cb insert & query 03.jpg>)

> 1. Let's also select the middle row of points with a **List.GetItemAtIndex** node. Note: Similar to a previous step, we can also query the list with **Code Block**, using a line of `points[1];`

So far we've successfully queried the center point and moved it upward. Now we want need to insert this moved point back into the original data structure.

![](<../../.gitbook/assets/list of lists - exercise cb insert & query 04.jpg>)

> 1. First, we want to replace the item of the list we isolated in a previous step.
> 2. Using **List.ReplaceItemAtIndex**, we'll replace the middle item by using and index of _"2"_, with the replacement item connected to the moved point (**Geometry.Translate**).
> 3. The output shows that we've input the moved point into the middle item of the list.

Now that we've modified the list, we need to insert this list back into the original data structure: the list of lists.

![](<../../.gitbook/assets/list of lists - exercise cb insert & query 05.jpg>)

> 1. Following the same logic, use **List.ReplaceItemAtIndex** to replace the middle list with the our modified list.
> 2. Notice that the **Code Block**_s_ defining the index for these two nodes are 1 and 2, which matches the original query from the **Code Block** (_points\[1]\[2]_).
> 3. By selecting the list at _index 1_, we see the data structure highlighted in the Dynamo preview. We successfully merged the moved point into the original data structure.

There are many ways to make a surface from this set of points. In this case, we're going to create a surface by lofting curves together.

![](<../../.gitbook/assets/list of lists - exercise cb insert & query 06.jpg>)

> 1. Create a **NurbsCurve.ByPoints** node and connect the new data structure to create three nurbs curves.

![](<../../.gitbook/assets/list of lists - exercise cb insert & query 07.jpg>)

> 1. Connect a **Surface.ByLoft** to the output from **NurbsCurve.ByPoints**. We now have a modified surface. We can change the original _Z_ value of Geometry. Translate and watch the geometry update!
