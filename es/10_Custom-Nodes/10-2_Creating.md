

## Creación de un nodo personalizado

Dynamo ofrece varios métodos diferentes para crear nodos personalizados. Puede crear nodos personalizados desde cero, a partir de un gráfico existente o de forma explícita en C#. En esta sección, vamos a cubrir la generación de un nodo personalizado en la interfaz de usuario de Dynamo a partir de un gráfico existente. Este método es ideal para limpiar el espacio de trabajo, así como para empaquetar una secuencia de nodos con el fin de reutilizarlos en otros entornos.

### Nodos personalizados para la asignación de UV

En la imagen siguiente, se asigna un punto de una superficie a otra mediante coordenadas UV. Utilizaremos este concepto para crear una superficie panelizada que haga referencia a curvas en el plano XY. Crearemos paneles de cuadrados para esta panelización pero, con esta misma lógica, podemos crear una amplia variedad de paneles con asignación de UV. Esta es una gran oportunidad para el desarrollo de nodos personalizados, ya que vamos a poder repetir un proceso similar más fácilmente en este gráfico o en otros flujos de trabajo de Dynamo.

![](images/10-2/uvMap2-01-01.jpg)

### Creación de un nodo personalizado a partir de un gráfico existente

> Descargue y descomprima los archivos de ejemplo para este ejercicio (haga clic con el botón derecho y elija "Guardar enlace como..."). En el Apéndice se incluye una lista completa de los archivos de ejemplo. [UV-CustomNode.zip](datasets/10-2/UV-CustomNode.zip)

Comenzaremos con la creación de un gráfico que deseamos anidar en un nodo personalizado. En este ejemplo, crearemos un gráfico que asigna polígonos de una superficie base a una superficie de destino mediante coordenadas UV. Este proceso de asignación de UV es algo que se utiliza con frecuencia, lo que lo convierte en un buen candidato para un nodo personalizado. Para obtener más información sobre las superficies y el espacio UV, consulte la sección 5.5. El gráfico completo es *UVmapping_Custom-Node.dyn*, del archivo .zip que hemos descargado anteriormente.

![Ejercicio](images/10-2/UVmapping01.jpg)

> 1. **Code Block:** cree un rango de 10 números entre 45 y -45 mediante un bloque de código.
2. **Point.ByCoordinates:** conecte la salida del bloque de código a las entradas "x" e "y" y establezca el encaje como producto vectorial. Ahora debería ver una rejilla de puntos.
3. **Plane.ByOriginNormal:** conecte la salida *"Point"* a la entrada *"origin"* para crear un plano en cada uno de los puntos. Se utilizará el vector normal por defecto (0,0,1).
4. **Rectangle.ByWidthLength:** conecte los planos del paso anterior a la entrada *"plane"* y utilice un bloque de código con un valor de *10* para especificar la anchura y la longitud.

Ahora debería ver una rejilla de rectángulos. Asignemos ahora estos rectángulos a una superficie de destino mediante coordenadas UV.

![Ejercicio](images/10-2/UVmapping02.jpg)

> 1. **Polygon.Points:** conecte la salida Rectangle del paso anterior a la entrada *"polygon"* para extraer los puntos de esquina de cada rectángulo. Estos son los puntos que asignaremos a la superficie de destino.
2. **Rectangle.ByWidthLength:** utilice un bloque de código con un valor de *100* para especificar la anchura y la longitud de un rectángulo. Este será el contorno de la superficie base.
3. **Surface.ByPatch:** conecte la salida Rectangle del paso anterior a la entrada *"closedCurve"* para crear una superficie base.
4. **Surface.UVParameterAtPoint:** conecte la salida *"Point"* del nodo *Polygon.Points* y la salida *"Surface"* del nodo *Surface.ByPatch* para devolver el parámetro UV de cada punto.

Ahora que tenemos una superficie base y un conjunto de coordenadas UV, podemos importar una superficie de destino y asignar los puntos entre las superficies.

![Ejercicio](images/10-2/UVmapping03.jpg)

