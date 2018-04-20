##The Dynamo User Interface

The User Interface (UI) for Dynamo is organized into five main regions, the largest of which is the workspace where we compose our visual programs.

![User Interface Regions](images/2-2/01-UI-Regions.png)

>1. Menus
2. Toolbar
3. Library
4. Workspace
5. Execution Bar

Let's dive deeper into the UI and explore the functionality of each region.

####Menus

The Dropdown Menus are a great place to find some of the basic functionality of the Dynamo application. Like most Windows software, actions related to managing files and operations for selection and content editing are found in the first two menus. The remaining menus are more specific to Dynamo.

![Dropdown Menus](images/2-2/02-Menus.png)
> 1. File
2. Edit
3. View
4. Packages
5. Settings
6. Help
7. Notifications

####Toolbar

Dynamo's Toolbar contains a series of buttons for quick access to working with files as well as Undo [Ctrl + Z] and Redo [Ctrl + Y] commands. On the far right is another button that will export a snapshot of the workspace, which is extremely useful for documentation and sharing.

![Needs Update-split location Toolbar](images/2-2/03-Toolbar.png)

> 1. New - Create a new .dyn file
2. Open - Open an existing .dyn (workspace) or .dyf (custom node) file
3. Save/Save As - Save your active .dyn or .dyf file
4. Undo - Undo your last action
5. Redo - Redo the next action
6. Export Workspace as Image - Export the visible workspace as a PNG file

####Library
The Library contains all of the loaded Nodes, including the default Nodes that come with the installation as well as any additionally loaded Custom Nodes or Packages. The Nodes in the Library are organized hierarchically within libraries, categories, and, where appropriate, sub-categories based on whether the Nodes **Create** data, execute an **Action**, or **Query** data.

#####Browsing
By default, the **Library** will contain eight categories of Nodes. **Core** and **Geometry** are great menus to begin exploring as they contain the largest quantity of Nodes.  Browsing through these categories is the fastest way to understand the hierarchy of what we can add to our Workspace and the best way to discover new Nodes you haven't used before.

> We will focus on the default collection of Nodes now, but note that we will extend this Library with Custom Nodes, additional libraries, and the Package Manager later.

![NEEDS UPDATE-full width - Library Categories](images/2-2/04-LibraryCategories.png)
>1. Dictionary
2. Display
3. Geometry
4. ImportExport
5. Input
6. List
7. Matches
8. Revit
9. Script
10. String
11. Add-ons

Browse the Library by clicking through the menus. Click the Geometry > Curves > Circle. Note the new portion of the menu that is revealed and specifically the **Create** and **Query** Labels.

![Browsing the Library](images/2-2/05-LibraryBrowsing.png)
>1. Library
2. Category
3. Subcategory: Create/Actions/Query
4. Node
5. Node Description and properties - this appears when hovering over the node icon.

From the same Circle menu, hover your mouse over **ByCenterPointRadius**. The window reveals more detailed information about the Node beyond its name and icon. This offers us a quick way to understand what the Node does, what it will require for inputs, and what it will give as an output.

![Node Pop Up Window](images/2-2/06-NodePopup.png)
>1. Description - plain language description of the Node
2. Icon - larger version of the icon in the Library Menu
3. Input(s) - name,  data type, and data structure
4. Output(s) - data type and structure

#####Searching
If you know with relative specificity which Node you want to add to your Workspace, the **Search** field is your best friend. When you are not editing settings or specifying values in the Workspace, the cursor is always present in this field. If you start typing, the Dynamo Library will reveal a selected best fit match (with breadcrumbs for where it can be found in the Node categories) and a list of alternate matches to the search. When you hit Enter, or click on the item in the truncated browser, the highlighted Node is added to the center of the Workspace.

![Searching the Library](images/2-2/07-LibrarySearching.png)
>1. Search Field
2. Best Fit Result / Selected
3. Alternate Matches

###Settings
From geometric to user settings, these options can be found in the **Settings** menu. Here you can opt in or out for sharing your user data to improve Dynamo as well as define the application's decimal point precision and geometry render quality.


![show menu](images/2-2/08-Settings.png)

>1. Enabling Reporting - Options for sharing user data to improve Dynamo.
2. Show Run Preview - Preview the execution state of your graph. Nodes scheduled for execution will be highlighted in your graph.
3. Number Format Options - Change the document settings for decimals.
4. Render Precision - Raise or lower the document render quality.
5. Geometry Scaling - Select range of geometry you are working on.
6. Isolate Selected Geometry - Isolated background geometry based on your node selection.
7. Show/Hide Geometry Edges - Toggle 3D geometry edges.
8. Show/Hide Preview Bubbles - Toggle data preview bubbles below nodes.
9. Manage Node and Package Paths - Manage file paths to make nodes and packages show up in the Library.
10. Enabling Experimental Features - Use beta features new in Dynamo.

###Help
If you're stuck, check out the **Help** Menu. Here you can find the sample files that come with your installation as well as access one of the Dynamo reference websites through your internet browser. If you need to, check the version of Dynamo installed and whether it is up to date through the **About** option.

![show menu](images/2-2/09-Help.png)

>1. Getting Started - A brief introduction to using Dynamo.
2. Samples - Reference example files.
3. Open Dynamo Dictionary - Resource with documentation on all nodes.
4. Report A Bug - Open an Issue on GitHub.
5. Go To Project Website - View the Dynamo Project on GitHub.
6. Go To Project Wiki - Visit the wiki for learning about development using the Dynamo API, supporting libraries and tools.
7. Display Start Page - Return to the Dynamo start page when within a document.
8. About - Dynamo Version data.
