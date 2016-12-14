##Managing Your Program

程序管理

Working within a Visual Programming process can be a powerful creative activity, but very quickly the Program Flow and key user inputs can be obscured by complexity and/or layout of the Workspace. Let's review some best practices for managing your program.

使用視覺化城市編輯可唯一具有創造性的事情，但隨著項目推進，工作室很快就會變得複雜，使程序難以理解。接下來我們來預習如何管理程式。

###Alignment

對齊

Once we have added more than a few Nodes to the Workspace, we may want to re-organize the layout of the Nodes for clarity's sake. By selecting more than one Node and right-clicking on the Workspace, the pop up window includes an **Align Selection** menu with justification and distribution options in X and Y.
當我們加入一些節點後，我們可能想要調整節點使他清晰一些。選擇兩個以上的節點並於工作區按下右鍵，將會跳出擁有**對齊選擇**選項的菜單。

![Align](images/3-4/00-Align.png)
> 1. Select more than one Node
選擇一個以上的節點。
2. Right-click on the Workspace
對工作區按下右鍵
3. Use the **Align Selection** options
使用**對齊選擇**選項

###Notes
注釋

With some experience, we may be able to "read" the Visual Program by reviewing the Node Names and following the Program Flow. For users of all experience levels, it is also good practice to include plain language labels and descriptions. Dynamo has a **Notes** Node with an editable text field to do so. We can add Notes to the Workspace in two ways:
熟悉使用方式後，我們可以藉由節點名稱以及程序流程來“讀”視覺化程式。對所有用戶來說，用簡明的話敘述正在做的事情是很好的習慣。為此Dynamo提供了**Notes**節點，可以編輯節點內部內容。其添加方式有兩種：


![Notes](images/3-4/01-Notes01.png)
> 1. Browse to the menu File > Create Note
1.編輯菜單→建立注釋
2. Use the keyboard shortcut Ctrl+W
2.使用快捷鍵Ctrl+W


Once the Note is added to the Workspace a text field will pop up allowing us to edit the text in the Note. After they are created, we can edit the Note by double-clicking or right-clicking the Note Node.
當注釋添加到工作區後，一個文本輸入區就會出現，雙點擊或著右鍵點擊便可編輯修改內容。

![Notes Edit](images/3-4/02-Notes02.png)


###Grouping
群組


When our Visual Program gets big, it is helpful to identify the larger steps that will be executed. We can highlight larger collections of Nodes with a **Group** to label them with a colored rectangle in the background and a title. There are three ways to make a Group with more than one Node selected:
當程式越來越大，我們可以用**群組**來組織節點。有三種方式可以組建：


![Groups](images/3-4/04-Groups01.png)
> 1. Browse to the menu File > Create Group
1.編輯→建立群組
2. Use the keyboard shortcut Ctrl+G
2.快捷鍵Ctrl+G
3. Right-click on the Workspace and select "Create Group"
3.右鍵空白區域選擇"創建群組"


Once a Group is created we can edit its settings, such as the title and color.當群組建立完成，我們可以編輯裡面的設定，如標題、顏色等。

![Group Settings](images/3-4/05-Groups02.png)

> Tip: Using both Notes and Groups is an effective way to annotate your file and increase readability.
訣竅：同時使用注釋與群組可提升程式的可讀性。

Here's our program from Section 2.4 with Notes and Groups added:
下面是在2.4節程式中添加注釋和群組後的程式：

![Grouping Example](images/3-4/03-Groups00.png)

> 1. Note: "Grid Parameters"
1.注釋："Grid Parameters"
2. Note: "Grid Points"
2.注釋："Grid Points"
3. Group: "Create a Grid of Points"
3.群組："Create a Grid of Points"
4. Group: "Create an Attractor Point"
4.群組： "Create an Attractor Point"
5. Note: "Calibrate Distance Values"
5.注釋："Calibrate Distance Values"
6. Note: "Variable Grid of Circles"
6.注釋："Variable Grid of Circles"
