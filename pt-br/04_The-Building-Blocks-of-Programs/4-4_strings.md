

## Sequências

Formalmente, uma **String** é uma sequência de caracteres é que representa uma constante literal ou algum tipo de variável. De forma informal, uma sequência de caracteres é jargão de programação para texto. Trabalhamos com números, tanto números inteiros quanto decimais, para controlar os parâmetros e podemos fazer o mesmo com o texto.

### Criar sequências de caracteres

É possível usar as sequências de caracteres para uma ampla gama de aplicativos, incluindo a definição de parâmetros personalizados, a anotação de conjuntos de documentação e a análise através de conjuntos de dados com base em texto. O nó String está localizado em Núcleo>Categoria de entrada.

![Exemplos de sequência de caracteres](images/4-4/4-4-1-005.jpg)

> Os nós de amostra acima são sequências de caracteres. É possível representar um número como uma sequência de caracteres, assim como uma letra ou uma matriz de texto inteira.

### Consultar as sequências de caracteres

> Faça o download do arquivo de exemplo que acompanha este exercício (clique com o botão direito do mouse e selecione “Salvar link como...”): [Building Blocks of Programs - Strings.dyn](datasets/4-4/Building Blocks of Programs - Strings.dyn). É possível encontrar uma lista completa de arquivos de exemplo no Apêndice.

É possível analisar rapidamente grandes quantidades de dados ao consultar sequências de caracteres. Falaremos sobre algumas operações básicas que podem acelerar um fluxo de trabalho e ajudar na interoperabilidade do software.

A imagem abaixo considera uma sequência de caracteres de dados proveniente de uma planilha externa. A sequência de caracteres representa os vértices de um retângulo no plano XY. Vamos analisar algumas operações de divisão de sequências de caracteres no exercício em miniatura:

![StringSplit](images/4-4/4-4-1-001.jpg)

> 1. O separador “;” divide cada vértice do retângulo. Isso cria uma lista com quatro itens para cada vértice.

![StringSplit](images/4-4/4-4-1-003.jpg)

> 1. Ao pressionar “*+*” no meio do nó, criamos um novo separador.
2. Adicione uma sequência de caracteres “*,*” à tela e conecte-se à nova entrada do separador.
3. Nosso resultado é agora uma lista de dez itens. O nó primeiro divide com base em *separator0* e, em seguida, com base em *separator1*.

Embora a lista de itens acima possa ter o mesmo aspecto que os números, eles ainda são considerados sequências de caracteres individuais no Dynamo. Para criar pontos, seu tipo de dados precisa ser convertido de uma sequência de caracteres em um número. Isso é feito com o nó String.ToNumber

![StringSplit](images/4-4/4-4-1-002.jpg)

> 1. Esse nó é simples. Conecte os resultados de String.Split à entrada. A saída não parece diferente, mas o tipo de dados é agora um *número* em vez de uma *sequência de caracteres*.

![StringToNumber](images/4-4/4-4-1-004.jpg)

> 1. Com algumas operações adicionais básicas, agora temos um retângulo desenhado na origem com base na entrada original da sequência de caracteres.

### Manipular sequências de caracteres

Como uma sequência de caracteres é um objeto de texto genérico, ela armazena uma ampla gama de aplicações. Vamos analisar algumas das principais ações em Núcleo>Categoria de sequência de caracteres no Dynamo:

Este é um método que consiste em mesclar duas sequências de caracteres em ordem. Usa cada sequência de caracteres literais de uma lista e cria uma sequência de caracteres mesclada.

![Concatenar](images/4-4/4-4-1-007.jpg)

> A imagem acima representa a concatenação de três sequências de caracteres:

> 1. Adicione ou subtraia sequências de caracteres da concatenação clicando nos botões +/- no centro do nó.
2. A saída fornece uma sequência de caracteres concatenada, com espaços e sinais de pontuação incluídos.

O método de união é muito similar a concatenar, exceto que tem uma camada de pontuação adicionada.

Se você já tiver trabalhado no Excel, poderá já ter visto um arquivo CSV. Isso significa valores separados por vírgulas. É possível usar uma vírgula (ou, neste caso, dois traços) como separador com o nó de união para criar uma estrutura de dados similar: ![Concatenar](images/4-4/4-4-1-006.jpg)

