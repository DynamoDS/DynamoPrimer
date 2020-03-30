

## Matemática

Se a forma mais simples de dados forem os números, a forma mais fácil de relacionar esses números será através da matemática. De operadores simples, como dividir até funções trigonométricas, ou fórmulas mais complexas, a matemática é uma ótima forma de começar a explorar as relações e os padrões numéricos.

### Operadores aritméticos

Os operadores são um conjunto de componentes que usam funções algébricas com dois valores de entrada numéricos, o que resulta em um valor de saída (adição, subtração, multiplicação, divisão etc.). Eles podem ser encontrados em Operadores>Ações.

|Ícone|Nome|Sintaxe|Entradas|Saídas|
| -- | -- | -- | -- | -- |
|![](../images/icons/add-Large.jpg)|Adicionar|+|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/sub-Large.jpg)|Subtrair|-|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/mul-Large.jpg)|Multiplicar|*|var[]...[], var[]...[]|var[]...[]|
|![](../images/icons/div-Large.jpg)|Dividir|/|var[]...[], var[]...[]|var[]...[]|

### Fórmula paramétrica

> Faça o download do arquivo de exemplo que acompanha este exercício (clique com o botão direito do mouse e selecione “Salvar link como...”): [Building Blocks of Programs - Math.dyn](datasets/4-2/Building Blocks of Programs - Math.dyn). É possível encontrar uma lista completa de arquivos de exemplo no Apêndice.

Partindo dos operadores, a próxima etapa lógica é combinar operadores e variáveis para formar uma relação mais complexa através de **Fórmulas**. Vamos criar uma fórmula que pode ser controlada pelos parâmetros de entrada, como os controles deslizantes.

![](images/4-2/4-2-5/01.png)

> 1. **Number Sequence** (Sequência de números): defina uma sequência de números com base em três entradas: *start, amount* e *step*. Essa sequência representa o “t” na equação paramétrica, portanto, desejamos usar uma lista suficientemente grande para definir uma espiral.

A etapa acima criou uma lista de números para definir o domínio paramétrico. A espiral dourada é definida como a equação: ![](images/4-2/4-2-5/x.gif)=![](images/4-2/4-2-5/goldenSpiral.gif) e ![](images/4-2/4-2-5/y.gif)=![](images/4-2/4-2-5/goldenSpiral2.gif). O grupo de nós abaixo representa essa equação na forma de programação visual.

![](images/4-2/4-2-5/02.png)

> Ao percorrer o grupo de nós, tente prestar atenção ao paralelo entre o programa visual e a equação escrita.

> 1. **Number Slider** (Controle deslizante de número): adicione dois controles deslizantes de número à tela. Esses controles deslizantes representarão as variáveis *a* e *b* da equação paramétrica. Eles representam uma constante que é flexível ou parâmetros que podem ser ajustados para um resultado desejado.
2. ** * :** o nó de multiplicação é representado por um asterisco. Usaremos isso repetidamente para conectar variáveis de multiplicação
3. **Math.RadiansToDegrees:** os valores “*t*” precisam ser convertidos em graus para sua avaliação nas funções trigonométricas. Lembre-se de que o Dynamo tem como padrão graus para avaliar essas funções.
4. **Math.Pow:** como uma função de “*t*” e o número “*e*” que cria a sequência de Fibonacci.
5. **Math.Cos e Math.Sin:** essas duas funções trigonométricas diferenciarão a coordenada x e a coordenada y, respectivamente, de cada ponto paramétrico.
6. **Watch: **agora vemos que nossa saída é formada por duas listas, essas serão as coordenadas *x* e *y* dos pontos usados para gerar a espiral.

### Da fórmula à geometria

Agora, a maioria dos nós da etapa anterior funcionará bem, mas é muito trabalho. Para criar um fluxo de trabalho mais eficiente, observe os **Blocos de código** (seção 3.3.2.3) para definir uma sequência de caracteres de expressões do Dynamo em um nó. Nesta próxima série de etapas, vamos analisar o uso da equação paramétrica para desenhar a espiral de Fibonacci. ![](images/4-2/4-2-5/03.png)

> 1. **Point.ByCoordinates:** conecte o nó de multiplicação superior à entrada “*x*” e a parte inferior à entrada “*y*”. Agora, vemos uma espiral paramétrica de pontos na tela.

