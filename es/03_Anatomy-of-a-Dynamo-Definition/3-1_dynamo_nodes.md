

## Nodos

En Dynamo, los **nodos** son los objetos que se conectan para formar un programa visual. Cada **nodo** realiza una operación: en ocasiones, es algo tan sencillo como almacenar un número, o puede ser una acción más compleja, como crear o consultar geometría.

### Anatomía de un nodo

La mayoría de los nodos de Dynamo están compuestos por cinco partes. Aunque existen excepciones, como los nodos de entrada, la anatomía de cada nodo se puede describir como se indica a continuación: ![Desglose del nodo Point.ByCoordinates](images/3-1/00-AnatomyOfANode.png)

> 1. Nombre: nombre del nodo con la convención de nomenclatura Categoría.Nombre.
2. Parte principal: el cuerpo principal del nodo. Al hacer clic con el botón derecho, se presentan opciones en el nivel de todo el nodo.
3. Puertos (entrada y salida): los receptores de los cables que proporcionan los datos de entrada al nodo, así como los resultados de la acción del nodo.
4. Icono de encaje: indica la opción de encaje especificada para las entradas de lista coincidentes (se explicará detalladamente más adelante).
5. Valor por defecto (haga clic con el botón derecho en un puerto de entrada): algunos nodos tienen valores por defecto que se pueden utilizar o no.

### Puertos

Las entradas y las salidas de los nodos se denominan puertos y actúan como receptores de cables. Los datos entran por la izquierda en el nodo a través de los puertos y salen del nodo por la derecha después de que se haya ejecutado su operación. Los puertos esperan recibir datos de un tipo determinado. Por ejemplo, al conectar un número como *2.75* a los puertos de un nodo Point.ByCoordinates, se creará correctamente un punto. Sin embargo, si se proporciona *Red* al mismo puerto, se producirá un error.

> Sugerencia: coloque el cursor sobre un puerto para ver la información de herramientas que contiene el tipo de datos esperado.

![Etiquetas de puerto: Point.ByCoordinates](images/3-1/01-Ports.png)

> 1. Etiqueta de puerto
2. Información de herramientas
3. Tipo de datos
4. Valor por defecto

### Estados

Dynamo proporciona una indicación del estado de ejecución del programa visual mediante la renderización de los nodos con diferentes esquemas de color en función del estado de cada nodo. Además, al colocar el cursor sobre el nombre o los puertos, o hacer clic con el botón derecho en ellos, se ofrece información y opciones adicionales.

![Estados](images/3-1/02-States2.png)

> 1. Activo: los nodos con un fondo de nombre gris oscuro están conectados correctamente y todas sus entradas se han conectado de forma adecuada.
2. Inactivo: los nodos grises están inactivos y deben estar conectados con cables para que formen parte del flujo del programa en el espacio de trabajo activo.
3. Estado de error: el color rojo indica que el nodo presenta un estado de error.
4. Bloquear: un nodo transparente tiene la opción Bloquear activada, por lo que se suspende la ejecución del nodo.
5. Seleccionados: actualmente los nodos seleccionados se resaltan con un borde de color turquesa.
6. Advertencia: los nodos de color amarillo presentan un estado de advertencia, lo que significa que pueden tener tipos de datos incorrectos.
7. Vista preliminar de fondo: el color gris oscuro indica que la vista preliminar de la geometría está desactivada.

Si el programa visual contiene advertencias o errores, Dynamo proporcionará información adicional sobre el problema. Todos los nodos en amarillo también presentarán una información de herramientas sobre el nombre. Coloque el cursor sobre la información de herramientas para expandirla.

> Sugerencia: con esta información de herramientas a mano, examine los nodos ascendentes para ver si el tipo de datos o la estructura de datos necesarios presentan errores.

![Información de herramientas de errores del nodo](images/3-1/03-WarningTooltip.jpg)

> 1. Información de herramientas de advertencia: el valor "null" (nulo) o la falta de datos no se pueden considerar como doble, por ejemplo, un número.
2. Utilice el nodo Watch para examinar los datos de entrada.
3. El nodo Number ascendente almacena "Red", no un número.

