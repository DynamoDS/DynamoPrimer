

## Puntos

Si la geometría es el idioma de un modelo, los puntos son el alfabeto. Los puntos son la base sobre la que se crea el resto de la geometría; se necesitan al menos dos puntos para crear una curva. tres puntos para crear un polígono o una cara de malla, etc. La definición de la posición, el orden y la relación entre los puntos (pruebe con una función de seno) nos permite definir geometrías de orden superior, como elementos que reconocemos como círculos o curvas.

![Del punto a la curva](images/5-3/PointsAsBuildingBlocks-1.jpg)

> 1. Un círculo con las funciones ```x=r*cos(t)``` y ```y=r*sin(t)```.
2. Una curva de seno mediante las funciones ```x=(t)``` y ```y=r*sin(t)```.

### ¿Qué es un punto?

Un punto se define por uno o más valores denominados coordenadas. El número de valores de coordenadas necesarios para definir el punto depende del sistema de coordenadas o del contexto en el que se encuentra. El tipo de punto más común en Dynamo se encuentra en el sistema de coordenadas universales tridimensional y tiene tres coordenadas [X,Y,Z].

![Punto](images/5-3/Point.jpg)

### Punto como coordenadas

Los puntos también pueden existir en un sistema de coordenadas bidimensional. La convención tiene diferentes notaciones de letras en función del tipo de espacio con el que se trabaje: es posible que se utilice [X,Y] en un plano o [U,V] en una superficie.

![Punto como coordenadas](images/5-3/Coordinates.jpg)

> 1. Un punto en el sistema de coordenadas euclidiano: [X,Y,Z]
2. Un punto en un sistema de coordenadas de parámetro de curva: [t]
3. Un punto en un sistema de coordenadas de parámetro de superficie: [U,V]

Aunque puede parecer que va en contra del sentido común, los parámetros de las curvas y las superficies son continuos y se extienden más allá de la arista de la geometría especificada. Como las formas que definen el espacio paramétrico se encuentran en un sistema de coordenadas universales tridimensional, siempre se puede convertir una coordenada paramétrica en una coordenada "universal". Por ejemplo, el punto [0,2, 0,5] de la superficie es el mismo que el punto [1,8, 2,0, 4,1] de las coordenadas universales.

![Puntos en Dynamo](images/5-3/Dynamo-Points.jpg)

> 1. Punto en presuntas coordenadas XYZ globales
2. Punto relativo a un sistema de coordenadas especificado (cilíndrico)
3. Punto como coordenada UV en una superficie
> Descargue el archivo de ejemplo que acompaña a esta imagen (haga clic con el botón derecho y seleccione "Guardar vínculo como..."): [Geometry for Computational Design - Points.dyn](datasets/5-3/Geometry for Computational Design - Points.dyn). En el Apéndice, se incluye una lista completa de los archivos de ejemplo.

