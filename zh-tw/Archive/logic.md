## Logic

### Booleans
Numeric variables can store a whole range of different numbers. Boolean
variables can only store two values referred to as Yes or No, True or False,
1 or 0. Obviously we never use booleans to perform calculations because of their
limited range. We use booleans to evaluate conditions.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCoreNodesUI-BoolSelector-Large.png) | Boolean | -- | True/False Radio Button | Boolean |
> The boolean Node in Dynamo is a basic radio button, toggling between true and false.

At the most basic level, Dynamo has a boolean Node which functions as a light switch for logical operations.  This is a fundamental element for making conditional evaluation.

### "If"
The "If" statement is a key concept in programming: "If *this* is true, then *that* happens, otherwise *something else* happens.  The statement's decision is driven by a boolean, and the two results are defined by the user.  There are multiple ways to define an "If" statement in Dynamo:

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCoreNodesUI-Logic-If-Large.png) | If | If | test, true, false | result|
| ![](../images/icons/DSCoreNodesUI-Formula-Large.png) | Formula | IF(x,y,z) | x, y, z | result |
| ![](../images/icons/Dynamo-Nodes-CodeBlockNodeModel-Large.png) | Code Block | (x?y:z)| x, y, z | result|
Let's go over a brief example on each of these three nodes in action using the conditional "If" statement:

![](images/4-3/Ifs.png)
> In this image, the *boolean* is set to *true*, which means that the result is a string reading: *"this is the result if true".*  The three Nodes creating the *If* statement are working identically here.

![](images/4-3/Ifs2.png)
> Again, the Nodes are working identically.  If the *boolean* is changed to *false*, our result is the number *Pi*, as defined in the original *If* statement.

### Relational Operators
| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/lt-Large.png) | Less Than | < | x,y | boolean(s)|
| ![](../images/icons/le-Large.png) | Less Than or Equal To | <=| x, y | boolean(s) |
| ![](../images/icons/gt-Large.png) |Greater Than |>| x, y | boolean(s)|
| ![](../images/icons/ge-Large.png) | Greater Than or Equal To | >=| x, y | boolean(s)|
| ![](../images/icons/eq-Large.png) | Equal To | ==| x, y | boolean(s)|
| ![](../images/icons/nq-Large.png) | Not Equal To | !=| x| boolean(s)|
Relational operators receive one or more inputs, and output a boolean depending on the result of a specific test.  In summary, these are the "*greater than, less than*" tests.  The demo below gives us an example.

![](images/4-3/largesmall.png)
> The result of each test is a boolean.  In the *less than* test, *2* is indeed *less than 5*, o the result is *true*. In the *greater than* test, *2* is not *greater than 5*, so the result is *false*.

### Logic Gates
| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Logic-And-Large.png) | And | && | x, y | boolean(s)|
| ![](../images/icons/and-Large.png) | And | And | bool0,bool1... | boolean(s) |
| ![](../images/icons/or-Large.png) | Or |//| x, y | boolean(s)|
| ![](../images/icons/DSCore-Logic-Or-Large.png) | Or| Or| bool0, bool1... | boolean(s)|
| ![](../images/icons/DSCore-Logic-Xor-Large.png) | Xor |Logic.Xor| a, b | boolean(s)|
| ![](../images/icons/Not-Large.png) | Not |Not| x | boolean(s)|
In its simplest form, a logic gate receives two booleans and outputs one boolean.  These are based on fundamental sets, much like a [Venn Diagram](http://en.wikipedia.org/wiki/Venn_diagram).  Dynamo uses the basic gates of *And*, *Or*, and *Xor*.

**And/&& -** In the table above, the two Nodes for *And* may be confusing.  Here is how they're different:

![](images/4-3/andand.png)
> The *&&* Node receives two inputs. The *And* Node receives two inputs by default (middle icon), but one can click the *+/-* to add or subtract more inputs (right icon with 4 inputs). Other than that, the two are functionally identical. So go with *And* Node.

**Xor -** This Node returns a true value if and only if *one* of the values is *true*.


![](images/4-3/onetrue.png)
> This image show the four combinations of two booleans. If both values are *true*, a *false* is returned.  If both values are *false*, a *false* is also returned.  The *true* value is return if and only if *one* of the values is *true*.  This rounds out the three main logic gates for two booleans.


### Filter

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-List-FilterByBoolMask-Large.png) | Filter By Boolean Mask | List.FilterByBoolMask | list, mask | in, out|

*List.FilterByBoolMask* is a great tool for geometry operations. After conducting a conditional test on an array of elements, one can parse through those elements with this node.  In the exercise below, we demonstrate this in detail.
