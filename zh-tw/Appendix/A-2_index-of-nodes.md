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



# 節點的索引

##### 本索引提供此手冊中所用所有節點的附加資訊，以及您可能認為有用的其他元件。這只是 Dynamo 所提供 500 個節點中部分節點的簡介。



內建函數
--

||||
| -- | -- | -- |
|![IMAGE](images/A-2/Count.Large.png)|**計數**傳回指定清單中的項目數量。|![IMAGE](images/nodes/Count.png)|
|![IMAGE](images/A-2/Flatten.Large.png)|**展平**傳回多維輸入清單的平坦化 1D 清單。|![IMAGE](images/nodes/Flatten.png)|
|![IMAGE](images/A-2/Map.Large.png)|**地圖**將值對映至輸入範圍|![IMAGE](images/nodes/Map.png)|

公模仁
--

#### Core.Color
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**依 Alpha、紅色、綠色與藍色分量建構顏色。|![IMAGE](images/nodes/Color.ByARGB.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**顏色範圍**從開始顏色與結束顏色之間的顏色漸層取得顏色。|![IMAGE](images/nodes/ColorRange.png)|
||動作||
|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**取得此顏色的亮度值。|![IMAGE](images/nodes/Color.Brightness.png)|
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**依照以下順序列示顏色分量：Alpha、紅色、綠色、藍色。|![IMAGE](images/nodes/Color.Components.png)|
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**取得此顏色的飽和度值|![IMAGE](images/nodes/Color.Saturation.png)|
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**取得此顏色的色相值。|![IMAGE](images/nodes/Color.Hue.png)|
||查詢||
|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**尋找顏色的 Alpha 分量 (0 到 255)|![IMAGE](images/nodes/Color.Alpha.png)|
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**尋找顏色的藍色分量 (0 到 255)|![IMAGE](images/nodes/Color.Blue.png)|
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**尋找顏色的綠色分量 (0 到 255)|![IMAGE](images/nodes/Color.Green.png)|
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**尋找顏色的紅色分量 (0 到 255)|![IMAGE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**使用顏色顯示幾何圖形。|![IMAGE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**布林**在 true 與 false 之間進行選取。|![IMAGE](images/nodes/Boolean.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**代碼區塊**允許直接編寫 DesignScript 代碼。|![IMAGE](images/nodes/CodeBlock.png)|
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**目錄路徑**可讓您選取系統上的目錄，以取得其路徑|![IMAGE](images/nodes/DirectoryPath.png)|
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**檔案路徑**可讓您選取系統中的檔案，以取得其檔名。|![IMAGE](images/nodes/FilePath.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**整數滑棒**產生整數值的滑棒。|![IMAGE](images/nodes/IntegerSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**號碼** 建立數字。|![IMAGE](images/nodes/Number.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**數字滑棒** 產生數值的滑棒。|![IMAGE](images/nodes/NumberSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**字串**建立字串。|![IMAGE](images/nodes/String.png)|

#### Core.List
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**以指定的輸入建立新清單。|![IMAGE](images/nodes/List.Create.png)|
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**將結合器套用至兩個序列中的每個元素|![IMAGE](images/nodes/List.Combine.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**數字範圍**建立指定範圍內的一系列數字。|![IMAGE](images/nodes/NumberRange.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**數字序列**建立一系列數字。|![IMAGE](images/nodes/NumberSequence.png)|
||動作||
|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**將一個清單細分為一組清單 (其中每個清單包含指定數量的項目)。|![IMAGE](images/nodes/List.Chop.png)|
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**取得指定清單中所儲存項目的數量。|![IMAGE](images/nodes/List.Count.png)|
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**依特定數量展平巢狀清單。|![IMAGE](images/nodes/List.Flatten.png)|
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**透過在布林值的單獨清單中搜尋對應索引來篩選序列。|![IMAGE](images/nodes/List.FilterByBoolMask.png)|
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**從指定清單中取得位於指定索引處的項目。|![IMAGE](images/nodes/List.GetItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**將函數套用至清單的所有元素，從結果中產生新的清單|![IMAGE](images/nodes/List.Map.png)|
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**建立新的清單，其中包含指定清單的項目，但順序反轉|![IMAGE](images/nodes/List.Reverse.png)|
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**在指定清單中替換位於指定索引處的項目。|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**將清單中的索引向右移動指定數量|![IMAGE](images/nodes/List.ShiftIndices.png)|
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**擷取指定清單中特定索引處的項目，這些索引是在指定的偏移之後指定值的倍數。|![IMAGE](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**在清單的清單中交換列與欄。如果某些列短於其他列，會在結果陣列中插入空值作為預留位置，以便其永遠為矩形|![IMAGE](images/nodes/List.Transpose.png)|

#### Core.Logic
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**如果**條件陳述式。檢查測試輸入的布林值。如果測試輸入為 true，結果會輸出真實的輸入，否則結果會輸出虛假的輸入。|![IMAGE](images/nodes/If.png)|



#### Core.Math
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**計算角度的餘弦值。|![IMAGE](images/nodes/Math.Cos.png)|
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**將以度表示的角度轉換為以弳度表示的角度。|![IMAGE](images/nodes/Math.DegreesToRadians.png)|
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**計算數值的指定次冪。|![IMAGE](images/nodes/Math.Pow.png)|
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**將以弳度表示的角度轉換為以度表示的角度。|![IMAGE](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**調整數字清單的範圍，同時保留分配比率。|![IMAGE](images/nodes/Math.RemapRange.png)|
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**計算角度的正弦值。|![IMAGE](images/nodes/Math.Sin.png)|



#### Core.Object
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**確定指定的物件是否為空。|![IMAGE](images/nodes/Object.IsNull.png)|

#### Core.Scripting
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**公式**演算數學公式。使用 NCalc 進行演算。請參閱 [http://ncalc.codeplex.com](http://ncalc.codeplex.com)|![IMAGE](images/nodes/Formula.png)|

#### Core.String
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**將多個字串連接成單一字串。|![IMAGE](images/nodes/String.Concat.png)|
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**確定指定的字串是否包含指定的子字串。|![IMAGE](images/nodes/String.Contains.png)|
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**將多個字串連接成單一字串，同時在接合的每個字串之間插入指定的分隔符號。|![IMAGE](images/nodes/String.Join.png)|
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**將單一字串分割為一系列字串，由指定的分隔符號字串確定分割。|![IMAGE](images/nodes/String.Split.png)|
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**將字串轉換為整數或倍精數。|![IMAGE](images/nodes/String.ToNumber.png)|


#### Core.View
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**視覺化節點的輸出。|![IMAGE](images/nodes/Watch.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**展示幾何圖形的動態預覽。|![IMAGE](images/nodes/Watch3D.png)|

幾何圖形
--

#### Geometry.Circle
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**在世界 XY 平面建立具有輸入中心點與半徑的圓，以世界 Z 為法向。|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**建立中心位於輸入平面原點 (根)、位於輸入平面內且具有指定半徑的圓。|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**建立原點位於輸入點、X 與 Y 軸分別設定為 WCS X 軸與 Y 軸的座標系統|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**建立指定圓柱座標參數遵循指定座標系統的座標系統|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|


#### Geometry.Cuboid
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths**(原點)建立中心位於輸入點且具有指定寬度、長度及高度的立方體。|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (距離)在法線向量的方向擠出曲線。|![IMAGE](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**在曲線上取得位於 StartParameter() 與 EndParameter() 之間的指定參數處的點。|![IMAGE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry
||||
| -- | -- | -- |
||動作||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**取得此幾何圖形距其他幾何圖形的距離。|![IMAGE](images/nodes/Geometry.DistanceTo.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**將複合元素或非分隔元素分隔為分量部分|![IMAGE](images/nodes/Geometry.Explode.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**所匯入幾何圖形的清單|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (基準面)繞平面原點及法線將物件旋轉指定度數。|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**將任何幾何圖形類型在指定方向平移指定距離。|![IMAGE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**建立與點的散射圖最近似的線。|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**建立從某點開始沿向量方向延伸指定長度的直線。|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**在兩個輸入點之間建立直線。|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**建立與輸入曲線相切且通過輸入曲線之參數點的線。|![IMAGE](images/nodes/Line.ByTangency.png)|
||查詢||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**曲線的方向。|![IMAGE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**使用明確控制點建立 BSplineCurve。|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**透過在點之間進行內插來建立 BSplineCurve|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**使用明確控制點建立具有指定 U 與 V 度數的 NURBS 曲面。|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**建立具有指定內插點及 U 與 V 度數的 NURBS 曲面。產生的曲面將通過所有點。|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**建立中心位於根點且具有輸入法線向量的平面。|![IMAGE](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**在世界 XY 中建立平面|![IMAGE](images/nodes/Plane.XY.png)|

#### Geometry.Point
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**在指定座標系統中建立具有 3 個直角座標的點|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2d) 在 XY 平面上建立具有 2 個指定直角座標的點。Z 分量是 0。|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3d)建立具有 3 個指定直角座標的點。|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**取得原點 (0,0,0)|![IMAGE](images/nodes/Point.Origin.png)|
||動作||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**加入向量至點。與平移 (向量) 相同。|![IMAGE](images/nodes/Point.Add.png)|
||查詢||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**取得點的 X 分量|![IMAGE](images/nodes/Point.X.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**取得點的 Y 分量|![IMAGE](images/nodes/Point.Y.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**取得點的 Z 分量|![IMAGE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**根據連接點的一系列線建立 PolyCurve。若要取得封閉的曲線，最後一個點應該與起點位於相同的位置。|![IMAGE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (平面)建立中心位於輸入平面根點且具有輸入寬度 (平面 X 軸長度) 與長度 (平面 Y 軸長度) 的矩形。|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**建立中心位於輸入點且具有指定半徑的實體圓球。|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface
||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**透過在輸入斷面曲線之間進行斷面混成來建立曲面|![IMAGE](images/nodes/Surface.ByLoft.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**透過填充輸入曲線所定義之封閉邊界的內部來建立曲面。|![IMAGE](images/nodes/Surface.ByPatch.png)|
||動作||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**在曲面法線方向將曲面偏移指定的距離|![IMAGE](images/nodes/Surface.Offset.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**傳回由指定的 U 與 V 參數確定的點。|![IMAGE](images/nodes/Surface.PointAtParameter.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**將曲面增厚為實體，在曲面法線的方向朝曲面兩側擠出。|![IMAGE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**根據兩個倍精數建立 UV。|![IMAGE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||建立||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**建立由 3 個歐幾里得座標確定的向量|![IMAGE](images/nodes/Vector.ByCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**取得標準 X 軸向量 (1,0,0)|![IMAGE](images/nodes/Vector.XAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**取得標準 Y 軸向量 (0,1,0)|![IMAGE](images/nodes/Vector.YAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**取得標準 Z 軸向量 (0,0,1)|![IMAGE](images/nodes/Vector.ZAxis.png)|
||動作||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**取得向量的正常化版本|![IMAGE](images/nodes/Vector.Normalized.png)|


運算子
--
||||
| -- | -- | -- |
|![IMAGE](images/A-2/add.Large.png)|**+**加|![IMAGE](images/nodes/Addition.png)|
|![IMAGE](images/A-2/sub.Large.png)|**-**減|![IMAGE](images/nodes/Subtraction.png)|
|![IMAGE](images/A-2/mul.Large.png)|*****乘|![IMAGE](images/nodes/Multiplication.png)|
|![IMAGE](images/A-2/div.Large.png)|**/**除|![IMAGE](images/nodes/Division.png)|
|![IMAGE](images/A-2/mod.Large.png)|**%**模除會計算第一個輸入除以第二次輸入後的餘數|![IMAGE](images/nodes/ModularDivision.png)|
|![IMAGE](images/A-2/lt.Large.png)|**<**小於|![IMAGE](images/nodes/LessThan.png)|
|![IMAGE](images/A-2/gt.Large.png)|**>**大於|![IMAGE](images/nodes/GreaterThan.png)|
|![IMAGE](images/A-2/eq.Large.png)|**==**相等性會測試兩個值是否相等。|![IMAGE](images/nodes/Equality.png)|