![](images/4-2/4-2-5/03aaa.png)

> 1. **Polycurve.ByPoints:** conecte Point.ByCoordinates da etapa anterior a *points*. Podemos deixar *connectLastToFirst* sem entrada porque não estamos criando uma curva fechada. Isso cria uma espiral que passa por cada ponto definido na etapa anterior.

Agora concluímos a espiral de Fibonacci. A partir daqui, vamos aprofundar isso em dois exercícios separados, que chamaremos de nautiloide e girassol. Esses são abstrações de sistemas naturais, mas os dois aplicativos diferentes da espiral de Fibonacci serão bem representados.

### De espiral a nautiloide

![](images/4-2/4-2-5/03.png)

> 1. Como ponto de partida, vamos começar com a mesma etapa do exercício anterior: criar uma matriz de espiral de pontos com o nó **Point.ByCoordinates**.

![](images/4-2/4-2-5/03aa.png)

> 1. **Polycurve.ByPoints:** mais uma vez, esse é o no do exercício anterior, que usaremos como referência.
2. **Circle.ByCenterPointRadius:** vamos usar um nó de círculo aqui com as mesmas entradas da etapa anterior. O valor do raio tem como padrão *1,0*, de modo que vemos uma saída imediata de círculos. Torna-se imediatamente legível como os pontos se afastam da origem.

![](images/4-2/4-2-5/03a.png)

> 1. **Circle.ByCenterPointRadius:** para criar uma matriz mais dinâmica de círculos, nós conectamos a sequência de número original (a sequência “*t*”) ao valor do raio.
2. **Number Sequence** (Sequência de números): essa é a matriz original de “*t*”. Ao conectar isso ao valor do raio, os centros do círculo ainda divergem bastante da origem, mas o raio dos círculos está aumentando, criando um gráfico de círculo Fibonacci moderno. Você ganhará pontos bônus se fizer em 3D.

### De padrão nautiloide a filotaxia

Agora que fizemos uma camada circular nautiloide, vamos passar para as grades paramétricas. Vamos usar uma rotação básica na espiral de Fibonacci para criar uma grade de Fibonacci, e o resultado é modelado de acordo com o [crescimento de sementes de girassol](http://ms.unimelb.edu.au/~segerman/papers/sunflower_spiral_fibonacci_metric.pdf).

![](images/4-2/4-2-5/03.png)

> 1. Novamente, como ponto de partida, vamos começar com a mesma etapa do exercício anterior: criar uma matriz de espiral de pontos com o nó **Point.ByCoordinates**.

![](images/4-2/4-2-5/04.png)

> 1. **Geometry.Rotate:** há diversas opções de Geometry.Rotate; assegure-se de que você selecionou o nó com *geometry*,*basePlane* e *degrees* como entradas. Conecte **Point.ByCoordinates** à entrada da geometria.
2. **Plane.XY:** conecte à entrada *basePlane*. Vamos rotacionar em torno da origem, que é a mesma localização da base da espiral.
3. **Number Range** (Faixa de números): para nossa entrada de graus, desejamos criar várias rotações. Podemos fazer isso rapidamente com um componente Number Range. Conecte isso à entrada *degrees*.
4. **Number** (Número): para definir o intervalo de números, adicione três nós number à tela na ordem vertical. De cima para baixo, atribua valores de *0,0;360,0* e *120,0*, respectivamente. Esses valores estão controlando a rotação da espiral. Observe os resultados de saída no nó **Number Range** após conectar os três nós number ao nó.

Nossa saída está começando a se parecer com um redemoinho. Vamos ajustar alguns dos parâmetros de **Number Range** e ver como os resultados mudam: ![](images/4-2/4-2-5/05.png)

> 1. Altere o tamanho da etapa do nó **Number Range** de *120,0* para *36,0*. Observe que isso está criando mais rotações e, portanto, nos oferece uma grade mais densa.

![](images/4-2/4-2-5/06.png)

> 1. Altere o tamanho da etapa do nó **Number Range** de *36,0* para *3,6*. Isso nos oferece agora uma grade muito mais densa, e a direcionalidade da espiral é pouca clara. Senhoras e senhores, criamos um girassol.

