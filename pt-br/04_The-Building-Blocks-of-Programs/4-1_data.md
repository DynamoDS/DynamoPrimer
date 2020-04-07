

## Dados

Os dados são a matéria dos nossos programas. Eles percorrem os fios, fornecendo entradas para os nós onde são processados em uma nova forma de dados de saída. Vamos revisar a definição de dados, como eles são estruturados e começar a usá-los no Dynamo.

### O que são os dados?

Os dados são um conjunto de valores de variáveis qualitativas ou quantitativas. A forma mais simples de dados são os números como ```0```, ```3,14``` ou ```17```. Mas os dados também podem ser de diferentes tipos: uma variável que representa a alteração de números (```altura```); caracteres (```myName```); geometria (```Circle```); ou uma lista de itens de dados (```1,2,3,5,8,13,...```). Precisamos de dados para adicionar às portas de entrada dos nós do Dynamo – podemos ter dados sem ações, mas precisamos de dados para processar as ações que nossos nós representam. Quando adicionamos um nó ao espaço de trabalho, se ele não tiver nenhuma entrada fornecida, o resultado será uma função, não o resultado da própria ação.

![Dados e ações](images/4-1/00-DataAndActions.png)

> 1. Dados simples
2. Dados e ações (nó A) executados com êxito
3. A ação (nó A) sem entradas de dados retorna uma função genérica

### Cuidado com os nulos

O tipo ```“null”``` representa a ausência de dados. Embora seja um conceito abstrato, provavelmente ele aparecerá ao trabalhar com a programação visual. Se uma ação não criar um resultado válido, o nó retornará nulo. Testar para verificar se existem nulos e a sua remoção da estrutura de dados é uma parte crucial para criar programas robustos.

|Ícone|Nome/sintaxe|Entradas|Saídas|
| -- | -- | -- | -- |
|![](../images/icons/DSCore-Object-IsNull-Large.jpg)|Object.IsNull|obj|bool|

### Estruturas de dados

Quando estamos fazendo a programação visual, podemos gerar muitos dados muito rapidamente e necessitar de um meio para gerenciar sua hierarquia. Essa é a função das estruturas de dados, os esquemas organizacionais nos quais armazenamos dados. As especificidades das estruturas de dados e de como usá-las variam conforme a linguagem de programação usada. No Dynamo, adicionamos hierarquia aos nossos dados através das listas. Vamos explorar isso em profundidade em capítulos posteriores. Para já, vamos começar de forma simples:

Uma lista representa uma coleção de itens colocados em uma estrutura de dados:

* Tenho cinco dedos (*itens*) na minha mão (*lista*).
* Há dez casas (*itens*) na minha rua (*lista*).

![Discriminação da lista](images/4-1/01-ListBreakdown.png)

> 1. Um nó **Number Sequence** (Sequência de número) define uma lista de números usando uma entrada *start*, *amount* e *step*. Com esses nós, criamos duas listas separadas de dez números, uma que vai de *100 a 109* e outra que vai de *0 a 9*.
2. O nó **List.GetItemAtIndex** seleciona um item em uma lista em um índice específico. Ao escolher *0*, obtemos o primeiro item da lista (*100* neste caso).
3. Aplicando o mesmo processo à segunda lista, obtemos um valor de *0*, o primeiro item na lista.
4. Agora, mesclamos as duas listas em uma usando o nó **List.Create**. Observe que o nó cria uma *lista de listas.* Isso altera a estrutura dos dados.
5. Ao usar **List.GetItemAtIndex** novamente, com o índice definido como *0*, obtemos a primeira lista na lista de listas. Isso é o que significa tratar uma lista como um item, que é um pouco diferente de outras linguagens de script. Nos capítulos posteriores, aprofundaremos mais a manipulação das listas e a estrutura de dados.

O conceito-chave para entender a hierarquia dos dados no Dynamo: **em relação à estrutura de dados, as listas são consideradas itens.** Em outras palavras, o Dynamo funciona com um processo descendente para compreender as estruturas dos dados. O que isso significa? Vamos analisar isso com um exemplo.

### Usar dados para criar uma cadeia de cilindros

> Faça o download do arquivo de exemplo que acompanha este exercício (clique com o botão direito do mouse e selecione “Salvar link como...”): [Building Blocks of Programs - Data.dyn](datasets/4-1/Building Blocks of Programs - Data.dyn). É possível encontrar uma lista completa de arquivos de exemplo no Apêndice.

Neste primeiro exemplo, montamos um cilindro com camadas que percorre a hierarquia da geometria discutida nesta seção. ![](images/4-1/1.png)

> 1. **Point.ByCoordinates** – Após adicionar o nó à tela, vemos um ponto na origem da grade de visualização do Dynamo. Os valores padrão das entradas *x,y* e *z* são *0,0*, especificando um ponto nesse local.

![](images/4-1/2.png)

> 1. **Plane.ByOriginNormal** – A próxima etapa na hierarquia da geometria é o plano. Existem diversas maneiras de construir um plano, e estamos usando uma origem e um normal para a entrada. A origem é o nó de ponto criado na etapa anterior.
2. **Vector.ZAxis** – Esse é um vetor não convertido em unidade na direção z. Observe que não há entradas, somente um vetor de valor [0,0,1]. Usamos isso como a entrada *normal* para o nó *Plane.ByOriginNormal*. Isso nos oferecerá um plano retangular na visualização do Dynamo.

