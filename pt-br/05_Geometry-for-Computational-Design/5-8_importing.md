

## Importando geometria

Há diversas formas de importar a geometria para o Dynamo. Demonstramos a importação de malhas usando o *Kit de ferramentas de malha* na seção anterior – também é possível importar modelos sólidos de arquivos .SAT. Com esses processos, podemos desenvolver a geometria em outra plataforma, carregá-la no Dynamo e aplicar operações paramétricas por meio da programação visual.

Outro método para importar a geometria é usar um processo chamado *Conversão ATF*. Neste caso, podemos importar não apenas a geometria, mas a estrutura de um arquivo. Por exemplo, é possível escolher quais camadas de um arquivo .DWG serão importadas ao invés de importar todo o modelo. Vamos demonstrar isso abaixo mais detalhadamente.

### Importar geometria de um arquivo DWG

Os nós para importar um DWG para o ambiente do Dynamo são encontrados na guia *Conversão* (Observação: Estas ferramentas estão disponíveis somente no [Dynamo Studio](http://www.autodesk.com/products/dynamo-studio/overview)). Os exemplos a seguir mostram uma série de componentes usados para procurar um arquivo, importar o conteúdo do arquivo e convertê-lo em geometria utilizável no Dynamo. O Dynamo também nos dá a capacidade de filtrar e selecionar objetos específicos para importar de um arquivo DWG, que demonstraremos abaixo. Para obter mais informações sobre como importar a geometria de um arquivo DWG, leia a [postagem de blog aqui](http://dynamobim.org/dwg-import-in-dynamo-studio-0-9-1/) de Ben Goh.

### Obter objetos importados

A maneira mais simples de importar o DWG para o Dynamo Studio é importar o arquivo inteiro para o espaço de trabalho:

![GetImportedObjects](images/5-8/GetImportedObjects.jpg)

> 1. Use o componente Caminho do arquivo para procurar o arquivo DWG a ser importado no Dynamo.
2. Conecte-se ao **FileLoader.FromPath** para ler o arquivo.
3. Use o componente **FileLoader.GetImportedObjects** para analisar a geometria no Dynamo Studio.
4. **ImportedObject.ConvertToGeometries** vai converter os objetos em geometria utilizável no espaço de trabalho do Dynamo.

Como mostrado na imagem acima, todos os tipos de geometria no arquivo DWG, superfícies, malhas, curvas e linhas, são importados para o Dynamo.

### Filtro de objeto

Para especificar quais geometrias são importadas do arquivo DWG, é possível adicionar nós **ObjectFilter** à definição. O nó **ObjectFilter** é compatível com um **FileLoader** ou com uma lista de **ImportedObject** e gera uma lista **ImportedObject**.

As imagens a seguir mostram as declarações condicionais dentro de cada nó **ObjectFilter**. Qualquer **ImportedObject** que satisfaça qualquer uma das condições listadas passará através do filtro. A filtragem pode ter base na legenda da camada (ou seja, nome da camada), no tipo de geometria, na cor difusa etc., e pode ser usada em conjunto com outros filtros para refinar a seleção.

![ObjectFilter1](images/5-8/ObjectFilter01.jpg)

> 1. Substitua **FileLoader.GetImportedObjects** por **ObjectFilter** para procurar condições específicas no arquivo DWG. - neste caso, somente a geometria da superfície será importada, removendo todas as geometrias de curva e linha visíveis na imagem anterior.
2. Conecte o filtro a **ImportedObject.ConvertToGeometries** para importar a geometria filtrada.

Ao adicionar dois filtros com diferentes declarações condicionais, é possível dividir a lista da geometria em vários fluxos:

![ObjectFilter2](images/5-8/ObjectFilter02.jpg)

> 1. Substitua **FileLoader.GetImportedObjects** por dois módulos **ObjectFilter** de diferentes declarações condicionais. Isso vai separar a geometria de um arquivo em dois fluxos diferentes.
2. Conecte o filtro a **ImportedObject.ConvertToGeometries** para importar a geometria filtrada.
3. Conecte **ImportedObject.ConvertToGeometries** a **Display.ByGeometryColor** para visualizar cada fluxo em uma cor diferente.

### Seleção de objetos explícitos

O nó **ObjectSelector** nos fornece um método alternativo para importar objetos do arquivo DWG. Em vez de usar filtros, esse método nos dará a capacidade de escolher especificamente quais objetos e camadas serão importados para o Dynamo.

![Ponto para curva](images/5-8/ObjectSelector.jpg)

> 1. Substitua **FileLoader.GetImportedObjects** por **ObjectSelector** para chamar camadas e objetos específicos dentro de um arquivo DWG.
2. Conectar o filtro a **ImportedObject.ConvertToGeometries**.

