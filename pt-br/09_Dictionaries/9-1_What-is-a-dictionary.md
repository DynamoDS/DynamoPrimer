# Dicionários
O Dynamo 2.0 apresenta o conceito de separar o tipo de dados de dicionários do tipo de dados de listas. Essa alteração pode representar algumas alterações significativas na forma como você cria e trabalha com os dados em seus fluxos de trabalho. Antes da versão 2.0, os dicionários e as listas eram combinados como um tipo de dados. Em resumo, as listas eram na verdade dicionários com chaves inteiras.

* #### O que é um dicionário?
Um dicionário é um tipo de dados formado por um conjunto de pares valor-chave onde cada chave é exclusiva em cada coleção. Um dicionário não tem ordem e, basicamente, é possível “procurar por coisas” usando uma chave em vez de um valor de índice como em uma lista. *No Dynamo 2.0, as chaves somente podem ser sequências de caracteres.*

* #### O que é uma lista?
Uma lista é um tipo de dados formado por uma coleção de valores ordenados. No Dynamo, as listas usam números inteiros como valores de índice.

* #### Por que essa mudança foi feita e por que é importante para mim?
A separação dos dicionários das listas apresenta os dicionários como um elemento de primeira classe que você pode usar para armazenar e pesquisar valores de maneira rápida e fácil, sem precisar lembrar um valor de índice ou manter uma estrutura de lista rigorosa em todo o fluxo de trabalho. Durante o teste dos usuários, vimos uma redução significativa no tamanho do gráfico quando os dicionários eram usados em vez de vários nós ```GetItemAtIndex```.

* #### Quais são as mudanças?
  * Ocorreram alterações na *sintaxe* que alteram como você inicializará e trabalhará com dicionários e listas em blocos de código.
    * Os dicionários usam a seguinte sintaxe ```{key:value}```
    * As listas usam a seguinte sintaxe ```[value,value,value]```
  * *Novos nós* foram introduzidos na biblioteca para ajudar você a criar, modificar e consultar dicionários.
  * As listas criadas em blocos de código 1.x migrarão automaticamente ao carregar o script para a nova sintaxe de lista que usa colchetes ```[ ]``` em vez de chaves ```{ }``` ![IMAGEM](images/9-1/DYN20_Dictionary.png)

* #### Por que isso é importante para mim? Para que você usaria isso?
Na ciência da computação, os dicionários, como listas, são coleções de objetos. Embora as listas estejam em uma ordem específica, os dicionários são coleções *não ordenadas*. Em vez disso, eles não dependem de números sequenciais (índices); em vez disso, usam *chaves.*

Na imagem abaixo, demonstramos um caso de uso potencial de um dicionário. Muitas vezes, os dicionários são usados para relacionar duas partes dos dados que podem não ter uma correlação direta. No nosso caso, estamos ligando a versão em espanhol de uma palavra à versão em inglês para uma pesquisa posterior. ![IMAGEM](images/9-1/9-1_dictionaryExample.png)