> A imagem acima representa a união de duas sequências de caracteres:

> 1. A entrada do separador permite criar uma sequência de caracteres que divide as sequências de caracteres unidas.

### Trabalhar com sequências de caracteres

Neste exercício, vamos usar métodos de consulta e manipulação de sequências de caracteres para desconstruir a estrofe final de [Parando por Woods em uma noite de neve](http://www.poetryfoundation.org/poem/171621) de Robert Frost. Não é o aplicativo mais prático, mas isso nos ajudará a compreender as ações de sequências de caracteres conceituais conforme as aplicamos às linhas legíveis do ritmo e da rima.

![Dividir sequência de caracteres](images/4-4/4-4-4/00.jpg)

> Vamos começar com uma divisão básica da sequência de caracteres da estrofe. Primeiro, percebemos que a escrita é formatada com base em vírgulas. Usaremos esse formato para separar cada linha em itens individuais.

> 1. A sequência de caracteres base é colada em um nó de sequência de caracteres.
2. Outro nó de sequência de caracteres é usado para indicar o separador. Neste caso, usamos uma vírgula.
3. Um nó String.Split é adicionado à tela e conectado às duas sequências de caracteres.
4. A saída mostra que separamos as linhas em elementos individuais.

![Dividir sequência de caracteres](images/4-4/4-4-4/01.jpg)

> Agora, vamos chegar à parte boa do poema: as duas últimas linhas. A estrofe original era um item de dados. Separamos esses dados em itens individuais na primeira etapa. Agora, precisamos pesquisar o texto que estamos procurando. Embora *possamos* fazer isso selecionando os últimos dois itens da lista, se esse fosse um livro inteiro, não iríamos quer ler tudo e isolar manualmente os elementos.

> 1. Em vez de pesquisar manualmente, usamos o nó String.Contains para executar uma pesquisa de um conjunto de caracteres. Isso é semelhante a usar o comando “Localizar” em um processador de texto. Neste caso, obteremos um retorno de “true” ou “false” se a subsequência de caracteres for encontrada no item.
2. Na entrada “searchFor”, definimos uma subsequência de caracteres que estamos procurando na estrofe. Vamos usar um nó de sequência de caracteres com o texto “E milhas”.
3. A saída nos fornece uma lista de valores false e true. Usaremos essa lógica booleana para filtrar os elementos na próxima etapa.

![Dividir sequência de caracteres](images/4-4/4-4-4/02.jpg)

> 1. List.FilterByBoolMask é o nó que queremos usar para selecionar os valores false e true. A saída “in” retorna as declarações com uma entrada “mask” com valores “true”, enquanto a saída “out” retorna as que têm valores “false”.
2. Nosso resultado de “in” é conforme esperado, e isso nos dá as duas linhas finais da estrofe.

![Dividir sequência de caracteres](images/4-4/4-4-4/03.jpg)

> Agora, queremos enfatizar a repetição da estrofe, mesclando as duas linhas. Ao visualizar a saída da etapa anterior, notamos que há dois itens na lista:

> 1. Usando dois nós List.GetItemAtIndex, podemos isolar os itens usando os valores de 0 e 1 como entrada do índice.
2. A saída de cada nó nos fornece, em ordem, as duas linhas finais.

![Dividir sequência de caracteres](images/4-4/4-4-4/04.jpg)

> Para mesclar esses dois itens em um único, usamos o nó String.Join:

> 1. Após adicionar o nó String.Join, notamos que precisamos de um separador.
2. Para criar o separador, adicionamos um nó de sequência de caracteres à tela e digitamos uma vírgula.
3. O resultado final mesclou os últimos dois itens em um.

Pode parecer muito trabalhoso isolar as duas últimas linhas; e é verdade, as operações de sequência de caracteres geralmente exigem algum trabalho inicial. Mas elas são escalonáveis e podem ser aplicadas a grandes conjuntos de dados com relativa facilidade. Se você estiver trabalhando parametricamente com planilhas e interoperabilidade, lembre-se de considerar as operações de sequência de caracteres.

