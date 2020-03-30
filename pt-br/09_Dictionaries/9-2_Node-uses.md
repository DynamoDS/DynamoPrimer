

# Nós de dicionário

O Dynamo 2.0 expõe uma variedade de nós Dictionary para serem usados. Isso inclui os nós *create, action e query*.

![IMAGEM](images/9-2/9-2_dictionaryNodes.png)

* ```Dictionary.ByKeysValues``` criará um dicionário com os valores e chaves fornecidos. *(O número de entradas será o da lista de entradas mais curta)*
* ```Dictionary.Components``` produzirá os componentes do dicionário de entrada. *(Esse é o inverso do nó create.)*
* ```Dictionary.RemoveKeys``` produzirá um novo objeto de dicionário com as chaves de entrada removidas.
* ```Dictionary.SetValueAtKeys``` produzirá um novo dicionário com base nas chaves de entrada e nos valores para substituir o valor atual nas chaves correspondentes.
* ```Dictionary.ValueAtKey``` retornará o valor na chave de entrada.
* ```Dictionary.Count``` informará quantos pares de valor-chave estão no dicionário.
* ```Dictionary.Keys``` retornará quais chaves estão atualmente armazenadas no dicionário.
* ```Dictionary.Values``` retornará quais valores estão armazenados no momento no dicionário.

##### _A relação global de dados com dicionários é uma ótima alternativa ao método antigo de trabalho com índices e listas._

