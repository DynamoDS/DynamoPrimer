<style>
img{display:block;margin-left: auto;   margin-right: auto }
</style>

##Best Practices for Scripting

This part of the guide is organized in the spirit of a journal of “best practices”. It sheds light on several strategies that we have learned, through experience and research, to be most conducive to quality parametric workflows. As designers and programmers, our metric for quality is primarily concerned with the maintainability, dependability, usability, and efficiency of our tools.

###Label Carefully

While scripting, we are constantly using identifiers to denote things like variables, types, functions, and other entities. Through this system of symbolic notation, while building algorithms we can conveniently refer to information by way of labels --usually made up of a sequence of characters. Naming things well plays a significant role in writing code that can be easily read and understood by others as well as your future self! Here are some tips to keep in mind while naming things in your script.

It´s OK to use abbreviations, but explain the abbreviation with a comment.

Bad:

Good:

Avoid redundant labeling.

Bad:
```
import car
seat = car.CarSeat()
tire = car.CarTire()
```

Good:
```
import car
seat = car.Seat()
tire = car.Tire()
```

Use positive logic for you variable names instead of negative logic.

Bad:

Good:

Prefer “reverse notation”. 

It’s more sensible, in structural terms.

Bad:
```
agents = …
active_agents = …
dead_agents ...
```

Good:
```
agents = …
agents_active = …
agents_dead = ...
```

Aliases should be used to shorten overly long, and often repeated chains.

Bad:

Good:

Only use necessary words. 

“Everything should be made as simple as possible, but not simpler.” – Albert Einstein

Bad:

Good:

###Style Consistently

Generally speaking there is more than one way to program just about anything, therefore your “personal style” of scripting is the result of the countless small decisions you choose to make (or not make) along the way. That said, the readability and maintainability of your code is a direct result of its internal consistency as well as its adherence to general stylistic conventions. As a rule of thumb, code that looks the same in two places should work the same, too. 

Here are a few tips for writing clear and consistent code. Choose one of the conventions below for each type of entity in your code, and stick to it!

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
Avoid one-letter variables (esp. l, O, I) except in very short blocks, when the meaning is clearly visible from the immediate context.


###Structure Modularly 

As your code gets longer and more complex the “big idea”, or overarching algorithm becomes increasingly illegible. It also becomes more difficult to keep track of what (and where) specific things happen, find bugs when things go wrong, integrate other code, and assign development tasks. To avoid these headaches it’s wise to embrace the utility of modularization, an organizational concept that breaks up code based on the task it executes. Here are some tips for making your scripts more manageable by way of modularization.

###Think Parametrically



###Flex Constantly



###Debug Efficiently

