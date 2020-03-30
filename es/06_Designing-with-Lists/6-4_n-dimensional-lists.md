

## Listas de n dimensiones

Adentrándonos aún más en el laberinto, vamos a agregar más niveles a la jerarquía. La estructura de datos puede ampliarse mucho más allá de una lista de listas bidimensional. Dado que las listas son elementos en sí mismos en Dynamo, podemos crear datos con tantas dimensiones como sea posible.

La analogía con la que trabajaremos aquí son las muñecas rusas. Cada lista se puede considerar como un contenedor que contiene varios elementos. Cada lista tiene sus propias propiedades y también se considera su propio objeto.

![Muñecas](images/6-4/145493363_fc9ff5164f_o.jpg)

> Un conjunto muñecas rusas (foto de [Zeta](https://www.flickr.com/photos/beppezizzi/145493363)) es una analogía de las listas de n dimensiones. Cada capa representa una lista y cada lista contiene elementos. En el caso de Dynamo, cada contenedor puede tener varios contenedores dentro (que representan los elementos de cada lista).

Las listas de n dimensiones son difíciles de explicar visualmente, pero hemos configurado algunos ejercicios en este capítulo que se centran en trabajar con listas que van más allá de las dos dimensiones.

## Asignación y combinaciones

La asignación es, probablemente, la parte más compleja de la administración de datos en Dynamo y es especialmente relevante al trabajar con jerarquías de listas complejas. Con la serie de ejercicios incluidos a continuación, mostraremos cuándo utilizar la asignación y las combinaciones a medida que los datos se convierten en datos multidimensionales.

Las introducciones preliminares a List.Map y List.Combine se encuentran en la sección anterior. En el último ejercicio de los que se incluyen a continuación, usaremos estos nodos en una estructura de datos compleja.

### Ejercicio - Listas 2D: nivel básico

> Descargue los archivos de ejemplo que acompañan a este ejercicio (haga clic con el botón derecho y seleccione "Guardar enlace como..."). En el Apéndice se incluye una lista completa de los archivos de ejemplo. 
1.[n-Dimensional-Lists.dyn](datasets/6-4/n-Dimensional-Lists.dyn) 
2.[n-Dimensional-Lists.sat](datasets/6-4/n-Dimensional-Lists.sat)

Este es el primero de una serie de tres ejercicios que se centra en la articulación de la geometría importada. Cada parte de esta serie de ejercicios aumentará en la complejidad de la estructura de datos.

![Ejercicio](images/6-4/Exercise/A/04.jpg)

> 1. Comencemos con el archivo .sat de la carpeta de archivos del ejercicio. Se puede acceder a este archivo mediante el nodo *File Path*.
2. Con *Geometry.ImportFromSAT*, la geometría se importa a nuestra vista preliminar de Dynamo como dos superficies.

![Ejercicio](images/6-4/Exercise/A/03.jpg)

> En este sencillo ejercicio, vamos a trabajar con una de las superficies.

> 1. Seleccionaremos el índice de *1* para capturar la superficie superior. Esta acción se realiza con el nodo *List.GetItemAtIndex*.

![Ejercicio](images/6-4/Exercise/A/02.jpg)

> El siguiente paso es dividir la superficie en una rejilla de puntos.

> 1. Mediante el *bloque de código*, inserte estas dos líneas de código:
```
0..1..#10;
0..1..#5;
```

2. Con *Surface.PointAtParameter*, conecte los dos valores del bloque de código a *u *y *v*. Cambie el *encaje* de este nodo a *"Producto vectorial"*.
3. La salida muestra la estructura de datos, que también está visible en la vista preliminar de Dynamo.

![Ejercicio](images/6-4/Exercise/A/01.jpg)

> 1. Para obtener información sobre cómo se organiza la estructura de datos, conectemos un nodo *NurbsCurve.ByPoints* a la salida de *Surface.PointAtParameter*.
2. Observe que hay diez curvas que discurren verticalmente a lo largo de la superficie.

![Ejercicio](images/6-4/Exercise/A/00.jpg)

> 1. Un nodo *List.Transpose* básico cambiará las columnas y las filas de una lista de listas.
2. Al conectar la salida de *List.Transpose* a *NurbsCurve.ByPoints*, se obtienen cinco curvas que discurren horizontalmente a través de la superficie.

### Ejercicio - Listas 2D: nivel avanzado

Aumentemos la complejidad. Supongamos que deseamos realizar una operación en las curvas creadas en el ejercicio anterior. Tal vez nos gustaría relacionar estas curvas con otra superficie y solevar entre ellas. Esto requiere más atención en la estructura de datos, pero la lógica subyacente es la misma.

![Ejercicio](images/6-4/Exercise/B/07.jpg)

> 1. Comience con un paso del ejercicio anterior, aislando la superficie superior de la geometría importada con el nodo *List.GetItemAtIndex*.

![Ejercicio](images/6-4/Exercise/B/06.jpg)

> 1. Con *Surface.Offset*, desfase la superficie con un valor de *10*.

![Ejercicio](images/6-4/Exercise/B/05.jpg)

> 1. Del mismo modo que en el ejercicio anterior, defina un *bloque de código* con estas dos líneas de código:
```
0..1..#10;
0..1..#5;
```

2. Conecte estas salidas a dos nodos *Surface.PointAtParameter*, cada uno con el *encaje* establecido en *"Producto vectorial"*. Uno de estos nodos está conectado a la superficie original, mientras que el otro está conectado a la superficie desfasada.

![Ejercicio](images/6-4/Exercise/B/04.jpg)

> 1. Como en el ejercicio anterior, conecte la salida a dos nodos *NurbsCurve.ByPoints*.
2. Nuestra vista preliminar de Dynamo muestra dos curvas correspondientes a dos superficies.

![Ejercicio](images/6-4/Exercise/B/03.jpg)

> 1. Con *List.Create*, podemos combinar los dos conjuntos de curvas en una lista de listas.
2. Observe en la salida que tenemos dos listas con diez elementos cada una que representan cada conjunto de conexiones de curvas NURBS.
3. Al ejecutar *Surface.ByLoft*, podemos visualizar con claridad esta estructura de datos. El nodo soleva todas las curvas de cada sublista.

![Ejercicio](images/6-4/Exercise/B/02.jpg)

> 1. Al utilizar *List.Transpose*, recuerde que estamos volteando todas las columnas y filas. Este nodo transferirá dos listas de diez curvas a diez listas de dos curvas. Ahora cada curva NURBS está relacionada con la curva contigua de la otra superficie.
2. Con *Surface.ByLoft*, llegamos a una estructura con nervios.

![Ejercicio](images/6-4/Exercise/B/01.jpg)

> 1. Una alternativa a *List.Transpose* es utilizar *List.Combine*. Esta acción pondrá en funcionamiento *"combinador"* en cada sublista.
2. En este caso, utilizaremos *List.Create *como *"combinador"*, que creará una lista de cada elemento de las sublistas.
3. Con el nodo *Surface.ByLoft*, se obtienen las mismas superficies que en el paso anterior. La transposición es más fácil de utilizar en este caso, pero cuando la estructura de datos se vuelve más compleja, *List.Combine* es más fiable.

![Ejercicio](images/6-4/Exercise/B/00.jpg)

> 1. Retrocediendo unos pasos, si queremos cambiar la orientación de las curvas en la estructura con nervios, debemos utilizar un nodo List.Transpose antes de conectar con *NurbsCurve.ByPoints*. Esto invertirá las columnas y las filas, lo que nos dará 5 nervios horizontales.

### Ejercicio - Listas 3D

Ahora, vamos a ir un paso más allá. En este ejercicio, trabajaremos con ambas superficies importadas y crearemos una jerarquía de datos compleja. Aun así, nuestro objetivo es completar la misma operación con la misma lógica subyacente.

![Ejercicio](images/6-4/Exercise/C/12.jpg)

> 1. Comience con el archivo importado del ejercicio anterior.

![Ejercicio](images/6-4/Exercise/C/11.jpg)

> 1. Como en el ejercicio anterior, utilice el nodo *Surface.Offset* para desfasar por un valor de *10*.
2. Observe en la salida que hemos creado dos superficies con el nodo de desfase.

![Ejercicio](images/6-4/Exercise/C/10.jpg)

> 1. Del mismo modo que en el ejercicio anterior, defina un bloque de código con estas dos líneas de código:
```
0..1..#20;
0..1..#10;
```

2. Conecte estas salidas a dos nodos *Surface.PointAtParameter*, cada uno con el *encaje* establecido en "Producto vectorial". Uno de estos nodos está conectado a las superficies originales, mientras que el otro está conectado a las superficies desfasadas.

![Ejercicio](images/6-4/Exercise/C/09.jpg)

> 1. Como en el ejercicio anterior, conecte la salida a dos nodos *NurbsCurve.ByPoints*.
2. En la salida de *NurbsCurve.ByPoints*, observe que se trata de una lista de dos listas, que es más compleja que la del ejercicio anterior. Los datos se clasifican según la superficie subyacente, por lo que hemos añadido otro nivel a los datos estructurados.
3. Observe que los datos se vuelven más complejos en el nodo *Surface.PointAtParameter*. En este caso, tenemos una lista compuesta por listas de listas.

![Ejercicio](images/6-4/Exercise/C/08.jpg)

> 1. Con el nodo *List.Create*, se fusionan las curvas NURBS en una estructura de datos, lo que crea una lista de listas de listas.
2. Al conectar un nodo *Surface.ByLoft*, se obtiene una versión de las superficies originales, ya que cada una de ellas permanece en su propia lista tal como se crearon a partir de la estructura de datos original.

![Ejercicio](images/6-4/Exercise/C/07.jpg)

> 1. En el ejercicio anterior, pudimos utilizar *List.Transpose* para crear una estructura con nervios. Esto no funcionaría aquí. La transposición se debe utilizar en una lista bidimensional y, puesto que tenemos una lista tridimensional, una operación de "voltear columnas y filas" no funcionaría de manera tan sencilla. Recuerde que las listas son objetos, de modo que *List.Transpose* voltearía las listas sin sublistas, pero no voltearía las curvas NURBS ubicadas una lista más abajo en la jerarquía.

![Ejercicio](images/6-4/Exercise/C/06.jpg)

> 1. *List.Combine* funcionará mejor aquí. Debemos usar los nodos *List.Map* y *List.Combine* cuando trabajamos con estructuras de datos más complejas.
2. Al utilizar *List.Create *como *"combinador"*, creamos una estructura de datos que funcionará mejor para nosotros.

![Ejercicio](images/6-4/Exercise/C/05.jpg)

> 1. La estructura de datos aún debe transponerse un paso hacia abajo en la jerarquía. Para ello, utilizaremos *List.Map*. Funciona como *List.Combine*, salvo que utiliza solo una lista de entrada, en lugar de dos o más.
2. La función que aplicaremos a *List.Map* es *List.Transpose*, que volteará las columnas y las filas de las sublistas de nuestra lista principal.

![Ejercicio](images/6-4/Exercise/C/04.jpg)

> 1. Por último, podemos solevar las curvas NURBS junto con una jerarquía de datos adecuada, lo que nos proporciona una estructura con nervios.

![Ejercicio](images/6-4/Exercise/C/03.jpg)

> 1. Añadiremos profundidad a la geometría con un nodo *Surface.Thicken*.

![Ejercicio](images/6-4/Exercise/C/02.jpg)

> 1. Es conveniente añadir una superficie que respalde esta estructura, por lo que utilizaremos *List.GetItemAtIndex* para seleccionar la superficie posterior de entre las superficies solevadas de los pasos anteriores.

![Ejercicio](images/6-4/Exercise/C/01.jpg)

> 1. Y si engrosamos las superficies seleccionadas, la articulación está completa.

![Ejercicio](images/6-4/Exercise/C/00.jpg)

> No es la mecedora más cómoda del mercado, pero hay muchos datos en ella.

![Ejercicio](images/6-4/Exercise/C/32.jpg)

> En el último paso, vamos a invertir la dirección de los miembros estriados. Como ya usamos la transposición en el ejercicio anterior, haremos algo similar aquí.

> 1. Tenemos un nivel más en la jerarquía, por lo que debemos utilizar *List.Map* con la función *List.Tranpose* para cambiar la dirección de las curvas NURBS.

![Ejercicio](images/6-4/Exercise/C/31.jpg)

> 1. Es posible que queramos aumentar el número de huellas, para lo cual podemos cambiar el bloque de código a
```
0..1..#20;
0..1..#10;
```

![Ejercicio](images/6-4/Exercise/C/30.jpg)

> La primera versión de la mecedora era elegante, así que nuestro segundo modelo ofrece una versión todoterreno del asiento reclinable.

