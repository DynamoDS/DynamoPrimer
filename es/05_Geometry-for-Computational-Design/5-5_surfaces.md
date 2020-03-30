

## Superficies

A medida que pasamos de usar curvas a usar superficies en un modelo, ahora podemos empezar a representar objetos presentes en nuestro mundo tridimensional. Aunque las curvas no son siempre planas, es decir, son tridimensionales, el espacio que definen siempre está vinculado a una dimensión. Las superficies nos ofrecen otra dimensión y un conjunto de propiedades adicionales que se pueden utilizar en otras operaciones de modelado.

### ¿Qué es una superficie?

Una superficie es una forma matemática definida por una función y dos parámetros; en lugar de ```t``` para las curvas, utilizamos ```U``` y ```V``` para describir el espacio de parámetros correspondiente. Esto significa que hay más datos geométricos que dibujar cuando se trabaja con este tipo de geometría. Por ejemplo, las curvas tienen vectores y planos normales (que se pueden rotar o girar a lo largo de la longitud de la curva), mientras que las superficies tienen vectores normales y planos tangentes que serán coherentes en su orientación.

![Superficie](images/5-5/Surface.jpg)

> 1. Superficie
2. Isocurva U
3. Isocurva V
4. Coordenada UV
5. Plano perpendicular
6. Vector normal

**Dominio de superficie**: un dominio de superficie se define como el rango de parámetros (U,V) que se evalúan en un punto tridimensional de esa superficie. El dominio de cada dimensión (U o V) se describe normalmente como dos números, de U mín. a U máx. y de V mín. a V máx.

![Superficie](images/5-5/SurfaceParameter.jpg)

Aunque la forma de la superficie puede no parecer "rectangular" y es posible que tenga un conjunto de isocurvas más ajustadas o sueltas, el "espacio" definido por su dominio siempre es bidimensional. En Dynamo, se entiende que las superficies tienen un dominio definido por un mínimo de 0.0 y un máximo de 1.0 en las direcciones U y V. Las superficies planas o recortadas pueden tener dominios diferentes.

**Isocurva** (o curva isoparamétrica): curva definida por un valor U o V constante en la superficie y un dominio de valores para la otra dirección U o V correspondiente.

**Coordenada UV**: el punto del espacio del parámetro UV definido por U, V y, a veces, W.

![Coordenada de superficie](images/5-5/SurfaceCoordinate.jpg)

**Plano perpendicular**: un plano perpendicular a las isocurvas U y V en una coordenada UV especificada.

**Vector normal**: un vector que define la dirección de "arriba" en relación con el plano perpendicular.

### Superficies NURBS

Las **superficies NURBS** son muy similares a las curvas NURBS. Las superficies NURBS se pueden considerar como una rejilla de curvas NURBS que van en dos direcciones. La forma de una superficie NURBS se define mediante un número de puntos de control y el grado de esa superficie en las direcciones U y V. Se utilizan los mismos algoritmos para calcular la forma, las normales, las tangentes, las curvaturas y otras propiedades mediante puntos de control, grosores y grados.

![Superficie NURBS](images/5-5/NURBSsurface.jpg)

En el caso de las superficies NURBS, la geometría indica dos direcciones, ya que las superficies NURBS son, independientemente de la forma que veamos, rejillas rectangulares de puntos de control. Y, aunque estas direcciones son a menudo arbitrarias en relación con el sistema de coordenadas universal, las utilizaremos frecuentemente para analizar los modelos o generar otra geometría en función de la superficie.

![Superficie NURBS](images/5-5/NURBSsurface-Degree.jpg)

> 1. Grado (U,V) = (3,3)
2. Grado (U,V) = (3,1)
3. Grado (U,V) = (1,2)
4. Grado (U,V) = (1,1)

### PolySurfaces

Las **PolySurfaces** se componen de superficies unidas a lo largo de una arista. Las PolySurfaces ofrecen más de una definición de UV bidimensional, por lo que ahora podemos desplazarnos por las formas conectadas a través de su topología.

> Aunque la "topología" describe normalmente un concepto sobre el modo en que las piezas están conectadas o relacionadas, la topología en Dynamo es también un tipo de geometría. En concreto, es una categoría principal de superficies, PolySurfaces y sólidos.

![PolySurface](images/5-5/PolySurface.jpg)

En ocasiones denominadas parches, este modo de unión de superficies nos permite crear formas más complejas y definir detalles a lo largo de la unión. De forma oportuna, podemos aplicar una operación de empalme o chaflán a las aristas de una PolySurface.

Vamos a importar y evaluar una superficie en un parámetro de Dynamo para ver qué tipo de información se puede extraer.

![Superficies en Dynamo](images/5-5/Dynamo_Surfaces.jpg)

> 1. *Surface.PointAtParameter* devuelve el punto en una coordenada UV especificada.
2. *Surface.NormalAtParameter* devuelve el vector normal en una coordenada UV especificada.
3. *Surface.GetIsoline* devuelve la curva isoparamétrica en una coordenada U o V; observe la entrada de isoDirection.
> Descargue los archivos de ejemplo que acompañan a esta imagen (haga clic con el botón derecho y seleccione "Guardar enlace como..."). En el Apéndice, se incluye una lista completa de los archivos de ejemplo.

> 1. [Geometry for Computational Design - Surfaces.dyn](datasets/5-5/Geometry for Computational Design - Surfaces.dyn)
2. [Surface.sat](datasets/5-5/Surface.sat)

