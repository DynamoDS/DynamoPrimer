

## Vectores, planos y sistemas de coordenadas

Los vectores, los planos y los sistemas de coordenadas constituyen el grupo principal de los tipos de geometría abstracta. Nos ayudan a definir la ubicación, la orientación y el contexto espacial de otra geometría que describe formas. Si, por ejemplo, digo que estoy en la ciudad de Nueva York en la calle 42 con Broadway (sistema de coordenadas), de pie en el nivel de la calle (plano), mirando al norte (vector), acabo de usar estas "ayudas" para definir dónde estoy. Lo mismo sucede con la carcasa de un teléfono o un rascacielos; necesitamos este contexto para desarrollar el modelo.

![Vectores, planos y coordenadas](images/5-2/VectorsPlanesCoodinates.jpg)

### ¿Qué es un vector?

Un vector es una cantidad geométrica que describe la dirección y la magnitud. Los vectores son abstractos, es decir, representan una cantidad, no un elemento geométrico. Los vectores se pueden confundir fácilmente con los puntos porque ambos están compuestos de una lista de valores. Aunque existe una diferencia clave: los puntos describen una posición en un sistema de coordenadas específico, mientras que los vectores describen una diferencia relativa en la posición, lo que equivale a la "dirección".

![Detalles de los vectores](images/5-2/Vector-Detailed.jpg)

Si la idea de la diferencia relativa es confusa, piense en el Vector AB como "Estoy de pie en el punto A, mirando hacia el punto B". La dirección, de aquí (A) a allí (B), es el vector.

Este es un desglose de los vectores en sus diferentes partes mediante la misma notación AB:

![Vector](images/5-2/Vector.jpg)

> 1. El **punto inicial** del vector se denomina **base**.
2. El **punto final** del vector se denomina **punta** o el **sentido**.
3. El vector AB no es igual al vector BA, que señalaría la dirección opuesta.

Si desea ver un momento cómico en relación con los vectores (y su definición abstracta), eche un vistazo al clásico de la comedia "Aterriza como puedas" y escuche la siguiente línea de diálogo burlona bastante citada:

> *Bien, bien. ¿Cuál es nuestro vector, Víctor?*

Los vectores son un componente clave de los modelos de Dynamo. Tenga en cuenta que, como se encuentran en la categoría abstracta de "ayudas", cuando creamos un vector, no aparecerá nada en la vista preliminar en segundo plano.

![Vectores en Dynamo](images/5-2/Dynamo-Vector.jpg)

> 1. Podemos utilizar una línea como sustituto de una vista preliminar del vector.
> Descargue el archivo de ejemplo que acompaña a esta imagen (haga clic con el botón derecho y seleccione "Guardar vínculo como..."): [Geometry for Computational Design - Vectors.dyn](datasets/5-2/Geometry for Computational Design - Vectors.dyn). En el Apéndice, se incluye una lista completa de los archivos de ejemplo.

### ¿Qué es un plano?

Los planos son "ayudas" abstractas bidimensionales. En concreto, los planos son conceptualmente un "llano" que se extiende infinitamente en dos direcciones. Por lo general, se renderizan como un rectángulo más pequeño próximo a su origen.

![Plano](images/5-2/Plane.jpg)

Es posible que piense: "¡Un momento! ¿Origen? Eso suena a un sistema de coordenadas... como el que utilizo para modelar en el software de CAD".

Y tiene razón. La mayoría del software de modelado aprovecha los planos de construcción o "niveles" para definir un contexto local bidimensional en el que dibujar. Es posible que XY, XZ, YZ, o Norte, Sudeste o Nivel le resulten términos más familiares. Todos son planos que definen un contexto "llano" infinito. Los planos no tienen profundidad, pero nos ayudan a describir la dirección: cada plano tiene un origen, y una dirección X, Y y Z (arriba).

![Planos en Dynamo](images/5-2/Dynamo-Plane.jpg)

> 1. Aunque son abstractos, los planos tienen una posición de origen, por lo que podemos localizarlos en el espacio.
2. En Dynamo, los planos se renderizan en la vista preliminar en segundo plano.
> Descargue el archivo de ejemplo que acompaña a esta imagen (haga clic con el botón derecho y seleccione "Guardar vínculo como..."): [Geometry for Computational Design - Planes.dyn](datasets/5-2/Geometry for Computational Design - Plane.dyn). En el Apéndice, se incluye una lista completa de los archivos de ejemplo.

### ¿Qué es un sistema de coordenadas?

Si estamos familiarizados con los planos, estamos a un paso de comprender los sistemas de coordenadas. Un plano tiene las mismas partes que un sistema de coordenadas, siempre que se trate de un sistema de coordenadas euclidiano o XYZ estándar.

Sin embargo, hay otros sistemas de coordenadas alternativos como, por ejemplo, cilíndricos o esféricos. Como veremos en las secciones posteriores, los sistemas de coordenadas también se pueden aplicar a otros tipos de geometría para definir una posición en esa geometría.

![Sistema de coordenadas](images/5-2/CoordinateSystem.jpg)

> Añadir sistemas de coordenadas alternativos: cilíndricos y esféricos.

![Planos en Dynamo](images/5-2/Dynamo-CoordinateSystem.jpg)

> 1. Aunque son abstractos, los sistemas de coordenadas también tienen una posición de origen para poder localizarlos en el espacio.
2. En Dynamo, los sistemas de coordenadas se renderizan en la vista preliminar en segundo plano como un punto (origen) y líneas que definen los ejes (X es rojo, Y es verde y Z es azul según la convención).
> Descargue el archivo de ejemplo que acompaña a esta imagen (haga clic con el botón derecho y seleccione "Guardar vínculo como..."): [Geometry for Computational Design - Coordinate System.dyn](datasets/5-2/Geometry for Computational Design - Coordinate System.dyn). En el Apéndice, se incluye una lista completa de los archivos de ejemplo.

