## Scripting Strategies

### 01 | Deciding When to Script and Which Libraries to Use

### When to Script
![](/09_Custom-Nodes/images/9-6/sculptingvsprogramming.PNG)
 
**A | Sculpting vs. Programming**
* Parametric
 * Functions
 * Variables

**B | Noding vs. Coding**
* UI/UX
* Iteration and recursion

### Which Libraries to Use
![](/09_Custom-Nodes/images/9-6/coding.PNG)

**C | Standard Libraries vs. Dynamo Libraries**
* Flow Structures, Data Structures
* Objects

**D | Dynamo Libraries**
* ProtoGeometry
 * Functionality
   - Arc, Bounding Box, Circle, Cone, Coordinate System, Cuboid, Curve, Cylinder, Edge, Ellipse, Ellipse Arc ,Face, Geometry, Helix, Index Group, Line, Mesh, Nurbs Curve, Nurbs Surface, Plane, Point, Polygon, Rectangle, Solid, Sphere, Surface, Topology, TSpline, UV, Vector, Vertex.
 * How to import: `import Autodesk.DesignScript.Geometry`
* DSCoreNodes
 * Functionality
   - Color, Color Range 2D, Date Time, Time Span, IO, Formula, Logic, List, Math, Quadtree, String, Thread.
 * How to import: `import DSCore`
* Tessellation
 * Functionality
   - Convex Hull, Delaunay, Voronoi.
 * How to import: `import Tessellation`
* DSOffice
 * Functionality
   - Excel.
 * How to import: `import DSOffice`

### 02 | Best Practices for Scripting

This part of the guide is organized in the spirit of a journal of “best practices”. It sheds light on several strategies that we have learned, through experience and research, to be most conducive to quality parametric workflows. As designers and programmers, our metric for quality is primarily concerned with the maintainability, dependability, usability, and efficiency of our tools.

### Label Carefully

While scripting, we are constantly using identifiers to denote things like variables, types, functions, and other entities. Through this system of symbolic notation, while building algorithms we can conveniently refer to information by way of labels --usually made up of a sequence of characters. Naming things well plays a significant role in writing code that can be easily read and understood by others as well as your future self! Here are some tips to keep in mind while naming things in your script:

**It´s OK to use abbreviations, but explain the abbreviation with a comment:**
```
### BAD
csfX = 1.6
csfY= 1.3
csfZ = 1.0
```
```
### GOOD
# column scale factor (csf)
csfX = 1.6
csfY= 1.3
csfZ = 1.0
```

**Avoid redundant labeling:**
```
### BAD
import car
seat = car.CarSeat()
tire = car.CarTire()
```
```
### GOOD
import car
seat = car.Seat()
tire = car.Tire()
```

**Use positive logic for your variable names instead of negative logic:**

```
### BAD
if 'mystring' not in text:
    print 'not found'
else:
    print 'found'
    print 'processing'
```
```
### GOOD
if 'mystring' in text:
    print 'found'
    print 'processing'
else:
    print 'not found'
```

**Prefer “reverse notation”:** 
```
### BAD
agents = …
active_agents = …
dead_agents ...
```
```
### GOOD
agents = …
agents_active = …
agents_dead = ...
```
> It’s more sensible, in structural terms.

**Aliases should be used to shorten overly long and often repeated chains:**
```
### BAD
CODE EXAMPLE
```
```
### GOOD
CODE EXAMPLE
```

**Only use necessary words:**
```
### BAD
CODE EXAMPLE
```
```
### GOOD
CODE EXAMPLE
```
> “Everything should be made as simple as possible, but not simpler.” – Albert Einstein

### Style Consistently
Generally speaking there is more than one way to program just about anything, therefore your “personal style” of scripting is the result of the countless small decisions you choose to make (or not make) along the way. That said, the readability and maintainability of your code is a direct result of its internal consistency as well as its adherence to general stylistic conventions. As a rule of thumb, code that looks the same in two places should work the same, too. Here are a few tips for writing clear and consistent code.

**Naming conventions:** (Choose one of the conventions below for each type of entity in your code and stick to it!)

* Variables, functions, methods, packages, modules:
`lower_case_with_underscores`

* Classes and Exceptions:
`CapWords`

* Protected methods and internal functions:
`_single_leading_underscore(self, ...)`

* Private methods:
`__double_leading_underscore(self, ...)`

* Constants:
`ALL_CAPS_WITH_UNDERSCORES`

> Tip: Avoid one-letter variables (esp. l, O, I) except in very short blocks, when the meaning is clearly visible from the immediate context.
 
**Use of blank lines:**

* Surround top-level function and class definitions with two blank lines.
 
 * Method definitions inside a class are surrounded by a single blank line.
 
 * Extra blank lines may be used (sparingly) to separate groups of related functions.
 
**Avoid extraneous whitespace:**

* Immediately inside parentheses, brackets or braces:

    ```
    ### BAD
    function( apples[ 1 ], { oranges: 2 } )
    ```
    ```
    ### GOOD:
    function(apples[1], {oranges: 2})
    ```
 
