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



# ノードの索引

##### この索引では、この手引で言及しているすべてのノードと他の便利なコンポーネントについて、補足情報を提供します。ここで紹介するのは、Dynamo で使用できる 500 個のノードのうち一部にすぎません。


## 組み込み関数
--
||||
| -- | -- | -- |
|![IMAGE](images/A-2/Count.Large.png)|**Count**指定されたリスト内の項目の数を返します。|![IMAGE](images/nodes/Count.png)|
|![IMAGE](images/A-2/Flatten.Large.png)|**Flatten**入力された多次元のリストをフラットにした 1 次元のリストを返します。|![IMAGE](images/nodes/Flatten.png)|
|![IMAGE](images/A-2/Map.Large.png)|**Map**値を入力された範囲にマッピングします。|![IMAGE](images/nodes/Map.png)|

## Core
--

#### Core.Color

||||
| -- | -- | -- |
||CREATE||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**アルファ、赤、緑、青の各成分から色を作成します。|![IMAGE](images/nodes/Color.ByARGB.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Color Range**開始色と終了色間の色のグラデーションから色を取得します。|![IMAGE](images/nodes/ColorRange.png)|


||ACTIONS||

|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**色の明度の値を取得します。|![IMAGE](images/nodes/Color.Brightness.png)|
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**色の各成分を、アルファ、赤、緑、青の順のリストとして返します。|![IMAGE](images/nodes/Color.Components.png)|
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**色の彩度の値を取得します。|![IMAGE](images/nodes/Color.Saturation.png)|
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**色の色相の値を取得します。|![IMAGE](images/nodes/Color.Hue.png)|

||QUERY||

|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**色のアルファ成分の値(0 ～ 255)を取得します。|![IMAGE](images/nodes/Color.Alpha.png)|
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**色の青色成分の値(0 ～ 255)を取得します。|![IMAGE](images/nodes/Color.Blue.png)|
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**色の赤色成分の値(0 ～ 255)を取得します。|![IMAGE](images/nodes/Color.Green.png)|
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**色の緑色成分の値(0 ～ 255)を取得します。|![IMAGE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |

||CREATE||

|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**任意の色を使用してジオメトリを表示します。|![IMAGE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||

| -- | -- | -- |

||ACTIONS||

|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Boolean**True と False のいずれかを選択します。|![IMAGE](images/nodes/Boolean.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Code Block**DesignScript のコードを直接作成することができます。|![IMAGE](images/nodes/CodeBlock.png)|
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**システム上で任意のフォルダを選択して、そのパスを取得することができます。|![IMAGE](images/nodes/DirectoryPath.png)|
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**File Path**システム上で任意のファイルを選択して、そのファイル名を取得することができます。|![IMAGE](images/nodes/FilePath.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**整数値を生成するスライダです。|![IMAGE](images/nodes/IntegerSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Number** 数値を作成します。|![IMAGE](images/nodes/Number.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider** 数値を生成するスライダです。|![IMAGE](images/nodes/NumberSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**文字列を作成します。|![IMAGE](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |

||CREATE||
|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**与えられた入力に基づいて新しいリストを作成します。|![IMAGE](images/nodes/List.Create.png)|
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**2 つのシーケンスの各要素にコンビネータを適用します。|![IMAGE](images/nodes/List.Combine.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Number Range**指定された範囲内で数値のシーケンスを作成します。|![IMAGE](images/nodes/NumberRange.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Number Sequence**数値のシーケンスを作成します。|![IMAGE](images/nodes/NumberSequence.png)|

||ACTIONS||

|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**リストを、それぞれ指定された個数の項目から成るリストの集合に分割します。|![IMAGE](images/nodes/List.Chop.png)|
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**指定されたリストに格納されている項目の数を返します。|![IMAGE](images/nodes/List.Count.png)|
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**ネストされたリストのリストを、指定された量だけフラットにします。|![IMAGE](images/nodes/List.Flatten.png)|
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**別個のブール値を要素に持つリスト内で対応するインデックスを検索して、シーケンスをフィルタします。|![IMAGE](images/nodes/List.FilterByBoolMask.png)|
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**リストの、指定されたインデックスにある項目を取得します。|![IMAGE](images/nodes/List.GetItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**リスト内のすべての要素に関数を適用し、その結果から新しいリストを生成します。|![IMAGE](images/nodes/List.Map.png)|
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**指定されたリスト内の項目を逆順で含む新しいリストを作成します。|![IMAGE](images/nodes/List.Reverse.png)|
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**リストの、指定されたインデックスにある項目を置き換えます。|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**リスト内のインデックスを、指定された量だけ右に移動します。|![IMAGE](images/nodes/List.ShiftIndices.png)|
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**指定されたオフセットの後、指定された値の倍数であるインデックスの項目を、指定されたリストから取得します。|![IMAGE](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**任意のリストのリストの行と列を入れ替えます。他の行よりも短い行がある場合は、作成される配列が常に長方形になるように、プレースホルダーとして NULL 値が挿入されます。|![IMAGE](images/nodes/List.Transpose.png)|

#### Core.Logic

||||



| -- | -- | -- |

||ACTIONS||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**条件ステートメントです。テスト入力のブール値をチェックします。テスト入力が true である場合は、結果として true の入力を出力します。false である場合は、結果として false の入力を出力します。|![IMAGE](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |

||ACTIONS||

|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**角度の余弦を求めます。|![IMAGE](images/nodes/Math.Cos.png)|
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**度単位の角度をラジアン単位の角度に変換します。|![IMAGE](images/nodes/Math.DegreesToRadians.png)|
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**指定された指数に対して値を累乗します。|![IMAGE](images/nodes/Math.Pow.png)|
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**ラジアン単位の角度を度単位の角度に変換します。|![IMAGE](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**分布比率を保持しながら数値のリストの範囲を調整します。|![IMAGE](images/nodes/Math.RemapRange.png)|
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**角度の正弦を求めます。|![IMAGE](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |

||ACTIONS||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**指定されたオブジェクトが NULL であるかどうかを判断します。|![IMAGE](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |

||ACTIONS||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**Formula**数学式を評価します。NCalc を評価に使用します。[http://ncalc.codeplex.com](http://ncalc.codeplex.com) を参照してください。|![IMAGE](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |

||ACTIONS||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**複数の文字列を 1 つの文字列に連結します。|![IMAGE](images/nodes/String.Concat.png)|
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**指定された文字列に指定されたサブストリングが含まれているかどうかを判断します。|![IMAGE](images/nodes/String.Contains.png)|
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**複数の文字列を 1 つの文字列に連結し、結合されるそれぞれの文字列の間に区切り文字を挿入します。|![IMAGE](images/nodes/String.Join.png)|
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**1 つの文字列を文字列のリストに分割します。指定された区切り文字によって分割場所が決定されます。|![IMAGE](images/nodes/String.Split.png)|
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**文字列を整数または倍精度浮動小数点数に変換します。|![IMAGE](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |

||ACTIONS||

|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**ノードの出力を視覚化します。|![IMAGE](images/nodes/Watch.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**ジオメトリのダイナミック プレビューを表示します。|![IMAGE](images/nodes/Watch3D.png)|

## Geometry

#### Geometry.Circle

||||
| -- | -- | -- |

||CREATE||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**入力された中心点と半径をワールド座標系の XY 平面に持ち、ワールド座標系の Z 軸を法線とする円を作成します。|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**入力された平面の基準点(ルート)に中心を持ち、指定された半径を持つ円を平面上に作成します。|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |

||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**入力された点に基準点を持ち、X 軸と Y 軸を WCS(ワールド座標系)の X 軸および Y 軸に設定した座標系を作成します。|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**指定された座標系に対して、指定された円柱座標パラメータに基づいて座標系を作成します。|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |

||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths** (origin)中心を入力された点に設定し、指定された幅、長さ、高さの直方体を作成します。|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |

||ACTIONS||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (distance)法線ベクトルの方向に曲線を押し出します。|![IMAGE](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**StartParameter() から EndParameter() までの範囲の指定されたパラメータで曲線上の点を取得します。|![IMAGE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |

||ACTIONS||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**このジオメトリから別のジオメトリへの距離を取得します。|![IMAGE](images/nodes/Geometry.DistanceTo.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**複合要素または分割されていない要素をコンポーネント パーツに分割します。|![IMAGE](images/nodes/Geometry.Explode.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**読み込まれたジオメトリのリストです。|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)平面の基準点と法線を中心にオブジェクトを指定された角度だけ回転させます。|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**指定された方向に距離を指定して、ジオメトリ タイプを平行移動させます。|![IMAGE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |

||CREATE||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**点の散布図に最もよく近似する直線を作成します。|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**開始点から始まり、ベクトルの向きに指定された長さだけ延長する線分を作成します。|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**入力された 2 点を端点とする線分を作成します。|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**入力された曲線に接し、曲線のパラメータで指定された点に位置する直線を作成します。|![IMAGE](images/nodes/Line.ByTangency.png)|

||QUERY||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**曲線の方向を返します。|![IMAGE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |

||Create||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**明示的な制御点を使用して B スプライン曲線を作成します。|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**点間を補間して B スプライン曲線を作成します。|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |

||Create||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**明示的な制御点と指定された U 次数と V 次数を使用して NURBS 曲面 を作成します。|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**指定された補間される点、U 次数、V 次数を使用して NURBS 曲面を作成します。作成されるサーフェスはすべての指定された点を通過します。|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |

||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**中心をルート点に持ち、入力された法線ベクトルを持つ平面を作成します。|![IMAGE](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**ワールド座標系の XY に平面を作成します。|![IMAGE](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |

||CREATE||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**指定された座標系と 3 つのデカルト座標で点を作成します。|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2D) 指定された 2 つのデカルト座標を使用して、XY 平面に点を作成します。Z コンポーネントは 0 です。|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3D)指定された 3 つのデカルト座標を使用して点を作成します。|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**基準点 (0,0,0)を取得します。|![IMAGE](images/nodes/Point.Origin.png)|

||ACTIONS||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**点にベクトルを追加します。Translate(Vector)と同じ操作です。|![IMAGE](images/nodes/Point.Add.png)|

||QUERY||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**点の X 座標を取得します。|![IMAGE](images/nodes/Point.X.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**点の Y 座標を取得します。|![IMAGE](images/nodes/Point.Y.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**点の Z 座標を取得します。|![IMAGE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |

||CREATE||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**点をつなげる線分のシーケンスからポリカーブを作成します。閉じた曲線を作成するには、最後の点の位置を始点の位置と同じにします。|![IMAGE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |

||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (Plane)入力された幅(平面の X 軸の長さ)と高さ(平面の Y 軸の長さ)を使用して、平面のルートを中心とする長方形を作成します。|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||

| -- | -- | -- |

||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**入力された点を中心とし、指定された半径を持つソリッド球体を作成します。|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |

||CREATE||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**入力された断面曲線間をロフトしてサーフェスを作成します。|![IMAGE](images/nodes/Surface.ByLoft.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**入力された曲線で設定される閉じた境界の内部を塗り潰してサーフェスを作成します。|![IMAGE](images/nodes/Surface.ByPatch.png)|

||ACTIONS||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**サーフェスの法線の方向に指定された距離だけサーフェスをオフセットします。|![IMAGE](images/nodes/Surface.Offset.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**指定された U および V パラメータの点を返します。|![IMAGE](images/nodes/Surface.PointAtParameter.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**サーフェスに厚みを持たせてソリッドを作成します。サーフェスを法線の方向に両側に押し出します。|![IMAGE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |

||CREATE||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**2 つの倍精度浮動小数点値から UV を作成します。|![IMAGE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |

||CREATE||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**3 つのユークリッド座標でベクトルを形成します。|![IMAGE](images/nodes/Vector.ByCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**基底 X 軸ベクトル(1,0,0)を取得します。|![IMAGE](images/nodes/Vector.XAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**基底 Y 軸ベクトル(0,1,0)を取得します。|![IMAGE](images/nodes/Vector.YAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**基底 Z 軸ベクトル(0,0,1)を取得します。|![IMAGE](images/nodes/Vector.ZAxis.png)|

||ACTIONS||

|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**正規化されたベクトルを取得します。|![IMAGE](images/nodes/Vector.Normalized.png)|



演算子
--
||||
| -- | -- | -- |
|![IMAGE](images/A-2/add.Large.png)|**+**加算|![IMAGE](images/nodes/Addition.png)|
|![IMAGE](images/A-2/sub.Large.png)|**-**減算|![IMAGE](images/nodes/Subtraction.png)|
|![IMAGE](images/A-2/mul.Large.png)|*****乗算|![IMAGE](images/nodes/Multiplication.png)|
|![IMAGE](images/A-2/div.Large.png)|**/**除算|![IMAGE](images/nodes/Division.png)|
|![IMAGE](images/A-2/mod.Large.png)|**%**剰余演算により、1 番目の入力を 2 番目の入力で除算して剰余を取得します。|![IMAGE](images/nodes/ModularDivision.png)|
|![IMAGE](images/A-2/lt.Large.png)|**<**1 番目の値が 2 番目の値より小さいかどうか検証します。|![IMAGE](images/nodes/LessThan.png)|
|![IMAGE](images/A-2/gt.Large.png)|**>**1 番目の値が 2 番目の値より大いかどうか検証します。|![IMAGE](images/nodes/GreaterThan.png)|
|![IMAGE](images/A-2/eq.Large.png)|**==**2 つの値が等しいかどうか検証します。|![IMAGE](images/nodes/Equality.png)|

