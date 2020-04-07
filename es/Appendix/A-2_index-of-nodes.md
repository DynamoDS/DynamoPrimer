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

# ÍNDICE DE NODOS

##### Este índice proporciona información adicional sobre todos los nodos utilizados en este manual de introducción, así como sobre otros componentes que puede resultar útiles. Esto es solo una introducción a algunos de los 500 nodos disponibles en Dynamo.

## Funciones integradas

||||
| -- | -- | -- |
|![IMAGE](images/A-2/Count.Large.png)|**Count**<br>Devuelve el número de elementos de la lista especificada|![IMAGE](images/nodes/Count.png)|
|![IMAGE](images/A-2/Flatten.Large.png)|**Flatten**<br>Devuelve la lista 1D simplificada de la lista de entrada multidimensional.|![IMAGE](images/nodes/Flatten.png)|
|![IMAGE](images/A-2/Map.Large.png)|**Map**<br>Asigna un valor a un rango de entrada.|![IMAGE](images/nodes/Map.png)|

## Core

#### Core.Color

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/DSCore.Color.ByARGB.Large.png)|**Color.ByARGB**<br>Genera un color mediante componentes alfa, rojo, verde y azul.|![IMAGE](images/nodes/Color.ByARGB.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.ColorRange.Large.png)|**Color Range**<br>Obtiene un color de un degradado de color entre un color inicial y un color final.|![IMAGE](images/nodes/ColorRange.png)|
||ACCIONES||
|![IMAGE](images/A-2/DSCore.Color.Brightness.Large.png)|**Color.Brightness**<br>Obtiene el valor de brillo de este color.|![IMAGE](images/nodes/Color.Brightness.png)|
|![IMAGE](images/A-2/DSCore.Color.Components.Large.png)|**Color.Components**<br>Enumera los componentes del color en el orden siguiente: alfa, rojo, verde, azul.|![IMAGE](images/nodes/Color.Components.png)|
|![IMAGE](images/A-2/DSCore.Color.Saturation.Large.png)|**Color.Saturation**<br>Obtiene el valor de saturación de este color.|![IMAGE](images/nodes/Color.Saturation.png)|
|![IMAGE](images/A-2/DSCore.Color.Hue.Large.png)|**Color.Hue**<br>Obtiene el valor de matiz de este color.|![IMAGE](images/nodes/Color.Hue.png)|
||CONSULTA||
|![IMAGE](images/A-2/DSCore.Color.Alpha.Large.png)|**Color.Alpha**<br>Busca el componente alfa del color, de 0 a 255.|![IMAGE](images/nodes/Color.Alpha.png)|
|![IMAGE](images/A-2/DSCore.Color.Blue.Large.png)|**Color.Blue**<br>Busca el componente azul del color, de 0 a 255.|![IMAGE](images/nodes/Color.Blue.png)|
|![IMAGE](images/A-2/DSCore.Color.Green.Large.png)|**Color.Green**<br>Busca el componente verde del color, de 0 a 255.|![IMAGE](images/nodes/Color.Green.png)|
|![IMAGE](images/A-2/DSCore.Color.Red.Large.png)|**Color.Red**<br>Busca el componente rojo del color, de 0 a 255.|![IMAGE](images/nodes/Color.Red.png)|

#### Core.Display

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Display.ByGeometryColor.png)|**Display.ByGeometryColor**<br>Muestra geometría mediante un color.|![IMAGE](images/nodes/Display.ByGeometryColor.png)|

