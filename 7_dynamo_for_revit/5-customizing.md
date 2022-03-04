# Customizing

While we previously looked at editing a basic building mass, we want to dive deeper into the Dynamo/Revit link by editing a large number of elements in one go. Customizing on a large scale becomes more complex as data structures require more advanced list operations. However, the underlying principles behind their execution is fundamentally the same. Let's study some opportunities for analysis from a set of adaptive components.

### Point Location

Suppose we've created a range of adaptive components and want to edit parameters based on their point locations. The points, for example, could drive a thickness parameter which is related to the area of the element. Or, they could drive an opacity parameter related to solar exposure throughout the year. Dynamo allows the connection of analysis to parameters in a few easy steps, and we'll explore a basic version in the exercise below.

![](<../.gitbook/assets/customizing - point location.jpg>)

> Query the adaptive points of a selected adaptive component by using the **AdaptiveComponent.Locations** node. This allows us to work with an abstracted version of a Revit element for analysis.

By extracting the point location of adaptive components, we can run a range of analysis for that element. A four-point adaptive component will allow you to study the deviation from plane for a given panel for example.

### Solar Orientation Analysis

![](<../.gitbook/assets/customizing - solar orientation analysis.jpg>)

> Use remapping to map a set of a data into a parameter range. This is fundamental tool used in a parametric model, and we'll demonstrate it in the exercise below.

Using Dynamo, the point locations of adaptive components can be used to create a best-fit plane each element. We can also query the sun position in the Revit file and study the plane's relative orientation to the sun in comparison to other adaptive components. Let's set that up in the exercise below by creating an algorithmic roofscape.

## Exercise

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../.gitbook/assets/Revit-Customizing.zip" %}

This exercise will expand on the techniques demonstrated in the previous section. In this case, we are defining a parametric surface from Revit elements, instantiating four-point adaptive components and then editing them based on orientation to the sun.

![](<../.gitbook/assets/customizing - exercise 01.jpg>)

> 1. Beginning by selecting two edges with the _"Select Edge"_ node. The two edges are the long spans of the atrium.
> 2. Combine the two edges into one list with the _List.Create_ node.
> 3. Create a surface between the two edges with a _Surface.ByLoft_.

![](<../.gitbook/assets/customizing - exercise 02.jpg>)

> 1. Using _code block_, define a range from 0 to 1 with 10 evenly spaced values: `0..1..#10;`
> 2. Plug the _code block_ into the \*u \*and _v_ inputs of a _Surface.PointAtParameter_ node, and plug the _Surface.ByLoft_ node into the _surface_ input. Right click the node and change the _lacing_ to _Cross Product_. This will give a grid of points on the surface.

This grid of points serves as the control points for a parametrically defined surface. We want to extract the u and v positions of each one of these points so that we can plug them into a parametric formula and keep the same data structure. We can do this by querying the parameter locations of the points we just created.

![](<../.gitbook/assets/customizing - exercise 03.jpg>)

> 1. Add a _Surface.ParameterAtPoint_ node to the canvas, connect the inputs as shown above.
> 2. Query the _u_ values of these parameters with the UV.U node.
> 3. Query the _v_ values of these parameters with the UV.V node.
> 4. The outputs show the corresponding _u_ and _v_ values for every point of the surface. We now have a range from _0_ to _1_ for each value, in the proper data structure, so we're ready to apply a parametric algorithm.

![](<../.gitbook/assets/customizing - exercise 04.jpg>)

> 1. Add a _code block_ to the canvas and enter the code: `Math.Sin(u*180)*Math.Sin(v*180)*w;` This is a parametric function which creates a sine mound from a flat surface.
> 2. Connects the _UV.U_ to the _u_ input and the UV.V to the _v_ input.
> 3. The _w_ input represents the _amplitude_ of the shape, so we attach a _number slider_ to it.

![](<../.gitbook/assets/customizing - exercise 05.jpg>)

> 1. Now, we have a list of values as defined by the algorithm. Let's use this list of values to move the points up in the _+Z_ direction. Using _Geometry.Translate_, plug the \*code block \*into _zTranslation_ and the _Surface.PointAtParameter_ into the _geometry_ input. You should see the new points displayed in the Dynamo preview.
> 2. Finally, we create a surface with the _NurbsSurface.ByPoints_ node, plugging the node from the previous step into the points input. We have ourselves a parametric surface. Feel free to drag the slider to watch the mound shrink and grow.

