# Data

Data is the stuff of our programs. It travels through Wires, supplying inputs for Nodes where it gets processed into a new form of output data. Let's review the definition of data, how it's structured, and begin using it in Dynamo.

## What is Data?

Data is a set of values of qualitative or quantitative variables. The simplest form of data is numbers such as `0`, `3.14`, or `17`. But data can also be of a number of different types: a variable representing changing numbers (`height`); characters (`myName`); geometry (`Circle`); or a list of data items (`1,2,3,5,8,13,...`).

In Dynamo, we add/feed data to the input Ports of Nodes - we can have data without actions but we need data to process the actions that our Nodes represent. When we've added a Node to the Workspace, if it doesn't have any inputs supplied, the result will be a function, not the result of the action itself.

![Data and Actions](<../../.gitbook/assets/data - what is data.jpg>)

> 1. Simple Data
> 2. Data and Action (A Node) successfully executes
> 3. Action (A Node) without Data Inputs returns a generic function

### Null - Absence of Data

Beware of Nulls The `'null'` type represents the absence of data. While this is an abstract concept, you will likely come across this while working with Visual Programming. If an action doesn't create a valid result, the Node will return a null.

Testing for nulls and removing nulls from data structure is a crucial part to creating robust programs.

| Icon                                                  | Name/Syntax   | Inputs | Outputs |
| ----------------------------------------------------- | ------------- | ------ | ------- |
| ![](<../../.gitbook/assets/data - object IsNull.jpg>) | Object.IsNull | obj    | bool    |

### Data Structures

When we are Visual Programming, we can very quickly generate a lot of data and require a means of managing its hierarchy. This is the role of Data Structures, the organizational schemes in which we store data. The specifics of Data Structures and how to use them vary from programming language to programming language.

In Dynamo, we add hierarchy to our data through Lists. We will explore this in depth in later chapters, but let's start simply:

A list represents a collection of items placed into one structure of data:

* I have five fingers (_items_) on my hand (_list_).
* There are ten houses (_items_) on my street (_list_).

![List Breakdown](<../../.gitbook/assets/data - data structures.jpg>)

> 1. A **Number Sequence** node defines a list of numbers by using a _start_, _amount_, and _step_ input. With these nodes, we've created two separate lists of ten numbers, one which ranges from _100-109_ and another which ranges from _0-9_.
> 2. The **List.GetItemAtIndex** node selects an item in a list at a specific index. When choosing _0_, we get the first item in the list (_100_ in this case).
> 3. Applying the same process to the second list, we get a value of _0_, the first item in the list.
> 4. Now we merge the two lists into one by using the **List.Create** node. Notice that the node creates a _list of lists._ This changes the structure of the data.
> 5. When using **List.GetItemAtIndex** again, with index set to _0_, we get the first list in the list of lists. This is what it means to treat a list as an item, which is somewhat different from other scripting languages. We will get more advanced with list manipulation and data structure in later chapters.

The key concept to understand about data hierarchy in Dynamo: **with respect to data structure, lists are regarded as items.** In other words, Dynamo functions with a top-down process for understanding data structures. What does this mean? Let's walk through it with an example.

## Exercise: Using Data to Make a Chain of Cylinders

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/Building Blocks of Programs - Data.dyn" %}

In this first example, we assemble a shelled cylinder which walks through the geometry hierarchy discussed in this section.

### Part I: Set up Graph for one cylinder with some changeable parameters.

1.Add **Point.ByCoordinates -** after adding the node to canvas, we see a point at the origin of the Dynamo preview grid. The default values of the _x,y_, and _z_ inputs are _0.0_, giving us a point at this location.

![](<../../.gitbook/assets/data - exercise step 1.jpg>)

2\. **Plane.ByOriginNormal -** The next step in the geometry hierarchy is a plane. There are several ways to construct a plane, and we are using an origin and normal for the input. The origin is the point node created in the previous step.

**Vector.ZAxis -** this is a unitized vector in the z direction. Notice there are not inputs, only a vector of \[0,0,1] value. We use this as the _normal_ input for the **Plane.ByOriginNormal** node. This gives us a rectangular plane in the Dynamo preview.

