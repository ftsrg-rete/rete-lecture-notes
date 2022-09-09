---
title: BDD and IBD modeling Papyrus guidebook 
subtitle: Systems Engineering (BMEVIMIAC01)
header: Systems Engineering (BMEVIMIAC01)
---

# Block Definition Diagram

## Diagram Creation

![](../figs/new_bdd_1.png)

1. **Right click** on the selected _Package_ (_Requirements_ in this example) -> **New Diagram** -> **SysML 1.6 Block Definition Diagram**.
1. In the pop-up window give a name to the diagram.
1. _Hint_: During BDD modeling the most used groups from the **Palette** are the **Blocks** and the **Ports and Flows**, so pin these.

## System Context
To add an _Actor_ during _System Context_ modeling:
1. Select _Actor_ from the toolbox: **Palette** -> **Blocks** -> **Actor**.
1. Place it on the diagram.
1. Edit the name in the **Properties** window.

## Block Creation and Settings:
1. Select _Block_ from the toolbox: **Palette** -> **Blocks** -> **Block**.
1. Place it in the diagram, _Hint_: by holding the mousebutton and drawing a square the size of the block can be altered.
1. Add a name to the _Block_. (You can always change it in the **Properties** window.)
1. The **Attributes**,**Operations**,**Constraints** compartpents are displayed by default, these can be unnecessary, you can access the menu to hide them:
    - **Ctrl+F5**
    - **Right click** on the block -> **Filters** -> **Show/Hide Compartments**
    - You can edit these properties on multiple block simultaneously by selecting multiple blocks. 
1. You can add _Part/Reference/etc. properties_ to a _Block_ on the **UML** tab of the **Properties** window, in the **Owned Attributes** field.
    - This is most useful for properties with primitive types, as you can add _Ports_ or _Properties typed by Blocks_ more easily from the **Palette** with connections.

## Relations between Blocks

![](../figs/bdd_toolbox_relationships.png)

1. You can select from the possible _Associations_ by unfolding the **Palette** -> **Blocks** -> **Association**
    - We mostly use **Association (Directed)** and **Composite Association** from these.
    - The **Association** should be handled with care, define _Ports_ instead of referencing another _Block_ with specific type.
    - The **PartAssociation** can be misleading, it does not create the proper _Part Property_ in the block, use the **Composite Association** instead.
    - The **SharedAssociation** does not have proper semantics in SysML, avoid using it.
1. The properties of the _Association_ can be edited in the **Properties** window, like the names of the ends of the association or the multiplicities. Be mindful which end of the association you're editing!
    - In systems engineering the source end of the association usually does not have a name, however in Papyrus a default name is assigned to this end (inherited from UML), you can delete this to make your diagram more transparent.
1. The **Generalization** can be found outside of the **Association**: **Palette** -> **Blocks** -> **Generalization**
1. _Containment_ can be defined with **Composite Association**, do not mix it up with **Containment Link**!

## Port Creation and Properties
1. Select the appropriate _Port_ from **Palette** -> **Ports and Flows** -> **Port**/**Full Port**/**Proxy Port**.
1. Clicking on a _Block_ add the _Port_ to it (adds it as **Owned Property** automatically).
1. Properties of the _Port_ can be edited in the **UML** tab of the **Properties** window.
    - The **Type** of the _Port_ (**Block** or **Interface Block**) must be created separatelly and added to the _Port_ in the **...** menu.
    - The **Provided** and **Required** interfaces field can only be edited after selecting the **Type** of the _Port_
    - The **Is Conjugated** switch reverses the **Provided** and **Required** interfaces and the directions of the **Flow Properties**.

# Internal Block Diagram

## IBD Creation
1. From the **Model Explorer** select the _Block_ you want to define its connections: **Right click** -> **New Diagram** -> **SysML 1.6 Internal Block Diagram**
1. **Drag-and-drop** the model elements contained by the _Block_ to the diagram.
1. To represent the hierarchy of the structure switch on the **Internal Structure**:
    - **Ctrl+F5**
    - **Right click** on the block -> **Filters** -> **Show/Hide Compartments**

1. _Hint_: a model element referenced by **Composite Association** has solid border, a model element referenced by **Association** or **Shared Association** has dashed border

## System Context

1. Adding _Information Flow_ **Palette** -> **Ports and Flows** -> **Item flow**
1. The information can be set on the **UML** tab of the **Properties** window, however during this homework seting the name properly is sufficient.


## Connector Creation
1. **Palette** -> **Blocks** -> **Connector**
1. A _Connector_ can be typed by an _Association_ defined on the BDD, which can be set on the **UML** tab of the **Properties** window
    - New _Association_ can be added using the **+** menu.
    - Existing _Association_ can be selected in the **...** menu.

1. **Binding Connector** used to express the equality of the model elements, do not mix these up!

## Remarks
1. New contained of referenced _Blocks_ can be added from the **Palette** during the _IBD_ modeling, which adds new _Part/Reference Property_ to the _BDD_ of the _IBD_. In the modeling approach presented in this course the BDD should be modeled first, so this option should not be used.