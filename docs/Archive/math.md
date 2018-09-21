## Math

## Constants

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-PI-Large.jpg) | Pi | Math.PI | none | double |

**Pi -** is a mathematical constant which represents the ratio of circle's circumference to its diameter.  The value is commonly used in trigonmetric functions and is one of the more prevalent constants used in parametric modeling. A rounded value for *Pi* is *3.14159*.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-E-Large.jpg) | e | Math.E | none | double |

**e -** The number *e* is a mathematical constant which is based on the natural logarithm.  Like *pi*, *e* is an irrational number which is commonly used in mathematics. The number is fundamental to growth prediction, and shows itself often in the fields of biology and economics. A rounded value for *e* is *2.71828*.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-GoldenRatio-Large.jpg) | phi | Math.GoldenRatio | none | double |


**φ: The Golden Ratio - **Another irrational constant, the golden ratio defines that two quantities are in the golden ratio if their ratio is the same as the ratio of their sum to the larger of the two quantities.  This ratio appears often in geometry and biological systems, and is considered for a wide-range of applications ranging from the practical to the aesthetic. A rounded value for *φ* is *1.61804*.

## Arithmetic Operators
Operators are a set of components that use
algebraic functions with two numeric input values, which result in one output
value (addition, subtraction, multiplication, division, etc.).

You use the Math Operators to perform arithmetical
actions on a set of numbers. These can be found under Operators>Actions.

**Addition, Subtraction, Multiplication, Division -** These four operators are commonplace.  Let's look at a few other operators which dive deeper:

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/add-Large.jpg) | Add | + | var[]...[], var[]...[] | var[]...[] |
| ![](../images/icons/sub-Large.jpg) | Subtract | - | var[]...[], var[]...[] | var[]...[] |
| ![](../images/icons/mul-Large.jpg) | Multiply | * | var[]...[], var[]...[] | var[]...[] |
| ![](../images/icons/div-Large.jpg) | Divide | / | var[]...[], var[]...[] | var[]...[] |

**Power -** Exponentiation, or the power operator, involves two numbers: the base number (x) and the power (y). The power of x to the y is defined as x repeatedly multiplied by itself for a total of y times.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-Pow-Large.jpg) | Power | Math.Pow | number, power | var[]...[] |
```
2 ^ 3 = 2 x 2 x 2 = 8```

**Square Root - **The square root of x referes to the number z such that z^2=x.  This operator is commonplace in a wide-range of geometric applications, most notably the [Pythagorean Theorem](http://en.wikipedia.org/wiki/Pythagorean_theorem).

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-Sqrt-Large.jpg) | Square Root | Math.Sqrt | number | double |
```
Sqrt(4) = 2```

**Absolute Value -**The absolute value of a number refers to its non-negative value. This operator comes in handy when parametrically, especially when a calculation concerns itself with scalar values rather than vectors (ie speed vs. velocity).

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-Abs-double-Large.jpg) | Absolute Value | Math.Abs | number | double |

```
|-10| = 10 and |10| = 10```

**Modulo -** The modulo operation refers to the remainder after a division.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/mod-Large.jpg) | Modulo | % | var[]...[],var[]...[] | var[]...[] |

```
11 % 6 = 5 (6 goes into 11 once, and has a remainder, or modulo, of 5)```

While this may not seem like much, the modulo is a great tool for creating patterns.  The image below demonstrates how quickly one can parse out even and odd numbers with pure operations:
![](images/4-2/4-2-2/mod1.jpg)

**Ceiling, Floor, Round -** The ceiling, floor, and round operation refer to methods for reducing a decimal (or float) number to an integer.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-Ceiling-Large.jpg) | Ceiling | Math.Ceiling | number | int |
| ![](../images/icons/DSCore-Math-Floor-Large.jpg) | Floor | Math.Floor | number | int |
| ![](../images/icons/DynamoUnits-SIUnit-Round-Large.jpg) | Round | Math.Round | number | int |
```
11/6 = 1.833```

The floor represents the lower bound of the integer within the decimal range.
```
Floor(11/6) = Floor(1.833) = 1```

The ceiling represents the upper bound.
```
Ceil(11/6) = Ceil(1.833) = 2```