#### Core.Input

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/DSCoreNodesUI.BoolSelector.Large.png)|**Boolean**<br>Selección entre un valor "true" (verdadero) y "false" (falso).|![IMAGE](images/nodes/Boolean.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.CodeBlockNodeModel.Large.png)|**Bloque de código**<br>Permite la creación directa de código de DesignScript.|![IMAGE](images/nodes/CodeBlock.png)|
|![IMAGE](images/A-2/DSCore.File.Directory.Large.png)|**Directory Path**<br>Permite seleccionar un directorio del sistema para obtener su ruta.|![IMAGE](images/nodes/DirectoryPath.png)|
|![IMAGE](images/A-2/DSCore.File.Filename.Large.png)|**File Path**<br>Permite seleccionar un archivo del sistema para obtener su nombre de archivo|![IMAGE](images/nodes/FilePath.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.IntegerSlider.Large.png)|**Integer Slider**<br>Un control deslizante que genera valores enteros.|![IMAGE](images/nodes/IntegerSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.DoubleInput.Large.png)|**Number** <br>Crea un número.|![IMAGE](images/nodes/Number.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.Input.DoubleSlider.Large.png)|**Number Slider** <br>Un control deslizante que genera valores numéricos.|![IMAGE](images/nodes/NumberSlider.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.StringInput.Large.png)|**String**<br>Crea una cadena.|![IMAGE](images/nodes/String.png)|

#### Core.List

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/DSCore.List.Create.Large.png)|**List.Create**<br>Crea una nueva lista a partir de las entradas especificadas.|![IMAGE](images/nodes/List.Create.png)|
|![IMAGE](images/A-2/DSCore.List.Combine.Large.png)|**List.Combine**<br>Aplica un combinador a cada elemento en dos secuencias|![IMAGE](images/nodes/List.Combine.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberRange.Large.png)|**Intervalo de números**<br>Crea una secuencia de números o letras en el intervalo especificado.|![IMAGE](images/nodes/NumberRange.png)|
|![IMAGE](images/A-2/DSCoreNodesUI.NumberSeq.Large.png)|**Secuencia de números**<br>Crea una secuencia de números.|![IMAGE](images/nodes/NumberSequence.png)|
||ACCIONES||
|![IMAGE](images/A-2/DSCore.List.Chop.Large.png)|**List.Chop**<br>Divide una lista en un conjunto de listas en el que cada una contiene la cantidad especificada de elementos.|![IMAGE](images/nodes/List.Chop.png)|
|![IMAGE](images/A-2/DSCore.List.Count.Large.png)|**List.Count**<br>Obtiene el número de elementos almacenados en la lista especificada.|![IMAGE](images/nodes/List.Count.png)|
|![IMAGE](images/A-2/DSCore.List.Flatten.Large.png)|**List.Flatten**<br>Aplana una lista anidada de listas en función de una determinada cantidad.|![IMAGE](images/nodes/List.Flatten.png)|
|![IMAGE](images/A-2/DSCore.List.FilterByBoolMask.Large.png)|**List.FilterByBoolMask**<br>Filtra una secuencia mediante la búsqueda de los índices correspondientes en una lista independiente de valores booleanos.|![IMAGE](images/nodes/List.FilterByBoolMask.png)|
|![IMAGE](images/A-2/DSCore.List.GetItemAtIndex.Large.png)|**List.GetItemAtIndex**<br>Devuelve un elemento de la lista especificada que se encuentra en el índice indicado.|![IMAGE](images/nodes/List.GetItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.Map.Large.png)|**List.Map**<br>Aplica una función a todos los elementos de una lista y genera una lista nueva a partir de los resultados|![IMAGE](images/nodes/List.Map.png)|
|![IMAGE](images/A-2/DSCore.List.Reverse.Large.png)|**List.Reverse**<br>Crea una lista con los elementos de la lista especificada, pero en el orden inverso.|![IMAGE](images/nodes/List.Reverse.png)|
|![IMAGE](images/A-2/DSCore.List.ReplaceItemAtIndex.Large.png)|**List.ReplaceItemAtIndex**<br>Sustituye un elemento de la lista especificada que se encuentra en el índice indicado.|![IMAGE](images/nodes/List.ReplaceItemAtIndex.png)|
|![IMAGE](images/A-2/DSCore.List.ShiftIndices.Large.png)|**List.ShiftIndices**<br>Desplaza a la derecha los índices de la lista en función de la cantidad especificada.|![IMAGE](images/nodes/List.ShiftIndices.png)|
|![IMAGE](images/A-2/DSCore.List.TakeEveryNthItem.Large.png)|**List.TakeEveryNthItem**<br>Recupera elementos de la lista especificada en los índices que son múltiplos del valor especificado y después del desfase indicado.|![IMAGE](images/nodes/List.TakeEveryNthItem.png)|
|![IMAGE](images/A-2/DSCore.List.Transpose.Large.png)|**List.Transpose**<br>Intercambia filas y columnas en una lista de listas. Si hay algunas filas más cortas que otras, los valores nulos se insertan como marcadores de posición en la matriz resultante de forma que siempre sean rectangulares.|![IMAGE](images/nodes/List.Transpose.png)|

