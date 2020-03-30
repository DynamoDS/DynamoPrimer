

## Matemáticas

Si la forma más sencilla de datos es el número, la forma más sencilla de relacionarlos es mediante las matemáticas. Desde operadores sencillos como la división a funciones trigonométricas y fórmulas más complejas, las matemáticas son un método excelente para empezar a explorar relaciones y patrones numéricos.

### Operadores aritméticos

Los operadores son un conjunto de componentes que utilizan funciones algebraicas con dos valores numéricos de entrada que dan como resultado un valor de salida (suma, resta, multiplicación, división, etc.). Estos se pueden encontrar en Operators > Actions.

|Icono|Nombre|Sintaxis|Entradas|Salidas|
| -- | -- | -- | -- | -- |
|![](../images/icons/add-Large.jpg)|Sumar|+|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/sub-Large.jpg)|Restar|-|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/mul-Large.jpg)|Multiplicar|*|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/div-Large.jpg)|Dividir|/|var[]...[], var[]...[]|var[]...[]|

### Fórmula paramétrica

> Descargue el archivo de ejemplo que acompaña a este ejercicio (haga clic con el botón derecho y seleccione "Guardar enlace como..."): [Building Blocks of Programs - Math.dyn](datasets/4-2/Building Blocks of Programs - Math.dyn). En el Apéndice se incluye una lista completa de los archivos de ejemplo.

A partir de los operadores, el siguiente paso lógico consiste en combinar operadores y variables para formar una relación más compleja mediante **fórmulas**. Hagamos una fórmula que se pueda controlar mediante parámetros de entrada, como los controles deslizantes.

![](images/4-2/4-2-5/01.png)

> 1. **Number Sequence:** defina una secuencia de números basada en tres entradas: *start, amount* y *step*. Esta secuencia representa la "t" de la ecuación paramétrica, por lo que debemos utilizar una lista lo suficientemente grande como para definir una espiral.

En el paso anterior hemos creado una lista de números para definir el dominio paramétrico. La espiral dorada se define como la ecuación: ![](images/4-2/4-2-5/x.gif)=![](images/4-2/4-2-5/goldenSpiral.gif) y ![](images/4-2/4-2-5/y.gif)=![](images/4-2/4-2-5/goldenSpiral2.gif). El grupo de nodos que se muestra a continuación representa esta ecuación en forma de programación visual.

![](images/4-2/4-2-5/02.png)

> Al desplazarse por el grupo de nodos, intente prestar atención al paralelismo entre el programa visual y la ecuación por escrito.

> 1. **Number Slider:** añada dos controles deslizantes de número al lienzo. Estos controles deslizantes representarán las variables *a* y *b* de la ecuación paramétrica. Estas representan una constante que es flexible o parámetros que podemos ajustar hacia el resultado deseado.
2. ** *:** el nodo de multiplicación se representa mediante un asterisco. Lo usaremos con frecuencia para conectar variables de multiplicación.
3. **Math.RadiansToDegrees:** los valores de "*t*" deben traducirse a grados para ser evaluados en las funciones trigonométricas. Recuerde que Dynamo utiliza por defecto los grados para evaluar estas funciones.
4. **Math.Pow:** como función de "*t*" y del número "*e*", crea la secuencia Fibonacci.
5. **Math.Cos y Math.Sin:** estas dos funciones trigonométricas distinguirán la coordenada X y la coordenada Y, respectivamente, de cada punto paramétrico.
6. **Watch: **ahora vemos que las salidas son dos listas, que serán las coordenadas *x* e *y* de los puntos utilizados para generar la espiral.

### De fórmula a geometría

El cúmulo de nodos del paso anterior funcionará correctamente, pero conlleva mucho trabajo. Para crear un flujo de trabajo más eficiente, consulte **Bloques de código** (sección 3.3.2.3) para definir una cadena de expresiones de Dynamo en un nodo. En la siguiente serie de pasos, veremos cómo utilizar la ecuación paramétrica para dibujar la espiral Fibonacci. ![](images/4-2/4-2-5/03.png)

> 1. **Point.ByCoordinates:** conecte el nodo de multiplicación superior a la entrada "*x*" y el inferior a la entrada "*y*". Ahora se muestra una espiral paramétrica de puntos en la pantalla.

