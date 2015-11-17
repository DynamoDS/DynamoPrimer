## Color


### Creating
**Color.ByARGB -** Colors in Dynamo are created using ARGB inputs. This corresponds to the Alpha, Red, Green, and Blue values.  The alpha represents the *transparency* of the color, while the other three are used as primary colors to generate the whole spectrum of color in concert.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Color-ByARGB-Large.png) | ARGB Color | Color.ByARGB | A,R,G,B | color |


### Querying
**RGB Space -** The colors in the table below query the properties used to define the color: Alpha, Red, Green, and Blue.  Note that the Color.Components node gives us all four as different outputs, which makes this node preferable for querying the  properties of a color.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- | -- |
| ![](../images/icons/DSCore-Color-Alpha-Large.png) | Alpha | Color.Alpha | color | A |
| ![](../images/icons/DSCore-Color-Red-Large.png) | Red | Color.Red | color | R |
| ![](../images/icons/DSCore-Color-Green-Large.png) | Green | Color.Green | color | G |
| ![](../images/icons/DSCore-Color-Blue-Large.png) | Blue | Color.Blue | color | B |
| ![](../images/icons/DSCore-Color-Components-Large.png) | Components | Color.Components | color | A,R,G,B |

**HSB Space - ** The colors in the table below correspond to the HSB color space.  Dividing the color into hue, saturation, and brightness is arguably more intuitive for how we  interpret color: What color should it be? How colorful should it be? And how light or dark should the color be?  This is the breakdown of hue, saturation, and brightness respectively.

| Icon | Query Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- | -- |
| ![](../images/icons/DSCore-Color-Hue-Large.png) | Hue | Color.Hue | color | Hue |
| ![](../images/icons/DSCore-Color-Saturation-Large.png) | Saturation | Color.Saturation | color | Saturation |
| ![](../images/icons/DSCore-Color-Brightness-Large.png) | Brightness | Color.Brightness | color | Brightness |

### Color Range
The color range is similar to the **Remap Range** node from section 4.2: it remaps a list of numbers into another domain.  But instead of mapping to a *number* domain, it maps to a *color gradient* based on input numbers ranging from 0 to 1.

The current node works well, but it can be a little awkward to get everything working the first time around.  Below is a miniature exercise for how to setup a gradient with output colors corresponding to numbers.

![](images/4-5/range.png)
>1. **Define three colors: ** Using a code block node, define *red, green*, and *blue* by plugging in the appropriate combinations of *0* and *255*.
2. **Create list:** Merge the three colors into one list.
3. **Define Indices: ** Create a list to define the grip positions of each color (ranging from 0 to 1).  Notice the value of 0.75 for green.  This places the green color 3/4 of the way across the horizontal gradient in the color range slider.
4. **Code Block: ** Input values (between 0 and 1) to translate to colors.

The best way to become familiar with the color gradient is to test it out interactively.  See the Color Exercise at the end of this section to try it in action.
### Color Preview
![](images/4-5/cuboids.png)

The **Display.ByGeometry** node gives us the ability to color geometry in the Dynamo viewport.  This is helpful for separating different types of geometry, demonstrating a parametric concept, or defining an analysis legend for simulation.  The inputs are simple: geometry and color. To createa a gradient like the image above, the color input is connected to the **color range** node.  Both of these batteries are discussed in the Color exercise at the end of this section.