* Immediately before a comma, semicolon, or colon:

    ```
    ### BAD
     if x == 2 : print x , y ; x , y = y , x
    ```
    ```
    ### GOOD
    if x == 2: print x, y; x, y = y, x
    ```
 
* Immediately before the open parenthesis that starts the argument list of a function call:

    ```
    ### BAD
    function (1)
    ```
    ```
    ### GOOD
    function(1)
    ```
 
* Immediately before the open parenthesis that starts an indexing or slicing:

    ```
    ### BAD
    dict ['key'] = list [index]
    ```
    ```
    ### GOOD
    dict['key'] = list[index]
    ```
 
* Always surround these binary operators with a single space on either side:

    ```
    assignment ( = )
    augmented assignment ( += , -= etc.)
    comparisons ( == , < , > , != , <> , <= , >= , in , not in , is , is not )
    Booleans ( and , or , not )
    ```

**Watch line length:**

* Don't stress over it ~ 79 characters.

* Limiting the required editor window width makes it possible to have several files open side-by-side, and works well when using code review tools that present the two versions in adjacent columns.

* Long lines can be broken over multiple lines by wrapping expressions in parentheses:

    ```
    CODE EXAMPLE
    ```

**Avoid obvious and redundant comments:**

* Sometimes fewer comments makes for more readable code. Especially if it forces you to use meaningful symbol names instead. 

* Adopting good coding habits reduces dependence on comments:

    ```
    ### BAD
    # get the country code
    country_code = get_country_code(address)
    
    # if country code is US
    if (country_code == 'US'):
     # display the form input for state
    print form_input_state()
    ```
    ```
    ### GOOD
    # display state selection for US users
    country_code = get_country_code(address)
    if (country_code == 'US'):
    print form_input_state()
    ```
    
> Tip: Comments tell you why, Code tells you how.

**Check out open source code:**

* Open Source projects are built on the collaborative efforts of many developers. These projects need to maintain a high level of code readability so that the team can work together as efficiently as possible. Therefore, it is a good idea to browse through the source code of these projects to observe what these developers are doing.

* Improve your conventions:

 * Question whether or not each convention is working for the needs at hand.

 * Is functionality/efficiency being compromised?

### Structure Modularly 

As your code gets longer and more complex the “big idea”, or overarching algorithm becomes increasingly illegible. It also becomes more difficult to keep track of what (and where) specific things happen, find bugs when things go wrong, integrate other code, and assign development tasks. To avoid these headaches it’s wise to embrace the utility of modularization, an organizational concept that breaks up code based on the task it executes. Here are some tips for making your scripts more manageable by way of modularization.

**Spotting code re-use:**

* If you find that your code does the same (or very similar) thing in more than once place, find ways to cluster it into a function that can be called.
 
**Concentration on one specific task per module:**

 * Functions that each perform a single well-defined function:
    ```
    CODE EXAMPLE
    ```

 * "Manager" functions control program flow and primarily contain calls to "Worker" functions that handle low-level details, like moving data between structures.

**Only show what needs to be seen:**

* A module interface expresses the elements that are provided and required by the module.

* Once the interfaces between the units have been defined, the detailed design of each unit can proceed separately.

**Separability/Replaceability:**

* Modules don’t know or care about each other.
 
**General forms:**

* Code Grouping:
    ```python
    # IMPORT LIBRARIES
    import random
    import math
    import clr
    clr.AddReference('ProtoGeometry')
    from Autodesk.DesignScript.Geometry import *
    
    # DEFINE PARAMETER INPUTS
    surfIn = IN[0]
    maxSteps = IN[1]
    ```

* Functions:
    ```python
    # EXAMPLE FUNCTION
    def get_step_size():
        area = surfIn.Area
        stepSize = math.sqrt(area)/100
        return stepSize
    
    stepSize = get_step_size()
    ```

* Classes:
    ```python
    # EXAMPLE CLASS
    class MyClass:
        i = 12345

        def f(self):
            return 'hello world'
    
    numbers = MyClass.i
    greeting = MyClass.f
    ```

### Think Parametrically

When faced with a design problem, you can promptly find a static solution via Direct Modeling or you can construct a system that can generate dynamic solutions via Parametric Modeling. Out of context, both of these methods are equally valid and come with their own respective pros and cons. However if you’ve already decided to use Dynamo--an inevitably parametric environment--it is wise to structure your nested scripts in accordance with the framework they will be living in. Here are some tips for better integrating your scripts into a larger parametric framework:

**Identify the variables at play:**

* Try to determine the given parameters in your design problem so that you can construct a model that directly builds off that data.
 
* Before programming, try to identify:

 * The variables that will be inputted.
 
 * The variables that will be outputted.
 
 * The variables that will remain constant.

**Design through relationships:**

* Parametricism allows for certain parameters or variables to be edited in order to manipulate or alter the end result of an equation or system.

* Whenever entities in your script are logically related, aim to define them as functions of each other. This way when one is modified, the other can update proportionally.

