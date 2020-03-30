

## Importación de geometría

Hay varias formas de importar geometría en Dynamo. En la sección anterior, hemos mostrado la importación de mallas con el *Kit de herramientas de malla*; también podemos importar modelos sólidos desde archivos .SAT. Con estos procesos, podemos desarrollar geometría en otra plataforma, cargarla en Dynamo y aplicar operaciones paramétricas mediante programación visual.

Otro método para importar geometría utiliza un proceso denominado *conversión de ATF*. En este caso, no solo podemos importar la geometría, sino la estructura de un archivo. Por ejemplo, podemos elegir las capas de un archivo .DWG que se van a importar en lugar de importar el modelo completo. Mostraremos esto a continuación con más detalle.

### Importación de geometría desde un archivo DWG

Los nodos para importar un archivo DWG en el entorno de Dynamo se encuentran en la ficha *Conversión* (Nota: estas herramientas solo están disponibles en [Dynamo Studio](http://www.autodesk.com/products/dynamo-studio/overview)). En los ejemplos siguientes, se muestran diversos componentes que se utilizan para buscar un archivo, importar su contenido y convertirlo en geometría utilizable de Dynamo. Dynamo también nos permite filtrar y seleccionar objetos específicos para importarlos desde un archivo DWG, lo que mostraremos a continuación. Para obtener más información sobre la importación de geometría desde un archivo DWG, lea la [entrada de blog de Ben Goh aquí](http://dynamobim.org/dwg-import-in-dynamo-studio-0-9-1/).

### Obtener objetos importados

La forma más sencilla de importar archivos DWG a Dynamo Studio consiste en importar el archivo completo en el espacio de trabajo:

![GetImportedObjects](images/5-8/GetImportedObjects.jpg)

> 1. Utilice el componente File Path para buscar el archivo DWG que se va a importar en Dynamo.
2. Conéctese a **FileLoader.FromPath** para leer el archivo.
3. Utilice el componente **FileLoader.GetImportedObjects** para analizar la geometría en Dynamo Studio.
4. **ImportedObject.ConvertToGeometries** convertirá los objetos en geometría utilizable en el espacio de trabajo de Dynamo.

Como se muestra en la imagen anterior, se importan a Dynamo todos los tipos de geometría del archivo DWG (superficies, mallas, curvas y líneas).

### Filtro de objetos

Para especificar las geometrías que se van a importar desde el archivo DWG, se pueden añadir otros nodos **ObjectFilter** a la definición. El nodo **ObjectFilter** es compatible con **FileLoader** o con una lista de **ImportedObject** y genera una lista **ImportedObject**.

En las imágenes siguientes, se muestran las instrucciones condicionales de cada nodo **ObjectFilter**. Todos los elementos **ImportedObject** que cumplan cualquiera de las condiciones enumeradas pasarán por el filtro. El filtrado puede basarse en la etiqueta de capa (es decir, el nombre de capa), el tipo de geometría y el color difuso, entre otros, y se puede utilizar junto con otros filtros para ajustar de forma precisa la selección.

![ObjectFilter1](images/5-8/ObjectFilter01.jpg)

> 1. Sustituya **FileLoader.GetImportedObjects** por **ObjectFilter** para buscar condiciones específicas en el archivo DWG. - En este caso, solo se importará la geometría de superficie, eliminando toda la geometría de curva y línea visible en la imagen anterior.
2. Conecte el filtro a **ImportedObject.ConvertToGeometries** para importar la geometría filtrada.

Al añadir dos filtros con diferentes instrucciones condicionales, podemos dividir la lista de geometría en varias secuencias:

![ObjectFilter2](images/5-8/ObjectFilter02.jpg)

> 1. Sustituya **FileLoader.GetImportedObjects** por dos módulos **ObjectFilter** de diferentes instrucciones condicionales. De este modo, se separará la geometría de un archivo en dos secuencias diferentes.
2. Conecte el filtro a **ImportedObject.ConvertToGeometries** para importar la geometría filtrada.
3. Conecte **ImportedObject.ConvertToGeometries** a **Display.ByGeometryColor** para visualizar cada secuencia con un color diferente.

### Selección explícita de objetos

El nodo **ObjectSelector** ofrece un método alternativo para importar objetos desde el archivo DWG. En lugar de utilizar filtros, este método nos permitirá elegir específicamente los objetos y las capas que se importarán a Dynamo.

![Del punto a la curva](images/5-8/ObjectSelector.jpg)

> 1. Sustituya **FileLoader.GetImportedObjects** por **ObjectSelector** para solicitar capas y objetos específicos dentro de un archivo DWG.
2. Conecte el filtro a **ImportedObject.ConvertToGeometries**.