![](images/4-2/4-2-5/03aaa.png)

> 1. **Polycurve.ByPoints:** Conecte Point.ByCoordinates del paso anterior a *points*. Podemos dejar *connectLastToFirst* sin entrada porque no estamos creando una curva cerrada. Se crea una espiral que pasa a través de cada punto definido en el paso anterior.

Ya hemos completado la espiral Fibonacci. Vamos a profundizar en estos conceptos con dos ejercicios separados a partir de aquí; a uno lo llamaremos caracol y al otro girasol. Se trata de abstracciones de sistemas naturales, pero las dos aplicaciones diferentes de la espiral Fibonacci estarán bien representadas.

### De espiral a caracol

![](images/4-2/4-2-5/03.png)

> 1. Como punto de partida, vamos a realizar el mismo paso del ejercicio anterior: crear de una matriz de puntos de espiral con el nodo **Point.ByCoordinates**.

![](images/4-2/4-2-5/03aa.png)

> 1. **Polycurve.ByPoints:** este nodo también lo utilizamos en el ejercicio anterior y lo usaremos como referencia.
2. **Circle.ByCenterPointRadius:** utilizaremos aquí un nodo de círculo con las mismas entradas que en el paso anterior. El valor por defecto del radio es *1,0*, por lo que vemos una salida de círculos inmediata. Se hace inmediatamente evidente cómo los puntos divergen más respecto al origen.

![](images/4-2/4-2-5/03a.png)

> 1. **Circle.ByCenterPointRadius:** para crear una matriz de círculos más dinámica, conectamos la secuencia de números original (la secuencia "*t*") en el valor del radio.
2. **Number Sequence:** es la matriz original de "*t*". Al conectarlo con el valor del radio, los centros de círculo siguen divergiendo más respecto del origen, pero el radio de los círculos aumenta, lo que crea un gráfico de círculos Fibonacci con mucho estilo. Un premio para quién consiga convertirlo a 3D.

### De caracol al patrón de filotaxis

Ahora que hemos hecho una concha de caracol circular, vamos a pasar a las rejillas paramétricas. Vamos a usar una rotación básica en la espiral Fibonacci para crear una rejilla Fibonacci y modelar el resultado según el [crecimiento de las semillas de girasol.](http://ms.unimelb.edu.au/~segerman/papers/sunflower_spiral_fibonacci_metric.pdf)

![](images/4-2/4-2-5/03.png)

> 1. Como punto de partida, vamos a realizar otra vez el mismo paso del ejercicio anterior: crear de una matriz de puntos de espiral con el nodo **Point.ByCoordinates**.

![](images/4-2/4-2-5/04.png)

> 1. **Geometry.Rotate:** existen varias opciones de Geometry.Rotate; asegúrese de que ha elegido el nodo que contiene las entradas *geometry*, *basePlane* y *degrees*. Conecte **Point.ByCoordinates** en la entrada geometry.
2. **Plano.XY:** conéctelo a la entrada *basePlane*. Rotaremos alrededor del origen, que es la misma ubicación que la base de la espiral.
3. **Number Range:** para la entrada de grados, vamos a crear varias rotaciones. Esto se puede realizar rápidamente con un componente Number Range. Conéctelo a la entrada *degrees*.
4. **Number:** para definir el rango de números, añada tres nodos numéricos al lienzo en orden vertical. De arriba a abajo, asigne valores de *0,0; 360,0* y *120,0* respectivamente. Estos valores controlan la rotación de la espiral. Observe los resultados de las salidas del nodo **Number Range** después de conectar los tres nodos numéricos al mismo.

Nuestro resultado está empezando a parecerse a un remolino. Ajustemos algunos de los parámetros de **Number Range** y veamos cómo cambian los resultados: ![](images/4-2/4-2-5/05.png)

> 1. Cambie el tamaño de paso del nodo **Number Range** de *120,0* a *36,0*. Observe que esto crea más rotaciones y que, por tanto, nos proporciona una rejilla más densa.

![](images/4-2/4-2-5/06.png)

> 1. Cambie el tamaño de paso del nodo **Number Range** de *36,0* a *3,6*. Esto nos da una rejilla mucho más densa y la dirección de la espiral no está clara. Damas y caballeros, hemos creado un girasol.