The round operations will 'round' to the closest number in the range.
```
Round(11/6) = Round(1.833) = 2```

## Functions
**Remap Range -**This is one of the most important functions in parametric modeling.  The component maps a set of values in one domain into another domain, while maintaining the same distribution ratio.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-RemapRange-Large.jpg) | Remap Range | Math.RemapRange | numbers, newMin, newMax | var[]...[] |

**Average -** Determines the average (mean) of a list of numbers.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-Average-Large.jpg) | Average | Math.Average | numbers | double |

**Sum -** Determines the sum of a list of numbers.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-Sum-Large.jpg) | Sum | Math.Sum | values | double |

**Random/RandomList -**Create a random number or a random list of numbers.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-Random-double-double-Large.jpg) | Random | Math.Random | seed | double |
| ![](../images/icons/DSCore-Math-RandomList-Large.jpg) | Random List | Math.RandomList | amount | var[]...[] |

### Trigonometric Functions
In summary, trigonometric functions are functions of an angle, relating the angles of a triangle to the lengths of its sides.  The input in Dynamo is degrees.

| Icon | Name| Syntax| Ratio | Formula |
| -- | -- | -- | -- | -- |
| ![](../images/icons/DSCore-Math-Sin-Large.jpg) | sine| Math.Sin | opposite/hypotenuse | ![](images/4-2/sin.jpg)  |
| ![](../images/icons/DSCore-Math-Cos-Large.jpg) | cosine | Math.Cos | adjacent/hypotenuse | ![](images/4-2/cos.jpg) |
| ![](../images/icons/DSCore-Math-Tan-Large.jpg) | tangent | Math.Tan | opposite/adjacent | ![](images/4-2/tan.jpg) |


### Inverse Trigonometric Functions

Inverse trigonometric functions use a ratio as an input, with the resultant output being an angle.  The output in Dynamo is degrees.  These are less commonly used in modeling.

| Icon | Name| Syntax| Formula |
| -- | -- | -- | -- |
| ![](../images/icons/DSCore-Math-ASin-Large.jpg) | arcsine| Math.Asin | ![](images/4-2/asin.jpg) |
| ![](../images/icons/DSCore-Math-Acos-Large.jpg) | arccosine | Math.Acos | ![](images/4-2/acos.jpg) |
| ![](../images/icons/DSCore-Math-Atan-Large.jpg) | arctangent | Math.Atan | ![](images/4-2/atan.jpg) |

### Hyperbolic Functions
Even less common in trigonometry are the hyperbolic functions, which are analogs to the trigonometric functions.  These functions have applications in physics, fluid dynamics, and complex analysis, but are outside of the scope of this primer.

| Icon | Name| Syntax| Formula |
| -- | -- | -- | -- |
| ![](../images/icons/DSCore-Math-Sinh-Large.jpg) | sinh | Math.Sinh | ![](images/4-2/sinh.jpg) |
| ![](../images/icons/DSCore-Math-Cosh-Large.jpg) | cosh | Math.Cosh | ![](images/4-2/cosh.jpg) |
| ![](../images/icons/DSCore-Math-Tanh-Large.jpg) | tanh | Math.Tanh | ![](images/4-2/tanh.jpg)![](images/4-2/tanh2.jpg) |

**Math.RadiansToDegrees/Math.DegreesToRadians -**Convert Radians to Degrees.  This is a handy node for quickly converting angle units.  Dynamo works in degrees by default for inputs and outputs.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCore-Math-RadiansToDegrees-Large.jpg) | Radians To Degrees | Math.RadiansToDegrees | radians | degrees |
| ![](../images/icons/DSCore-Math-DegreesToRadians-Large.jpg) | Degrees to Radians | Math.DegreesToRadians | degrees | radians |

### Formula
| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCoreNodesUI-Formula-Large.jpg) | Formula | Formula | Text box | objects, numbers,strings,lists... |

**Formula - **All of the functions described above, and many more, can be defined explicitly in the formula node. This node is compatible with a range of expressions, as well as conditional statements and other equations.

For a similar node which expands this ability even further, check out the **code block**.  The code block will be discussed in detail in a future section.
