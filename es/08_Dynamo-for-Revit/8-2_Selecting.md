

## Seleccionar

Revit es un entorno con gran cantidad de datos. Esto nos proporciona una gama de posibilidades de selección que se expande mucho más allá de "señalar y hacer clic". Podemos consultar la base de datos de Revit y vincular dinámicamente elementos de Revit a la geometría de Dynamo mientras realizamos operaciones paramétricas.

![Interfaz de usuario](images/8-2/selectionUI.png)

> La biblioteca de Revit de la interfaz de usuario ofrece la categoría "Selection" (selección) que permite elegir varias formas de seleccionar la geometría.

Para seleccionar elementos de Revit correctamente, es importante comprender totalmente la jerarquía de elementos de Revit. ¿Desea seleccionar todos los muros de un proyecto? Seleccione por categoría. ¿Desea seleccionar todas las sillas Eames en su lobby moderno de mediados de siglo? Seleccione por familia. Antes de pasar a un ejercicio, vamos a hacer una revisión rápida de la jerarquía de Revit.

#### Jerarquía de Revit

![Interfaz de usuario](images/8-2/hierarchy.jpg)

¿Recuerda la taxonomía de la biología? Reino, phylum, clase, orden, familia, género y especie. Los elementos de Revit se clasifican de forma similar. En un nivel básico, la jerarquía de Revit se puede dividir en categorías, familias, tipos* y ejemplares. Un ejemplar es un elemento de modelo individual (con un ID exclusivo), mientras que una categoría define un grupo genérico (como "muros" o "suelos"). Con la base de datos de Revit organizada de este modo, podemos seleccionar un elemento y elegir todos los elementos similares en función de un nivel especificado en la jerarquía.

**Nota: los tipos en Revit se definen de forma distinta a los tipos en programación. En Revit, un tipo hace referencia a una ramificación de la jerarquía, en lugar de a un "tipo de datos".*

#### Navegación por las bases de datos con nodos de Dynamo

Las tres imágenes siguientes dividen las categorías principales para la selección de elementos de Revit en Dynamo. Son herramientas excelentes para usarlas en combinación y exploraremos algunas de ellas en los ejercicios siguientes.

![Interfaz de usuario](images/8-2/pointandclick.png)

> *Señalar y hacer clic* es el método más sencillo para seleccionar directamente un elemento de Revit. Puede seleccionar un elemento de modelo completo o partes de su topología (como una cara o un borde). Este elemento permanece vinculado dinámicamente a ese objeto de Revit, por lo que, cuando el archivo de Revit actualiza su ubicación o parámetros, el elemento de Dynamo al que se hace referencia se actualiza en el gráfico.

![Interfaz de usuario](images/8-2/dropdown.jpg)

> Los *menús desplegables* crean una lista de todos los elementos a los que se puede acceder en un proyecto de Revit. Puede utilizar esta opción para hacer referencia a elementos de Revit que no son necesariamente visibles en una vista. Esta es una herramienta excelente para consultar elementos existentes o crear nuevos elementos en un editor de proyectos o familias de Revit.

![Interfaz de usuario](images/8-2/allelements.jpg)

> También puede seleccionar elementos de Revit por niveles específicos en la *jerarquía de Revit*. Esta es una opción eficaz para personalizar grandes matrices de datos para preparar la documentación o la creación de ejemplares y personalización generativas.

Teniendo en cuenta las tres imágenes anteriores, vamos a profundizar en un ejercicio que selecciona elementos de un proyecto básico de Revit para preparar las aplicaciones paramétricas que crearemos en las secciones restantes de este capítulo.

### Ejercicio:

> Descargue los archivos de ejemplo que acompañan a este ejercicio (haga clic con el botón derecho y seleccione "Guardar enlace como..."). En el Apéndice se incluye una lista completa de los archivos de ejemplo.

> 1. [Selecting.dyn](datasets/8-2/Selecting.dyn)
2. [ARCH-Selecing-BaseFile.rvt](datasets/8-2/ARCH-Selecting-BaseFile.rvt)

![Ejercicio](images/8-2/Exercise/12.png)

> En este archivo de Revit de ejemplo, tenemos tres tipos de elementos de un edificio sencillo. Vamos a usar este archivo como ejemplo para seleccionar elementos de Revit en el contexto de la jerarquía de Revit:

> 1. Masa de construcción
2. Vigas de celosía (componentes adaptativos)
3. Vigas (armazón estructural)

![Ejercicio](images/8-2/Exercise/11.png)

> ¿Qué conclusiones podemos sacar de los elementos que hay en la vista de proyecto de Revit? Y, ¿cuánto debemos descender en la jerarquía para seleccionar los elementos adecuados? Por supuesto, esta tarea se volverá más compleja al trabajar en un proyecto de gran tamaño. Hay una gran cantidad de opciones disponibles; se pueden seleccionar elementos por categorías, niveles, familias, ejemplares, etc.

> 1. Como estamos trabajando con una configuración básica, seleccionaremos la masa de construcción eligiendo *"Mass"* en el nodo desplegable Categories. Puede encontrarlo en la ficha Revit > Selection.
2. La salida de la categoría Mass es solo la categoría en sí. Debemos seleccionar los elementos. Para ello, se utiliza el nodo *"All Elements of Category"*.

En este punto, observe que no se ve ninguna geometría en Dynamo. Hemos seleccionado un elemento de Revit, pero no lo hemos convertido en geometría de Dynamo. Se trata de una distinción importante. Si tuviéramos que seleccionar un gran número de elementos, no es deseable obtener una vista preliminar de todos ellos en Dynamo porque esto ralentizaría todo el proceso. Dynamo es una herramienta para gestionar un proyecto de Revit sin realizar necesariamente operaciones de geometría, y lo veremos en la siguiente sección de este capítulo.

En este caso trabajamos con geometría sencilla, por lo que vamos a incorporar la geometría a la vista preliminar de Dynamo. El elemento "BldgMass" del nodo Watch anterior tiene un número verde* junto a él. Esto representa el ID del elemento e indica que estamos trabajando con un elemento de Revit, no con una geometría de Dynamo. El siguiente paso es convertir este elemento de Revit en geometría en Dynamo.

![Ejercicio](images/8-2/Exercise/10.png)

> 1. Mediante el nodo *Element. Faces*, se obtiene una lista de las superficies que representan cada cara de la masa de Revit. Ahora podemos ver la geometría en la ventana gráfica de Dynamo y comenzar a hacer referencia a la cara para realizar operaciones paramétricas.

![Ejercicio](images/8-2/Exercise/09.jpg)

> A continuación se incluye un método alternativo. En este caso, no vamos a realizar la selección mediante la jerarquía de Revit *("All Elements of Category")*, sino que vamos a seleccionar de forma explícita la geometría en Revit.

> 1. Mediante el nodo *"Select Model Element"*, haga clic en el botón *"select" *(o *"change"*). En la ventana gráfica de Revit, seleccione el elemento que desee. En este caso, seleccionamos la masa de construcción.
2. En lugar de *Element.Faces*, se puede seleccionar la masa completa como una geometría sólida mediante *Element.Geometry*. De este modo, se selecciona toda la geometría contenida en la masa.
3. Mediante *Geometry.Explode*, podemos obtener la lista de superficies de nuevo. Estos dos nodos funcionan de la misma forma que *Element.Faces*, pero ofrecen opciones alternativas para profundizar en la geometría de un elemento de Revit.

![Ejercicio](images/8-2/Exercise/08.jpg)

> 1. Mediante algunas operaciones de lista básicas, podemos consultar una cara de interés.
2. En primer lugar, el nodo *List.Count* indica que estamos trabajando con 23 superficies en la masa.
3. Al hacer referencia a este número, se cambia el valor máximo de un *control deslizante de enteros* a *"22"*.
4. Con *List.GetItemAtIndex*, se introducen las listas y el *control deslizante de enteros *para el *índice*. Deslizamos la selección y nos detenemos cuando lleguemos al *índice 9* y hayamos aislado la fachada principal que contiene las vigas de celosía.

![Ejercicio](images/8-2/Exercise/07.jpg)

> 1. El paso anterior era un poco engorroso. Esto se puede hacer mucho más rápido con el nodo *"Select Face"*. Este nos permite aislar una cara que no es un elemento en el proyecto de Revit. Se aplica la misma interacción que con *"Select Model Element"*, excepto que seleccionamos la superficie en lugar del elemento completo.

![Ejercicio](images/8-2/Exercise/selectFaces.jpg)

> Supongamos que deseamos aislar los muros de las fachadas principales del edificio. Para ello, se puede utilizar el nodo *"Select Faces"*. Haga clic en el botón "Select" y, a continuación, seleccione las cuatro fachadas principales en Revit.

