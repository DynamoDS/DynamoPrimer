

## Fios

Os fios se conectam entre os nós para criar relações e estabelecer o fluxo do nosso programa visual. Podemos pensar neles literalmente como fios elétricos que carregam impulsos de dados de um objeto para o seguinte.

### Fluxo do programa

Os fios conectam a porta de saída de um nó à porta de entrada de outro nó. Essa direcionalidade estabelece o **Fluxo de dados** no programa visual. Embora possamos organizar nossos nós da maneira que desejarmos na área de trabalho, uma vez que as portas de saída estão localizadas no lado direito dos nós e as portas de entrada estão no lado esquerdo, geralmente podemos dizer que o fluxo do programa se move da esquerda para a direita.

![Fluxo do programa](images/3-2/00-ProgramFlow.png)

### Criar fios

Criamos um fio clicando com o botão esquerdo do mouse em uma porta e, em seguida, clicando com o botão esquerdo do mouse na porta de outro nó para criar uma conexão. Enquanto estamos no processo de criar uma conexão, o fio aparecerá a tracejado e se tornará numa linha contínua quando for conectado com êxito. Os dados sempre fluirão por este fio da saída para a entrada; no entanto, podemos criar o fio em qualquer direção em termos da sequência de clicar nas portas conectadas.

> Dica: Antes de concluir a conexão com seu segundo clique, permita que o fio se conecte a uma porta e passe o mouse sobre ela para ver a dica de ferramenta da porta.

![Criar fios](images/3-2/01-CreatingWires.png)

> 1. Clique na porta de saída ```seq``` do nó Number Sequence
2. Conforme você move o mouse na direção de outra porta, o fio é exibido tracejado
3. Clique na porta de entrada ```y``` do Point.ByCoordinates para concluir a conexão

### Editar fios

Frequentemente, queremos ajustar o fluxo do programa em nosso programa visual editando as conexões representadas pelos fios. Para editar um fio, clique com o botão esquerdo do mouse na porta de entrada do nó que já está conectado. Você agora tem duas opções:

![Editar fios](images/3-2/02-EditingWires.png)

> 1. Fio existente
2. Para alterar a conexão para uma porta de entrada, clique com o botão esquerdo do mouse em outra porta de entrada
3. Para remover o fio, afaste o fio e clique com o botão esquerdo do mouse no espaço de trabalho

*Observação: Há funcionalidades adicionais para mover vários fios de uma só vez. Isso é abordado aqui [http://dynamobim.org/dynamo-1-3-release/](http://dynamobim.org/dynamo-1-3-release/)

### Visualizações de fios

Por padrão, nossos fios serão visualizados com um traço cinza. Quando um nó é selecionado, ele renderizará qualquer fio de conexão com o mesmo realce azul-claro do nó.

![Visualização de fios](images/3-2/03-WirePreview.png)

> 1. Fio padrão
2. Fio realçado

O Dynamo também nos permite personalizar a aparência dos nossos fios no espaço de trabalho por meio do menu Vista > Conectores. Aqui, podemos alternar entre fios de curva ou polilinha ou desativá-los todos juntos.

![Conectores de fio](images/3-2/04-WireConnectors.png)

> 1. Tipo de conector: curvas
2. Tipo de conector: polilinhas

