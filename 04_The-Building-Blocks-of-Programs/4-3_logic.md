## 4.3 Logic

### 4.3.1 Booleans
Numeric variables can store a whole range of different numbers. Boolean
variables can only store two values referred to as Yes or No, True or False,
1 or 0. Obviously we never use booleans to perform calculations because of their
limited range. We use booleans to evaluate conditions.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCoreNodesUI-BoolSelector-Large.png) | Boolean | -- | True/False Radio Button | Boolean |
> The boolean battery in Dynamo is a basic radio button, toggling between true and false.

At the most basic level, Dynamo has a boolean battery which functions as a light switch for logical operations.  This is a fundamental element for making conditional evaluation.



### 4.3.2 "If"

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCoreNodesUI-Logic-If-Large.png) | If | If | test, true, false | result|
| ![](../images/icons/DSCoreNodesUI-Formula-Large.png) | Formula | IF(x,y,z) | x, y, z | result |
| ![](../images/icons/Dynamo-Nodes-CodeBlockNodeModel-Large.png) | Code Block | (x?y:z)| x, y, z | result|
![](images/4-3/Ifs.png)
![](images/4-3/Ifs2.png)
### 4.3.3 Conditional Operators
| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/lt-Large.png) | Less Than | < | x,y | boolean(s)|
| ![](../images/icons/le-Large.png) | Less Than or Equal To | <=| x, y | boolean(s) |
| ![](../images/icons/gt-Large.png) |Greater Than |>| x, y | boolean(s)|
| ![](../images/icons/ge-Large.png) | Greater Than or Equal To | >=| x, y | boolean(s)|
| ![](../images/icons/eq-Large.png) | Equal To | ==| x, y | boolean(s)|
| ![](../images/icons/nq-Large.png) | Not Equal To | !=| x| boolean(s)|

![](images/4-3/largesmall.png)

### 4.3.4 Logic Gates
![bool](images/4-3/4-3-1/venn1.png)
> The diagram above represents an array of boolean possiblities.  These are used as logical operators for computational modeling.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Logic-And-Large.png) | And | && | x, y | boolean(s)|
| ![](../images/icons/and-Large.png) | And | And | bool0,bool1... | boolean(s) |
| ![](../images/icons/or-Large.png) | Or |//| x, y | boolean(s)|
| ![](../images/icons/DSCore-Logic-Or-Large.png) | Or| Or| bool0, bool1... | boolean(s)|
| ![](../images/icons/DSCore-Logic-Xor-Large.png) | Xor |Logic.Xor| a, b | boolean(s)|
| ![](../images/icons/Not-Large.png) | Not |Not| x | boolean(s)|
![](images/4-3/andand.png)

### 4.3.5 Filter
> The diagram above represents an array of boolean possiblities.  These are used as logical operators for computational modeling.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-List-FilterByBoolMask-Large.png) | Filter By Boolean Mask | List.FilterByBoolMask | list, mask | in, out|

### 4.3.6 Exercise
####Evens/Odds
This preliminary exercise uses logic to separate a list of numbers into a list of even numbers and a list of odd numbers.

![](images/4-3/01.png)
> 1. **Number Range -** add a number range to the canvas.
2. **Numbers -** add three number nodes to the canvas.  The value for each number node should be: *0.0* for *start*, *10.0* for *end*, and *1.0* for *step*.
3. **Output - ** our output is a list of 11 numbers ranging from 0-10.
4. **Modulo (%)-** *Number Range* into *x* and *2.0* into *y*.  This calculates the remainder for each number in the list divided by 2. The output from this list gives us a list of values alternating between 0 and 1.
5. **Equality Test (==) -** add an equality test to the canvas.  Plug *modulo* output into the *x* input and *0.0* into the *y* input.
6. **Watch -** The output of the equality test is a list of values alternating between true and false.  These are the values used to separate the items in the list.  *0* (or *true*) represents even numbers and (*1*, or *false*) represents odd numbers.
6. **List.FilterByBoolMask -** this battery will filter the values into two different lists based on the input boolean.  Plug the original *number range* into the *list* input and the *equality test** output into the *mask* input.  The *in* output represents true values while the *out* output represents false values.
7. **Watch - ** as a result, we now have a list of even numbers and a list of odd numbers. We've used logical operators to separate lists into patterns!

####Even/Odd Zippers
Building off of the logic established in the first exercise, let's apply this setup into a modeling operation.

![](images/4-3/02.png)
> 1. We'll jump off from the previous exercise with the same batteries.  The only exceptions:
2. We've changed the format.
3. The input values have changed.
4. We've unplugged the in list input into *List.FilterByBoolMask*. We'll put these batteries aside for now, but they'll come in handy later in the exercise.

![](images/4-3/03.png)
> Let's begin by connecting the batteries together as shown in the image above. This group of batteries represents a parametric equation to define a line curve. A few notes:
1. The **first slider** should have a min of 1, a max of 4, and a step of 0.01.
2. The **second slider** should have a min of 0, a max of 1, and a step of 0.01.
3. **PolyCurve.ByPoints -** if the above battery diagram is copied, the result is a sine curve in the Dynamo Preview viewport.

The method here for the inputs: use number nodes for more static properties and number sliders on the more flexible ones.  We want to keep the original number range that we're defining in the beginning of this step.  However, the sine curve that we create here should have some flexibility.  We can move these sliders to watch the curve update its frequency and amplitude.

![](images/4-3/04.png)
> We're going to jump around a bit in the definition, so let's look at the end result so that we can reference what we're getting at.  The first two steps are made separately, we now want to connect the two.  We'll use the base sine curve to drive the location of the zipper components, and we'll use the true/false logic to alternate between little boxes and larger boxes.

![](images/4-3/05.png)
> 1. **Math.RemapRange - ** Using the number sequence created in step 01, let's create a new series of numbers by remapping the range.  The original numbers from step 01 range from 0-100.  These numbers range from 0 to 1 by by the *newMin* and *newMax* inputs respectively.

![](images/4-3/06.png)
> 1. **Curve.PointAtParameter - ** Plug *Polycurve.ByPoints* (from step 2) into *curve* and *Math.RemapRange* into *param*. This step creates points along the curve. We remapped the numbers to 0 to 1 because the input of *param* is looking for values in this range.  A value of *0* represents the start point, a value of *1* represents the end points.  All numbers in between evaluate within the *[0,1]* range.

![](images/4-3/07.png)
> 1. **List.FilterByBoolMask - ** Plug *Curve.PointAtParameter* from the previous step into the *list* input.
2. **Watch -** a watch node for *in* and a watch node for *out* shows that we have two lists representing even indices and odd indices.  These points are ordered in the same way on the curve, which we demonstrate in the next step.

![](images/4-3/08.png)
> 1. **Cuboid.ByLengths -** recreate the connections seen in the image above to get a zipper along the sine curve. A cuboid is just a box here, and we're defining it's size based on the curve point in the center of hte box.  The logic of the even/odd divide should now be clear in the model.

![](images/4-3/matrix.png)
> 1. **Number Slider -** stepping back to the beginning of the definition, we can flex the number slider and watch the zipper update.  The top row of images represents a range values for the top number slider. This is the frequency of the wave.
2. **Number Slider -** the bottom row of images represents a range of values for the bottom slider.  This is the amplitude of the wave.










