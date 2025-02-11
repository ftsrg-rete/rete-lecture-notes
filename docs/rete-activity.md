---
title: Activity Diagrams Papyrus guidebook 
subtitle: System Modeling (VIMIAD03)
header: System Modeling (VIMIAD03)
---
 
# Diagram creation

Inside the Model Explorer windows of Papyrus, right-click the destination package, and choose _new diagram_/_SysML 1.6 Activity Diagram_.

![](figs/001-new-diagram.png)

To rename the diagram, enter some name in the pop-up windows.

![](figs/002-diagram-name.png)

If everything worked, Papyrus should be showing an empty Activity inside the newly created diagram. Note that as always, Papyrus does not show a diagram header or a diagram frame, which contradicts the SysML standard. Instead, we can think of the activity's boundary as the diagram frame.

![](figs/003-empty-diagram.png)

# Creating a simple diagram

From the palette to the right, grab an _initial_ and an _activity final_ element, and drop them on inside the main activity's frame. Furthermore, pick _control flow_ from the palette, and connect the two elements. The resulting diagram should look like this: 

![](figs/004-basic-diagram.png)

And in the model explorer, the following new elements should be visible (also, you can rename the top-level activity to something more sensible):

![](figs/005-model-explorer.png)

# Adding actions

To add an _opaque action_ (i.e., one without a defined inner structure), right-click the top-level activity in the model explorer, and choose _Opaque Action_ from the _UML for SysML 1.6_ submenu of the context menu. Note that you can duplicate elements in the model explorer using ctrl+c and ctrl+v, so keep a "template" opaque action available to avoid having to always select the element from the complicated menu structure. 

![](figs/006-opaque-action.png)

Then, drop the newly create opaque action onto the diagram, break up the connection between the initial and activity final nodes, and insert the opaque action in-between. Even though Papyrus always offers the possibility to add a label to an edge, refrain from using this feature, because diagrams get very complex very fast.

![](figs/007-basic-diagram-2.png)

An alternative to the solution for adding an opaque action above, is to start drawing an edge from a node, and Papyrus will offer to create a new element. Choose an opaque action here. 

![](figs/008-opaque-action-2.png)

# Adding pins

So far, all edges have been control-flow edges. To add object flow as well, we need to define output and input pins on actions (possibly including the top-level activity). To do so, drop an output pin from the palette onto the opaque action created in the previous step. Then, create (in the model explorer) a signal, and add that as the type of the pin. Do not leave pins untyped!

![](figs/009-output-pin.png)

Do the same process with an input pin on another opaque action. You can find the input pin under the output pin's drop-down menu.

![](figs/010-input-pin.png)

So far, the diagram should like something like this:

![](figs/011-basic-diagram-3.png)

To connect the two pins, draw an _object flow_ from the palette between them. Notice that even though SysML defines different graphical syntax for the control- and object-flow edges, Papyrus shows them both using the same notation -- be sure which type you use. The diagram will look like this after the connection will have been established:

![](figs/012-basic-diagram-3-connected.png)

# Adding signal-related actions

So far, the object flow represented a direct and synchronous communication channel. In SysML, there is an alternative to this: sending and receiving signals. You can find these elements under the _Send Signal Action_ element's drop-down menu in the palette.

![](figs/013-send-accept-action.png)

If you add a _send signal action_ to the diagram, Papyrus prompts you to select which signal to send, or allows you to create one. Choose the previously created signal. 

![](figs/014-send-signal-action-creation.png)

Adding a signal type to an _accept event action_ is a bit more complicated, because an _event_ is much more than a _signal_. So, when you create an _accept event action_, it does not prompt you to choose a signal, but rather lets you define a _trigger_ in its properties window. 

![](figs/015-accept-signal-action.png)

As we want to catch signals, choose the _SignalEvent_ option from the Add Event drop-down.

![](figs/016-accept-trigger-creation.png)

First, choose under which element to create the trigger (the most straightforward option is to choose a package).

![](figs/018-signal-event-creation.png)

Add a name for the new SignalEvent, and choose the corresponding Signal (the one picked out when creating the _send event action_).

![](figs/019-signal-event-creation-2.png)

If everything went well, the new trigger should look like this. 

![](figs/020-success-signal-trigger.png)

These actions above should result in the following diagram. Note that the pins on the send/receive actions are properly typed using the signal.

![](figs/021-async-diagram.png)

To connect the elements, create object flows again.

![](figs/022-async-diagram-connected.png)

# Interruptible Regions

Unfortunately, Papyrus has a [bug](https://bugs.eclipse.org/bugs/show_bug.cgi?id=521614) where an InterruptibleActivityRegion cannot have children. Instead, we can use an Activity from the palette (which would be used to model embedded behavior) and simply name it _InterruptibleActivityRegion_. We can do the same with an interrupting edge: adding a label asserting its type.

![](figs/023-interruptible-region-edge.png)

# Time event creation

To let something cancel the _accept event action_ added in the previous steps, let's add a timeout event to the interruptible activity region, which will cancel the wait after some time. 

Do the same as before by adding an _accept event action_, but choose _TimeEvent_ from the dropdown on its trigger.

![](figs/024-time-event-creation.png)

Choose the container (a package, as before).

![](figs/025-time-event-creation-2.png)

You have two choices (do not do both):

1. Name the time expression using the required timing (e.g., "60 s"); or
2. choose a literal from the Expr drop-down, and document its unit of measurement (seconds) somewhere, e.g., as a note.

![](figs/026-time-event-creation-3.png)

Name the time event something sensible, and click OK. Pay attention to the "Is Relative" radiobuttons, because this determines whether the time action should be counted from the beginning of model execution (false), or the beginning of node activation (true).

![](figs/027-time-event-creation-4.png)

This has created an accept event action that waits for some timeout event. However, we cannot see this on the diagram.

![](figs/028-time-event-creation-success.png)

Even though the previous steps more or less correctly created the timing actions, they do not appear on the diagram. The alternative (and much easier) way is to create an empty TimeEvent trigger, and just use the name of the accept event action to assert the time event's value:

![](figs/029-alternative-time-event.png)

Depending on the relative-ness of the timeout event, you can use "after:

![](figs/030-after-time-event.png)

or "at":

![](figs/031-at-time-event.png)

All this together should look like this on the diagram:

![](figs/032-so-far.png)

What's still missing, is the activation of the interruptible activity region, for which we can use a fork from the initial node:

![](figs/033-join.png)

and also a way for the timeout event to interrupt the interruptible activity region:

![](figs/034-final.png)

Notice that a merge node was more suitable for the task (rather than a join), because we want to exit the activity if _one_ of the two inputs become active.

