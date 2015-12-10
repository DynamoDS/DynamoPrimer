## Managing Your Data with Presets

In the previous section we looked at managing programs by aligning, grouping, and annotating nodes to organize the Workspace. These best practices help to reduce some of the visual complexity of your graph. Now let's dive deeper and organize the complexity of content.  Often, a Dynamo graph has a wide range of parameters which offer countless iterations.  We want to organize the range of options so that we can make real design decisions - and this is where Presets come in. 

Imagine that you've created a Dynamo graph to share with a team so that each team member can explore the parametric model.  Your team members have a range of experience with visual programming, so you want to offer some direction for them to explore different design schemes.  The easiest, most user-friendly way to do this is with presets - you can set any number of parameters to define a specific design iteration. This allows you to reload previous schemes and work with them parametrically. 

###Presets

Presets are a way to take the current value of a selection of input nodes and save them as a preset state. These states can be restored through the Edit>Presets menu. Presets can be used to create and compare design iterations. Presets are saved with the file, making them a useful tool for sharing or requesting feedback. They also allow another user to interact with the graph without having to search for the relevant inputs, or tune a set of values that work well together from a design perspective.

![](images/3-5/presetsA.png)
>1. Preset 1
>2. Preset 2

###Creating Presets

>Download the example file that accompanies this exercise (Right click and "Save Link As..."): [Prests.dyn](datasets/3-5/Presets.dyn). A full list of example files can be found in the Appendix.

To create a preset, select one or more input nodes. Right-click the canvas and select "Create Preset from Selection", or press Control+T. 
Let's take a look at an example. Below is a simple graph that creates a surface by lofting through a series of circles. 

![Create Preset](images/3-5/presetsB.png)
>1. The inputs of the graph are a series of sliders controlling the height and radii

![Create Preset](images/3-5/presetsC.png)
>Select the input sliders and type Control+T

![Create Preset](images/3-5/presetsD.png)
>Enter a name and description for the saved state in the dialog. Create several states with different input values.

###Restoring Presets
To restore a saved preset, navigate to Edit>Presets>Restore Preset. This will set all the nodes in that state to the saved values. If a node in the state is no longer present in the graph (ie. if it has been deleted), all other nodes in the state will be set.

![Restoring Presets](images/3-5/presetsE.png)

###Deleting Presets
To delete a preset, navigate to Edit>Presets>Delete Preset. This will remove a state from the list of saved states.

![Deleting Presets](images/3-5/presetsF.png)

![](images/3-5/presets07.png)