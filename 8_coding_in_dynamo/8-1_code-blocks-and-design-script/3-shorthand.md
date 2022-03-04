# Shorthand

### Shorthand

There are a few basic shorthand methods in the code block which, simply put, make data management _a lot_ easier. We'll break down the basics below and discuss how this shorthand can be used both for creating and querying data.

| **Data Type**          | **Standard Dynamo**                                      | **Code Block Equilvalent**                                    |
| ---------------------- | -------------------------------------------------------- | ------------------------------------------------------------- |
| Numbers                | ![](<../../.gitbook/assets/01 node - numbers.jpg>)       | ![](<../../.gitbook/assets/01 codeblock - numbers.jpg>)       |
| Strings                | ![](<../../.gitbook/assets/02 node - string.jpg>)        | ![](<../../.gitbook/assets/02 codeblock- string.jpg>)         |
| Sequences              | ![](<../../.gitbook/assets/03 node- sequence.jpg>)       | ![](<../../.gitbook/assets/03 codeblock- sequence.jpg>)       |
| Ranges                 | ![](<../../.gitbook/assets/04 node- range.jpg>)          | ![](<../../.gitbook/assets/04 codeblock - range.jpg>)         |
| Get Item at Index      | ![](<../../.gitbook/assets/05 node - list get item.jpg>) | ![](<../../.gitbook/assets/05 codeblock - list get item.jpg>) |
| Create List            | ![](<../../.gitbook/assets/06 node - list create.jpg>)   | ![](<../../.gitbook/assets/06 codeblock - list create.jpg>)   |
| Concatenate Strings    | ![](<../../.gitbook/assets/07 node - string concat.jpg>) | ![](<../../.gitbook/assets/07 codeblock - string concat.jpg>) |
| Conditional Statements | ![](<../../.gitbook/assets/08 node - conditional.jpg>)   | ![](<../../.gitbook/assets/08 codeblock - conditional.jpg>)   |

### Additional Syntax

|                                     |                           |                                                                                          |
| ----------------------------------- | ------------------------- | ---------------------------------------------------------------------------------------- |
| **Node(s)**                         | **Code Block Equivalent** | **Note**                                                                                 |
| Any operator (+, &&, >=, Not, etc.) | +, &&, >=, !, etc.        | Note that “Not” becomes “!” but the node is called “Not” to distinguish from “Factorial” |
| Boolean True                        | true;                     | Note lower case                                                                          |
| Boolean False                       | false;                    | Note lower case                                                                          |

### Ranges and Sequences

The method for defining ranges and sequences can be reduced to basic shorthand. Use the image below as a guide to the ".." syntax for defining a list of numerical data with code block. After getting the hang of this notation, creating numerical data is a really efficient process:

![](<../../.gitbook/assets/shorthand - ranges and sequences.jpg>)

> 1. In this example, a number range is replaced by basic **Code Block** syntax defining the `beginning..end..step-size;` . Represented numerically, we get: `0..10..1;`
> 2. Notice that the syntax `0..10..1;` is equivalent to `0..10;` A step-size of 1 is the default value for the shorthand notation. So `0..10;` will give a sequence from 0 to 10 with a step-size of 1.
> 3. The _Sequence_ example is similar, except we use a "#" to state that we want 15 values in the list, rather than a list which goes up to 15. In this case, we are defining: `beginning..#ofSteps..step-size:` The actual syntax for the sequence is `0..#15..2`
> 4. Using the _"#"_ from the previous step, we now place it in the _"step-size"_ portion of the syntax. Now, we have a _number range_ spanning from the _"beginning"_ to the _"end"_ and the _"step-size"_ notation evenly distributes a number of values between the two: `beginning..end..#ofSteps`

### Advanced Ranges

Creating advanced ranges allows us to work with list of lists in a simple fashion. In the examples below, we're isolating a variable from the primary range notation, and creating another range of that list.

![](<../../.gitbook/assets/shorthand - advance range 01.jpg>)

> 1\. Creating nested ranges, compare the notation with a "#" vs. the notation without. The same logic applies as in basic ranges, except it gets a little more complex.
>
> 2\. We can define a sub-range at any place within the primary range, and notice that we can have two sub-ranges as well.
>
> 3\. By controlling the "end" value in a range, we create more ranges of differing lengths.

As a logic exercise, compare the two shorthands above and try to parse through how _subranges_ and the _#_ notation drive the resultant output.

![](<../../.gitbook/assets/shorthand - advance range 02.jpg>)

### Make Lists and Get Items From a List

In addition to making lists with shorthand, we can also create lists on the fly. These list can contain a wide range of element types and can also be queried (remember, lists are objects in themselves). To summarize, with code block you make lists and query items from a list with brackets (a.k.a. “square brackets”):

![](<../../.gitbook/assets/shorthand - list & get from list 01.jpg>)

