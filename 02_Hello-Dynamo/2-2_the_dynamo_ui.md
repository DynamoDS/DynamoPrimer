## 2.2 The Dynamo User Interface

The User Interface (UI) for Dynamo is organized into five main regions, the largest of which is the workspace where we compose our logical graphs.

![zones from application window](images/Placeholder.png)

>1. Menus
2. Toolbar
3. Library 
4. Workspace
5. Execution Bar

Let's dive deeper into the UI and explore the functionality of each region. 

####2.2.1 Menus

The Dropdown Menus are a great place to find some of the basic funcationity of the Dynamo application. Like most Windows software, actions related to managing files and operations for selection and content editing are found in the first two menus. The remaining menus are more specific to Dynamo. 

![Callouts](images/Placeholder.png)
> 1. File
2. Edit
3. View
4. Packages
5. Settings
6. Help

####2.2.2	Toolbar

Dynamo's Toolbar contains a series of buttons for quick access to working with files as well as Undo [Ctrl + Z] and Redo [Ctrl + Y] commands. On the far right is another button that will export a snapshot of the workspace, which is extremely useful for documentation and sharing.

![Callouts for toolbar](images/Placeholder.png)

> 1. New - Create a new .dyn file
2. Open - Open an existing .dyn (workspace) or .dyf (custom node) file
3. Save/Save As - Save your active .dyn or .dyf file
4. Undo - Undo your last action
5. Redo - Redo your the next action
6. Export Workspace as Image - Export the visible workspace as a PNG file

####2.2.3	Library
The Library contains all of the loaded Nodes including the core Nodes that come with the installation as well as any additionally loaded Custom Nodes or Packages. The Nodes in the Libary are organized hierarchically by category and, where appropriate, sub-categories based on whether the Nodes **Create** data, execute an **Action**, or **Query** data. 

#####2.2.3.1	Browsing
By default, the Library will contain eight categories of Nodes. **Core** and **Geometry** are great menus to begin exploring as they contain the largest quantity of Nodes.  Browsing through these categories is the fastest way to understand the hierarchy of what we can add to our Workspace and the best way to discover new Nodes you haven't used before.

![Callouts on sections of library](images/Placeholder.png)
>1. Analyze - description
2. Builtin Functions - description
3. Core - description
4. Geometry - description
5. Migration - description
6. Office - description
7. Operators - description
8. Tessellation - description

Browse the Library by clicking through the menus. Click the Geometry > Circle. Note the new portion of the menu that is revealed and specifically the **Create** and **Query** Labels. 

![Click through - callout the heirarchy of the library](images/Placeholder.png)
>1. Category - description
2. Subcategory - description
3. Create/Actions/Query
4. Show More

From the same Circle menu, hover your mouse over **ByCenterPointRadius**. The window reveals more detailed information about the Node beyond its name and icon. This offers us a quick way to understand what the Node does, what it will require for inputs, and what it will give as an output.  

![Hover over functionality - callout the parts of the pop up](images/Placeholder.png)
>1. Icon - larger version of the icon in the Library Menu
2. Description - plain language description of the Node
3. Input(s) - name,  data type, and data structure  
4. Output(s) - data type and structure

#####2.2.3.2	Searching
If you now with relative specificity which Node you want to add to your Workspace, the **Search** field is your best friend. When you are not editing settings or specifying values in the Workspace, the cursor is always present in this field. If you start typing, the Dynamo Library will reveal a selected best fit match (with breadcrumbs for where it can be found in the Node categories) and a list of alternate matches to the search. When you hit Enter, the Node is added to the center of the Workspace.




#####2.2.1.1.1	Help 
(description of where to go first - this primer and the resources should get you started )

* **Samples by Group**
* **Show in Folder**
* -
* **Report A Bug**
* **Go To Project Website**
* **Go To Project Wiki**
* -
* **Display Start Page**
* **About**

#####2.2.1.1.2	Settings

