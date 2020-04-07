

## 开发软件包

Dynamo 提供了多种方法来创建软件包，以供个人使用或与 Dynamo 社区共享。在下面的案例研究中，我们将通过解构现有软件包来逐步介绍如何创建一个软件包。本案例研究基于上一章的课程构建，提供一组自定义节点用于按 UV 坐标映射几何图形（从一个 Dynamo 曲面到另一个 Dynamo 曲面）。

### MapToSurface

我们将使用一个示例包，演示点从一个曲面到另一个曲面的 UV 映射。我们已在本入门手册的[创建自定义节点](../10_Custom-Nodes/10-2_Creating.md)部分中构建了工具的基础知识。下面的文件演示了如何理解 UV 映射的概念，并为可发布库开发一组工具。

![](images/11-4/uvMap.jpg)

> 在此图像中，我们使用 UV 坐标将点从一个曲面映射到另一个曲面。软件包基于此概念，但具有更加复杂的几何图形。

### 安装软件包

在前一章中，我们探讨了在 Dynamo 中基于在 XY 平面中定义的曲线为曲面镶板的方法。本案例研究扩展了这些概念，以获得更多几何图形尺寸。我们将以内置方式安装此软件包，以演示其开发方式。在下一节中，我们将演示如何发布此软件包。

![](images/11-4/Creating/Packages - 14.jpg)

> 这部分很简单。在 Dynamo 中，导航到*“软件包”>“搜索软件包...”*

![](images/11-4/Creating/Packages - 13.jpg)

> 搜索软件包*“MapToSurface”*（全部为一个词）。

> 1. 找到该软件包后，单击软件包名称左侧的大下载箭头。这会将软件包安装到 Dynamo 中。

![](images/11-4/Publishing/packages - ui.jpg)

> 1. 完成安装后，“DynamoPrimer”组或 Dynamo 库下应提供自定义节点。现在，软件包已完成安装，我们来介绍其设置方式。

### 自定义节点

我们正在创建的软件包使用我们为参照而构建的五个自定义节点。下面，我们来介绍每个节点的作用。某些自定义节点基于其他自定义节点构建，图表具有布局，供其他用户直接理解。

![](images/11-4/Creating/Packages - 12.jpg)

> 这是一个包含五个自定义节点的简单软件包。在下面的步骤中，我们将简要介绍每个自定义节点的设置。

![](images/11-4/Creating/Packages - 11.jpg)

> **PointsToSurface**：这是一个基本自定义节点，所有其他映射节点均基于该节点。只需放置，该节点会将某个点从源曲面 UV 坐标映射到目标曲面 UV 坐标的位置。由于点是最基本的几何图形，基于它可构建更复杂的几何图形，因此我们可以使用此逻辑将二维几何图形（甚至三维几何图形）从一个曲面映射到另一个曲面。

![](images/11-4/Creating/Packages - 10.jpg)

> **PolygonsToSurface**：仅使用此处的多边形即可演示将映射点从一维几何图形扩展到二维几何图形的逻辑。请注意，我们已将*“PointsToSurface”*节点嵌套到此自定义节点中。这样，我们就可以将每个多边形的点映射到曲面，然后基于这些映射点重新生成多边形。通过保持正确的数据结构（一列点列表），我们可以在多边形简化为一组点后使多边形保持分离。

![](images/11-4/Creating/Packages - 09.jpg)

> **NurbsCrvtoSurface**：此处应用的逻辑与*“PolygonsToSurface”*节点中的逻辑相同。但是，我们不是映射多边形点，而是映射 NURBS 曲线的控制点。

![](images/11-4/Creating/Packages - 08.jpg)

> **OffsetPointsToSurface**：此节点变得更加复杂，但概念非常简单：与*“PointsToSurface”*节点类似，此节点会将点从一个曲面映射到另一个曲面。但是，它还会考虑不在原始源曲面上的点，获取其与最近 UV 参数的距离，并将此距离映射到相应 UV 坐标处的目标曲面法线。在查看示例文件时，这会更有意义。

![](images/11-4/Creating/Packages - 07.jpg)

> **SampleSrf**：这是一个简单节点，用于创建参数化曲面以从源栅格映射到示例文件中的波状曲面。

### 示例文件

示例文件位于软件包的根文件夹中（在 Dynamo 中，通过转到*“软件包”>“管理软件包...”*导航到此文件夹）。

![](images/11-4/Publishing/packages - showRoot.jpg)

> 在“管理软件包”窗口中，单击*“MapToSurface”*右侧的三个垂直点，然后选择*“显示根目录”*。

打开根目录后，导航到*“extra”*文件夹，该文件夹中会存储软件包中所有非自定义节点的文件。这是存储 Dynamo 软件包示例文件（如果存在）的位置。下面的屏幕截图介绍每个示例文件中演示的概念。

![](images/11-4/Creating/Packages - 06.jpg)

> **01-PanellyWithPolygons**：此示例文件演示了如何使用*“PointsToSurface”*来根据矩形栅格为曲面镶板。这应该看起来很熟悉，如我们在[上一章](../10_Custom-Nodes/10-2_Creating.md)中演示的类似工作流。

![](images/11-4/Creating/Packages - 05.jpg)

> **02-PanellyWithPolygons-II**：使用类似的工作流，本练习文件显示用于将圆（或表示圆的多边形）从一个曲面映射到另一个曲面的设置。这将使用*“PolygonsToSurface”*节点。

![](images/11-4/Creating/Packages - 04.jpg)

> **03-NurbsCrvsAndSurface**：此示例文件通过使用“NurbsCrvToSurface”节点增加了一些复杂性。目标曲面偏移给定距离，且 NURBS 曲线映射到原始目标曲面和偏移曲面。从这里，将放样两条映射曲线以创建曲面，然后加厚该曲面。此结果实体具有表示目标曲面法线的波动。

![](images/11-4/Creating/Packages - 03A.jpg)

> **04-PelleatedPolysurface-OffsetPoints**：此示例文件演示如何将褶皱多重曲面从源曲面映射到目标曲面。源曲面和目标曲面是分别跨栅格和旋转曲面的矩形曲面。

![](images/11-4/Creating/Packages - 03.jpg)

> **04-PlevatedPolysurface-OffsetPoints**：源多重曲面从源曲面映射到目标曲面。

![](images/11-4/Creating/Packages - 01.jpg)

> **05-SVG-Import**：由于自定义节点能够映射不同类型的曲线，因此最后这个文件会引用从 Illustrator 输出的 SVG 文件，并将输入的曲线映射到目标曲面。

![](images/11-4/Creating/Packages - 00.jpg)

> **05-SVG-Import**：通过解析 .svg 文件的语法，曲线将从 .xml 格式转换为 Dynamo 复合线。

![](images/11-4/Creating/Packages - 02.jpg)

> **05-SVG-Import**：输入的曲线将映射到目标曲面。这样，我们可以在 Illustrator 中显式（点击）设计镶板、输入 Dynamo，然后应用于目标曲面。