With the parametric surface, we want to define a way to panelize it in order to array four-point adaptive components. Dynamo does not have out-of-the-box functionality for surface panelization, so we can look to the community for helpful Dynamo packages.

![](<../.gitbook/assets/customizing - exercise 06.jpg>)

> 1. Go to _Packages>Search for a Package..._
> 2. Search for _"LunchBox"_ and install _"LunchBox for Dynamo"_. This is a really helpful set of tools for geometry operations such as this.

> 1. After downloading, you now have full access to the LunchBox suite. Search for _"Quad Grid"_ and select _"LunchBox Quad Grid By Face"_. Plug the parametric surface into the _surface_ input and set the _U_ and _V_ divisions to _15_. You should see a quad-paneled surface in your Dynamo preview.

> If you're curious about its setup, you can double click on the _Lunch Box_ node and see how it's made.

> Back in Revit, let's take a quick look at the adaptive component we're using here. No need to follow along, but this is the roof panel we're going to instantiate. It is a four-point adaptive component which is a crude representation of an ETFE system. The aperture of the center void is on a parameter called _"ApertureRatio"_.

> 1. We're about to instantiate a lot of geometry in Revit, so make sure to turn the Dynamo solver to _"Manual"_.
> 2. Add a _Family Types_ node to the canvas and select _"ROOF-PANEL-4PT"_.
> 3. Add an _AdaptiveComponent.ByPoints_ node to the canvas, connect _Panel Pts_ from the _"LunchBox Quad Grid by Face"_ output into the _points_ input. Connect the _Family Types_ node to the _familySymbol_ input.
> 4. Hit _Run_. Revit will have to _think_ for a bit while the geometry is being created. If it takes too long, reduce the _code block's '15'_ to a lower number. This will reduce the number of panels on the roof.

_Note: If Dynamo is taking a long time to calculate nodes, you may want to use the "freeze" node functionality in order to pause the execution of Revit operations while you develop your graph. For more information on freezing nodes, check out the "Freezing" section in the solids chapter._

> Back in Revit, we have the array of panels on the roof.

> Zooming in, we can get a closer look at their surface qualities.

### Analysis

> 1. Continuing from the previous step, let's go further and drive the aperture of each panel based on its exposure to the sun. Zooming into Revit and select one panel, we see in the properties bar that there is a parameter called _"Aperture Ratio"_. The family is setup so that the aperture ranges, roughly, from _0.05_ to _0.45_.

> 1. If we turn on the solar path, we can see the current sun location in Revit.

> 1. We can reference this sun location using the _SunSettings.Current_ node.

1. Plug the Sun settings into _Sunsetting.SunDirection_ to get the solar vector.
2. From the _Panel Pts_ used to create the adaptive components, use _Plane.ByBestFitThroughPoints_ to approximate a plane for the component.
3. Query the _normal_ of this plane.
4. Use the _dot product_ to calculate solar orientation. The dot product is a formula which determines how parallel or anti-parallel two vectors may be. So we're taking the plane normal of each adaptive component and comparing it to the solar vector to roughly simulate solar orientation.
5. Take the _absolute value_ of the result. This ensures that the dot product is accurate if the plane normal is facing the reverse direction.
6. Hit _Run_.

> 1. Looking at the _dot product_, we have a wide range of numbers. We want to use their relative distribution, but we need to condense the numbers into the appropriate range of the _"Aperture Ratio"_ parameter we plan to edit.

1. The _Math.RemapRange_ is a great tool for this. It takes an input list and remaps its bounds into two target values.
2. Define the target values as _0.15_ and _0.45_ in a _code block_.
3. Hit _Run_.

> 1. Connect the remapped values into a _Element.SetParameterByName_ node.

1. Connect the string _"Aperture Ratio"_ into the _parameterName_ input.
2. Connect the _adaptive components_ into the _element_ input.
3. Hit _Run_.

> Back in Revit, from a distance we can make out the affect of the solar orientation on the aperture of the ETFE panels.

> Zooming in, we see that the ETFE panels are more closed as the face the sun. Our target here is to reduce overheating from solar exposure. If we wanted to let in more light based on solar exposure, we just have to switch the domain on _Math.RemapRange_.
