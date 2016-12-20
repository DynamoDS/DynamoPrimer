<style>
img{display:block;margin-left: auto;   margin-right: auto }
</style>

##Best Practices for Scripting

This part of the guide is organized in the spirit of a journal of “best practices”. It sheds light on several strategies that we have learned, through experience and research, to be most conducive to quality parametric workflows. As designers and programmers, our metric for quality is primarily concerned with the maintainability, dependability, usability, and efficiency of our tools.

###Label Carefully

While scripting, we are constantly using identifiers to denote things like variables, types, functions, and other entities. Through this system of symbolic notation, while building algorithms we can conveniently refer to information by way of labels --usually made up of a sequence of characters. Naming things well plays a significant role in writing code that can be easily read and understood by others as well as your future self! 

Here are some tips to keep in mind while naming things in your script.

* It´s OK to use abbreviations, but explain the abbreviation with a comment:

```
###Bad:
csfX = 1.6
csfY= 1.3
csfZ = 1.0

###Good:
# column scale factor (csf)
csfX = 1.6
csfY= 1.3
csfZ = 1.0
```

* Avoid redundant labeling:

```
###Bad:
import car
seat = car.CarSeat()
tire = car.CarTire()

###Good:
import car
seat = car.Seat()
tire = car.Tire()
```

* Use positive logic for you variable names instead of negative logic:

```
###Bad:
CODE EXAMPLE

###Good:
CODE EXAMPLE
```

* Prefer “reverse notation”. It’s more sensible, in structural terms:

```
###Bad:
agents = …
active_agents = …
dead_agents ...

###Good:
agents = …
agents_active = …
agents_dead = ...
```

Aliases should be used to shorten overly long and often repeated chains.

Bad:
```
CODE EXAMPLE
```
Good:
```
CODE EXAMPLE
```

Only use necessary words. “Everything should be made as simple as possible, but not simpler” – Albert Einstein.

Bad:
```
CODE EXAMPLE
```
Good:
```
CODE EXAMPLE
```

###Style Consistently

Generally speaking there is more than one way to program just about anything, therefore your “personal style” of scripting is the result of the countless small decisions you choose to make (or not make) along the way. That said, the readability and maintainability of your code is a direct result of its internal consistency as well as its adherence to general stylistic conventions. As a rule of thumb, code that looks the same in two places should work the same, too. Here are a few tips for writing clear and consistent code. 

####Naming Conventions

Choose one of the conventions below for each type of entity in your code and stick to it!

Variables, functions, methods, packages, modules:
```
lower_case_with_underscores
```
Classes and Exceptions:
```
CapWords
```
Protected methods and internal functions:
```
_single_leading_underscore(self, ...)
```
Private methods:
```
__double_leading_underscore(self, ...)
```
Constants:
```
ALL_CAPS_WITH_UNDERSCORES
```
>Tip: Avoid one-letter variables (esp. l, O, I) except in very short blocks, when the meaning is clearly visible from the immediate context.

####Use of Blank Lines

Surround top-level function and class definitions with two blank lines.

Method definitions inside a class are surrounded by a single blank line.

Extra blank lines may be used (sparingly) to separate groups of related functions.

####Avoid extraneous whitespace

Immediately inside parentheses, brackets or braces.

Bad:
```
function( apples[ 1 ], { oranges: 2 } )
```
Good:
```
function(apples[1], {oranges: 2})
```

Immediately before a comma, semicolon, or colon.

Bad:
```
if x == 2 : print x , y ; x , y = y , x
```
Good:
```
if x == 2: print x, y; x, y = y, x
```

Immediately before the open parenthesis that starts the argument list of a function call.

Bad:
```
function (1)
```
Good:
```
function(1)
```

Immediately before the open parenthesis that starts an indexing or slicing.

Bad:
```
dict ['key'] = list [index]
```
Good:
```
dict['key'] = list[index]
```

Always surround these binary operators with a single space on either side.
```
assignment ( = )
augmented assignment ( += , -= etc.)
comparisons ( == , < , > , != , <> , <= , >= , in , not in , is , is not )
Booleans ( and , or , not )
```

####Watch line length

Don't stress over it ~ 79 characters.

Limiting the required editor window width makes it possible to have several files open side-by-side, and works well when using code review tools that present the two versions in adjacent columns.

Long lines can be broken over multiple lines by wrapping expressions in parentheses.

####Avoid obvious and redundant comments
```
# Comments Tell You Why
code_tells_you_how
```

Sometimes fewer comments makes for more readable code. Especially if it forces you to use meaningful symbol names instead. 

Adopting good coding habits reduces dependence on comments.

Bad:
```
### get the country code
country_code = get_country_code(address)

### if country code is US
if (country_code == 'US'):
 ### display the form input for state
print form_input_state()
```

Good:
```
### display state selection for US users
country_code = get_country_code(address)
if (country_code == 'US'):
print form_input_state()
```

####Check out open source code

Open Source projects are built on the collaborative efforts of many developers. These projects need to maintain a high level of code readability so that the team can work together as efficiently as possible. Therefore, it is a good idea to browse through the source code of these projects to observe what these developers are doing.

####Improve your conventions

Question whether or not each convention is working for the needs at hand.

Is functionality/efficiency being compromised?

###Structure Modularly 

As your code gets longer and more complex the “big idea”, or overarching algorithm becomes increasingly illegible. It also becomes more difficult to keep track of what (and where) specific things happen, find bugs when things go wrong, integrate other code, and assign development tasks. To avoid these headaches it’s wise to embrace the utility of modularization, an organizational concept that breaks up code based on the task it executes. Here are some tips for making your scripts more manageable by way of modularization.

####Spotting code re-use

If you find that your code does the same (or very similar) thing in more than once place, find ways to cluster it into a function that can be called.

####Concentration on one specific task per module

Functions that each perform a single well-defined function.

"Manager" functions control program flow and primarily contain calls to "Worker" functions that handle low-level details, like moving data between structures.

####Only show what needs to be seen

A module interface expresses the elements that are provided and required by the module.

Once the interfaces between the units have been defined, the detailed design of each unit can proceed separately.

####Separability/Replaceability

Modules don’t know or care about each other

####General forms

Code Grouping

Functions

Classes


###Think Parametrically

####Design through relationships

Make connections between entities in your code.

The relationship between elements is used to manipulate and inform the design of complex structures.

Certain parameters or variables that can be edited to manipulate or alter the end result of an equation or system.

####DRY / DIE principles

DRY: Don't Repeat Yourself.

DIE: Duplication is Evil.

"Every piece of knowledge must have a single, unambiguous, authoritative representation within a system."

Never enter same value twice

####Go to source

####Minimize number of inputs (only expose key parameters)

####Know what is being held constant

###Flex Constantly

“Test ruthlessly”

Check as you go

Anticipate “edge cases”

###Debug Efficiently

####Use watch bubble

####Meaningful commenting

####Leverage modular framework

Once the faulty module has been identified, fixing the problem is considerably simpler.

When a program must be modified, modular programming simplifies the job.
>You can link new or debugged modules to an existing program with the confidence that the rest of the program will not change.

