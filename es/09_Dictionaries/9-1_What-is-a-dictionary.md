# Diccionarios
Dynamo 2.0 introduce el concepto de separación del tipo de datos del diccionario del tipo de datos de lista. Esta novedad puede conllevar algunos cambios importantes en la forma de crear y trabajar con datos en los flujos de trabajo. Antes de la versión 2.0, los diccionarios y las listas se combinaban como un tipo de datos. En resumen, las listas eran en realidad diccionarios con claves de enteros.

* #### ¿Qué es un diccionario?
Un diccionario es un tipo de datos compuesto por una colección de pares de clave-valor en los que cada clave es exclusiva para cada colección. Un diccionario no tiene orden y, básicamente, se pueden "buscar elementos" mediante una clave en lugar de un valor de índice como en una lista. *En Dynamo 2.0, las claves solo pueden ser cadenas.*

* #### ¿Qué es una lista?
Una lista es un tipo de datos compuesto por un conjunto de valores ordenados. En Dynamo, las listas utilizan enteros como valores de índice.

* #### ¿Por qué se ha realizado este cambio y en qué me afecta?
La separación de los diccionarios y las listas convierte a los diccionarios en componentes de primera clase que se pueden utilizar para almacenar y buscar valores de forma rápida y sencilla sin necesidad de recordar un valor de índice o mantener una estructura de listas estricta a lo largo del flujo de trabajo. Durante las pruebas realizadas por los usuarios, hemos detectado una reducción considerable del tamaño del gráfico cuando se utilizaron los diccionarios en lugar de varios nodos ```GetItemAtIndex```.

* #### ¿Cuáles son los cambios?
  * Se han producido cambios en la *sintaxis* que modifican el modo en que se inicializarán y se utilizarán los diccionarios y las listas en los bloques de código.
    * Los diccionarios utilizan la siguiente sintaxis: ```{clave:valor}```.
    * Las listas utilizan la siguiente sintaxis: ```[valor,valor,valor]```.
  * Se han introducido *nuevos nodos* en la biblioteca para ayudarle a crear, modificar y consultar diccionarios.
  * Las listas creadas con bloques de código 1.x se migrarán automáticamente al cargar la secuencia de comandos a la nueva sintaxis de lista que utiliza corchetes ```[ ]``` en lugar de llaves ```{ }``` ![IMAGEN](images/9-1/DYN20_Dictionary.png).

* #### ¿En qué me afecta? ¿Para qué se utilizan?
En las ciencias informáticas, los diccionarios, al igual que las listas, son colecciones de objetos. Mientras que las listas se encuentran en un orden específico, los diccionarios son colecciones *sin ordenar*. No dependen de números secuenciales (índices), sino de *claves*.

En la imagen siguiente, se muestra un posible caso de uso de un diccionario. A menudo, los diccionarios se utilizan para relacionar dos segmentos de datos que podrían no tener una correlación directa. En este caso, conectamos la versión en español de una palabra a la versión en inglés para su posterior búsqueda. ![IMAGEN](images/9-1/9-1_dictionaryExample.png)

