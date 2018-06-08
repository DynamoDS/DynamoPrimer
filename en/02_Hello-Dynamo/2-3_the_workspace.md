##The Workspace

The Dynamo **Workspace** is where we develop our visual programs, but it's also where we preview any resulting geometry. Whether we are working in a Home Workspace or a Custom Node, we can navigate with our mouse or the buttons at top right. Toggling between modes at bottom right switches which preview we navigate.

> Note: Nodes and geometry have a draw order so you may have objects rendered on top of each other. This can be confusing when adding multiple nodes in sequence as they may be rendered in the same position in the Workspace.

![Workspace Regions](images/2-3/01-WorkspaceRegions.png)

>1. Tabs
2. Zoom/Pan Buttons
3. Preview Mode
4. Double Clicking on the Workspace

###Tabs
The active Workspace tab allows you to navigate and edit your program. When you open a new file, by default you are opening a new **Home** Workspace. You may also open a new **Custom Node** Workspace from the File Menu or by the *New Node by Selection* right click option when Nodes are selected (more on this functionality later).

![Tabs](images/2-3/02-Tabs.png)

> Note: You may have only one Home Workspace open at a time; however, you may have multiple Custom Node Workspaces open in additional tabs.

###Graph versus 3D Preview Navigation
In Dynamo, the Graph and the 3D results of the Graph (if we are creating geometry) are both rendered in the Workspace. By default the Graph is the active preview, so using the Navigation buttons or middle mouse button to pan and zoom will move us through the Graph. Toggling between active previews can be achieved three ways:

![Navigation](images/2-3/03-PreviewNavigations.png)

> 1. Preview Toggle Buttons in the Workspace
2. Right clicking in the Workspace and selecting *Switch to ... View*
3. Keyboard shortcut (Ctrl + B)

The 3D Preview Navigation mode also gives us the ability for **Direct Manipulation** of points, exemplified in [Getting Started](http://primer.dynamobim.org/02_Hello-Dynamo/2-6_the_quick_start_guide.html).

###Zoom to Recenter
 We can easily pan, zoom and rotate freely around models in 3D Preview Navigation mode. However, to zoom specifically on an object created by a geometry node, we can use the Zoom All icon with a single node selected.

![Zoom to Recenter 1](images/2-3/03-ZoomToRecenter_1.png)
> 1. Select the node corresponding to the geometry  that will center the view.
2. Switch to the 3D Preview Navigation.

![Zoom to Recenter 2](images/2-3/03-ZoomToRecenter_2.png)
> 1. Click on the Zoom All icon in the top right.
2. The selected geometry will be centered inside the view.

###Hello Mouse!

Based on which Preview mode is active, your mouse buttons will act differently. In general, the left mouse click selects and specifies inputs, the right mouse click gives access to options, and the middle mouse click allows you to navigate the Workspace. The right mouse click will present us with options based on the context of where we are clicking.

![Hello Mouse](images/2-3/04-HelloMouse.png)

>1. Right Click on the Workspace.
2. Right Click on a Node.
3. Right Click on a Note.

Here's a table of mouse interactions per Preview:

**Mouse Action** | **Graph Preview** | **3D Preview**
--- | --- | ---
Left Click | Select | N/A
Right Click | Context Menu | Zoom Options
Middle Click | Pan | Pan
Scroll | Zoom In/Out | Zoom In/Out
Double Click | Create Code Block | N/A

###In-Canvas Search

Using the "In-Canvas Search" will add some serious speed to your Dynamo work-flow by providing you access to node descriptions and tool-tips without taking you away from your place on the graph! By just right-clicking, you can access all the useful functionality of the "Library Search" from wherever you happen to be working on the canvas.

![In Canvas Search](images/2-3/05-InCanvasSearch.jpg)

>1. Right click anywhere on the canvas to bring up the search feature. While the search bar is empty, the drop-down will be a preview menu.
2. As you type into the search bar, the drop-down menu will continuously update to show the most relevant search results.
3. Hover over the search results to bring up their corresponding descriptions and tool-tips.

##Clean Up Node Layout
Keeping your Dynamo canvas organized becomes increasingly important as your files build in complexity. Although we have the **Align Selection** tool to work with small amounts of selected Nodes, Dynamo also features the **Cleanup Node Layout** tool to help with overall file cleanup.
####Before Node Cleanup
![Cleanup Node Layout](images/2-3/06-CleanupNodeLayout.png)
>1.	Select the Nodes to be automatically organized, or leave all unselected to clean up all nodes in the file.
2.	The Cleanup Node Layout feature is located under the Edit tab.
####After Node Cleanup
![Clean Layout Example](images/2-3/07-CleanupNodeLayout.png)
>1.	The nodes will be automatically re-distributed and aligned, cleaning up any staggered or overlapping nodes and aligning them with neighboring nodes.