![](images/4-1/3.png)

> 1. **Circle.ByPlaneRadius** – Subindo na hierarquia, agora criamos uma curva com base no plano de nossa etapa anterior. Após se conectar ao nó, obtemos um círculo na origem. O raio padrão no nó é o valor de *1*.

![](images/4-1/4.png)

> 1. **Curve.Extrude** – Agora, vamos fazer essa coisa surgir fornecendo alguma profundidade e entrando na terceira dimensão. Esse nó cria uma superfície com base na curva por meio de extrusão. A distância padrão no nó é *1* e devemos ver um cilindro na viewport.

![](images/4-1/5.png)

> 1. **Surface.Thicken** – Esse nó nos fornece um sólido fechado deslocando a superfície por uma determinada distância e fechando a forma. O valor padrão da espessura é *1* e vemos um cilindro com camadas na viewport em linha com esses valores.

![](images/4-1/6.png)

> 1. **Number Slider** (Controle deslizante de número) – Em vez de usar os valores padrão para todas essas entradas, vamos adicionar um controle paramétrico ao modelo.
2. **Domain Edit** (Edição de domínio) – Após adicionar o controle deslizante de número à tela, clique no acento circunflexo no canto superior esquerdo para exibir as opções de domínio.
3. **Min/Max/Step** (Mín./Máx./Etapa) – Altere os valores *min*, *max* e *step* para *0*,*2* e *0,01* respectivamente. Estamos fazendo isso para controlar o tamanho da geometria geral.

![](images/4-1/7.png)

> 1. **Number Sliders** (Controles deslizantes de número) – Em todas as entradas padrão, vamos copiar e colar esse controle deslizante de número (selecione o controle deslizante, pressione Ctrl+C e, em seguida, Ctrl+V) diversas vezes, até que todas as entradas com padrões tenham um controle deslizante. Alguns dos valores do controle deslizante terão que ser maiores que zero para que a definição funcione (isto é, você precisa de uma profundidade de extrusão para que uma superfície se torne mais espessa).

Agora, criamos um cilindro paramétrico com camadas com esses controles deslizantes. Tente flexibilizar alguns desses parâmetros e veja a atualização da geometria dinamicamente na viewport do Dynamo.

![](images/4-1/8.png)

> 1. **Number Sliders** (Controles deslizantes de número) – Aprofundando isso um pouco mais, adicionamos muitos controles deslizantes à tela e precisamos limpar a interface da ferramenta que acabamos de criar. Clique com o botão direito do mouse em um controle deslizante, selecione “Renomear...” e altere cada controle deslizante para o nome apropriado para seu parâmetro. É possível fazer referência à imagem acima para ver os nomes.

Nesse ponto, criamos um item incrível de cilindro que aumenta de espessura. Esse é um objeto atualmente, vamos analisar como criar uma matriz de cilindros que permanece vinculada de forma dinâmica. Para fazer isso, criaremos uma lista de cilindros, em vez de trabalhar com um único item.

![](images/4-1/9.png)

> 1. **Adição (+) –** Nosso objetivo é adicionar uma linha de cilindros ao lado do cilindro que criamos. Se desejarmos adicionar um cilindro adjacente ao atual, precisamos considerar o raio do cilindro e a espessura de sua camada. Obtemos esse número adicionando os dois valores dos controles deslizantes.

![](images/4-1/10.png)

> Essa etapa é mais complicada, portanto, vamos explicá-la devagar: o objetivo final é criar uma lista de números que definem as localizações de cada cilindro em uma linha.

> 1. **Multiplication** (Multiplicação) – Primeiro, desejamos multiplicar o valor da etapa anterior por 2. O valor da etapa anterior representa um raio e desejamos mover o cilindro ao longo de todo o diâmetro.
2. **Number Sequence** (Sequência de números) – Criamos uma matriz de números com esse nó. A primeira entrada é o nó *multiplication* da etapa anterior para o valor *step*. É possível definir o valor *inicial* como *0,0* usando um nó *number*.
3. **Integer Slider** (Controle deslizante de número inteiro) – Para o valor *amount*, conectamos um controle deslizante de número inteiro. Isso definirá quantos cilindros são criados.
4. **Output** (Saída) – Essa lista mostra a distância de movimentação de cada cilindro na matriz, e é orientada parametricamente pelos controles deslizantes originais.

![](images/4-1/11.png)

> 1. Esta etapa é simples o suficiente – Conecta a sequência definida na etapa anterior à entrada *x* do *Point.ByCoordinates* original. Isso substituirá o controle deslizante *pointX*, que pode ser excluído. Agora, vemos uma matriz de cilindros na viewport (certifique-se de que o controle deslizante do número inteiro seja maior que 0).

![](images/4-1/12.png)

> A cadeia de cilindros ainda está dinamicamente vinculada a todos os controles deslizantes. Flexibilize cada controle deslizante para assistir à atualização da definição.

