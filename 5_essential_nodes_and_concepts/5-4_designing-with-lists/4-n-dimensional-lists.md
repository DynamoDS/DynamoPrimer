# n-Dimensional Lists

Further down the rabbit-hole, let's add even more tiers to hierarchy. Data structure can expand far beyond a two-dimensional list of lists. Since lists are items in and of themselves in Dynamo, we can create data with as many dimensions as possible.

The analogy we'll work with here are Russian Nesting Dolls. Each list can be regarded as one container holding multiple items. Each list has its own properties and is also regarded as its own object.

![Dolls](../../.gitbook/assets/145493363\_fc9ff5164f\_o.jpg)

> A set of Russian Nesting Dolls (Photo by [Zeta](https://www.flickr.com/photos/beppezizzi/145493363)) is an analogy for n-Dimensional lists. Each layer represents a list, and each list contains items within it. In Dynamo's case, each container can have multiple containers inside (representing the items of each list).

n-Dimensional lists are difficult to explain visually, but we've set up a few exercises in this chapter which focus on working with lists which venture beyond two dimensions.

### Mapping and Combinations

Mapping is arguably the most complex part of data management in Dynamo, and is especially relevant when working with complex hierarchies of lists. With the series of exercises below, we'll demonstrate when to use mapping and combinations as data becomes multi-dimensional.

Preliminary introductions to **List.Map** and **List.Combine** can be found in the previous section. In the last exercise below, we'll use these nodes on a complex data structure.

## Exercise - 2D Lists - Basic

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/n-Dimensional-Lists.zip" %}

This exercise is the first in a series of three which focuses on articulating imported geometry. Each part in this series of exercises will increase in the complexity of data structure.

![Exercise](<../../.gitbook/assets/n-dimensional lists - 2d lists basic 01.jpg>)

> 1. Let's begin with the .sat file in the exercise file folder. We can grab this file using the **File Path** node.
> 2. With **Geometry.ImportFromSAT**, the geometry is imported into our Dynamo preview as two surfaces.

For this exercise, we want to keep it simple and work with one of the surfaces.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists basic 02.jpg>)

> 1. Let's select the index of 1 to grab the upper surface. We do this with **List.GetItemAtIndex** node.
> 2. Switch off the geometry preview from **Geometry.ImportFromSAT** preview.

The next step is to divide the surface into a grid of points.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists basic 03.jpg>)

> 1\. Using **Code Block**, insert these two lines of code: `0..1..#10;` `0..1..#5;`
>
> 2\. With the **Surface.PointAtParameter**, connect the two code block values to u and _v_. Change the _lacing_ of this node to _"Cross Product"_.
>
> 3\. The output reveals the data structure, which is also visible in the Dynamo preview.

Next, used the Points from last step to generate ten curves along the surface.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists basic 04.jpg>)

> 1. To get a look at how the data structure is organized, let's connect a **NurbsCurve.ByPoints** to the output of **Surface.PointAtParameter**.
> 2. You may switch off the preview from the **List.GetItemAtIndex** Node for now for a clearer result.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists basic 05.jpg>)

> 1. A basic **List.Transpose** will flip the columns and rows of a list of lists.
> 2. Connecting the output of **List.Transpose** to **NurbsCurve.ByPoints**, we now get five curves running horizontally across the surface.
> 3. You may switch off the preview from the **NurbsCurve.ByPoints** Node in the previous step to achieve the same result in the image.

## Exercise - 2D Lists - Advanced

Let's increase the complexity. Suppose we wanted to perform an operation on the curves created from the previous exercise. Perhaps we want to relate these curves to another surface and loft between them. This requires more attention to data structure, but the underlying logic is the same.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 01.jpg>)

> 1. Begin with a step from the previous exercise, isolating the upper surface of the imported geometry with the **List.GetItemAtIndex** node.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 02.jpg>)

> 1. Using **Surface.Offset**, offset the surface by a value of _10_.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 03.jpg>)

> 1. In the same manner as the previous exercise, define a _code block_ with these two lines of code: `0..1..#10;` `0..1..#5;`
> 2. Connect these outputs to two **Surface.PointAtParameter** nodes, each with _lacing_ set to _"Cross Product"_. One of these nodes is connected to the original surface, while the other is connected to the offset surface.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 04.jpg>)

> 1. Switch off the preview of these Surfaces.
> 2. As in the previous exercise, connect the outputs to two **NurbsCurve.ByPoints** nodes. The result show curves corresponding to two surfaces.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 05.jpg>)

> 1. By using **List.Create**, we can combine the two sets of curves into one list of lists.
> 2. Notice from the output, we have two lists with ten items each, representing each connect set of Nurbs curves.
> 3. By performing a **Surface.ByLoft**, we can visually make sense of this data structure. The node lofts all of the curves in each sublist.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 06.jpg>)

> 1. Switch off the preview from **Surface.ByLoft** Node in previous step.
> 2. By using **List.Transpose**, remember, we are flipping all of the columns and rows. This node will transfer two lists of ten curves into ten lists of two curves. We now have each nurbs curve related to the neighboring curve on the other surface.
> 3. Using **Surface.ByLoft**, we arrive at a ribbed structure.

