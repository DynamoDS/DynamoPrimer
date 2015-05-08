## 4.3 Logic

### 4.3.1 Booleans
Numeric variables can store a whole range of different numbers. Boolean
variables can only store two values referred to as Yes or No, True or False,
1 or 0. Obviously we never use booleans to perform calculations because of their
limited range. We use booleans to evaluate conditions.

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCoreNodesUI-BoolSelector-Large.png) | Boolean | -- | True/False Radio Button | Boolean |
> The boolean battery in Dynamo is a basic radio button, toggling between true and false.

At the most basic level, Dynamo has a boolean battery which functions as a light switch for logical operations.  This is a fundamental element for making conditional evaluation.



### 4.3.2 "If"

| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/DSCoreNodesUI-Logic-If-Large.png) | If | If | test, true, false | result|
| ![](../images/icons/DSCoreNodesUI-Formula-Large.png) | Formula | IF(x,y,z) | x, y, z | result |
| ![](../images/icons/Dynamo-Nodes-CodeBlockNodeModel-Large.png) | Code Block | (x?y:z)| x, y, z | result|
![](images/4-3/Ifs.png)
![](images/4-3/Ifs2.png)
### 4.3.3 Conditional Operators
| Icon | Name | Syntax| Inputs | Outputs |
| -- | -- | -- | -- | -- | -- |-- |
| ![](../images/icons/lt-Large.png) | If | If | test, true, false | result|
| ![](../images/icons/le-Large.png) | Formula | IF(x,y,z) | x, y, z | result |
| ![](../images/icons/gt-Large.png) | Code Block | (x?y:z)| x, y, z | result|
| ![](../images/icons/ge-Large.png) | Code Block | (x?y:z)| x, y, z | result|
| ![](../images/icons/eq-Large.png) | Code Block | (x?y:z)| x, y, z | result|
| ![](../images/icons/nq-Large.png) | Code Block | (x?y:z)| x, y, z | result|
### 4.3.4 Logic Gates

![bool](images/4-3/4-3-1/venn1.png)
> The diagram above represents an array of boolean possiblities.  These are used as logical operators for computational modeling.

### 4.3.5 Exercise
