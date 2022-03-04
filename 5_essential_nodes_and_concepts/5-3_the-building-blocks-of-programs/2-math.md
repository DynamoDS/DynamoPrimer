# Math

If the simplest form of data is numbers, the easiest way to relate those numbers is through Mathematics. From simple operators like divide to trigonometric functions, to more complex formulas, Math is a great way to start exploring numeric relationships and patterns.

### Arithmetic Operators

Operators are a set of components that use algebraic functions with two numeric input values, which result in one output value (addition, subtraction, multiplication, division, etc.). These can be found under Operators>Actions.

| Icon                                                | Name (Syntax)     | Inputs                     | Outputs      |
| --------------------------------------------------- | ----------------- | -------------------------- | ------------ |
| ![](<../../.gitbook/assets/addition (1).jpg>)       | Add (**+**)       | var\[]...\[], var\[]...\[] | var\[]...\[] |
| ![](<../../.gitbook/assets/Subtraction (1).jpg>)    | Subtract (**-**)  | var\[]...\[], var\[]...\[] | var\[]...\[] |
| ![](<../../.gitbook/assets/Multiplication (1).jpg>) | Multiply (**\***) | var\[]...\[], var\[]...\[] | var\[]...\[] |
| ![](<../../.gitbook/assets/Division (1).jpg>)       | Divide (**/**)    | var\[]...\[], var\[]...\[] | var\[]...\[] |

## Exercise: The Golden Spiral Formula

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Building Blocks of Programs - Math.dyn" %}

### Part I: Parametric Formula

Combine operators and variables to form a more complex relationship through **Formulas**. Use sliders to make a Formula that can be controlled with input parameters.

1.Create Number sequence that represents the 't' in the parametric equation, so we want to use a list that's large enough to define a spiral.

**Number Sequence:** define a number sequence based on three inputs: _start, amount_ and _step_.

![](<../../.gitbook/assets/math - part I-01.jpg>)

2\. The step above has created a list of numbers to define the parametric domain. Next, create group of Nodes represent the golden spiral equation.

The golden spiral is defined as the equation:

$$
x = r cos θ = a cos θ e^{bθ}
$$

$$
y = r sin θ = a sin θe^{bθ}
$$

The image below represents the golden spiral in in visual programming form. When stepping through the group of Nodes, try to pay attention to the parallel between the visual program and written equation.

![](<../../.gitbook/assets/math - part I-02.jpg>)

> a. **Number Slider**: Add two number sliders to the canvas. These sliders will represent the _a_ and the _b_ variables of the parametric equation. These represent a constant which is flexible, or parameters which we can adjust towards a desired outcome.
>
> b. **Multiplication (\*)** : The multiplication Node is represented by an asterisk. We'll use this repeatedly to connect multiplying variables
>
> c. **Math.RadiansToDegrees**: The '_t_' values need to be translated to degrees for their evaluation in the trigonometric functions. Remember, Dynamo defaults to degrees for evaluating these functions.
>
> d. **Math.Pow**: as a function of the '_t_' and the number '_e_' this creates the Fibonacci sequence.
>
> e. **Math.Cos and Math.Sin**: These two trigonmetric functions will differentiate the x-coordinate and the y-coordinate, respectively, of each parametric point.
>
> f. **Watch**: We now see that our output is two lists, these will be the _x_ and _y_ coordinates of the points used to generate the spiral.

### Part II: From Formula to Geometry

Now, the bulk of Nodes from the previous step will work fine, but it is a lot of work. To create a more efficient workflow, have a look at [DesignScript ](../../8\_coding\_in\_dynamo/8-1\_code-blocks-and-design-script/2-design-script-syntax.md)to define a string of Dynamo expressions into one node. In this next series of steps, we'll look at using the parametric equation to draw the Fibonacci spiral.

**Point.ByCoordinates:** Connect the upper multiplication node into the '_x_' input and the lower into the '_y_' input. We now see a parametric spiral of points on the screen.

![](<../../.gitbook/assets/math - part II-01.gif>)

**Polycurve.ByPoints:** Connect **Point.ByCoordinates** from the previous step into _points_. We can leave _connectLastToFirst_ without an input because we aren't making a closed curve. This creates a spiral which passes through each point defined in the previous step.

![](<../../.gitbook/assets/math - part II-02.jpg>)

We've now completed the Fibonacci Spiral! Let's take this further into two separate exercises from here, which we'll call the Nautilus and the Sunflower. These are abstractions of natural systems, but the two different applications of the Fibonacci spiral will be well represented.

### Part III: From Spiral to Nautilus

**Circle.ByCenterPointRadius:** We'll use a circle Node here with the same inputs as the previous step. The radius value defaults to _1.0_, so we see an immediate output of circles. It becomes immediately legible how the points diverge further from the origin.

![](<../../.gitbook/assets/math - part III-01.jpg>)

**Number Sequence:** This is the original array of '_t_'. By plugging this into the radius value of **Circle.ByCenterPointRadius**, the circle centers are still diverging further from the origin, but the radius of the circles is increasing, creating a funky Fibonacci circle graph.

Bonus points if you make it 3D!

![](<../../.gitbook/assets/math - part III-02.gif>)

### Part IV: From Nautilus to Phyllotaxis

Pattern Now that we've made a circular Nautilus shell, let's jump into parametric grids. We're going to use a basic rotate on the Fibonacci Spiral to create a Fibonacci grid, and the result is modeled after the [growth of sunflower seeds](https://blogs.unimelb.edu.au/sciencecommunication/2018/09/02/this-flower-uses-maths-to-reproduce/).

As a jumping-off point, let's start with the same step from the previous exercise: creating a spiral array of points with the **Point.ByCoordinates** Node.

![](<../../.gitbook/assets/math - part IV-01.jpg>)

Next, follow these mini steps to generate a series of spiral at various rotation.

![](<../../.gitbook/assets/math - part IV-02.jpg>)

> a. **Geometry.Rotate:** There are several **Geometry.Rotate** options; be certain you've chosen the Node with _geometry_,_basePlane_, and _degrees_ as its inputs. Connect **Point.ByCoordinates** into the geometry input. Right click on this Node and make sure the lacing is set to 'Cross Product'
>
> ![](<../../.gitbook/assets/math - part IV-03 cross product.jpg>)
>
> b. **Plane.XY:** Connect to the _basePlane_ input. We will rotate around the origin, which is the same location as the base of the spiral.
>
> c. **Number Range:** For our degree input, we want to create multiple rotations. We can do this quickly with a **Number Range** component. Connect this into the _degrees_ input.
>
> d. **Number:** And to define the range of numbers, add three number nodes to the canvas in vertical order. From top to bottom, assign values of _0.0,360.0,_ and _120.0_ respectively. These are driving the rotation of the spiral. Notice the output results from the **Number Range** node after connecting the three number nodes to the Node.

Our output is beginning to resemble a whirlpool. Let's adjust some of the **Number Range** parameters and see how the results change.

Change the step size of the **Number Range** node from _120.0_ to _36.0_. Notice that this is creating more rotations and is therefore giving us a denser grid.

![](<../../.gitbook/assets/math - part IV-04.jpg>)

Change the step size of the **Number Range** node from _36.0_ to _3.6_. This now gives us a much denser grid, and the directionality of the spiral is unclear. Ladies and gentlemen, we've created a sunflower.

![](<../../.gitbook/assets/math - part IV-05.jpg>)
