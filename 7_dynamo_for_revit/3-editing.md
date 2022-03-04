# Editing

A powerful feature of Dynamo is that you can edit parameters on a parametric level. For example, a generative algorithm or the results of a simulation can be used to drive the parameters of an array of elements. This way, a set of instances from the same family can have custom properties in your Revit project.

### Type and Instance Parameters

![Exercise](<../.gitbook/assets/32 (2).jpg>)

> 1. Instance parameters define the aperture of the panels on the roof surface, ranging from an Aperture Ratio of 0.1 to 0.4.
> 2. Type-based parameters are applied to every element on the surface because they are the same family type. The material of each panel, for example, can be driven by a type-based parameter.

![Exercise](../.gitbook/assets/params.jpg)

> 1. If you've set up a Revit family before, remember that you have to assign a parameter type (string, number, dimension, etc.) Be sure to use the correct data type when assigning parameters from Dynamo.
> 2. You can also use Dynamo in combination with parametric constraints defined in a Revit family's properties.

As a quick review of parameters in Revit, we recall that there are type parameters and instance parameters. Both can be edited from Dynamo, but we'll work with instance parameters in the exercise below.

{% hint style="info" %}
As you discover the wide-reaching application of editing parameters, you may want to edit a large quantity of elements in Revit with Dynamo. This can be a _computationally expensive_ operation, meaning that it can be slow. If you're editing a large number of elements, you may want to use the "freeze" node functionality in order to pause the execution of Revit operations while you develop your graph. For more information on freezing nodes, check out the "[Freezing](../essential-nodes-and-concepts/5\_geometry-for-computational-design/5-6\_solids.md#freezing)" section in the solids chapter.
{% endhint %}

### Units

As of version 0.8, Dynamo is fundamentally unitless. This allows Dynamo to remain an abstract visual programming environment. Dynamo nodes that interact with Revit dimensions will reference the Revit project's units. For example, if you are setting a length parameter in Revit from Dynamo, the number in Dynamo for the value will correspond to the default units in the Revit project. The exercise below works in meters.

For a quick conversion of units, use the _"Convert Between Units"_ node. This is a handy tool for converting Length, Area, and Volume units on the fly.

![](<../.gitbook/assets/editing - units.jpg>)

## Exercise

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../.gitbook/assets/Revit-Editing.zip" %}

{% hint style="warning" %}
The exercise below works in meters.
{% endhint %}

This exercise focuses on editing Revit elements without performing geometric operation in Dynamo. We're not importing Dynamo geometry here, just editing parameters in a Revit project. This exercise is basic, and to the more advanced Revit users, notice that these are instance parameters of a mass, but the same logic can be applied to an array of elements to customize on a large scale. This is all done with the "Element.SetParameterByName" node.

### Editing Building Mass Parameters

Begin with the example Revit file for this section. We've removed the structural elements and adaptive trusses from the previous section. In this exercise, we will focus on a parametric rig in Revit and manipulating in Dynamo.

Selecting the building in Mass in Revit, we see an array of instance parameters in the properties panel.

![](<../.gitbook/assets/editing - exercise 01.jpg>)

In Dynamo, we can retrieve the parameters by selecting the targeting element.

![](<../.gitbook/assets/editing - exercise 02.jpg>)

> 1. Select the building mass with the _"Select Model Element"_ node.
> 2. We can query all of the parameters of this mass with the _"Element.Parameters"_ node. This includes type and instance parameters.

![](<../.gitbook/assets/editing - exercise 03.jpg>)

> 1. Reference the _Element. Parameters_ node to find target parameters. Or, we can view the properties panel from the previous step to choose which parameter names we want to edit. In this case, we are looking for the parameters which affect the large geometric moves on the building mass.
> 2. We will make changes to the Revit element using the _Element.SetParameterByName_ node
> 3. Use C\_ode Block to\_ define a list of parameters, with quotes around each item to denote a string. We can also use the List.Create node with a series of _"string"_ nodes connected to multiple inputs but Code block is faster and easier. Make sure that the string matches the exact name in Revit, case-specific: `{"BldgWidth","BldgLength","BldgHeight", "AtriumOffset", "InsideOffset","LiftUp"};`

![](<../.gitbook/assets/editing - exercise 04.jpg>)

> 1. We also want to designate values for each parameter. Add six _"integer sliders"_ to the canvas and rename to the corresponding parameter in the list. Also, set the values of each slider to the image above. In order from top-to-bottom: 62,92,25,22,8,12
> 2. Define another _code block_ with a list of the same length as the parameter names. In this case, we name variables (without quotes) which create inputs for the _code block._ Plug the _sliders_ into each respective input: `{bw,bl,bh,ao,io,lu};`
> 3. Connect the Code Block _to the "Element.SetParameterByName"\*_ value input. With run automatically checked, we will automatically see results.

{% hint style="warning" %}
\*This demonstration works with instance parameters, but not type parameters.
{% endhint %}

Just as in Revit, many of these parameters are dependent on each other. There are of course combinations where the geometry may break. We can remedy this issue with defined formulas in the parameter properties, or we can setup a similar logic with math operations in Dynamo (this is an additional challenge if you'd like to expand on the exercise).

![](<../.gitbook/assets/editing - exercise 05.jpg>)

> 1. This combination gives a funky new design to the building mass: 100, 92, 100, 25, 13, 51

### Editing Facade Parameters

Next, let's look at how we can edit the facade using a similar process.

![](<../.gitbook/assets/editing - exercise 06.jpg>)

> 1. Copy the graph and focus on the facade glazing which will house the truss system. We isolate four parameters in this case: `{"DblSkin_SouthOffset","DblSkin_MidOffset","DblSkin_NorthOffset","Facade Bend Location"};`
> 2. Additionally, we create _number sliders_ and rename to the appropriate parameters. The first three sliders from top-to-bottom should be remapped to a domain of \[0,10], while the final slider, _"Facade Bend Location"_, should be remapped to a domain of \[0,1]. These values, from top-to-bottom should start with these values (although they're arbitrary): 2.68, 2.64, 2.29, 0.5
> 3. Define a new Code block and connect the sliders: `{so,mo,no,fbl};`

![](<../.gitbook/assets/editing - exercise 07.jpg>)

> 1. By changing the _sliders_ in this part of the graph, we can make the facade glazing much more substantial: 9.98, 10.0, 9.71 ,0.31