#### Core.Logic

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/DSCoreNodesUI.Logic.If.Large.png)|**If**<br>Sentencia condicional. Comprueba el valor booleano de la entrada de prueba. Si la entrada de prueba es "true" (verdadera), el resultado genera la entrada "true"; de lo contrario, el resultado genera la entrada "false" (falsa).|![IMAGE](images/nodes/If.png)|

#### Core.Math

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/DSCore.Math.Cos.Large.png)|**Math.Cos**<br>Devuelve el coseno de un ángulo.|![IMAGE](images/nodes/Math.Cos.png)|
|![IMAGE](images/A-2/DSCore.Math.DegreesToRadians.Large.png)|**Math.DegreesToRadians**<br>Convierte un ángulo expresado en grados en un ángulo expresado en radianes.|![IMAGE](images/nodes/Math.DegreesToRadians.png)|
|![IMAGE](images/A-2/DSCore.Math.Pow.Large.png)|**Math.Pow**<br>Eleva un número a la potencia especificada.|![IMAGE](images/nodes/Math.Pow.png)|
|![IMAGE](images/A-2/DSCore.Math.RadiansToDegrees.Large.png)|**Math.RadiansToDegrees**<br>Convierte un ángulo expresado en radianes en un ángulo expresado en grados.|![IMAGE](images/nodes/Math.RadiansToDegrees.png)|
|![IMAGE](images/A-2/DSCore.Math.RemapRange.Large.png)|**Math.RemapRange**<br>Ajusta el intervalo de una lista de números conservando la relación de distribución.|![IMAGE](images/nodes/Math.RemapRange.png)|
|![IMAGE](images/A-2/DSCore.Math.Sin.Large.png)|**Math.Sin**<br>Calcula el seno de un ángulo.|![IMAGE](images/nodes/Math.Sin.png)|

#### Core.Object

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/DSCore.Object.IsNull.Large.png)|**Object.IsNull**<br>Determina si el objeto especificado es nulo.|![IMAGE](images/nodes/Object.IsNull.png)|

#### Core.Scripting

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/DSCore.Scripting.Formula.Large.png)|**Formula**<br>Evalúa fórmulas matemáticas. Utiliza NCalc para la evaluación. Consulte [http://ncalc.codeplex.com](http://ncalc.codeplex.com).|![IMAGE](images/nodes/Formula.png)|

#### Core.String

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/DSCore.String.Concat.Large.png)|**String.Concat**<br>Concatena varias cadenas y crea una sola cadena.|![IMAGE](images/nodes/String.Concat.png)|
|![IMAGE](images/A-2/DSCore.String.Contains.Large.png)|**String.Contains**<br>Determina si la cadena indicada contiene la subcadena especificada.|![IMAGE](images/nodes/String.Contains.png)|
|![IMAGE](images/A-2/DSCore.String.Join.Large.png)|**String.Join**<br>Concatena varias cadenas en una sola e inserta el separador especificado entre cada una de las cadenas unidas.|![IMAGE](images/nodes/String.Join.png)|
|![IMAGE](images/A-2/DSCore.String.Split.Large.png)|**String.Split**<br>Divide una cadena en una lista de cadenas. Las cadenas de separación especificadas determinan las divisiones.|![IMAGE](images/nodes/String.Split.png)|
|![IMAGE](images/A-2/DSCore.String.ToNumber.Large.png)|**String.ToNumber**<br>Convierte una cadena en un número entero o doble.|![IMAGE](images/nodes/String.ToNumber.png)|

#### Core.View

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/Dynamo.Nodes.Watch.Large.png)|**View.Watch**<br>Permite visualizar la salida del nodo.|![IMAGE](images/nodes/Watch.png)|
|![IMAGE](images/A-2/Dynamo.Nodes.Watch3D.Large.png)|**View.Watch 3D**<br>Muestra una vista preliminar dinámica de la geometría.|![IMAGE](images/nodes/Watch3D.png)|

