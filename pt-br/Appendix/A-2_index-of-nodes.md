<style>
td {background-color:#F9F9F9; vertical-align:top}
td img{width:100%}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(1){width:50px;padding-right:2px;padding-left: 2px;vertical-align: top}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(2){width:575px;}
.book .book-body .page-wrapper .page-inner section.normal table td:nth-child(3){width:175px;padding:5px;vertical-align: middle}
.book .book-body .page-wrapper .page-inner section.normal table{box-shadow: 2px 2px 2px #BBBBBB}
/*td:nth-child(3) img{box-shadow: 2px 2px 5px #BBBBBB}*/
thead {display: none}
</style>

# ÍNDICE DOS NÓS

##### Este índice fornece informações adicionais sobre todos os nós usados neste manual de introdução, bem como outros componentes que você pode considerar úteis. Esta é apenas uma introdução a alguns dos 500 nós disponíveis no Dynamo.

## Funções internas

||||
| -- | -- | -- |
|![IMAGEM](images/A-2/Count.Large.png)|**Contagem**<br>Retorna o número de itens na lista especificada.|![IMAGEM](images/nodes/Count.png)|
|![IMAGEM](images/A-2/Flatten.Large.png)|**Aplainar**<br>Retorna a lista 1D mesclada da lista de entradas multidimensionais.|![IMAGEM](images/nodes/Flatten.png)|
|![IMAGEM](images/A-2/Map.Large.png)|**Map**<br>Mapeia um valor para um intervalo de entrada|![IMAGEM](images/nodes/Map.png)|

## Núcleo

#### Core.Color

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Crie uma cor usando os componentes alfa, vermelho, verde e azul.|![IMAGEM](images/nodes/Color.ByARGB.png)|
|![IMAGEM](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Faixa de cores**<br>Retorne uma cor de um gradiente de cores entre uma cor inicial e uma cor final.|![IMAGEM](images/nodes/ColorRange.png)|
||AÇÕES||
|![IMAGEM](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Retorna o valor de brilho desta cor.|![IMAGEM](images/nodes/Color.Brightness.png)|
|![IMAGEM](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Lista os componentes para a cor na ordem: alfa, vermelho, verde, azul.|![IMAGEM](images/nodes/Color.Components.png)|
|![IMAGEM](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Retorna o valor de saturação desta cor.|![IMAGEM](images/nodes/Color.Saturation.png)|
|![IMAGEM](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>Retorna o valor de matiz desta cor.|![IMAGEM](images/nodes/Color.Hue.png)|
||CONSULTA||
|![IMAGEM](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Localize o componente alfa de uma cor, 0 a 255.|![IMAGEM](images/nodes/Color.Alpha.png)|
|![IMAGEM](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Localize o componente azul de uma cor, 0 a 255.|![IMAGEM](images/nodes/Color.Blue.png)|
|![IMAGEM](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Localize o componente verde de uma cor, 0 a 255.|![IMAGEM](images/nodes/Color.Green.png)|
|![IMAGEM](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Localize o componente vermelho de uma cor, 0 a 255.|![IMAGEM](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Exibe a geometria usando uma cor.|![IMAGEM](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Booleano**<br>Seleção entre verdadeiro e falso.|![IMAGEM](images/nodes/Boolean.png)|
|![IMAGEM](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Bloco de código**<br>Permite que o código DesignScript seja criado diretamente.|![IMAGEM](images/nodes/CodeBlock.png)|
|![IMAGEM](images/A-2/DSCore.File.Directory.Large.png)|**Caminho do diretório**<br>Permite selecionar um diretório no sistema para obter o caminho|![IMAGEM](images/nodes/DirectoryPath.png)|
|![IMAGEM](images/A-2/DSCore.File.Filename.Large.png)|**Caminho do arquivo**<br>Permite selecionar um arquivo no sistema para obter o nome de arquivo.|![IMAGEM](images/nodes/FilePath.png)|
|![IMAGEM](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Controle deslizante de números inteiros**<br>Um controle deslizante que produz valores inteiros.|![IMAGEM](images/nodes/IntegerSlider.png)|
|![IMAGEM](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Número** <br>Cria um número.|![IMAGEM](images/nodes/Number.png)|
|![IMAGEM](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Número do controle deslizante**<br>Um controle deslizante que produz valores numéricos.|![IMAGEM](images/nodes/NumberSlider.png)|
|![IMAGEM](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**Cadeia de caracteres**<br>Cria uma cadeia de caracteres.|![IMAGEM](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Cria uma nova lista com base nas entradas fornecidas.|![IMAGEM](images/nodes/List.Create.png)|
|![IMAGEM](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Aplica um combinador a cada elemento em duas sequências|![IMAGEM](images/nodes/List.Combine.png)|
|![IMAGEM](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Intervalo de números**<br>Cria uma sequência de números no intervalo especificado.|![IMAGEM](images/nodes/NumberRange.png)|
|![IMAGEM](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Sequência de números**<br>Cria uma sequência de números.|![IMAGEM](images/nodes/NumberSequence.png)|
||AÇÕES||
|![IMAGEM](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Divida uma lista em um conjunto de listas que contêm a quantidade determinada de itens.|![IMAGEM](images/nodes/List.Chop.png)|
|![IMAGEM](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Retorna o número de itens armazenados na lista determinada.|![IMAGEM](images/nodes/List.Count.png)|
|![IMAGEM](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Mescla uma lista aninhada de listas por um determinado valor.|![IMAGEM](images/nodes/List.Flatten.png)|
|![IMAGEM](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Filtra uma sequência examinando os índices correspondentes em uma lista separada de booleanos.|![IMAGEM](images/nodes/List.FilterByBoolMask.png)|
|![IMAGEM](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Retorna um item da lista fornecida que está localizado no índice especificado.|![IMAGEM](images/nodes/List.GetItemAtIndex.png)|
|![IMAGEM](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Aplica uma função a todos os elementos de uma lista, gerando uma nova lista com base nos resultados|![IMAGEM](images/nodes/List.Map.png)|
|![IMAGEM](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Cria uma nova lista que contém os itens da lista determinada, mas na ordem inversa|![IMAGEM](images/nodes/List.Reverse.png)|
|![IMAGEM](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Substitua um item da lista determinada que está localizado no índice especificado|![IMAGEM](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGEM](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Troca os índices da lista à direita pelo valor fornecido|![IMAGEM](images/nodes/List.ShiftIndices.png)|
|![IMAGEM](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Obtém os itens da lista fornecida em índices que são múltiplos do valor fornecido, após o deslocamento fornecido.|![IMAGEM](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGEM](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Troca as linhas e as colunas de uma lista de listas. Se houver algumas linhas mais curtas que outras, os valores nulos serão inseridos como espaços reservados na matriz resultante de forma que ela seja sempre retangular|![IMAGEM](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>Declaração condicional. Verifica o valor booleano da entrada de teste. Se a entrada de teste for verdadeira, o resultado retornará a entrada verdadeira; caso contrário, o resultado retornará a entrada falsa.|![IMAGEM](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Retorna o cosseno de um ângulo.|![IMAGEM](images/nodes/Math.Cos.png)|
|![IMAGEM](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Converte um ângulo em graus em um ângulo em radianos.|![IMAGEM](images/nodes/Math.DegreesToRadians.png)|
|![IMAGEM](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Eleva um número à potência especificada.|![IMAGEM](images/nodes/Math.Pow.png)|
|![IMAGEM](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Converte um ângulo em radianos em um ângulo em graus.|![IMAGEM](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGEM](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Ajusta o intervalo de uma lista de números, preservando o coeficiente de distribuição.|![IMAGEM](images/nodes/Math.RemapRange.png)|
|![IMAGEM](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Localiza o seno de um ângulo.|![IMAGEM](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Determina se o objeto determinado é nulo.|![IMAGEM](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/DSCore.Scripting.Formula.Large.png)|**Fórmula**<br>Avalia fórmulas matemáticas. Usa NCalc para a avaliação. Consulte [http://ncalc.codeplex.com](http://ncalc.codeplex.com)|![IMAGEM](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Concatena várias cadeias de caracteres em uma única cadeia de caracteres.|![IMAGEM](images/nodes/String.Concat.png)|
|![IMAGEM](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Determina se a cadeia de caracteres fornecida contém a subcadeia de caracteres determinada.|![IMAGEM](images/nodes/String.Contains.png)|
|![IMAGEM](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Concatena várias cadeias de caracteres em uma única cadeia de caracteres, inserindo o separador fornecido entre cada cadeia de caracteres unida.|![IMAGEM](images/nodes/String.Join.png)|
|![IMAGEM](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Divide uma única cadeia de caracteres em uma lista de cadeias de caracteres, com as divisões determinadas pelas cadeias de caracteres do separador fornecidas.|![IMAGEM](images/nodes/String.Split.png)|
|![IMAGEM](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Converte uma cadeia de caracteres em um inteiro ou um duplo.|![IMAGEM](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Visualize a saída do nó.|![IMAGEM](images/nodes/Watch.png)|
|![IMAGEM](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Mostra uma visualização dinâmica da geometria.|![IMAGEM](images/nodes/Watch3D.png)|

## Geometria

#### Geometry.Circle

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Cria um círculo com o ponto central de entrada e o raio no plano XY universal, com o Z universal como normal.|![IMAGEM](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>Crie um círculo centralizado na origem do plano de entrada (raiz), que reside no plano de entrada, com o raio especificado.|![IMAGEM](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Crie um CoordinateSystem com origem no ponto de entrada, com os eixos X e Y definidos como eixos X e Y do WCS.|![IMAGEM](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Cria um CoordinateSystem nos parâmetros de coordenadas cilíndricas especificados com relação ao sistema de coordenadas especificado|![IMAGEM](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLength** (origem)<br>Crie um cuboide centralizado no ponto de entrada, com largura, comprimento e altura especificados.|![IMAGEM](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (distância)<br>Efetua a extrusão de uma curva na direção do vetor normal.|![IMAGEM](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Obtenha um ponto na curva com um parâmetro especificado entre StartParameter() e EndParameter().|![IMAGEM](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||AÇÕES||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Obtenha a distância desta geometria até outra.|![IMAGEM](images/nodes/Geometry.DistanceTo.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Separa elementos compostos ou não separados em suas partes do componente.|![IMAGEM](images/nodes/Geometry.Explode.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>Lista de geometrias importadas|![IMAGEM](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Rotaciona o objeto em torno da origem e normal do plano por um grau especificado.|![IMAGEM](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Converte qualquer tipo de geometria pela distância fornecida na direção determinada.|![IMAGEM](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Cria uma linha que melhor se aproxima à dispersão de uma plotagem de pontos.|![IMAGEM](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Crie uma linha reta começando no ponto e estendendo-se na direção do vetor pelo comprimento especificado.|![IMAGEM](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Cria uma linha reta entre dois pontos de entrada.|![IMAGEM](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Crie uma linha tangente à curva de entrada, posicionada no ponto do parâmetro da curva de entrada.|![IMAGEM](images/nodes/Line.ByTangency.png)|
||CONSULTA||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>A direção da curva.|![IMAGEM](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||Criar||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Crie uma BSplineCurve usando pontos de controle explícitos.|![IMAGEM](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Crie uma BSplineCurve interpolando entre os pontos|![IMAGEM](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||Criar||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Crie uma NurbsSurface usando pontos de controle explícitos com os graus U e V especificados.|![IMAGEM](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Cria uma NurbsSurface com pontos interpolados especificados e graus U e V. A superfície resultante passará por todos os pontos.|![IMAGEM](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Crie um plano centralizado no ponto raiz, com o vetor normal de entrada.|![IMAGEM](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Cria um plano no XY universal|![IMAGEM](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Forme um ponto em um determinado sistema de coordenadas com três coordenadas cartesianas|![IMAGEM](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2d) <br>Forme um ponto no plano XY com base em duas coordenadas cartesianas fornecidas. O componente Z é 0.|![IMAGEM](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3d)<br>Forme um ponto com três coordenadas cartesianas fornecidas.|![IMAGEM](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Obtenha o ponto de origem (0,0,0)|![IMAGEM](images/nodes/Point.Origin.png)|
||AÇÕES||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Adicione um vetor a um ponto. O mesmo que Converter (vetor).|![IMAGEM](images/nodes/Point.Add.png)|
||CONSULTA||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Obtenha o componente X de um ponto|![IMAGEM](images/nodes/Point.X.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Obtenha o componente Y de um ponto|![IMAGEM](images/nodes/Point.Y.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Obtenha o componente Z de um ponto|![IMAGEM](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Crie a PolyCurve com base na sequência de linhas que conectam os pontos. Para a curva fechada, o último ponto deve estar na mesma localização que o ponto inicial.|![IMAGEM](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (plano)<br>Crie um retângulo centralizado na raiz do plano de entrada, com a largura (tamanho do eixo X do plano) e o comprimento (tamanho do eixo Y do plano) de entrada.|![IMAGEM](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Crie uma esfera sólida centralizada no ponto de entrada, com o raio especificado.|![IMAGEM](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Crie uma superfície elevando entre as curvas de seção transversal de entrada.|![IMAGEM](images/nodes/Surface.ByLoft.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Crie uma superfície preenchendo o interior de um contorno fechado definido por curvas de entrada.|![IMAGEM](images/nodes/Surface.ByPatch.png)|
||AÇÕES||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Desloque a superfície na direção do normal da superfície pela distância especificada.|![IMAGEM](images/nodes/Surface.Offset.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Retorne o ponto nos parâmetros U e V especificados.|![IMAGEM](images/nodes/Surface.PointAtParameter.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Torne mais espessa a superfície em um sólido, efetuando a extrusão na direção de normais de superfície em ambos os lados da superfície.|![IMAGEM](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Crie um UV com base em dois duplos.|![IMAGEM](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||CRIAR||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**<br>Forme um vetor com três coordenadas euclidianas|![IMAGEM](images/nodes/Vector.ByCoordinates.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Retorna o vetor do eixo X canônico (1,0,0)|![IMAGEM](images/nodes/Vector.XAxis.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Retorna o vetor do eixo Y canônico (0,1,0)|![IMAGEM](images/nodes/Vector.YAxis.png)|
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Retorna o vetor do eixo Z canônico (0,0,1)|![IMAGEM](images/nodes/Vector.ZAxis.png)|
||AÇÕES||
|![IMAGEM](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>Obtenha a versão normalizada de um vetor|![IMAGEM](images/nodes/Vector.Normalized.png)|

## Operadores

||||
| -- | -- | -- |
|![IMAGEM](images/A-2/add.Large.png)|**+**<br>Adição|![IMAGEM](images/nodes/Addition.png)|
|![IMAGEM](images/A-2/sub.Large.png)|**-**<br>Subtração|![IMAGEM](images/nodes/Subtraction.png)|
|![IMAGEM](images/A-2/mul.Large.png)|*****<br>Multiplicação|![IMAGEM](images/nodes/Multiplication.png)|
|![IMAGEM](images/A-2/div.Large.png)|**/**<br>Divisão|![IMAGEM](images/nodes/Division.png)|
|![IMAGEM](images/A-2/mod.Large.png)|**%**<br>A divisão modular localiza o restante da primeira entrada após dividir pela segunda entrada|![IMAGEM](images/nodes/ModularDivision.png)|
|![IMAGEM](images/A-2/lt.Large.png)|**<**<br>Less Than|![IMAGEM](images/nodes/LessThan.png)|
|![IMAGEM](images/A-2/gt.Large.png)|**>**<br>Maior do que|![IMAGEM](images/nodes/GreaterThan.png)|
|![IMAGEM](images/A-2/eq.Large.png)|**==**<br>Testes de igualdade entre dois valores.|![IMAGEM](images/nodes/Equality.png)|

