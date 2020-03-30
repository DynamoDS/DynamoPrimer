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

# 노드의 색인

##### 이 색인에서는 이 Primer에 사용된 모든 노드 및 기타 유용할 수 있는 구성요소에 대한 추가 정보를 제공합니다. 여기에는 Dynamo에서 사용할 수 있는 500개의 노드 중 일부만 소개되어 있습니다.

## Bulitin 함수

||||
| -- | -- | -- |
|![IMAGE](images/A-2/Count.Large.png)|**개수**<br>지정된 리스트의 항목 수를 반환합니다.|![IMAGE](images/nodes/Count.png)|
|![IMAGE](images/A-2/Flatten.Large.png)|**평면화**<br>다차원 입력 리스트의 단순화된 1D 리스트를 반환합니다.|![IMAGE](images/nodes/Flatten.png)|
|![IMAGE](images/A-2/Map.Large.png)|**지도**<br>값을 입력 범위로 매핑합니다.|![IMAGE](images/nodes/Map.png)|

## 코어

#### Core.Color

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>알파, 빨간색, 녹색, 파란색 구성요소로 색상을 구성합니다.|![IMAGE](images/nodes/Color.ByARGB.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**색상 범위**<br>시작 색상과 끝 색상 간의 색상 그라데이션에서 색상을 가져옵니다.|![IMAGE](images/nodes/ColorRange.png)|
||작업||
|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>이 색상의 밝기 값을 가져옵니다.|![IMAGE](images/nodes/Color.Brightness.png)|
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>색상의 구성요소를 알파, 빨간색, 녹색, 파란색의 순서로 나열합니다.|![IMAGE](images/nodes/Color.Components.png)|
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>이 색상의 채도 값을 가져옵니다.|![IMAGE](images/nodes/Color.Saturation.png)|
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>이 색상의 색조 값을 가져옵니다.|![IMAGE](images/nodes/Color.Hue.png)|
||조회||
|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>색상의 알파 구성요소를 찾습니다(0~255).|![IMAGE](images/nodes/Color.Alpha.png)|
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>색상의 파란색 구성요소를 찾습니다(0~255).|![IMAGE](images/nodes/Color.Blue.png)|
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>색상의 녹색 구성요소를 찾습니다(0~255).|![IMAGE](images/nodes/Color.Green.png)|
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>색상의 빨간색 구성요소를 찾습니다(0~255).|![IMAGE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>색상을 사용하여 형상을 표시합니다.|![IMAGE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**부울**<br>True와 False 사이에서 선택합니다.|![IMAGE](images/nodes/Boolean.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**코드 블록**<br>DesignScript 코드를 직접 작성할 수 있습니다.|![IMAGE](images/nodes/CodeBlock.png)|
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**디렉토리 경로**<br>시스템에서 디렉토리를 선택하여 디렉토리 경로를 가져올 수 있습니다.|![IMAGE](images/nodes/DirectoryPath.png)|
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**파일 경로**<br>시스템에서 파일을 선택하여 파일 이름을 가져올 수 있습니다.|![IMAGE](images/nodes/FilePath.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**정수 슬라이더**<br>정수 값을 생성하는 슬라이더입니다.|![IMAGE](images/nodes/IntegerSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**번호** <br>숫자를 작성합니다.|![IMAGE](images/nodes/Number.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**번호 슬라이더** <br>숫자 값을 생성하는 슬라이더입니다.|![IMAGE](images/nodes/NumberSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**문자열**<br>문자열을 작성합니다.|![IMAGE](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>지정된 입력에서 새 리스트를 작성합니다.|![IMAGE](images/nodes/List.Create.png)|
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>두 시퀀스의 각 요소에 연결자를 적용합니다.|![IMAGE](images/nodes/List.Combine.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**숫자 범위**<br>지정된 범위에서 숫자의 시퀀스를 작성합니다.|![IMAGE](images/nodes/NumberRange.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**숫자 시퀀스**<br>숫자의 시퀀스를 작성합니다.|![IMAGE](images/nodes/NumberSequence.png)|
||작업||
|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>리스트를 각각 지정된 양의 항목이 포함된 리스트 세트로 자릅니다.|![IMAGE](images/nodes/List.Chop.png)|
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>지정된 리스트에 저장된 항목의 개수를 가져옵니다.|![IMAGE](images/nodes/List.Count.png)|
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>리스트의 내포된 리스트를 특정한 양만큼 단순화합니다.|![IMAGE](images/nodes/List.Flatten.png)|
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>별도의 부울 리스트에서 해당하는 인덱스를 조회하여 시퀀스를 필터링합니다.|![IMAGE](images/nodes/List.FilterByBoolMask.png)|
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>지정된 색인에 위치하는 지정된 리스트에서 항목을 가져옵니다.|![IMAGE](images/nodes/List.GetItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>리스트의 모든 요소에 함수를 적용하고 결과에서 새 리스트를 생성합니다.|![IMAGE](images/nodes/List.Map.png)|
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>지정된 리스트의 항목이 역순으로 포함된 새 리스트를 작성합니다.|![IMAGE](images/nodes/List.Reverse.png)|
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>지정된 인덱스에 위치한 지정된 리스트에서 항목을 대체합니다.|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>리스트의 인덱스를 지정된 수만큼 오른쪽으로 이동합니다.|![IMAGE](images/nodes/List.ShiftIndices.png)|
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>지정된 리스트에서 지정된 간격띄우기 이후 지정된 값의 배수인 인덱스의 항목을 가져옵니다.|![IMAGE](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>리스트의 리스트에서 행과 열을 교체합니다. 다른 행보다 짧은 행이 몇 개 있을 경우 null 값이 결과 배열에 자리 표시자로 삽입되어 항상 직사각형이 되도록 합니다.|![IMAGE](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>조건문입니다. 테스트 입력의 부울 값을 확인합니다. 테스트 입력이 true인 경우 결과에서 true 입력을 출력하고, 그렇지 않은 경우 결과에서 false 입력을 출력합니다.|![IMAGE](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>각도의 코사인 값을 계산합니다.|![IMAGE](images/nodes/Math.Cos.png)|
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>도 각도를 라디안 각도로 변환합니다.|![IMAGE](images/nodes/Math.DegreesToRadians.png)|
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>숫자를 지정된 멱 수만큼 제곱합니다.|![IMAGE](images/nodes/Math.Pow.png)|
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>라디안 각도를 도 각도로 변환합니다.|![IMAGE](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>분포 비율을 유지하면서 숫자 리스트의 범위를 조정합니다.|![IMAGE](images/nodes/Math.RemapRange.png)|
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>각도의 사인을 계산합니다.|![IMAGE](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>지정된 객체가 null인지 확인합니다.|![IMAGE](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**공식**<br>수학 공식을 계산합니다. 평가에 NCalc를 사용합니다. [http://ncalc.codeplex.com](http://ncalc.codeplex.com)을 참조하십시오.|![IMAGE](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>여러 문자열을 하나의 문자열로 연결합니다.|![IMAGE](images/nodes/String.Concat.png)|
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>지정된 문자열에 지정된 하위 문자열이 포함되어 있는지 확인합니다.|![IMAGE](images/nodes/String.Contains.png)|
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>결합되는 각 문자열 사이에 지정된 구분자를 삽입하여, 여러 문자열을 하나의 문자열로 연결합니다.|![IMAGE](images/nodes/String.Join.png)|
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>단일 문자열을 지정된 구분 문자열을 사용하여 문자열 리스트로 구분합니다.|![IMAGE](images/nodes/String.Split.png)|
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>문자열을 정수 또는 double 값으로 변환합니다.|![IMAGE](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>노드의 출력을 시각화합니다.|![IMAGE](images/nodes/Watch.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>형상의 동적 미리보기를 표시합니다.|![IMAGE](images/nodes/Watch3D.png)|

## 지오메트리

#### Geometry.Circle

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>표준 XY 평면의 입력 중심점과 반지름을 사용하고 표준 Z를 법선으로 사용하여 원을 작성합니다.|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>입력 평면 원점(루트)을 중심으로 지정된 반지름을 사용하여 입력 평면에 원을 작성합니다.|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>입력 점을 원점으로 하고 X 및 Y축이 WCS X 및 Y축으로 설정된 CoordinateSystem을 작성합니다.|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>지정된 좌표계를 기준으로 지정된 원통형 좌표 매개변수에서 CoordinateSystem을 작성합니다.|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths**(원점)<br>입력 점을 중심으로 지정된 폭, 길이, 높이의 직육면체를 작성합니다.|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude**(거리)<br>곡선을 법선 벡터 방향으로 돌출시킵니다.|![IMAGE](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>StartParameter() 및 EndParameter() 사이의 지정된 매개변수에서 곡선상의 점을 가져옵니다.|![IMAGE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||작업||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>이 형상에서 다른 형상까지의 거리를 가져옵니다.|![IMAGE](images/nodes/Geometry.DistanceTo.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>복합 또는 분리되지 않은 요소를 구성요소 부품으로 분리합니다.|![IMAGE](images/nodes/Geometry.Explode.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>가져온 형상 리스트입니다.|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate**(basePlane)<br>객체를 평면 원점 및 법선 주위로 지정된 각도만큼 회전합니다.|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>형상 유형을 지정된 방향으로 지정된 거리만큼 변환합니다.|![IMAGE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>점의 산점도에 가장 가까운 선을 작성합니다.|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>점에서 시작하여 벡터 방향으로 지정된 길이만큼 연장되는 직선을 작성합니다.|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>두 입력 점 사이에 직선을 작성합니다.|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>입력 곡선의 매개변수 점에서 입력 곡선에 접하는 선을 작성합니다.|![IMAGE](images/nodes/Line.ByTangency.png)|
||조회||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>곡선 방향입니다.|![IMAGE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>명시적 제어점을 사용하여 BSplineCurve를 작성합니다.|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>점 사이를 보간하여 BSplineCurve를 작성합니다.|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>명시적 제어점과 지정된 U 및 V 각도를 사용하여 NurbsSurface를 작성합니다.|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>지정된 보간 점과 U 및 V 각도를 사용하여 NurbsSurface를 작성합니다. 결과 표면은 모든 점을 통과합니다.|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>루트 점을 중심으로 입력 법선 벡터를 사용하여 평면을 작성합니다.|![IMAGE](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>표준 XY 평면에 평면을 작성합니다.|![IMAGE](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>3개의 데카르트 좌표를 사용하여 지정된 좌표계에서 점을 형성합니다.|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates**(2D) <br>지정된 2개의 데카르트 좌표를 사용하여 XY 평면에 점을 형성합니다. Z 구성요소는 0입니다.|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates**(3D)<br>지정된 3개의 데카르트 좌표를 사용하여 점을 형성합니다.|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>원점(0,0,0)을 가져옵니다.|![IMAGE](images/nodes/Point.Origin.png)|
||작업||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>점에 벡터를 추가합니다. Translate(벡터)과 같습니다.|![IMAGE](images/nodes/Point.Add.png)|
||조회||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>점의 X 구성요소를 가져옵니다.|![IMAGE](images/nodes/Point.X.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>점의 Y 구성요소를 가져옵니다.|![IMAGE](images/nodes/Point.Y.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>점의 Z 구성요소를 가져옵니다.|![IMAGE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>점을 연결하는 일련의 선에서 PolyCurve를 작성합니다. 닫힌 곡선의 경우 마지막 점은 시작점과 같은 위치에 있어야 합니다.|![IMAGE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength**(평면)<br>입력 평면 루트를 중심으로 입력 폭(평면 X축 길이)과 길이(평면 Y축 길이)를 사용하여 직사각형을 작성합니다.|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>입력 점을 중심으로 지정된 반지름을 사용하여 솔리드 구를 작성합니다.|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>입력 횡단면 곡선 사이에서 로프트하여 표면을 작성합니다.|![IMAGE](images/nodes/Surface.ByLoft.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>입력 곡선에 의해 정의된 닫힌 경계의 내부를 채워 표면을 작성합니다.|![IMAGE](images/nodes/Surface.ByPatch.png)|
||작업||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>표면의 간격을 표면 법선 방향으로 지정된 거리만큼 띄웁니다.|![IMAGE](images/nodes/Surface.Offset.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>지정된 U 및 V 매개변수에서 점을 반환합니다.|![IMAGE](images/nodes/Surface.PointAtParameter.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>표면을 두껍게 하여 솔리드로 만들고, 표면의 양쪽에서 표면 법선 방향으로 돌출합니다.|![IMAGE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>두 double 값에서 UV를 작성합니다.|![IMAGE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||작성||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**<br>3개의 유클리드 좌표로 벡터를 형성합니다.|![IMAGE](images/nodes/Vector.ByCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>표준 X축 벡터(1,0,0)를 가져옵니다.|![IMAGE](images/nodes/Vector.XAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>표준 Y축 벡터(0,1,0)를 가져옵니다.|![IMAGE](images/nodes/Vector.YAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>표준 Z축 벡터(0,0,1)를 가져옵니다.|![IMAGE](images/nodes/Vector.ZAxis.png)|
||작업||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>벡터의 정규화된 버전을 가져옵니다.|![IMAGE](images/nodes/Vector.Normalized.png)|

## 연산자

||||
| -- | -- | -- |
|![IMAGE](images/A-2/add.Large.png)|**+**<br>더하기|![IMAGE](images/nodes/Addition.png)|
|![IMAGE](images/A-2/sub.Large.png)|**-**<br>빼기|![IMAGE](images/nodes/Subtraction.png)|
|![IMAGE](images/A-2/mul.Large.png)|*****<br>곱하기|![IMAGE](images/nodes/Multiplication.png)|
|![IMAGE](images/A-2/div.Large.png)|**/**<br>나누기|![IMAGE](images/nodes/Division.png)|
|![IMAGE](images/A-2/mod.Large.png)|**%**<br>모듈 방식 분할에서는 두 번째 입력으로 나눈 후 첫 번째 입력의 나머지를 계산합니다.|![IMAGE](images/nodes/ModularDivision.png)|
|![IMAGE](images/A-2/lt.Large.png)|**<**<br>Less Than|![IMAGE](images/nodes/LessThan.png)|
|![IMAGE](images/A-2/gt.Large.png)|**>**<br>보다 큼|![IMAGE](images/nodes/GreaterThan.png)|
|![IMAGE](images/A-2/eq.Large.png)|**==**<br>두 값 간의 균일성에 대한 균일성 테스트입니다.|![IMAGE](images/nodes/Equality.png)|

