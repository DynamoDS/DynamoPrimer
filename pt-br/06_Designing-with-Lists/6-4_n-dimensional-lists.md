

## Listas n-dimensionais

Em um passo mais avançado, vamos adicionar ainda mais camadas à hierarquia. A estrutura de dados pode se expandir muito além de uma lista bidimensional de listas. Como as listas são itens por si só no Dynamo, podemos criar dados com tantas dimensões quanto possível.

A analogia com a qual vamos trabalhar aqui são as bonecas russas. Cada lista pode ser considerada como um contêiner com vários itens. Cada lista tem suas próprias propriedades e também é considerada como seu próprio objeto.

![Bonecas](images/6-4/145493363_fc9ff5164f_o.jpg)

> Um conjunto de bonecas russas (Foto de [Zeta](https://www.flickr.com/photos/beppezizzi/145493363)) é uma analogia das Listas n-dimensionais. Cada camada representa uma lista e cada lista contém itens. No caso do Dynamo, cada contêiner pode ter vários contêineres dentro (representando os itens de cada lista).

As listas n-dimensionais são difíceis de explicar visualmente, mas criamos alguns exercícios neste capítulo, focados no trabalho com listas que vão além de duas dimensões.

## Mapeamento e combinações

O mapeamento é, sem dúvida, a parte mais complexa do gerenciamento de dados no Dynamo e é especialmente relevante ao trabalhar com hierarquias complexas de listas. Com a série de exercícios abaixo, vamos demonstrar quando usar o mapeamento e as combinações, à medida que os dados se tornam multidimensionais.

A introdução inicial ao List.Map e ao List.Combine pode ser encontrada na seção anterior. No último exercício abaixo, vamos usar esses nós em uma estrutura de dados complexa.

### Exercício – Listas 2D – Básico

> Faça o download dos arquivos de exemplo que acompanham este exercício (clique com o botão direito do mouse e selecione “Salvar link como...”). É possível encontrar uma lista completa de arquivos de exemplo no Apêndice. 
1.[n-Dimensional-Lists.dyn](datasets/6-4/n-Dimensional-Lists.dyn) 
2.[n-Dimensional-Lists.sat](datasets/6-4/n-Dimensional-Lists.sat)

Este exercício é o primeiro de uma série de três focado na articulação da geometria importada. Cada parte desta série de exercícios aumenta a complexidade da estrutura de dados.

![Exercício](images/6-4/Exercise/A/04.jpg)

> 1. Vamos começar com o arquivo .sat na pasta de arquivos de exercícios. É possível selecionar este arquivo usando o nó *Caminho do arquivo*.
2. Com *Geometry.ImportFromSAT*, a geometria é importada para nossa visualização do Dynamo como duas superfícies.

![Exercício](images/6-4/Exercise/A/03.jpg)

> Neste exercício, queremos mantê-lo simples e trabalhar com uma das superfícies.

> 1. Vamos selecionar o índice de *1 *para selecionar a superfície superior. Isso é feito com o nó *List.GetItemAtIndex*.

![Exercício](images/6-4/Exercise/A/02.jpg)

> O próximo passo é dividir a superfície em uma grade de pontos.

> 1. Usando o *bloco de código*, insira estas duas linhas de código:
```
0..1..#10;
0..1..#5;
```

2. Com o *Surface.PointAtParameter*, conecte os dois valores de bloco de código a *u *e *v*. Altere a *amarra* desse nó para *“Produto transversal”*.
3. A saída exibe a estrutura de dados, que também está visível na visualização do Dynamo.

![Exercício](images/6-4/Exercise/A/01.jpg)

> 1. Para obter uma visão de como a estrutura de dados está organizada, vamos conectar *NurbsCurve.ByPoints* à saída de *Surface.PointAtParameter*.
2. Observe que temos dez curvas sendo executadas verticalmente ao longo da superfície.

![Exercício](images/6-4/Exercise/A/00.jpg)

> 1. Um *List.Transpose* básico irá inverter as colunas e as linhas de uma lista de listas.
2. Conectando a saída de *List.Transpose* a *NurbsCurve.ByPoints*, agora obtemos cinco curvas sendo executadas horizontalmente na superfície.

### Exercício – Listas 2D – Avançado

Vamos aumentar a complexidade. Suponha que desejamos executar uma operação nas curvas criadas no exercício anterior. Talvez desejemos relacionar essas curvas com outra superfície e fazer a transição entre elas. Isso requer mais atenção à estrutura de dados, mas a lógica é a mesma.

![Exercício](images/6-4/Exercise/B/07.jpg)

> 1. Comece com uma etapa do exercício anterior, isolando a superfície superior da geometria importada com o nó *List.GetItemAtIndex*.

![Exercício](images/6-4/Exercise/B/06.jpg)

> 1. Usando *Surface.Offset*, desloque a superfície por um valor de *10*.

![Exercício](images/6-4/Exercise/B/05.jpg)

> 1. Da mesma forma que no exercício anterior, defina um *bloco de código* com estas duas linhas de código:
```
0..1..#10;
0..1..#5;
```

2. Conecte essas saídas aos dois nós *Surface.PointAtParameter*, cada um com a *amarra* definida como *“Produto transversal”*. Um desses nós está conectado à superfície original, enquanto o outro está conectado à superfície de deslocamento.

![Exercício](images/6-4/Exercise/B/04.jpg)

> 1. Como no exercício anterior, conecte as saídas aos dois nós *NurbsCurve.ByPoints*.
2. Nossa visualização do Dynamo mostra duas curvas, correspondendo a duas superfícies.

![Exercício](images/6-4/Exercise/B/03.jpg)

> 1. Usando *List.Create*, é possível combinar os dois conjuntos de curvas em uma lista de listas.
2. Observe que, na saída, temos duas listas com dez itens cada, representando cada conjunto de conexão de curvas NURBS.
3. Ao executar o nó *Surface.ByLoft*, podemos entender visualmente essa estrutura de dados. O nó efetua a transição de todas as curvas em cada sublista.

![Exercício](images/6-4/Exercise/B/02.jpg)

> 1. Ao usar *List.Transpose*, lembre-se de que estamos invertendo todas as colunas e linhas. Esse nó irá transferir duas listas de dez curvas em dez listas de duas curvas. Agora, temos cada curva NURBS relacionada à curva vizinha na outra superfície.
2. Usando *Surface.ByLoft*, chegamos a uma estrutura nervurada.

![Exercício](images/6-4/Exercise/B/01.jpg)

> 1. Uma alternativa para *List.Transpose* é usar *List.Combine*. Isso irá operar um *“combinador”* em cada sublista.
2. Neste caso, estamos usando *List.Create* como o *“combinador”*, que irá criar uma lista de cada item nas sublistas.
3. Usando o nó *Surface.ByLoft*, obtemos as mesmas superfícies que as da etapa anterior. A transposição é mais fácil de usar neste caso, mas quando a estrutura de dados se torna ainda mais complexa, *List.Combine* é mais confiável.

![Exercício](images/6-4/Exercise/B/00.jpg)

> 1. Retrocedendo algumas etapas, se quisermos alternar a orientação das curvas na estrutura nervurada, devemos usar List.Transpose antes de conectar a *NurbsCurve.ByPoints*. Isso inverterá as colunas e linhas e resultará em cinco nervuras horizontais.

### Exercício – Listas 3D

Agora, vamos um pouco mais longe. Neste exercício, vamos trabalhar com as duas superfícies importadas, criando uma hierarquia de dados complexa. Ainda assim, nosso objetivo é concluir a mesma operação com a mesma lógica subjacente.

![Exercício](images/6-4/Exercise/C/12.jpg)

> 1. Comece com o arquivo importado do exercício anterior.

![Exercício](images/6-4/Exercise/C/11.jpg)

> 1. Como no exercício anterior, use o nó *Surface.Offset* para deslocar por um valor de *10*.
2. Observe, na saída, que criamos duas superfícies com o nó de deslocamento.

![Exercício](images/6-4/Exercise/C/10.jpg)

> 1. Da mesma forma que no exercício anterior, defina um bloco de código com estas duas linhas de código:
```
0..1..#20;
0..1..#10;
```

2. Conecte essas saídas aos dois nós *Surface.PointAtParameter*, cada um com a amarra definida como *“Produto transversal”*. Um desses nós está conectado às superfícies originais, enquanto o outro está conectado às superfícies de deslocamento.

![Exercício](images/6-4/Exercise/C/09.jpg)

> 1. Como no exercício anterior, conecte as saídas aos dois nós *NurbsCurve.ByPoints*.
2. Observando a saída do *NurbsCurve.ByPoints*, é possível ver que esta é uma lista de duas listas, que é mais complexa do que no exercício anterior. Os dados são categorizados pela superfície subjacente, portanto, adicionamos outra camada aos dados estruturados.
3. Observe que as coisas se tornam mais complexas no nó *Surface.PointAtParameter*. Neste caso, temos uma lista de listas de listas.

![Exercício](images/6-4/Exercise/C/08.jpg)

> 1. Usando o nó *List.Create*, mesclamos as curvas NURBS em uma estrutura de dados, criando uma lista de listas de listas.
2. Ao conectar um nó *Surface.ByLoft*, obtemos uma versão das superfícies originais, pois cada uma delas permanece em sua própria lista, conforme criadas com base na estrutura de dados original.

![Exercício](images/6-4/Exercise/C/07.jpg)

> 1. No exercício anterior, usamos um *List.Transpose* para criar uma estrutura nervurada. Isso não vai funcionar aqui. A transposição deve ser usada em uma lista bidimensional e, como nós temos uma lista tridimensional, uma operação de “inverter colunas e linhas” não irá funcionar tão facilmente. Lembre-se de que as listas são objetos, portanto, *List.Transpose* irá inverter nossas listas com as sublistas, mas não inverterá as curvas NURBS uma lista mais abaixo na hierarquia.

![Exercício](images/6-4/Exercise/C/06.jpg)

> 1. *List.Combine* funcionará melhor neste caso. Devemos usar os nós *List.Map* e *List.Combine* quando chegarmos a estruturas de dados mais complexas.
2. Usando *List.Create* como o *“combinador”*, criamos uma estrutura de dados que funcionará melhor.

![Exercício](images/6-4/Exercise/C/05.jpg)

> 1. A estrutura de dados ainda precisa ser transposta uma etapa abaixo na hierarquia. Para fazer isso, vamos usar *List.Map*. Isso funciona como *List.Combine*, mas com uma lista de entrada, em vez de duas ou mais.
2. A função que será aplicada a *List.Map* é *List.Transpose*, que irá inverter as colunas e as linhas das sublistas em nossa lista principal.

![Exercício](images/6-4/Exercise/C/04.jpg)

> 1. Finalmente, podemos elevar as curvas NURBS junto com uma hierarquia de dados adequada, nos dando uma estrutura nervurada.

![Exercício](images/6-4/Exercise/C/03.jpg)

> 1. Vamos adicionar alguma profundidade à geometria com um nó *Surface.Thicken*.

![Exercício](images/6-4/Exercise/C/02.jpg)

> 1. Será bom adicionar uma superfície de apoio a duas estruturas, portanto, vamos usar *List.GetItemAtIndex* para selecionar a superfície posterior das superfícies de elevação das etapas anteriores.

![Exercício](images/6-4/Exercise/C/01.jpg)

> 1. E, ao tornar mais espessas essas superfícies selecionadas, nossa articulação estará completa.

![Exercício](images/6-4/Exercise/C/00.jpg)

> Não é a cadeira de balanço mais confortável de todos os tempos, mas há muitos dados em andamento.

![Exercício](images/6-4/Exercise/C/32.jpg)

> Última etapa, vamos inverter a direção dos membros com listras. Como usamos a função de transposição no exercício anterior, faremos algo semelhante aqui.

> 1. Como temos mais um nível para a hierarquia, vamos precisar usar *List.Map* com uma função *List.Tranpose* para alterar a direção das curvas NURBS.

![Exercício](images/6-4/Exercise/C/31.jpg)

> 1. Podemos querer aumentar o número de ranhuras, para que possamos alterar o bloco de código para
```
0..1..#20;
0..1..#10;
```

![Exercício](images/6-4/Exercise/C/30.jpg)

> Como a primeira versão da cadeira de balanço era elegante, nosso segundo modelo oferece uma versão off-road, de utilidade esportiva, de descanso dorsal.

