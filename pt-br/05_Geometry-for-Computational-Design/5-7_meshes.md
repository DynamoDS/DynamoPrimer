

## Malhas

No campo de modelagem de cálculo, as malhas são uma das formas mais difundidas que representam a geometria 3D. A geometria de malha pode ser uma alternativa leve e flexível para trabalhar com NURBS, e as malhas são usadas em tudo, desde renderização e visualizações até fabricação digital e impressão 3D.

### O que é uma malha?

Uma Malha é uma coleção de quadriláteros e triângulos que representam uma geometria de superfície ou sólido. Como os sólidos, a estrutura de um objeto de malha inclui vértices, arestas e faces. Há propriedades adicionais que tornam as Malhas também exclusivas, como normais.

![Elementos de malha](images/5-7/MeshElements2.jpg)

> 1. Vértices de malha
2. Arestas de malha *Arestas com apenas uma face adjacente são chamadas "Naked". Todas as outras arestas são "Clothed"
3. Faces de malha

### Elementos de malha

O Dynamo define malhas usando uma estrutura de dados Face-Vértice. Em seu nível mais básico, esta estrutura é simplesmente uma coleção de pontos que são agrupados em polígonos. Os pontos de uma malha são chamados de vértices, enquanto os polígonos como a superfície são chamados de faces. Para criar uma malha, precisamos de uma lista de vértices e um sistema de agrupamento desses vértices em faces denominadas de grupo de índice.

![](images/5-7/meshFacesVertices.jpg)

> 1. Lista de vértices
2. Lista de grupos de índice para definir faces

#### Vértices + normais de vértice

Os vértices de uma malha são simplesmente uma lista de pontos. O índice dos vértices é muito importante ao construir uma malha ou obter informações sobre a estrutura de uma malha. Para cada vértice, há também um normal de vértice correspondente (vetor) que descreve a direção média das faces anexadas e nos ajuda a compreender a orientação "dentro" e "fora" da malha.

![Vértices + Normais](images/5-7/vertexNormals.jpg)

> 1. Vértices
2. Normais de vértice

#### Faces

Uma face é uma lista ordenada de três ou quatro vértices. A representação "superfície" de uma face de malha, portanto, é implícita de acordo com a posição dos vértices que estão sendo indexados. Já temos a lista de vértices que compõem a malha, por isso, em vez de fornecer pontos individuais para definir uma face, basta usar o índice dos vértices. Isso também nos permite usar o mesmo vértice em mais de uma face.

![](images/5-7/meshFaces.jpg)

> 1. Uma face de quadrados feita com índices 0, 1, 2 e 3
2. Uma face de triângulo feita com índices 1, 4 e 2. Observe que os grupos de índice podem ser deslocados em sua ordem, desde que a sequência seja ordenada de forma anti-horária, a face será definida corretamente

### Malhas versus superfícies NURBS

Como a geometria de malha é diferente da geometria NURBS? Em que casos é recomendado utilizar um e não o outro?

#### Parametrização

Em um capítulo anterior, vimos que as superfícies NURBS são definidas por uma série de curvas NURBS seguindo em duas direções. Estas direções são legendadas como ```U``` e ```V```, e permitem que uma superfície NURBs seja parametrizada de acordo com um domínio de superfície bidimensional. As curvas em si são armazenadas como equações no computador, permitindo que as superfícies resultantes sejam calculadas para um grau arbitrariamente pequeno de precisão. No entanto, pode ser difícil combinar várias superfícies NURBS juntas. A união de duas superfícies NURBS irá resultar em uma polysurface, onde diferentes seções da geometria terão diferentes parâmetros UV e definições de curva.

![Pontos de controle](images/5-7/NURBSvsMESH-01.jpg)

> 1. Superfície
2. Curva isoparamétrica (Isoparm)
3. Ponto de controle de superfície
4. Polígono de controle de superfície
5. Ponto isoparamétrico
6. Estrutura da superfície
7. Malha
8. Aresta consolidada
9. Rede de malha
10. Arestas de malha
11. Normal de vértice
12. Face de malha/normal de face de malha

As malhas, por outro lado, são compostas de um número discreto de vértices e faces exatamente definidos. A rede de vértices geralmente não pode ser definida por coordenadas simples ```UV``` e, como as faces são discretas, a quantidade de precisão é incorporada à malha e só pode ser alterada ao refinar a malha e adicionar mais faces. A falta de descrições matemáticas permite que as malhas manipulem com mais flexibilidade a geometria complexa em uma única malha.

### Influência local versus global

Outra diferença importante é a extensão para a qual uma alteração local na geometria de Malha ou NURBS afeta toda a forma. Mover um vértice de uma malha somente afeta as faces que são adjacentes a esse vértice. Em superfícies NURBS, a extensão da influência é mais complicada e depende do grau da superfície, bem como dos pesos e nós dos pontos de controle. Em geral, no entanto, mover um único ponto de controle em uma superfície NURBS cria uma alteração mais suave e mais extensa na geometria.

![Editando](images/5-7/NURBSvsMESH-02.jpg)

> 1. Superfície NURBS: mover um ponto de controle tem influência que se estende através da forma
2. Geometria de malha: mover um vértice tem influência somente em elementos adjacentes

Uma analogia que pode ser útil é para comparar uma imagem vetorial (composta de linhas e curvas) com uma imagem raster (composta de pixels individuais). Se você aproximar o zoom em uma imagem de vetor, as curvas permanecem definidas e claras, ao efetuar o zoom em uma imagem raster resulta em uma vista em que os pixels individuais se tornam maiores. Nesta analogia, as superfícies NURBS podem ser comparadas a uma imagem vetorial porque há uma relação matemática suave, enquanto uma malha se comporta de forma similar a uma imagem raster com uma resolução definida.

### Kit de ferramentas de malha

Os recursos de malha do Dynamo podem ser estendidos instalando o pacote de [Kit de ferramentas de malha](https://github.com/DynamoDS/Dynamo/wiki/Dynamo-Mesh-Toolkit). O Kit de ferramentas de malha do Dynamo fornece ferramentas para importar malhas de formatos de arquivo externo, criar uma malha de objetos de geometria do Dynamo e criar manualmente malhas de acordo com seus vértices e índices. A biblioteca também fornece ferramentas para modificar malhas, reparar malhas ou extrair fatias horizontais para uso na fabricação.

Consulte o capítulo 10.2 para obter um exemplo sobre como utilizar o Kit de ferramentas de malha.

![Kit de ferramentas de malha](images/5-7/MeshToolKit.jpg)

