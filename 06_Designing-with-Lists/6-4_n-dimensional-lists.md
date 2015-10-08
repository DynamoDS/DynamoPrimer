## n-Dimensional Lists
Further down the rabbit-hole, let's add even more tiers to hierarchy. Data structure can expand far beyond a two-dimensional list of lists.  Since lists are items in and of themselves in Dynamo, we can create data with as many dimensions as possible.

The analogy we'll work with here are Russian Nesting Dolls.  Each list can be regarded as one container holding multiple items. Each list has its own properties and is also regarded as its own object.

![Dolls](images/6-4/145493363_fc9ff5164f_o.jpg)
> A set of Russian Nesting Dolls (Photo by  [Zeta](https://www.flickr.com/photos/beppezizzi/145493363)) is an analogy for n-Dimensional lists.  Each layer represents a list, and each list contains items within it.  In Dynamo's case, each container can have multiple containers inside (representing the items of each list).

n-Dimensional lists are difficult to explain visually, but we've set up a few exercises in this chapter which focus on working with lists which venture beyond two dimensions.

##Mapping and Combinations
Mapping is arguably the most complex part of data management in Dynamo, and is especially relevant when working with complex hierarchies of lists.  With the series of exercises below, we'll demonstrate when to use mapping and combinations as data becomes multi-dimensional.

Preliminary introductions to List.Map and List.Combine can be found in the previous section. In the last exercise below, we'll use these nodes on a complex data structure.

###Exercise - 2D Lists - Basic
>Download the example files that accompanies this exercise (Right click and "Save Link As..."). A full list of example files can be found in the Appendix.
1.[n-Dimensional-Lists.dyn](datasets/6-4/n-Dimensional-Lists.dyn)
2.[n-Dimensional-Lists.sat](datasets/6-4/n-Dimensional-Lists.sat)


This exercise is the first in a series of three which focuses on articulating imported geometry.  Each part in this series of exercises will increase in the complexity of data structure.

![Exercise](images/6-4/Exercise/A/04.png)
> 1. Let's begin with the .sat file in the exercise file folder.  We can grab this file using the *File Path* node.
2. With *Geometry.ImportFromSAT*, the geometry is imported into our Dynamo preview as two surfaces.

![Exercise](images/6-4/Exercise/A/03.png)
> For this exercise, we want to keep it simple and work with one of the surfaces.
1. Let's select the index of *1 *to grab the upper surface.  We do this with *List.GetItemAtIndex* node.

![Exercise](images/6-4/Exercise/A/02.png)
> The next step is to divide the surface into a grid of points.
1. Using *code block*, insert these two lines of code:
```
0..1..#10;
0..1..#5;
```
2. With the *Surface.PointAtParameter*, connect the two code block values to *u *and *v*.  Change the *lacing* of this node to *"Cross Product"*.
3. The output reveals the data structure, which is also visible in the Dynamo preview.

![Exercise](images/6-4/Exercise/A/01.png)
> 1. To get a look at how the data structure is organized, let's connect a *NurbsCurve.ByPoints* to the output of *Surface.PointAtParameter*.
2. Notice we have ten curves running vertically along the surface.

![Exercise](images/6-4/Exercise/A/00.png)
> 1. A basic *List.Transpose* will flip the columns and rows of a list of lists.
2. Connecting the output of *List.Transpose* to *NurbsCurve.ByPoints*, we now get five curves running horizontally across the surface.


###Exercise - 2D Lists - Advanced
Let's increase the complexity.  Suppose we wanted to perform an operation on the curves created from the previous exercise.  Perhaps we want to relate these curves to another surface and loft between them.  This requires more attention to data structure, but the underlying logic is the same.

![Exercise](images/6-4/Exercise/B/07.png)
> 1. Begin with a step from the previous exercise, isolating the upper surface of the imported geometry with the *List.GetItemAtIndex* node.

![Exercise](images/6-4/Exercise/B/06.png)
> 1. Using *Surface.Offset*, offset the surface by a value of *10*.

![Exercise](images/6-4/Exercise/B/05.png)
> 1. In the same manner as the previous exercise, define a *code block* with these two lines of code:
```
0..1..#10;
0..1..#5;
```
2. Connect these outputs to two *Surface.PointAtParameter *nodes, each with *lacing* set to *"Cross Product"*.  One of these nodes is connected to the original surface, while the other is connected to the offset surface.

![Exercise](images/6-4/Exercise/B/04.png)
> 1. As in the previous exercise, connect the outputs to two *NurbsCurve.ByPoints* nodes.
2. Our Dynamo preview shows two curves, corresponding to two surfaces.

![Exercise](images/6-4/Exercise/B/03.png)
> 1. By using *List.Create*, we can combine the two sets of curves into one list of lists.
2.  Notice from the output, we have two lists with ten items each, representing each connect set of nurbs curves.
3. By performing a *Surface.ByLoft*, we can visually make sense of this data structure.  The node lofts all of the curves in each sublist.

![Exercise](images/6-4/Exercise/B/02.png)
> 1. By using *List.Transpose*, remember, we are flipping all of the columns and rows.  This node will transfer two lists of ten curves into ten lists of two curves.  We now have each nurbs curve related to the neighboring curve on the other surface.
2. Using *Surface.ByLoft*, we arrive at a ribbed structure.

![Exercise](images/6-4/Exercise/B/01.png)
> 1. An alternative to *List.Transpose* uses *List.Combine*. This will operate a *"combinator"* on each sublist.
2. In this case, we're using *List.Create *as the *"combinator"*, which will create a list of each item in the sublists.
3. Using the *Surface.ByLoft* node, we get the same surfaces as in the previous step. Transpose is easier to use in this case, but when the data structure becomes even more complex, *List.Combine* is more reliable.

![Exercise](images/6-4/Exercise/B/00.png)
> 1. Stepping back a few steps, if we want to switch the orienation of the curves in the ribbed structure, we want to use a List.Transpose before before connect to *NurbsCurve.ByPoints*.  This will flip the columns and rows, giving us 5 horizontal ribs.


###Exercise - 3D Lists
Now, we're going to go even one step further.  In this exercise, we'll work with both imported surfaces, creating a complex data hierarchy.  Still, our aim is to complete the same operation with the same underlying logic.

![Exercise](images/6-4/Exercise/C/12.png)
> 1. Begin with the imported file from previous exercise.

![Exercise](images/6-4/Exercise/C/11.png)
> 1. As in the previous exerice, use the *Surface.Offset* node to offset by a value of *10*.
2. Notice from the output, that we've created two surfaces with the offset node.

![Exercise](images/6-4/Exercise/C/10.png)
> 1. In the same manner as the previous exercise, define a code block with these two lines of code:
```
0..1..#20;
0..1..#10;
```
2. Connect these outputs to two *Surface.PointAtParameter* nodes, each with lacing set to *"Cross Product"*.  One of these nodes is connected to the original surfaces, while the other is connected to the offset surfaces.

![Exercise](images/6-4/Exercise/C/09.png)
> 1. As in the previous exercise, connect the outputs to two *NurbsCurve.ByPoints* nodes.
2. Looking at the output of the *NurbsCurve.ByPoints*, notice that this is a list of two lists, which is more complex than the previous exercise.  The data is categorized by the underlying surface, so we've added another tier to the data structured.
3. Notice that things become more complex in the *Surface.PointAtParameter* node. In this case we have a list of lists of lists.

![Exercise](images/6-4/Exercise/C/08.png)
> 1. Using the *List.Create* node, we merge the nurbs curves into one data structure, creating a list of lists of lists.
2. By connecting a *Surface.ByLoft* node, we get a version of the original surfaces, as they each remain in their own list as created from the original data structure.

![Exercise](images/6-4/Exercise/C/07.png)
> 1. In the previous exercise, we were able to use a *List.Transpose* to create a ribbed structure.  This won't work here.  A transpose should be used on a two-dimensional list, and since we have a three-dimensional list, an operation of "flipping columns and rows" won't work as easily.  Remember, lists are objects, so *List.Transpose* will flip our lists with out sublists, but won't flip the nurbs curves one list further down in the hierarchy.

![Exercise](images/6-4/Exercise/C/06.png)
> 1. *List.Combine* will work better for us here.  We want to use *List.Map* and *List.Combine* nodes when we get to more complex data structures.
2. Using *List.Create *as the *"combinator"*, we create a data structure that will work better for us.

![Exercise](images/6-4/Exercise/C/05.png)
> 1. The data structure still needs to be transposed at one step down on the hierarchy.  To do this we'll use *List.Map*.  This is working like *List.Combine*, except with one input list, rather than two or more.
2. The function we'll apply to *List.Map* is *List.Transpose*, which will flip the columns and rows of the sublists within our main list.

![Exercise](images/6-4/Exercise/C/04.png)
> 1. Finally, we can loft the nurbs curves together with a proper data hierarchy, giving us a ribbed structure.

![Exercise](images/6-4/Exercise/C/03.png)
> 1. Let's add some depth to the geometry with a *Surface.Thicken* node.

![Exercise](images/6-4/Exercise/C/02.png)
> 1. It'll be nice to add a surface backing two this structure, so we'll use *List.GetItemAtIndex* to select the back surface from the lofted surfaces from the previous steps.

![Exercise](images/6-4/Exercise/C/01.png)
> 1. And thickening these selected surfaces, our articulation is complete.

![Exercise](images/6-4/Exercise/C/00.png)
> Not the most comfortable rocking chair ever, but it's got a lot of data going on.

![Exercise](images/6-4/Exercise/C/32.png)
> Last step, let's reverse the direction of the striated members.  As we used transpose in the previous exercise, we'll do something similar here.
1. Since we have one more tier to the hierarchy, so we need to use *List.Map* with a *List.Tranpose* function to change the direction of our nurbs curves.

![Exercise](images/6-4/Exercise/C/31.png)
> 1. We may want to increase the number of treads, so we can change the code block to
```
0..1..#20;
0..1..#10;
```

![Exercise](images/6-4/Exercise/C/30.png)
> The first version of the rocking chair was sleek, so our second model offers an off-road, sport-utility version of recumbency.