## Geometría

#### Geometry.Circle

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByCenterPointRadius.Large.png)|**Circle.ByCenterPointRadius**<br>Crea un círculo con punto central y radio en el plano XY universal, con el plano Z universal como normal.|![IMAGE](images/nodes/Circle.ByCenterPointRadius.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Circle.ByPlaneRadius.Large.png)|**Circle.ByPlaneRadius**<br>Crea un círculo centrado en el origen de plano de entrada (raíz), que se encuentra en el plano de entrada, con el radio especificado.|![IMAGE](images/nodes/Circle.ByPlaneRadius.png)|

#### Geometry.CoordinateSystem

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByOrigin.Point.Large.png)|**CoordinateSystem.ByOrigin**<br>Crea un CoordinateSystem con origen en el punto de entrada con los ejes X e Y establecidos como los ejes X e Y de SCU.|![IMAGE](images/nodes/CoordinateSystem.ByOrigin.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.CoordinateSystem.ByCylindricalCoordinates.Large.png)|**CoordinateSystem.ByCyclindricalCoordinates**<br>Crea un CoordinateSystem en los parámetros de coordenadas cilíndricas especificados respecto al sistema de coordenadas especificado.|![IMAGE](images/nodes/CoordinateSystem.ByCylindricalCoordinates.png)|

#### Geometry.Cuboid

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Cuboid.ByLengths.Point-double-double-double.Large.png)|**Cuboid.ByLengths** (origin)<br>Crea un cubo centrado en el punto de entrada con la anchura, la longitud y la altura especificadas.|![IMAGE](images/nodes/Cuboid.ByLengths_Origin.png)|

#### Geometry.Curve

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.Extrude.double.Large.png)|**Curve.Extrude** (distance)<br>Extruye una curva en la dirección del vector normal.|![IMAGE](images/nodes/Curve.Extrude_Distance.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Curve.PointAtParameter.Large.png)|**Curve.PointAtParameter**<br>Obtiene un punto en la curva en el parámetro especificado entre StartParameter() y EndParameter().|![IMAGE](images/nodes/Curve.PointAtParameter.png)|

#### Geometry.Geometry

||||
| -- | -- | -- |
||ACCIONES||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.DistanceTo.Large.png)|**Geometry.DistanceTo**<br>Obtiene la distancia entre esta geometría y otra.|![IMAGE](images/nodes/Geometry.DistanceTo.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Explode.Large.png)|**Geometry.Explode**<br>Separa elementos compuestos o no separados en sus componentes.|![IMAGE](images/nodes/Geometry.Explode.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.ImportFromSAT.var.Large.png)|**Geometry.ImportFromSAT**<br>Lista de geometrías importadas|![IMAGE](images/nodes/Geometry.ImportFromSAT.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Rotate.Plane-double.Large.png)|**Geometry.Rotate** (basePlane)<br>Rota un objeto sobre la normal y el origen del plano el número de grados especificado.|![IMAGE](images/nodes/Geometry.Rotate_BasePlane.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Geometry.Translate.Vector-double.Large.png)|**Geometry.Translate**<br>Traslada cualquier tipo de geometría según la distancia especificada en la dirección indicada.|![IMAGE](images/nodes/Geometry.Translate.png)|

#### Geometry.Line

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByBestFitThroughPoints.Large.png)|**Line.ByBestFitThroughPoints**<br>Crea una línea que aproxima al máximo un diagrama de dispersión de puntos.|![IMAGE](images/nodes/Line.ByBestFitThroughPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointDirectionLength.Large.png)|**Line.ByStartPointDirectionLength**<br>Crea una línea recta desde el punto inicial y la extiende la longitud especificada en la dirección del vector.|![IMAGE](images/nodes/Line.ByStartPointDirectionLength.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByStartPointEndPoint.Large.png)|**Line.ByStartPointEndPoint**<br>Crea una línea recta entre dos puntos de entrada.|![IMAGE](images/nodes/Line.ByStartPointEndPoint.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.ByTangency.Large.png)|**Line.ByTangency**<br>Crea una línea tangente a la curva de entrada, que se coloca en el parámetro de punto de la curva de entrada.|![IMAGE](images/nodes/Line.ByTangency.png)|
||CONSULTA||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Line.Direction.Large.png)|**Line.Direction**<br>La dirección de la curva.|![IMAGE](images/nodes/Line.Direction.png)|