![Ejercicio](images/8-2/Exercise/finishButton-01.jpg)

> 1. Después de seleccionar los cuatro muros, asegúrese de hacer clic en el botón *"Finalizar"* en Revit.

![Ejercicio](images/8-2/Exercise/06.jpg)

> 1. Las caras se importan en Dynamo como superficies.

![Ejercicio](images/8-2/Exercise/05.jpg)

> 1. Ahora, veamos las vigas situadas sobre el atrio. Con el nodo *"Select Model Element"*, seleccione una de las vigas.
2. Conecte el elemento de viga al nodo *Element.Geometry* y la viga aparecerá en la ventana gráfica de Dynamo.
3. Podemos ampliar la geometría con un nodo *Watch3D* (si no ve la viga en Watch 3D, haga clic con el botón derecho y pulse "Ajustar en ventana").

![Ejercicio](images/8-2/Exercise/04.jpg)

> Una duda que puede aparecer con frecuencia en los flujos de trabajo de Revit o Dynamo es la siguiente: ¿cómo selecciono un elemento y obtengo todos los elementos similares? Como el elemento de Revit seleccionado contiene toda su información jerárquica, podemos consultar su tipo de familia y seleccionar todos los elementos de ese tipo.

> 1. Conecte el elemento de viga a un nodo *FamilyInstance.Symbol**.
2. El nodo *Watch* indica que la salida es ahora un símbolo de familia en lugar de un elemento de Revit.
3. *FamilyInstance.Symbol* es una consulta sencilla, por lo que podemos realizarla en el bloque de código de la misma forma con ```x.Symbol;``` y obtener los mismos resultados.

**Nota: símbolo de familia es la terminología de la API de Revit para el tipo de familia. Dado que esto puede crear confusión, se actualizará en las próximas versiones.*

![Ejercicio](images/8-2/Exercise/03.jpg)

> 1. Para seleccionar las vigas restantes, utilizaremos el nodo *"All Elements of Family Type"*.
2. El nodo Watch muestra que se han seleccionado cinco elementos de Revit.

![Ejercicio](images/8-2/Exercise/02.jpg)

> 1. También podemos convertir estos cinco elementos en geometría de Dynamo.

¿Y si tuviéramos 500 vigas? Convertir todos estos elementos en geometría de Dynamo sería muy lento. Si Dynamo tarda mucho tiempo en calcular los nodos, puede usar la función "Bloquear" para poner en pausa la ejecución de operaciones de Revit mientras desarrolla el gráfico. Para obtener más información sobre el bloqueo de nodos, consulte la sección "Bloqueo" del [capítulo de sólidos](../05_Geometry-for-Computational-Design/5-6_solids.md#freezing).

En cualquier caso, si importamos 500 vigas, ¿necesitamos que todas las superficies realicen la operación paramétrica deseada? ¿O podemos extraer información básica de las vigas y realizar tareas generativas con geometría fundamental? Esta es una pregunta que tendremos en cuenta a medida que avanzamos en este capítulo. Por ejemplo, veamos el sistema de vigas de celosía:

![Ejercicio](images/8-2/Exercise/01.jpg)

> Con el mismo gráfico de nodos, seleccione el elemento de viga de celosía en lugar del elemento de viga. Antes de hacerlo, suprima el nodo Element.Geometry del paso anterior.

![Ejercicio](images/8-2/Exercise/00.jpg)

> 1. En el nodo *Watch*, podemos ver que tenemos una lista de componentes adaptativos seleccionados en Revit. Vamos a extraer la información básica, por lo que comenzaremos con los puntos adaptativos.
2. Conecte el nodo *"All Elements of Family Type"* al nodo *"AdaptiveComponent.Location"*. Esto nos proporciona una lista de listas, cada una con tres puntos que representan las ubicaciones de los puntos adaptativos.
3. Al conectar un nodo *"Polygon.ByPoints"*, se obtiene una PolyCurve. Se puede ver en la ventana gráfica de Dynamo. Con este método, hemos visualizado la geometría de un elemento y hemos abstraído la geometría de la matriz de elementos restantes (que podría ser mayor en número que este ejemplo).

**Sugerencia: si hace clic en el número verde de un elemento de Revit en Dynamo, la ventana gráfica de Revit ampliará dicho elemento.*

