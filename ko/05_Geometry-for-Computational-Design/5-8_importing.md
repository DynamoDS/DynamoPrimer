

## 형상 가져오기

형상을 Dynamo로 가져오는 방법에는 여러 가지가 있습니다. 이전 섹션에서는 *Mesh Toolkit*을 사용하여 메쉬를 가져오는 방법을 설명했는데, .SAT 파일에서 솔리드 모델을 가져올 수도 있습니다. 이러한 프로세스를 통해 다른 플랫폼에서 형상을 개발하고, 해당 형상을 Dynamo에 로드하고, 시각적 프로그래밍을 통해 파라메트릭 작업을 적용할 수 있습니다.

형상을 가져오는 또 다른 방법은 *ATF 변환*이라는 프로세스를 사용하는 것입니다. 이 경우 단순히 형상 뿐만 아니라 파일의 구조도 가져올 수 있습니다. 예를 들어 전체 모형을 가져오는 대신 가져올 .DWG의 레이어를 선택할 수 있습니다. 이 내용은 아래에서 자세히 설명하겠습니다.

### DWG 파일에서 형상 가져오기

DWG를 Dynamo 환경으로 가져오기 위한 노드는 *변환* 탭에서 찾을 수 있습니다(참고: 이러한 도구는 [Dynamo Studio](http://www.autodesk.com/products/dynamo-studio/overview)에서만 사용할 수 있음). 다음 예는 파일을 찾고 파일 컨텐츠를 가져와서 사용 가능한 Dynamo 형상으로 변환하는 데 사용되는 일련의 구성요소를 보여줍니다. 또한 Dynamo는 DWG 파일에서 가져올 특정 객체를 필터링 및 선택할 수 있는 기능도 제공하는데, 이 기능은 아래에서 설명합니다. DWG 파일에서 형상 가져오기에 대한 자세한 내용은 Ben Goh의 [블로그 게시물](http://dynamobim.org/dwg-import-in-dynamo-studio-0-9-1/)을 읽어 보십시오.

### 객체 가져오기

DWG를 Dynamo Studio로 가져오는 가장 간단한 방법은 전체 파일을 작업공간으로 가져오는 것입니다.

![GetImportedObjects](images/5-8/GetImportedObjects.jpg)

> 1. 파일 경로 구성요소를 사용하여 Dynamo로 가져올 DWG 파일을 찾습니다.
2. **FileLoader.FromPath**에 연결하여 파일을 읽습니다.
3. **FileLoader.GetImportedObjects** 구성요소를 사용하여 형상을 Dynamo Studio로 해석합니다.
4. **ImportedObject.ConvertToGeomems**는 객체를 Dynamo 작업공간에서 사용 가능한 형상으로 변환합니다.

위 그림과 같이 DWG 파일의 모든 형상 유형(표면, 메쉬, 곡선 및 선)을 Dynamo로 가져오게 됩니다.

### 객체 필터

DWG 파일에서 가져올 형상을 지정하기 위해 정의에 추가 **ObjectFilter** 노드를 추가할 수 있습니다. **ObjectFilter** 노드는 **FileLoader** 또는 **ImportedObject** 리스트와 호환되며, **ImportedObject** 리스트를 출력합니다.

다음 이미지는 각 **ObjectFilter** 노드 내의 조건문을 보여줍니다. 나열된 조건 중 하나라도 충족하는 모든 **ImportedObject**는 필터를 통과하게 됩니다. 필터링은 레이어 레이블(예: 레이어 이름), 형상 유형, 분산 색상 등을 기준으로 수행할 수 있으며, 다른 필터와 함께 사용하여 더 세부적으로 객체를 선택할 수 있습니다.

![ObjectFilter1](images/5-8/ObjectFilter01.jpg)

> 1. DWG 파일에서 특정 조건을 검색하려면 **FileLoader.GetImportedObjects**를 **ObjectFilter**로 대체합니다. - 이 경우에서는 표면 형상만 가져오며 이전 이미지에 표시되는 모든 곡선 및 선 형상은 제거됩니다.
2. 필터를 **ImportedObject.ConvertToGeometries**에 연결하여 필터링된 형상을 가져옵니다.

다른 조건문이 있는 두 개의 필터를 추가하여 형상 리스트를 여러 스트림으로 나눌 수 있습니다.

![ObjectFilter2](images/5-8/ObjectFilter02.jpg)

> 1. **FileLoader.GetImportedObjects**를 서로 다른 조건문이 있는 두 **ObjectFilter** 모듈로 대체합니다. 이렇게 하면 형상이 한 파일에서 다른 두 스트림으로 분리됩니다.
2. 필터를 **ImportedObject.ConvertToGeometries**에 연결하여 필터링된 형상을 가져옵니다.
3. **ImportedObject.ConvertToGeometries**를 **Display.ByGeometryColor**에 연결하여 각 스트림을 다른 색상으로 시각화합니다.

### 명시적 객체 선택

**ObjectSelector** 노드는 DWG 파일에서 객체를 가져올 때 사용할 수 있는 다른 방법입니다. 이 방법에서는 필터를 사용하는 대신, Dynamo로 가져올 객체 및 레이어를 구체적으로 선택할 수 있습니다.

![점부터 곡선까지](images/5-8/ObjectSelector.jpg)

> 1. DWG 파일 내의 특정 레이어 및 객체를 호출하려면 **FileLoader.GetImportedObjects**를 **ObjectSelector**로 대체합니다.
2. 필터를 **ImportedObject.ConvertToGeometries**에 연결합니다.