#### Geometry.NurbsCurve

||||
| -- | -- | -- |
||Crear||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByControlPoints.Point1-int.Large.png)|**NurbsCurve.ByControlPoints**<br>Crea una BSplineCurve mediante puntos de control explícitos.|![IMAGE](images/nodes/NurbsCurve.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsCurve.ByPoints.Point1-int.Large.png)|**NurbsCurve.ByPoints**<br>Crea una BSplineCurve mediante la interpolación entre puntos.|![IMAGE](images/nodes/NurbsCurve.ByPoints.png)qcomm|

#### Geometry.NurbsSurface

||||
| -- | -- | -- |
||Crear||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByControlPoints.Large.png)|**NurbsSurface.ByControlPoints**<br>Crea una NurbsSurface mediante el uso de puntos de control explícitos y los grados especificados para U y V.|![IMAGE](images/nodes/NurbsSurface.ByControlPoints.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.NurbsSurface.ByPoints.Large.png)|**NurbsSurface.ByPoints**<br>Crea una NurbsSurface con los puntos interpolados y los grados especificados para U y V. La superficie resultante atravesará todos los puntos.|![IMAGE](images/nodes/NurbsSurface.ByPoints.png)|

#### Geometry.Plane

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.ByOriginNormal.Large.png)|**Plane.ByOriginNormal**<br>Crea un plano centrado en el punto raíz con el vector normal de entrada.|![IMAGE](images/nodes/Plane.ByOriginNormal.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Plane.XY.Large.png)|**Plane.XY**<br>Crea un plano en el plano XY universal.|![IMAGE](images/nodes/Plane.XY.png)|

#### Geometry.Point

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCartesianCoordinates.Large.png)|**Point.ByCartesianCoordinates**<br>Genera un punto en el sistema de coordenadas especificado con tres coordenadas cartesianas.|![IMAGE](images/nodes/Point.ByCartesianCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double.Large.png)|**Point.ByCoordinates** (2D) <br>Genera un punto en el plano XY con las dos coordenadas cartesianas especificadas. El componente Z es 0.|![IMAGE](images/nodes/Point.ByCoordinates_2D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.ByCoordinates.double-double-double.Large.png)|**Point.ByCoordinates** (3D)<br>Genera un punto con las tres coordenadas cartesianas especificadas.|![IMAGE](images/nodes/Point.ByCoordinates_3D.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Origin.Large.png)|**Point.Origin**<br>Obtiene el punto de origen (0,0,0).|![IMAGE](images/nodes/Point.Origin.png)|
||ACCIONES||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Add.Large.png)|**Point.Add**<br>Añade un vector a un punto. Equivale a Translate (Vector).|![IMAGE](images/nodes/Point.Add.png)|
||CONSULTA||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.X**<br>Obtiene el componente X de un punto.|![IMAGE](images/nodes/Point.X.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.Y.Large.png)|**Point.Y**<br>Obtiene el componente Y de un punto.|![IMAGE](images/nodes/Point.Y.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Point.X.Large.png)|**Point.Z**<br>Obtiene el componente Z de un punto.|![IMAGE](images/nodes/Point.Z.png)|

#### Geometry.Polycurve

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.PolyCurve.ByPoints.Large.png)|**Polycurve.ByPoints**<br>Crea una PolyCurve a partir de una secuencia de líneas que conectan puntos. En una curva cerrada, el último punto debe estar en la misma ubicación que el punto inicial.|![IMAGE](images/nodes/PolyCurve.ByPoints.png)|

#### Geometry.Rectangle

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Rectangle.ByWidthHeight.Plane-double-double.Large.png)|**Rectangle.ByWidthLength** (plane)<br>Crea un rectángulo centrado en la raíz del plano de entrada con la anchura (longitud del eje X del plano) y la longitud de entrada (longitud del eje Y del plano).|![IMAGE](images/nodes/Rectangle.ByWidthLength.png)|

