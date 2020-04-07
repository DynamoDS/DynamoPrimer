

## Mallas

En el campo del modelado computacional, las mallas son una de las formas más generalizadas de representación de la geometría 3D. La geometría de malla puede ser una alternativa ligera y flexible al uso de NURBS, mientras que las mallas se utilizan en todo, desde la renderización y las visualizaciones hasta la fabricación digital y la impresión 3D.

### ¿Qué es una malla?

Una malla es un conjunto de cuadriláteros y triángulos que representa una superficie o una geometría sólida. Al igual que los sólidos, la estructura de un objeto de malla incluye vértices, aristas y caras. Existen propiedades adicionales que hacen que las mallas sean únicas como, por ejemplo, las normales.

![Elementos de malla](images/5-7/MeshElements2.jpg)

> 1. Vértices de malla.
2. Aristas de malla. * Las aristas con una única cara adyacente se denominan "desnudas". El resto de aristas están "vestidas".
3. Caras de malla.

### Elementos de malla

Dynamo define mallas mediante una estructura de datos de cara-vértice. En su nivel más básico, esta estructura es simplemente un conjunto de puntos que se agrupan en polígonos. Los puntos de una malla se denominan vértices, mientras que los polígonos similares a superficies se denominan caras. Para crear una malla, se necesita una lista de vértices y un sistema de agrupación de esos vértices en caras denominado grupo de índice.

![](images/5-7/meshFacesVertices.jpg)

> 1. Lista de vértices
2. Lista de grupos de índice para definir caras

#### Vértices + normales de vértice

Los vértices de una malla son simplemente una lista de puntos. El índice de los vértices es muy importante al crear una malla u obtener información sobre la estructura de una malla. Para cada vértice, también existe una normal de vértice (vector) correspondiente que describe la dirección media de las caras enlazadas y ayuda a comprender la orientación de "entrada" y "salida" de la malla.

![Vértices + normales](images/5-7/vertexNormals.jpg)

> 1. Vértices
2. Normales de vértice

#### Caras

Una cara es una lista ordenada de tres o cuatro vértices. Por lo tanto, la representación de la "superficie" de una cara de malla se deduce en función de la posición de los vértices que se están indexando. Ya tenemos la lista de vértices que componen la malla, por lo que, en lugar de proporcionar puntos individuales para definir la malla, solo tenemos que usar el índice de los vértices. Esto también nos permite utilizar el mismo vértice en más de una cara.

![](images/5-7/meshFaces.jpg)

> 1. Una cara cuadrática compuesta por los índices 0, 1, 2 y 3.
2. Una cara triangular creada con los índices 1, 4 y 2. Tenga en cuenta que se puede cambiar el orden de los grupos de índice; siempre que la secuencia se ordene en el sentido contrario a las agujas del reloj, la cara se definirá correctamente.

### Mallas frente a superficies NURBS

¿En qué se diferencia la geometría de malla de la geometría NURBS? ¿Cuándo es recomendable utilizar una en lugar de la otra?

#### Parametrización

En un capítulo anterior, vimos que las superficies NURBS se definen mediante una serie de curvas NURBS que se dirigen en dos direcciones. Estas direcciones se etiquetan como ```U``` y ```V```, y permiten que una superficie NURB se parametrice de acuerdo con un dominio de superficie bidimensional. Las curvas propiamente dichas se almacenan como ecuaciones en el ordenador, lo que permite calcular las superficies resultantes con un grado de precisión arbitrariamente pequeño. Sin embargo, puede ser difícil combinar varias superficies NURBS. La unión de dos superficies NURBS genera una PolySurface, donde las distintas secciones de la geometría tendrán diferentes parámetros UV y definiciones de curva.

![Puntos de control](images/5-7/NURBSvsMESH-01.jpg)

> 1. Superficie
2. Curva isoparamétrica (línea isoparamétrica)
3. Punto de control de superficie
4. Polígono de control de superficie
5. Punto isométrico
6. Marco de superficie
7. Malla
8. Arista desnuda
9. Red de malla
10. Aristas de malla
11. Normal de vértice
12. Cara de malla/normal de cara de malla

Por otra parte, las mallas están formadas por un número específico de caras y vértices definidos exactamente. La red de vértices no se puede definir normalmente mediante coordenadas ```UV``` sencillas, y como las caras son independientes, la cantidad de precisión se incorpora en la malla y solo se puede cambiar mediante el ajuste preciso de la malla y la adición de más caras. La falta de descripciones matemáticas permite que las mallas gestionen con mayor flexibilidad geometrías complejas dentro de una única malla.

### Influencia local frente a global

Otra diferencia importante es la extensión en la que un cambio local en la geometría de malla o NURBS afecta a toda la forma. El desplazamiento de un vértice de una malla solo afecta a las caras adyacentes a ese vértice. En las superficies NURBS, la extensión de la influencia es más complicada y depende del grado de la superficie, así como de los grosores y los nudos de los puntos de control. Sin embargo, por lo general, al desplazar un único punto de control en una superficie NURBS, se produce un cambio más suave y extensivo en la geometría.

![Edición](images/5-7/NURBSvsMESH-02.jpg)

> 1. Superficie NURBS: el desplazamiento de un punto de control tiene una influencia que se extiende a lo largo de la forma.
2. Geometría de malla: el desplazamiento de un vértice solo influye en los elementos adyacentes.

Una analogía que puede resultar útil es comparar una imagen vectorial (compuesta de líneas y curvas) con una imagen ráster (compuesta de píxeles individuales). Si amplia la vista de una imagen vectorial, las curvas permanecen nítidas y claras, mientras que si se amplía la vista de una imagen ráster, los píxeles individuales aumentan de tamaño. En esta analogía, las superficies NURBS se pueden comparar con una imagen vectorial porque existe una relación matemática fluida, mientras que una malla se comporta de forma similar a una imagen ráster con una resolución establecida.

### Kit de herramientas de malla

Las funciones de malla de Dynamo se pueden ampliar mediante la instalación del paquete de [Kit de herramientas de malla](https://github.com/DynamoDS/Dynamo/wiki/Dynamo-Mesh-Toolkit). El Kit de herramientas de malla de Dynamo proporciona herramientas para importar mallas desde formatos de archivo externos, crear una malla a partir de objetos de geometría de Dynamo y generar manualmente mallas mediante sus vértices e índices. La biblioteca también proporciona herramientas para modificar y reparar mallas, o extraer cortes horizontales para su uso en la fabricación.

Consulte el capítulo 10.2 para ver un ejemplo mediante el Kit de herramientas de malla.

![Kit de herramientas de malla](images/5-7/MeshToolKit.jpg)