Next, we will demonstrate an alternative process to achieve this result

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 07.jpg>)

> 1. Before we start, switch off the **Surface.ByLoft** preview in previous step to avoid confusion.
> 2. An alternative to **List.Transpose** uses **List.Combine**. This will operate a _"combinator"_ on each sublist.
> 3. In this case, we're using **List.Create** as the _"combinator"_, which will create a list of each item in the sublists.
> 4. Using the **Surface.ByLoft** node, we get the same surfaces as in the previous step. Transpose is easier to use in this case, but when the data structure becomes even more complex, **List.Combine** is more reliable.

![](<../../.gitbook/assets/n-dimensional lists - 2d lists advance 08.jpg>)

> 1. Stepping back a few steps, if we want to switch the orientation of the curves in the ribbed structure, we want to use a **List.Transpose** before connect to **NurbsCurve.ByPoints**. This will flip the columns and rows, giving us 5 horizontal ribs.

## Exercise - 3D Lists

Now, we're going to go even one step further. In this exercise, we'll work with both imported surfaces, creating a complex data hierarchy. Still, our aim is to complete the same operation with the same underlying logic.

Begin with the imported file from previous exercise.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 01.jpg>)

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 02.jpg>)

> 1. As in the previous exercise, use the **Surface.Offset** node to offset by a value of _10_.
> 2. Notice from the output, that we've created two surfaces with the offset node.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 03.jpg>)

> 1. In the same manner as the previous exercise, define a **Code Block** with these two lines of code: `0..1..#20;` `0..1..#20;`
> 2. Connect these outputs to two **Surface.PointAtParameter** nodes, each with lacing set to _"Cross Product"_. One of these nodes is connected to the original surfaces, while the other is connected to the offset surfaces.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 04.jpg>)

> 1. As in the previous exercise, connect the outputs to two **NurbsCurve.ByPoints** nodes.
> 2. Looking at the output of the **NurbsCurve.ByPoints,** notice that this is a list of two lists, which is more complex than the previous exercise. The data is categorized by the underlying surface, so we've added another tier to the data structured.
> 3. Notice that things become more complex in the **Surface.PointAtParameter** node. In this case we have a list of lists of lists.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 05.jpg>)

> 1. Before we proceed, switch off the preview from the existing surfaces.
> 2. Using the **List.Create** node, we merge the Nurbs curves into one data structure, creating a list of lists of lists.
> 3. By connecting a **Surface.ByLoft** node, we get a version of the original surfaces, as they each remain in their own list as created from the original data structure.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 06.jpg>)

> 1. In the previous exercise, we were able to use a **List.Transpose** to create a ribbed structure. This won't work here. A transpose should be used on a two-dimensional list, and since we have a three-dimensional list, an operation of "flipping columns and rows" won't work as easily. Remember, lists are objects, so **List.Transpose** will flip our lists with out sublists, but won't flip the nurbs curves one list further down in the hierarchy.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 07.jpg>)

> 1. **List.Combine** will work better for us here. We want to use **List.Map** and **List.Combine** nodes when we get to more complex data structures.
> 2. Using **List.Create** as the _"combinator"_, we create a data structure that will work better for us.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 08.jpg>)

> 1. The data structure still needs to be transposed at one step down on the hierarchy. To do this we'll use **List.Map**. This is working like **List.Combine**, except with one input list, rather than two or more.
> 2. The function we'll apply to **List.Map** is **List.Transpose**, which will flip the columns and rows of the sublists within our main list.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 09.jpg>)

> 1. Finally, we can loft the Nurbs curves together with a proper data hierarchy, giving us a ribbed structure.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 10.jpg>)

> 1. Let's add some depth to the geometry with a **Surface.Thicken** Node with the input settings as shown.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 11.jpg>)

> 1. It'll be nice to add a surface backing two this structure, so add another **Surface.ByLoft** node and use the first output of **NurbsCurve.ByPoints** from an earlier step as input.
> 2. As the preview is getting cluttered, switch off preview for these nodes by right clicking on each of them and uncheck 'preview' to see the result better.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 12.jpg>)

> 1. And thickening these selected surfaces, our articulation is complete.

Not the most comfortable rocking chair ever, but it's got a lot of data going on.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 13.jpg>)

Last step, let's reverse the direction of the striated members. As we used transpose in the previous exercise, we'll do something similar here.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 14.jpg>)

> 1. Since we have one more tier to the hierarchy, so we need to use **List.Map** with a **List.Tranpose** function to change the direction of our Nurbs curves.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 15.jpg>)

> 1. We may want to increase the number of treads, so we can change the **Code Block** to `0..1..#20;` `0..1..#30;`

The first version of the rocking chair was sleek, so our second model offers an off-road, sport-utility version of recumbency.

![](<../../.gitbook/assets/n-Dimensional-Lists - 3d list 16.jpg>)
