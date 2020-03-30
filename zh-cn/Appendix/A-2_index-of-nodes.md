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

# 节点索引

##### 此索引提供有关此入门手册中使用的所有节点以及其他可能有用构件的信息。这只是对 Dynamo 中提供的 500 个节点中一部分节点的介绍。

## 内置函数

||||
| -- | -- | -- |
|![IMAGE](images/A-2/Count.Large.png)|**计数**<br>返回指定列表中的项数。|![IMAGE](images/nodes/Count.png)|
|![IMAGE](images/A-2/Flatten.Large.png)|**展平**<br>返回多维输入列表的展平一维列表。|![IMAGE](images/nodes/Flatten.png)|
|![IMAGE](images/A-2/Map.Large.png)|**Map**<br>将值映射到输入范围|![IMAGE](images/nodes/Map.png)|

## 核心

#### Core.Color

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>按 Alpha、红色、绿色和蓝色分量构造颜色。|![IMAGE](images/nodes/Color.ByARGB.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**颜色范围**<br>基于起点颜色和终点颜色之间的颜色渐变获取颜色。|![IMAGE](images/nodes/ColorRange.png)|
||作用力||
|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>获取该颜色的亮度值。|![IMAGE](images/nodes/Color.Brightness.png)|
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>按以下顺序列出颜色分量：Alpha、红、绿、蓝。|![IMAGE](images/nodes/Color.Components.png)|
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>获取该颜色的饱和度值|![IMAGE](images/nodes/Color.Saturation.png)|
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>获取该颜色的色调值。|![IMAGE](images/nodes/Color.Hue.png)|
||查询||
|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>查找颜色的 Alpha 分量：0 到 255。|![IMAGE](images/nodes/Color.Alpha.png)|
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>查找颜色的蓝色分量：0 到 255。|![IMAGE](images/nodes/Color.Blue.png)|
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>查找颜色的绿色分量：0 到 255。|![IMAGE](images/nodes/Color.Green.png)|
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>查找颜色的红色分量：0 到 255。|![IMAGE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>使用一种颜色显示几何图形。|![IMAGE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**布尔**<br>在“True”和“False”之间选择。|![IMAGE](images/nodes/Boolean.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**代码块**<br>允许直接编写 DesignScript 代码。|![IMAGE](images/nodes/CodeBlock.png)|
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**目录路径<br>**允许您选择系统上的目录以获取其路径|![IMAGE](images/nodes/DirectoryPath.png)|
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**文件路径**<br>允许您选择系统上的文件以获取其文件名。|![IMAGE](images/nodes/FilePath.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**整数滑块**<br>用于生成整数值的滑块。|![IMAGE](images/nodes/IntegerSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**数字**<br>创建数字。|![IMAGE](images/nodes/Number.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**数字滑块**<br>用于生成数字值的滑块。|![IMAGE](images/nodes/NumberSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**字符串**<br>创建字符串。|![IMAGE](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>基于给定输入创建一个新列表。|![IMAGE](images/nodes/List.Create.png)|
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>将组合器应用于两个序列中的每个元素|![IMAGE](images/nodes/List.Combine.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**数字范围**<br>按指定范围创建一系列数字。|![IMAGE](images/nodes/NumberRange.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**数字序列**<br>创建一系列数字。|![IMAGE](images/nodes/NumberSequence.png)|
||作用力||
|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>将某个列表切成一组列表，其中每个列表包含给定数量的项目。|![IMAGE](images/nodes/List.Chop.png)|
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>获取存储于给定列表中的项数。|![IMAGE](images/nodes/List.Count.png)|
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>按一定数量展平一列嵌套列表。|![IMAGE](images/nodes/List.Flatten.png)|
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>通过在单独布尔列表中查找相应索引过滤序列。|![IMAGE](images/nodes/List.FilterByBoolMask.png)|
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>获取位于指定索引处给定列表中的项目。|![IMAGE](images/nodes/List.GetItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>将函数应用于列表的所有元素，从而基于结果生成一个新列表。|![IMAGE](images/nodes/List.Map.png)|
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>以相反顺序创建包含给定列表各项的新列表。|![IMAGE](images/nodes/List.Reverse.png)|
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>替换位于指定索引处给定列表中的项目。|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>将列表中的索引右移给定数量|![IMAGE](images/nodes/List.ShiftIndices.png)|
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>在给定偏移后是给定值倍数的索引处提取给定列表的项。|![IMAGE](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>交换一列列表中的行和列。如果一些行长短不一，则 Null 值将作为占位符插入结果数组中，使其始终为矩形|![IMAGE](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>条件语句。检查测试输入的布尔值。如果测试输入为 True，则结果将输出 True 输入，否则结果将输出 False 输入。|![IMAGE](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>查找角度的余弦。|![IMAGE](images/nodes/Math.Cos.png)|
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>将以度为单位的角度换算为以弧度为单位的角度。|![IMAGE](images/nodes/Math.DegreesToRadians.png)|
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>求数字的指定次幂。|![IMAGE](images/nodes/Math.Pow.png)|
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>将以弧度为单位的角度换算为以度为单位的角度。|![IMAGE](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>调整数字列表的范围，同时保留分布率。|![IMAGE](images/nodes/Math.RemapRange.png)|
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>查找角度的正弦。|![IMAGE](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>确定给定对象是否为 Null。|![IMAGE](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**公式**<br>计算数学公式。使用 NCalc 进行评估。请参见 [http://ncalc.codeplex.com](http://ncalc.codeplex.com)|![IMAGE](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>将多个字符串合并为单个字符串。|![IMAGE](images/nodes/String.Concat.png)|
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>确定给定字符串是否包含给定子字符串。|![IMAGE](images/nodes/String.Contains.png)|
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>将多个字符串合并为单个字符串，在每个连接的字符串之间插入给定分隔符。|![IMAGE](images/nodes/String.Join.png)|
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>使用由给定分隔符字符串确定的分段，将单个字符串拆分为字符串列表。|![IMAGE](images/nodes/String.Split.png)|
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>将字符串转换为整数或双精度数。|![IMAGE](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>将节点输出内容可视化。|![IMAGE](images/nodes/Watch.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>显示几何图形的动态预览。|![IMAGE](images/nodes/Watch3D.png)|

## 几何

#### Geometry.Circle

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>以世界坐标系 Z 轴为法线，通过在世界坐标系 XY 平面输入圆心和半径创建圆。|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>在输入平面内以输入平面原点（根）为圆心，按给定半径创建圆。|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>创建 CoordinateSystem，方法是使其原点位于输入点，X 和 Y 轴设置为 WCS 的 X 和 Y 轴|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>在指定柱面坐标参数处相对于指定坐标系创建 CoordinateSystem|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths**（原点）<br>以输入点为中心使用特定宽度、长度和高度创建立方体。|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude**（距离）<br>朝法向量方向拉伸曲线。|![IMAGE](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>获取 StartParameter() 和 EndParameter() 之间指定参数处曲线上的点。|![IMAGE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||作用力||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>获取从该几何图形到另一几何图形的距离。|![IMAGE](images/nodes/Geometry.DistanceTo.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>将复合或非单独图元拆分为其构件|![IMAGE](images/nodes/Geometry.Explode.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>输入几何图形的列表|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate**（基准面）<br>绕平面原点和法线将对象旋转指定度数。|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>将任意几何图形类型按给定距离朝给定方向平移。|![IMAGE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>创建最逼近点散布图的直线。|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>从某个点开始创建直线，朝向量方向延伸指定长度。|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>在两个输入点之间创建一条直线。|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>创建与输入曲线相切的直线，定位于输入曲线的参数点处。|![IMAGE](images/nodes/Line.ByTangency.png)|
||查询||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>曲线的方向。|![IMAGE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>使用显式控制点创建 BSplineCurve。|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>通过在各点之间插值创建 BSplineCurve|![图像](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>通过使用具有指定 U 和 V 度数的显式控制点创建 NurbsSurface。|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>使用指定插值点以及 U 和 V 度数创建 NurbsSurface。生成的曲面将通过所有点。|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>以原点为中心通过输入法向量创建平面。|![IMAGE](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>在世界坐标 XY 平面创建平面|![IMAGE](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>在给定坐标系中通过 3 个笛卡尔坐标形成一个点|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates**（二维） <br>在 XY 平面中通过 2 个笛卡尔坐标形成一个点。Z 分量为 0。|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates**(三维)<br>通过给定的 3 个笛卡尔坐标形成一个点。|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>获取原点 (0,0,0)|![IMAGE](images/nodes/Point.Origin.png)|
||作用力||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>将向量添加到点。相当于平移（向量）。|![IMAGE](images/nodes/Point.Add.png)|
||查询||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>获取点的 X 分量|![IMAGE](images/nodes/Point.X.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>获取点的 Y 分量|![IMAGE](images/nodes/Point.Y.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>获取点的 Z 分量|![IMAGE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>由连接点的直线序列生成 PolyCurve。对于闭合曲线，最后一个点应与起点位于同一位置。|![IMAGE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength**（平面）<br>以输入平面原点为中心按输入宽度(平面 X 轴长度)和长度(平面 Y 轴长度)创建矩形。|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>以输入点为球心按给定半径创建实心球体。|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>通过在输入横截面曲线之间放样来创建实体|![IMAGE](images/nodes/Surface.ByLoft.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>通过在由输入曲线确定的闭合边界内填充来创建曲面。|![IMAGE](images/nodes/Surface.ByPatch.png)|
||作用力||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>在曲面法线方向按指定距离偏移曲面|![IMAGE](images/nodes/Surface.Offset.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>返回指定 U 和 V 参数处的点。|![IMAGE](images/nodes/Surface.PointAtParameter.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>加厚曲面到实体，朝曲面法线方向在曲面两侧进行拉伸。|![IMAGE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>由两个双精度数创建 UV。|![IMAGE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||创建||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**由 3 个欧几里得坐标形成一个向量|![IMAGE](images/nodes/Vector.ByCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>获取规范 X 轴向量 (1,0,0)|![IMAGE](images/nodes/Vector.XAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>获取规范 Y 轴向量 (0,1,0)|![IMAGE](images/nodes/Vector.YAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>获取规范 Z 轴向量 (0,0,1)|![IMAGE](images/nodes/Vector.ZAxis.png)|
||作用力||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>获取向量的规范版本|![IMAGE](images/nodes/Vector.Normalized.png)|

## 运算符

||||
| -- | -- | -- |
|![IMAGE](images/A-2/add.Large.png)|**+**<br>加|![IMAGE](images/nodes/Addition.png)|
|![IMAGE](images/A-2/sub.Large.png)|**-**<br>减|![IMAGE](images/nodes/Subtraction.png)|
|![IMAGE](images/A-2/mul.Large.png)|*****<br>乘|![IMAGE](images/nodes/Multiplication.png)|
|![IMAGE](images/A-2/div.Large.png)|**/**<br>除|![IMAGE](images/nodes/Division.png)|
|![IMAGE](images/A-2/mod.Large.png)|**%**<br>模块除法将查找在除以第二个输入后得到的第一个输入的余数|![IMAGE](images/nodes/ModularDivision.png)|
|![IMAGE](images/A-2/lt.Large.png)|**<**<br>小于|![IMAGE](images/nodes/LessThan.png)|
|![IMAGE](images/A-2/gt.Large.png)|**>**<br>大于|![IMAGE](images/nodes/GreaterThan.png)|
|![IMAGE](images/A-2/eq.Large.png)|**==**<br>两个值之间的相等测试。|![IMAGE](images/nodes/Equality.png)|

