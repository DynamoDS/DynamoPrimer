

## Cables

Los cables se conectan entre nodos para crear relaciones y establecer el flujo de nuestro programa visual. Podemos considerarlos literalmente como cables eléctricos que transportan pulsos de datos de un objeto al siguiente.

### Flujo del programa

Los cables conectan el puerto de salida de un nodo al puerto de entrada de otro nodo. Esta dirección establece el **flujo de datos** en el programa visual. Aunque podemos organizar los nodos como deseemos en el espacio de trabajo, como los puertos de salida se encuentran a la derecha de los nodos y los puertos de entrada a la izquierda, por lo general, podemos decir que el flujo del programa se desplaza de izquierda a derecha.

![Flujo del programa](images/3-2/00-ProgramFlow.png)

### Creación de cables

Para crear un cable, se debe hacer clic con el botón izquierdo del ratón en un puerto y, a continuación, hacer clic con el botón izquierdo en el puerto de otro nodo para crear una conexión. Durante el proceso de creación de una conexión, el cable se mostrará discontinuo y se ajustará para convertirse en líneas continuas cuando se establezca correctamente la conexión. Los datos siempre fluirán a través de este cable desde la salida hasta la entrada. No obstante, podemos crear el cable en cualquier dirección en cuanto a la secuencia en la que se hace clic en los puertos conectados.

> Sugerencia: antes de completar la conexión con el segundo clic, permita que se ajuste el cable a un puerto y coloque el cursor en esa ubicación para ver la información de herramientas del puerto.

![Creación de cables](images/3-2/01-CreatingWires.png)

> 1. Haga clic en el puerto de salida ```seq``` del nodo Number Sequence.
2. Al desplazar el cursor a otro puerto, el cable aparece como una línea discontinua.
3. Haga clic en el puerto de entrada ```y``` de Point.ByCoordinates para completar la conexión.

### Edición de cables

Con frecuencia, desearemos ajustar el flujo de programa de nuestro programa visual mediante la edición de las conexiones representadas por los cables. Para editar un cable, haga clic con el botón izquierdo en el puerto de entrada del nodo que ya está conectado. Ahora tiene dos opciones:

![Edición de cables](images/3-2/02-EditingWires.png)

> 1. Cable existente
2. Para cambiar la conexión a un puerto de entrada, haga clic en otro puerto de entrada.
3. Para eliminar el cable, retire el cable y haga clic con el botón izquierdo en el espacio de trabajo.

* Nota: ahora existe una función adicional para desplazar varios cables a la vez. Esto se explica aquí: [http://dynamobim.org/dynamo-1-3-release/](http://dynamobim.org/dynamo-1-3-release/).

### Vistas preliminares de cables

Por defecto, nuestros cables se previsualizarán con un trazo gris. Cuando se selecciona un nodo, se renderizará cualquier cable de conexión con el mismo resaltado de color turquesa que el nodo.

![Vista preliminar del cable](images/3-2/03-WirePreview.png)

> 1. Cable por defecto
2. Cable resaltado

Dynamo también nos permite personalizar el aspecto de los cables en el espacio de trabajo a través del menú Ver > Conectores. Aquí podemos alternar entre cables de curva o polilínea, o bien desactivarlos todos.

![Conectores de cables](images/3-2/04-WireConnectors.png)

> 1. Tipo de conector: curvas
2. Tipo de conector: polilíneas

