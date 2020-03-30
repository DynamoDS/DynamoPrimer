

## Adición a la biblioteca

Acabamos de crear un nodo personalizado y lo hemos aplicado a un proceso específico en el gráfico de Dynamo. Y nos gusta tanto este nodo que deseamos conservarlo en nuestra biblioteca de Dynamo para hacer referencia a él en otros gráficos. Para ello, publicaremos el nodo localmente. Este es un proceso similar al de la publicación de un paquete, que se explicará con más detalle en el siguiente capítulo.

### Publicación local de un nodo personalizado

Avancemos con el nodo personalizado que hemos creado en la sección anterior. Al publicar un nodo localmente, se podrá acceder a este en la biblioteca de Dynamo cuando se abra una nueva sesión. Si no se publica un nodo, un gráfico de Dynamo que haga referencia a un nodo personalizado deberá incluir ese nodo personalizado en su carpeta (o este deberá importarse a Dynamo mediante *Archivo > Importar biblioteca*).

> Descargue el archivo de ejemplo que acompaña a este ejercicio (haga clic con el botón derecho y seleccione "Guardar enlace como..."). En el Apéndice, se incluye una lista completa de los archivos de ejemplo. [PointsToSurface.dyf](datasets/10-3/PointsToSurface.dyf)

![](images/10-3/AddingToLibrary- 05.jpg)

> Después de abrir el nodo personalizado PointsToSurface, aparecerá el gráfico sobre el editor de nodos personalizados de Dynamo. También puede abrir un nodo personalizado haciendo doble clic en él en el editor de gráficos de Dynamo.

![](images/10-3/AddingToLibrary- 04.jpg)

> 1. Para publicar localmente un nodo personalizado, haga clic con el botón derecho en el lienzo y seleccione *Publicar este nodo personalizado...*.

![](images/10-3/AddingToLibrary- 03.jpg)

> Rellene la información pertinente similar a la imagen anterior y seleccione *Publicar localmente.*. Observe que el campo Grupo define el elemento principal al que se puede acceder desde el menú de Dynamo.

![](images/10-3/AddingToLibrary- 02.jpg)

> Seleccione una carpeta para alojar todos los nodos personalizados que tiene previsto publicar localmente. Dynamo comprobará esta carpeta cada vez que se cargue, por lo que debe asegurarse de que esta se encuentre en una ubicación permanente. Vaya a esta carpeta y elija *Seleccionar carpeta.* El nodo de Dynamo se publica ahora localmente y permanecerá en la barra de herramientas de Dynamo cada vez que cargue el programa.

![](images/10-3/AddingToLibrary- 01.jpg)

> 1. Para comprobar la ubicación de la carpeta de nodos personalizados, vaya a *Configuración > Administrar rutas de nodos y paquetes...*.

![](images/10-3/AddingToLibrary- 00.jpg)

> En esta ventana, aparecen dos rutas: *AppData\Roaming\Dynamo...* hace referencia a la ubicación por defecto de los paquetes de Dynamo instalados en línea. *Documents\DynamoCustomNodes...* hace referencia a la ubicación de los nodos personalizados que se han publicado localmente.

> 1. Es posible que desee desplazar la ruta de carpeta local hacia abajo en el orden de la lista anterior. (Para ello, seleccione la ruta de carpeta y haga clic en la flecha hacia abajo situada a la izquierda de los nombres de ruta). La carpeta superior es la ruta por defecto para las instalaciones de paquetes. Por lo tanto, al mantener la ruta de instalación por defecto de paquetes de Dynamo como la carpeta por defecto, los paquetes en línea se separarán de los nodos publicados localmente.*

![](images/10-3/AddingToLibrary- 00A.jpg)

> Cambiamos el orden de los nombres de ruta para que la ruta por defecto de Dynamo sea la ubicación de instalación de paquetes.

![](images/10-3/AddingToLibrary- 06.jpg)

> Al acceder a esta carpeta local, podemos encontrar el nodo personalizado original en la carpeta *.dyf*, que es la extensión de un archivo de nodo personalizado de Dynamo. Podemos editar el archivo en esta carpeta; el nodo se actualizará en la interfaz de usuario. También podemos añadir más nodos a la carpeta principal de *DynamoCustomNode*; Dynamo los añadirá a la biblioteca al reiniciar.

![](images/10-3/library.jpg)

> Dynamo ahora se cargará cada vez con *PointsToSurface* en el grupo *DynamoPrimer* de la biblioteca de Dynamo.

