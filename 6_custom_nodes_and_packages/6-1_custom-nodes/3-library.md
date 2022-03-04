# Publishing to Your Library

We've just created a custom node and applied it to a specific process in our Dynamo graph. And we like this node so much, we want to keep it in our Dynamo library to reference in other graphs. To do this, we'll publish the node locally. This is a similar process to publishing a package, which we'll walk through in more detail in the next chapter.

By publishing a node locally, the node will be accessible in your Dynamo library when you open a new session. Without publishing a node, a Dynamo graph which references a custom node must also have that custom node in its folder (or the custom node must be imported into Dynamo using _File>Import Library_).

{% hint style="warning" %}
Publishing Custom Node is only enabled in Dynamo for Revit and Dynamo for Civil 3d. Dynamo Sandbox does not have publishing functionality.
{% endhint %}

## Exercise: Publishing a Custom Node Locally

> Download the example file by clicking on the link below.
>
> A full list of example files can be found in the Appendix.

{% file src="../../.gitbook/assets/PointsToSurface.dyf" %}

Let's move forward with the custom node that we created in the previous section. Once the PointsToSurface custom node is opened, we see the graph in the Dynamo Custom Node Editor. You can also open up a custom node by double clicking on it in the Dynamo Graph Editor.

![](<../../.gitbook/assets/publish custom node locally 01.jpg>)

To Publish a custom node locally, simply right click on the canvas and select _"Publish This Custom Node..."_

![](<../../.gitbook/assets/publish custom node exercise - 02.jpg>)

Fill out the relevant information similar to the image above and select _"Publish Locally"._. Note that the Group field defines the main element accessible from the Dynamo menu.

![](<../../.gitbook/assets/publish custom node exercise - 03.jpg>)

Choose a folder to house all of the custom nodes that you plan on publishing locally. Dynamo will check this folder each time it loads, so make sure the folder is in a permanent place. Navigate to this folder and choose _"Select Folder"._ Your Dynamo node is now published locally, and will remain in your Dynamo Toolbar each time you load the program!

![](<../../.gitbook/assets/publish custom node exercise - 04.jpg>)

To check on the custom node folder location, go to _Dynamo > Preferences > Package Manager > Node and Package Paths_

![](<../../.gitbook/assets/publish custom node exercise - 05.jpg>)

In this window we see a list of paths.

![](<../../.gitbook/assets/publish custom node exercise - 06.jpg>)

> 1. _Documents\DynamoCustomNodes..._ refers to the location of custom nodes we've published locally.
> 2. _AppData\Roaming\Dynamo..._ refers to the default location of Dynamo Packages installed online.
> 3. You may want to move your local folder path down in the list order above (by selecting the folder path and clicking on the down arrow to the left of the path names). The top folder is the default path for package installs. So by keeping the default Dynamo package install path as the default folder, online packages will be separated from your locally published nodes.

We switched the order of the path names in order to have Dynamo's default path as the package install location.

![](<../../.gitbook/assets/publish custom node exercise - 07.jpg>)

Navigating to this local folder, we can find the original custom node in the _".dyf"_ folder, which is the extension for a Dynamo Custom Node file. We can edit the file in this folder and the node will update in the UI. We can also add more nodes to the main _DynamoCustomNode_ folder and Dynamo will add them to your library at restart!

![](<../../.gitbook/assets/publish custom node exercise - 08.jpg>)

Dynamo will now load each time with "PointsToSurface" in the "DynamoPrimer" group of your Dynamo library.

![](<../../.gitbook/assets/publish custom node exercise - 09.jpg>)