![](<../../.gitbook/assets/data - exercise step 2.jpg>)

3\. **Circle.ByPlaneRadius -** Stepping up the hierarchy, we now create a curve from the plane in our previous step. After plugging into the node, we get a circle at the origin. The default radius on the node is value of _1_.

![](<../../.gitbook/assets/data - exercise step 3.jpg>)

4\. **Curve.Extrude -** Now we make this thing pop by giving it some depth and going in the third dimension. This node creates a surface from a curve by extruding it. The default distance on the node is _1_, and we should see a cylinder in the viewport.

![](<../../.gitbook/assets/data - exercise step 4.jpg>)

5\. **Surface.Thicken -** This node gives us a closed solid by offsetting the surface a given distance and closing the form. The default thickness value is _1_, and we see a shelled cylinder in the viewport in line with these values.

![](<../../.gitbook/assets/data - exercise step 5.jpg>)

6\. **Number Slider -** Rather than using the default values for all of these inputs, let's add some parametric control to the model.

**Domain Edit -** after adding the number slider to the canvas, click the caret in the top left to reveal the domain options.

**Min/Max/Step -** change the _min_, _max_, and _step_ values to _0_,_2_, and _0.01_ respectively. We are doing this to control the size of the overall geometry.

![](<../../.gitbook/assets/data - exercise step 6.gif>)

7\. **Number Sliders -** In all of the default inputs, let's copy and paste this number slider (select the slider, hit Ctrl+C, then Ctrl+V) several times, until all of the inputs with defaults have a slider instead. Some of the slider values will have to be larger than zero to get the definition to work (ie: you need an extrusion depth in order to have a surface to thicken).

![](<../../.gitbook/assets/data - exercise step 7a.gif>)

![](<../../.gitbook/assets/data - exercise step 7b.gif>)

8\. We've now created a parametric shelled cylinder with these sliders. Try to flex some of these parameters and see the geometry update dynamically in the Dynamo viewport.

![](<../../.gitbook/assets/data - exercise step 8a.gif>)

**Number Sliders -** taking this a step further, we've added a lot of sliders to the canvas, and need to clean up the interface of the tool we just created. Right click on one slider, select "Rename..." and change each slider to the appropriate name for its parameter (thickness, Radius, Height, etc).

![](<../../.gitbook/assets/data - exercise step 8b step.jpg>)

### Part II: Populate an array of cylinders from Part I

9\. At this point, we've created an awesome thickening cylinder thing. This is one object currently, let's look at how to create an array of cylinders that remains dynamically linked. To do this, we're going to create a list of cylinders, rather than working with a single item.

**Addition (+) -** Our goal is to add a row of cylinders next to the cylinder we've created. If we want to add one cylinder adjacent to the current one, we need to consider both radius of the cylinder and the thickness of its shell. We get this number by adding the two values of the sliders.

![](<../../.gitbook/assets/data - exercise step 9.jpg>)

10\. This step is more involved so let's walk through it slowly: the end goal is to create a list of numbers which define the locations of each cylinder in a row.

![](<../../.gitbook/assets/data - exercise step 10.jpg>)

> a. **Multiplication -** First, we want to multiply the value from the previous step by 2. The value from the previous step represents a radius, and we want to move the cylinder the full diameter.
>
> b. **Number Sequence -** we create an array of numbers with this node. The first input is the _multiplication_ node from the previous step into the _step_ value. The _start_ value can be set to _0.0_ using a _number_ node.
>
> c. **Integer Slider** - For the _amount_ value, we connect an integer slider. This will define how many cylinders are created.
>
> d. **Output** - This list shows us the distance moved for each cylinder in the array, and is parametrically driven by the original sliders.

11\. This step is simple enough - plug the sequence defined in the previous step into the _x_ input of the original **Point.ByCoordinates**. This will replace the slider _pointX_ which we can delete. We now see an array of cylinders in the viewport (make sure the integer slider is larger than 0).

![](<../../.gitbook/assets/data - exercise step 11.gif>)

12\. The chain of cylinders is still dynamically linked to all of the sliders. Flex each slider to watch the definition update!

![](<../../.gitbook/assets/data - exercise step 12.gif>)