> 1. **File Path:** seleccione la ruta de archivo de la superficie que desea importar. El tipo de archivo debe ser .SAT. Haga clic en el botón *"Examinar..."* y desplácese hasta el archivo *UVmapping_srf.sat* del archivo .zip que hemos descargado anteriormente.
2. **Geometry.ImportFromSAT:** conecte la ruta de archivo para importar la superficie. La superficie importada se muestra en la vista preliminar de la geometría.
3. **UV:** conecte la salida del parámetro UV a un nodo *UV.U* y un nodo *UV.V*.
4. **Surface.PointAtParameter:** conecte la superficie importada, así como las coordenadas u y v. Ahora debería ver una rejilla de puntos 3D en la superficie de destino.

El último paso consiste en utilizar los puntos 3D para crear parches de superficie rectangulares.

![Ejercicio](images/10-2/UVmapping04.jpg)

> 1. **PolyCurve.ByPoints:** conecte los puntos de la superficie para construir una PolyCurve a través de los puntos.
2. **Boolean:** añada un nodo Boolean al espacio de trabajo, conéctelo a la entrada *"connectLastToFirst"* y, a continuación, cambie el valor a Verdadero (True) para cerrar las PolyCurves. Ahora debería ver los rectángulos asignados a la superficie.
3. **Surface.ByPatch:** conecte las PolyCurves a la entrada *"closedCurve"* para construir parches de superficie.

Ahora vamos a seleccionar los nodos que queremos anidar en un nodo personalizado teniendo en cuenta las entradas y salidas que este debe tener. Queremos que nuestro nodo personalizado sea lo más flexible posible, de modo que debería poder asignar cualquier polígono, no solo rectángulos.

![Ejercicio](images/10-2/UVmapping05.jpg)

> Seleccione los nodos anteriores (comenzando por *Polygon.Points*), haga clic con el botón derecho en el espacio de trabajo y seleccione *"nodo a partir de selección"*.

![Ejercicio](images/10-2/UVmapping06.jpg)

> En el cuadro de diálogo Propiedades de nodo personalizado, asigne un nombre, una descripción y una categoría al nodo personalizado.

![Ejercicio](images/10-2/UVmapping07.jpg)

> El nodo personalizado ha limpiado considerablemente el espacio de trabajo. Observe que las entradas y salidas se han nombrado en función de los nodos originales. Editaremos el nodo personalizado para que los nombres sean más descriptivos.

![Ejercicio](images/10-2/UVmapping08.jpg)

> Haga doble clic en el nodo personalizado para editarlo. Se abrirá un espacio de trabajo con un fondo amarillo que representa el interior del nodo.

> 1. **Entradas:** cambie los nombres de entrada a *baseSurface* y *targetSurface*.
2. **Salidas:** añada una salida adicional para los polígonos asignados.
> Guarde el nodo personalizado y vuelva al espacio de trabajo de inicio.

![Ejercicio](images/10-2/UVmapping09.jpg)

> El nodo **MapPolygonsToSurface** refleja los cambios que acabamos de realizar.

También podemos reforzar la solidez del nodo personalizado añadiendo **comentarios personalizados**. Los comentarios pueden servir como ayuda en las entradas y salidas o explicar el funcionamiento del nodo. Los comentarios aparecerán cuando el usuario coloque el cursor sobre una entrada o una salida de un nodo personalizado.

![Comentario personalizado](images/10-2/UVmapping_Custom1.jpg)

> Haga doble clic en el nodo personalizado para editarlo. De este modo, se volverá a abrir el espacio de trabajo con fondo amarillo.

> 1. Comience por editar el bloque de código Input. Para iniciar un comentario, escriba "//" seguido del texto del comentario. Escriba cualquier información que pueda ayudar a entender mejor el nodo; aquí describiremos *targetSurface*.
2. Vamos a definir también el valor por defecto de *inputSurface* estableciendo el valor a que equivale un tipo de entrada. Aquí, vamos a definir el valor por defecto en el conjunto Surface.ByPatch original.

![Comentario personalizado](images/10-2/UVmapping_Custom1_.jpg)

> También se pueden aplicar comentarios a las salidas. Comience por editar el texto en el bloque de código Output. Para iniciar un comentario, escriba "//" seguido del texto del comentario. Aquí vamos a aclarar las salidas *Polygons* y *surfacePatches* añadiendo una descripción más detallada.

![Comentario personalizado](images/10-2/UVmapping_Custom2.jpg) >

1. Coloque el cursor sobre las entradas del nodo personalizado para ver los comentarios.
2. Con el valor por defecto establecido en *inputSurface*, también podemos ejecutar la definición sin una entrada de superficie.

