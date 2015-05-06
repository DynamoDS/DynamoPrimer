## 2.2 The Dynamo User Interface

The User Interface (UI) for Dynamo is organized into five main regions, the largest of which is the workspace where we compose our logical graphs.

![User Interface Regions](images/2-2/01-UI-Regions.png)

>1. Menus
2. Toolbar
3. Library
4. Workspace
5. Execution Bar

Let's dive deeper into the UI and explore the functionality of each region.

####2.2.1 Menus

The Dropdown Menus are a great place to find some of the basic funcationity of the Dynamo application. Like most Windows software, actions related to managing files and operations for selection and content editing are found in the first two menus. The remaining menus are more specific to Dynamo.

![Dropdown Menus](images/2-2/02-Menus.png)
> 1. File - description
2. Edit - description
3. View - description
4. Packages - description
5. Settings - description
6. Help - description

####2.2.2	Toolbar

Dynamo's Toolbar contains a series of buttons for quick access to working with files as well as Undo [Ctrl + Z] and Redo [Ctrl + Y] commands. On the far right is another button that will export a snapshot of the workspace, which is extremely useful for documentation and sharing.

![NEEDS UPDATE-full width - Toolbar](images/2-2/03-Toolbar.png)

> 1. New - Create a new .dyn file
2. Open - Open an existing .dyn (workspace) or .dyf (custom node) file
3. Save/Save As - Save your active .dyn or .dyf file
4. Undo - Undo your last action
5. Redo - Redo your the next action
6. Export Workspace as Image - Export the visible workspace as a PNG file

####2.2.3	Library
The Library contains all of the loaded Nodes including the core Nodes that come with the installation as well as any additionally loaded Custom Nodes or Packages. The Nodes in the Libary are organized hierarchically by category and, where appropriate, sub-categories based on whether the Nodes **Create** data, execute an **Action**, or **Query** data.

#####2.2.3.1	Browsing
By default, the **Library** will contain eight categories of Nodes. **Core** and **Geometry** are great menus to begin exploring as they contain the largest quantity of Nodes.  Browsing through these categories is the fastest way to understand the hierarchy of what we can add to our Workspace and the best way to discover new Nodes you haven't used before.

![NEEDS UPDATE-full width - Library Categories](images/2-2/04-LibraryCategories.png)
>1. Analyze - description
2. Builtin Functions - description
3. Core - description
4. Geometry - description
5. Migration - description
6. Office - description
7. Operators - description
8. Tessellation - description

Browse the Library by clicking through the menus. Click the Geometry > Circle. Note the new portion of the menu that is revealed and specifically the **Create** and **Query** Labels.

![NEEDS UPDATE-use full width - Browsing the Library](images/2-2/05-LibraryBrowsing.png)
>1. Category - description
2. Subcategory - description
3. Create/Actions/Query - description
4. Node - description

From the same Circle menu, hover your mouse over **ByCenterPointRadius**. The window reveals more detailed information about the Node beyond its name and icon. This offers us a quick way to understand what the Node does, what it will require for inputs, and what it will give as an output.

![Node Pop Up Window](images/2-2/06-NodePopup.png)
>1. Icon - larger version of the icon in the Library Menu
2. Description - plain language description of the Node
3. Input(s) - name,  data type, and data structure
4. Output(s) - data type and structure

#####2.2.3.2	Searching
If you now with relative specificity which Node you want to add to your Workspace, the **Search** field is your best friend. When you are not editing settings or specifying values in the Workspace, the cursor is always present in this field. If you start typing, the Dynamo Library will reveal a selected best fit match (with breadcrumbs for where it can be found in the Node categories) and a list of alternate matches to the search. When you hit Enter, the Node is added to the center of the Workspace.

![NEEDS UPDATE-callouts Searching the Library](images/2-2/07-LibrarySearching.png)
>1. Search Field
2. Best Fit Result / Selected
3. Alternate Matches

###2.3.4	Settings
From geometric to user settings, these options can be found in the **Settings** menu. Here you can opt in or out for sharing your user data to improve Dynamo as well as define the application's decimal point precision and geometry render quality.

> Note: Remember that Dynamo's units are generic.

![show menu](images/2-2/08-Help.jpg)

>1. Enabling Reporting
2. Render Quality
3. Number Format

###2.3.5	Help
If you're stuck, check out the **Help** Menu. Here you can find the sample files that come with your installation as well as access one of the Dynamo reference websites through your internet browser. If you need to check the version of Dynamo installed and whether it is up to date through the **About** option.

![show menu](images/2-2/09-Settings.jpg)

>1. Samples
2. Report A Bug
3. Go To Project Website
4. Go To Project Wiki
5. Display Start Page
6. About