#### Geometry.Sphere

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Sphere.ByCenterPointRadius.Large.png)|**Sphere.ByCenterPointRadius**<br>Crea una esfera sólida centrada en el punto de entrada con el radio especificado.|![IMAGE](images/nodes/Sphere.ByCenterPointRadius.png)|

#### Geometry.Surface

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByLoft.Curve1.Large.png)|**Surface.ByLoft**<br>Crea una superficie mediante la solevación entre curvas de sección transversal de entrada.|![IMAGE](images/nodes/Surface.ByLoft.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.ByPatch.Large.png)|**Surface.ByPatch**<br>Crea una superficie mediante el relleno del interior de un contorno cerrado definido por curvas de entrada.|![IMAGE](images/nodes/Surface.ByPatch.png)|
||ACCIONES||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Offset.Large.png)|**Surface.Offset**<br>Desfasa la superficie en la dirección de la normal de superficie en función de la distancia especificada.|![IMAGE](images/nodes/Surface.Offset.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.PointAtParameter.Large.png)|**Surface.PointAtParameter**<br>Devuelve el punto en los parámetros U y V especificados.|![IMAGE](images/nodes/Surface.PointAtParameter.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Surface.Thicken.double.Large.png)|**Surface.Thicken**<br>Engrosa la superficie hasta convertirla en un sólido y realiza la extrusión en la dirección de las normales de superficie en ambos lados de la superficie.|![IMAGE](images/nodes/Surface.Thicken.png)|

#### Geometry.UV

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.UV.ByCoordinates.Large.png)|**UV.ByCoordinates**<br>Crea un UV a partir de dos dobles.|![IMAGE](images/nodes/UV.ByCoordinates.png)|

#### Geometry.Vector

||||
| -- | -- | -- |
||CREAR||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ByCoordinates.double-double-double.Large.png)|**Vector.ByCoordinates**Genera un vector mediante tres coordenadas euclidianas.|![IMAGE](images/nodes/Vector.ByCoordinates.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.XAxis.Large.png)|**Vector.XAxis**<br>Obtiene el vector del eje X canónico (1,0,0).|![IMAGE](images/nodes/Vector.XAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.YAxis.Large.png)|**Vector.YAxis**<br>Obtiene el vector del eje Y canónico (0,1,0).|![IMAGE](images/nodes/Vector.YAxis.png)|
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.ZAxis.Large.png)|**Vector.ZAxis**<br>Obtiene el vector del eje Z canónico (0,0,1).|![IMAGE](images/nodes/Vector.ZAxis.png)|
||ACCIONES||
|![IMAGE](images/A-2/Autodesk.DesignScript.Geometry.Vector.Normalized.Large.png)|**Vector.Normalized**<br>Obtiene la versión normalizada de un vector.|![IMAGE](images/nodes/Vector.Normalized.png)|

## Operadores

||||
| -- | -- | -- |
|![IMAGE](images/A-2/add.Large.png)|**+**<br>Suma|![IMAGE](images/nodes/Addition.png)|
|![IMAGE](images/A-2/sub.Large.png)|**-**<br>Resta|![IMAGE](images/nodes/Subtraction.png)|
|![IMAGE](images/A-2/mul.Large.png)|*****<br>Multiplicación|![IMAGE](images/nodes/Multiplication.png)|
|![IMAGE](images/A-2/div.Large.png)|**/**<br>División|![IMAGE](images/nodes/Division.png)|
|![IMAGE](images/A-2/mod.Large.png)|**%**<br>La división modular busca el resto de la primera entrada después la división por la segunda entrada|![IMAGE](images/nodes/ModularDivision.png)|
|![IMAGE](images/A-2/lt.Large.png)|**<**<br>Menor que|![IMAGE](images/nodes/LessThan.png)|
|![IMAGE](images/A-2/gt.Large.png)|**>**<br>Mayor que|![IMAGE](images/nodes/GreaterThan.png)|
|![IMAGE](images/A-2/eq.Large.png)|**==**<br>Este operador comprueba la igualdad entre dos valores.|![IMAGE](images/nodes/Equality.png)|