> 1\. Create lists quickly with strings and query them using the item index.
>
> 2\. Create lists with variables and query using the range shorthand notation.

And managing with nested lists is a similar process. Be aware of the list order and recall using multiple sets of square brackets:

![](<../../.gitbook/assets/shorthand - list & get from list 02.jpg>)

> 1\. Define a list of lists.
>
> 2\. Query a list with single bracket notation.
>
> 3\. Query an item with double bracket notation.

## Exercise: Sine Surface

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Obsolete-Nodes_Sine-Surface.dyn" %}

In this exercise, we will flex our new shorthand skills to create a funky-cool eggshell surface defined by ranges and formulas. During this exercise, notice how we use code block and existing Dynamo nodes in tandem: we use the code block for the heavy data lifting while the Dynamo nodes are visually laid out for legibility of the definition.

Start by creating a surface by connecting the nodes above. Instead of using a number node to define width and length, double click on the canvas and type `100;` into a code block

![](<../../.gitbook/assets/shorthand - exercise 01.jpg>)

![](<../../.gitbook/assets/shorthand - exercise 02.jpg>)

> 1. Define a range between 0 and 1 with 50 divisions by typing `0..1..#50` into a **Code Block**.
> 2. Connect the range into **Surface.PointAtParameter**, which takes u and v values between 0 and 1 across the surface. Remember to change the Lacing to Cross Product by right clicking on the **Surface.PointAtParameter** node.

In this step, we employ our first function to move the grid of points up in the Z. This grid will drive a generated surface based on the underlying function. Add new nodes as shown in image below

![](<../../.gitbook/assets/shorthand - exercise 03.jpg>)

> 1. Rather than using a formula node, we use a **Code Block** with the line: `(0..Math.Sin(x*360)..#50)*5;`. To quickly break this down, we're defining a range with a formula inside of it. This formula is the Sine function. The sine function receives degree inputs in Dynamo, so in order to get a full sine wave, we multiple our x values (this is the range input from 0 to 1) by 360. Next we want the same number of divisions as control grid points for each row, so we define fifty subdivisions with #50. Finally, the multiplier of 5 simply increases the amplitude of translation so that we can see the effect in the Dynamo Preview.

![](<../../.gitbook/assets/shorthand - exercise 04.jpg>)

> 1. While the previous **Code Block** worked fine, it wasn't completely parametric. We want to dynamically drive its parameters, so we'll replace the line from the previous step with `(0..Math.Sin(x*360*cycles)..#List.Count(x))*amp;`. This gives us the ability to define these values based on inputs.

By changing the sliders (ranging from 0 to 10), we get some interesting results.

![](<../../.gitbook/assets/shorthand - exercise 05.gif>)

![](<../../.gitbook/assets/shorthand - exercise 06.jpg>)

> 1. By doing a transpose on the number range, we reverse the direction of the curtain wave: `transposeList = List.Transpose(sineList);`

![](<../../.gitbook/assets/shorthand - exercise 07.jpg>)

> 1. We get a distorted eggshell surface when we add the sineList and the tranposeList: `eggShellList = sineList+transposeList;`

Let's change the sliders values specified below to 'calm the waters' of this algorithm.

![](<../../.gitbook/assets/shorthand - exercise 08.jpg>)

Last, let's query isolated parts of the data with the Code Block. To regenerate the surface with a specific range of points, add the code block above between the **Geometry.Translate** and **NurbsSurface.ByPoints** node. This has the line of text: `sineStrips[0..15..1];`. This will select the first 16 rows of points (out of 50). Recreating the surface, we can see that we've generated an isolated portion of the grid of points.

![](<../../.gitbook/assets/shorthand - exercise 09.jpg>)

![](<../../.gitbook/assets/shorthand - exercise 10.jpg>)

> 1. In the final step, to make this **Code Block** more parametric, we drive the query by using a slider ranging from 0 to 1. We do this with this line of code: `sineStrips[0..((List.Count(sineStrips)-1)*u)];`. This may seem confusing, but the line of code gives us a quick way to scale the length of the list into a multiplier between 0 and 1.

A value of `0.53` on the slider creates a surface just past the midpoint of the grid.

![](<../../.gitbook/assets/shorthand - exercise 11.jpg>)

And as expected, a slider of `1` creates a surface from the full grid of points.

![](<../../.gitbook/assets/shorthand - exercise 12.jpg>)

Looking at the visual graph, we can highlight the code blocks and see each of their functions.

![](<../../.gitbook/assets/shorthand - exercise 13.jpg>)

> 1\. The first **Code Block** replaces the **Number** node.
>
> 2\. The second **Code Block** replaces the **Number Range** node.
>
> 3\. The third **Code Block** replaces the **Formula** node (as well as **List.Transpose**, **List.Count** and **Number Range**).
>
> 4\. The fourth **Code Block** queries a list of lists, replacing the **List.GetItemAtIndex** node.
