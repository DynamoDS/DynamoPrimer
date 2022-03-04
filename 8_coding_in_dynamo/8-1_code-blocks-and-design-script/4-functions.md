# Functions

Functions can be created in a code block and recalled elsewhere in a Dynamo definition. This creates another layer of control in a parametric file, and can be viewed as a text-based version of a custom node. In this case, the "parent" code block is readily accessible and can be located anywhere on the graph. No wires needed!

### Parent

The first line has the key word “def”, then the function name, then the names of inputs in parentheses. Braces define the body of the function. Return a value with “return =”. Code Blocks that define a function do not have input or output ports because they are called from other Code Blocks.

![](<../../.gitbook/assets/functions parent def.jpg>)

```
/*This is a multi-line comment,
which continues for
multiple lines*/
def FunctionName(in1,in2)
{
//This is a comment
sum = in1+in2;
return sum;
};
```

### Children

Call the function with another Code Block in the same file by giving the name and the same number of arguments. It works just like the out-of-the-box nodes in your library.

![](<../../.gitbook/assets/functions children call def.jpg>)

```
FunctionName(in1,in2);
```

## Exercise: Sphere By Z

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Functions_SphereByZ.dyn" %}

In this exercise, we will make a generic definition that will create spheres from an input list of points. The radius of these spheres are driven by the Z property of each point.

Let's begin with a number range of ten values spanning from 0 to 100. Plug these into a **Point.ByCoordinates** nodes to create a diagonal line.

![](<../../.gitbook/assets/functions - exercise - 01.jpg>)

Create a **Code Block** and introduce our definition.

![](<../../.gitbook/assets/functions - exercise - 02.jpg>)

> 1.  Use these lines of code:
>
>     ```
>     def sphereByZ(inputPt)
>     {
>
>     };
>     ```
>
> The _inputPt_ is the name we've given to represent the points that will drive the function. As of now, the function isn't doing anything, but we'll build up this function in the steps to come.

![](<../../.gitbook/assets/functions - exercise - 03.jpg>)

> 1. Adding to the **Code Block** function, we place a comment and a _sphereRadius_ variable which queries the _Z_ position of each point. Remember, _inputPt.Z_ does not need parenetheses as a method. This is a _query_ of an existing element's properties, so no inputs are necessary:
>
> ```
> def sphereByZ(inputPt,radiusRatio)
> {
> //get Z Value, ise ot to drive radius of sphere
> sphereRadius=inputPt.Z;
> };
> ```

![](<../../.gitbook/assets/functions - exercise - 04.jpg>)

> 1. Now, let's recall the function we've created in another **Code Block**. If we double-click on the canvas to create a new _code block_, and type in _sphereB_, we notice that Dynamo suggest the _sphereByZ_ function that we've defined. Your function has been added to the intellisense library! Pretty cool.

![](<../../.gitbook/assets/functions - exercise - 05.jpg>)

> 1.  Now we call the function and create a variable called _Pt_ to plug in the points created in the earlier steps:
>
>     ```
>     sphereByZ(Pt)
>     ```
> 2. We notice from the output that we have all null values. Why is this? When we defined the function, we are calculating the _sphereRadius_ variable, but we did not define what the function should _return_ as an _output_. We can fix this in the next step.

![](<../../.gitbook/assets/functions - exercise - 06.jpg>)

> 1. An important step, we need to define the output of the function by adding the line `return = sphereRadius;` to the _sphereByZ_ function.
> 2. Now we see that the output of the Code Block gives us the Z coordinates of each point.

Let's create actual spheres now by editing the _Parent_ function.

![](<../../.gitbook/assets/functions - exercise - 07.jpg>)

> 1. We first define a sphere with the line of code: `sphere=Sphere.ByCenterPointRadius(inputPt,sphereRadius);`
> 2. Next, we change the return value to be the _sphere_ instead of the _sphereRadius_: `return = sphere;` This gives us some giant spheres in our Dynamo preview!

![](<../../.gitbook/assets/functions - exercise - 08.jpg>)

> 1\. To temper the size of these spheres, let's update the sphereRadius value by adding a divider: `sphereRadius = inputPt.Z/20;` Now we can see the separate spheres and start to make sense of the relationship between radius and Z value.

![](<../../.gitbook/assets/functions - exercise - 09.jpg>)

> 1. On the **Point.ByCoordinates** node, by changing the lacing from Shortest List to Cross Product, we create a grid of points. The _sphereByZ_ function is still in full effect, so the points all create spheres with radii based on Z values.

![](<../../.gitbook/assets/functions - exercise - 10.jpg>)

> 1. And just to test the waters, we plug the original list of numbers into the X input for **Point.ByCoordinates**. We now have a cube of spheres.
> 2. Note: if this takes a long time to calculate on your computer, try to change _#10_ to something like _#5_.

Remember, the _sphereByZ_ function we've created is a generic function, so we can recall the helix from an earlier lesson and apply the function to it.

![](<../../.gitbook/assets/functions - exercise - 11.jpg>)

One final step: let's drive the radius ratio with a user defined parameter. To do this, we need to create a new input for the function and also replace the _20_ divider with a parameter.

![](<../../.gitbook/assets/functions - exercise - 12.jpg>)

> 1.  Update the _sphereByZ_ definition to:
>
>     ```
>     def sphereByZ(inputPt,radiusRatio)
>     {
>     //get Z Value, use it to drive radius of sphere
>     sphereRadius=inputPt.Z/radiusRatio;
>     //Define Sphere Geometry
>     sphere=Sphere.ByCenterPointRadius(inputPt,sphereRadius);
>     //Define output for function
>     return sphere;
>     };
>     ```
> 2. Update the children **Code Block** by adding a ratio variable to the input: `sphereByZ(Pt,ratio);` Plug a slider into the newly created **Code Block** input and vary the size of the radii based on the radius ratio.
