

# Nodos de diccionario

Dynamo 2.0 presenta una gran variedad de nodos de diccionario para nuestro uso. Esto incluye los nodos de *creación, acción y consulta*.

![IMAGEN](images/9-2/9-2_dictionaryNodes.png)

* ```Dictionary.ByKeysValues``` creará un diccionario con los valores y las claves proporcionados. *(El número de entradas será el de la entrada de lista más corta)*.
* ```Dictionary.Components``` generará los componentes del diccionario de entrada. *(Es el proceso inverso al nodo creado)*.
* ```Dictionary.RemoveKeys``` generará un nuevo objeto de diccionario con las claves de entrada eliminadas.
* ```Dictionary.SetValueAtKeys``` creará un nuevo diccionario basado en las claves de entrada y los valores para reemplazar el valor actual en las claves correspondientes.
* ```Dictionary.ValueAtKey``` devolverá el valor en la clave de entrada.
* ```Dictionary.Count``` le indicará cuántos pares de clave-valor hay en el diccionario.
* ```Dictionary.Keys``` devolverá las claves almacenadas actualmente en el diccionario.
* ```Dictionary.Values``` devolverá los valores almacenados actualmente en el diccionario.

##### _Relacionar de forma general datos con diccionarios es una magnífica alternativa al antiguo método de trabajo con índices y listas._