* Minimize number of inputs by only exposing key parameters:

 * If a set of parameters can be derived from more parent parameters, only expose the parent parameters as script inputs. This increases the usability of your script by reducing the complexity of its interface.

>Tip: Place as much emphasis on the process as you do on the solution.

**Don't repeat yourself (DRY):**

* When you have multiple ways to express the same thing in your script, at some point the duplicate representations will fall out of sync which can lead to maintenance nightmares, poor factoring, and internal contradictions.
 
* The DRY principle is stated as "Every piece of knowledge must have a single, unambiguous, authoritative representation within a system":

 * When this principle is successfully applied, all the related elements in your script change predictably and uniformly and all the unrelated elements do not have logical consequences on each other.

>Tip: Before duplicating entities in your script, ask yourself if you can link to the source instead.

### Flex Continuously

While developing scripts in Dynamo, it is wise to constantly make sure that what is actually being created is in line with what you are expecting. This will ensure that unforeseen events-- syntax errors, logical discrepancies, value inaccuracies, anomalous outputs etc.-- are quickly discovered and dealt with as they surface rather than all at once at the end. Because Dynamo scripts live inside nodes on the canvas, they are already integrated into the dataflow of your visual program. This makes the successive monitoring of your script as simple as assigning data to be outputted, running the program, and evaluating what flows out of the Script Node using a Watch Node. Here are some tips for continuously inspecting your scripts as you construct them.

**Test as you go:**

* Whenever you complete a cluster of functionality:
 
 * Step back and inspect your code.
 
 * Be critical. Could a collaborator understand what this is doing? Do I need to do this? Can this function be done more efficiently? Am I creating unnecessary duplicates or dependencies?
 
 * Quickly test to make sure it is returning data that “makes sense”.
 
* Assign the most recent data you are working with in your script to the OUT identifier so that the node is always outputting relevant data when the script updates:
 
 * Keep an eye on geometry using the Watch3D node.
   
 * Keep an eye on string messages using the Watch Node.

**Anticipate “edge cases”:**

* While scripting, crank your input parameters to the minimum and maximum values of their allotted domain to check if the program still functions under extreme conditions.
 
* Sometimes bugs and errors that reveal some underlying problem with your script will only surface during these edge cases.
 
 * Understand what is causing the error and then decide if it needs to be fixed internally or if a parameter domain needs to be redefined to avoid the problem.
   
>Tip: Always assume the that the user will use every combination of every input value that has been exposed to him/her. This will help eliminate unwanted surprises.

### Debug Efficiently

**Use watch bubble:**

**Meaningful commenting:**
```
# Assign your output to the OUT variable.
OUT = cubes
```

**Leverage modular framework:**

* Once the faulty module has been identified, fixing the problem is considerably simpler.

* When a program must be modified, modular programming simplifies the job:

 * You can link new or debugged modules to an existing program with the confidence that the rest of the program will not change.
 
### 03 | Dynamo and Python Example

### Steepest Path Overview

This script will derive the path a ball would take if released at a given point on a surface. It will construct the paths by stitching together small and discrete steps taken by walking agents. 

![](/09_Custom-Nodes/images/9-6/gd01.JPG)

### Constructing the Algorithm

Let’s talk through how we want it to work.

**1. Import Libraries:**

![](/09_Custom-Nodes/images/9-6/gd02.png)
>We will need to import all the libraries that we intend on using.

**2. Define Parameter Inputs:**

![](/09_Custom-Nodes/images/9-6/gd03.png)
> We will need to provide some key parameters:

>1. The surface we want to walk down.
2. The number of agents we want to walk.
3. The maximum number of steps the agents are allowed to take.

**3. Define Agent Class:**

![](/09_Custom-Nodes/images/9-6/gd04.png)
> We will need to define a class, or blueprint, for an agent with the intention of walking down a surface by choosing to travel in the steepest possible direction each time it takes a step:

> 1. Name.
2. Global attributes that all the agents share.
3. Instance attributes that are unique to each agent.
4. A function for taking a step.
5. A function for cataloging the position of each step to a trail list.

**4. Initialize Agents:**

![](/09_Custom-Nodes/images/9-6/gd05.png)
> We will need to instantiate all the agents we want to observe walk down the surface and define their initial attributes:

> 1. Where they will start their journey on the surface.
2. A new empty trail list.

**5. Update Agents:**

![](/09_Custom-Nodes/images/9-6/gd06.png)
>We will then need to enter a nested loop where for each agent and for each step, we update and record their position into their trail list. At each step we will also make sure the agent hasn’t reached a point on the surface where it cannot take another step which will allow it to descend. If that condition is met, we will end that agent's trip.

**6. Draw Trails and Output Trails:**

![](/09_Custom-Nodes/images/9-6/gd07.png)
>After all the agents have either reached their limit of descent or their maximum number of steps we will create a polycurve through the points in their trail list and output the polycurve trails.

**Our Script:**

![](/09_Custom-Nodes/images/9-6/gd08.png)