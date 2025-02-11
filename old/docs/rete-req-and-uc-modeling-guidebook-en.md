---
title: Requirement and Use case modeling Papyrus guidebook 
subtitle: Systems Engineering (VIMIAD03)
header: Systems Engineering (VIMIAD03)
---


# Requirement modeling

## Diagram Creation

1. **Right click** on the selected _Package_ (_Requirements_ in this example) -> **New Diagram** -> **SysML 1.6 Requirement Diagram**.

![](figs/req-new-diag.png)

2. To add a _Requirement_ select **Requirement** from the **Palette** and place it on the diagram, then on the **Properties** window, in the **SysML 1.6** tab fill out the **Id** and the **Text** fields.

![](figs/req-new-req.png)
![](figs/req-properties.png)

## Requirement Decomposition

1. For _Requirement Decomposition_ select **Containment Link** from the **Palette** and connect two _Requirements_. Pay attention to the direction of the connection!

![](figs/req-containment.png)
![](figs/req-containment2.png)

## Deriving Requirements

1. To _Derive Requirements_ select **DeriveReqt** from the **Palette** and connect two _Requirements_. Pay attention to the direction of the connection!

![](figs/req-derived-req.png)
![](figs/req-derived-req-2.png)


# Use Case modeling

## Diagram Creation

1. **Right click** on the selected _Package_ (_UseCases_ in this example) -> **New Diagram** -> **SysML 1.6 Use Case Diagram**.

![](figs/use-case-new-diag.png)

2. **Drag-and-drop** a block representing the boundry of the system (_System Boundary_) from the **Model Explorer** to the diagram.

![](figs/use-case-system-boundary.png)

## Adding Actors and Use Cases

1. To add an _Actor_ select **Actor** from the **Palette** and place it on the diagram. 

![](figs/use-case-new-actor.png)

2. To add a _Use Case_ select **Use Case** from the **Palette** and place it on the diagram. 

![](figs/use-case-new-uc.png)

3. To add an _Association_ between the _Actor_ and the _Use Case_ select **Communication Path** from the **Palette** and connect the _Actor_ and the _Use Case_. 

![](figs/use-case-actor-uc-assoc.png)

![](figs/use-case-actor-uc-assoc-2.png)

## Relations between Actors

1. To _Generalize_ _Actors_ select **Generalization** from the **Palette** and connect two _Actors_. Pay attention to the direction of the connection!

![](figs/use-case-generalization.png)

![](figs/use-case-generalization-2.png)

## Relations between Use Cases

1. To _Generalize_ _Use Cases_ select **Generalization** from the **Palette** and connect two _Use Cases_. Pay attention to the direction of the connection!

![](figs/use-case-generalization-3.png)

2. To _Refine_ a _Use Case_ select **Include** from the **Palette** and connect two _Use Cases_. Pay attention to the direction of the connection!

![](figs/use-case-include.png)

![](figs/use-case-include-2.png)

3. To _Extend_ a _Use Case_ select **Extend** from the **Palette** and connect two _Use Cases_. Pay attention to the direction of the connection!

![](figs/use-case-extend.png)

![](figs/use-case-extend-2.png)

# Traceability

## Diagram Creation

1. **Right click** on the selected _Package_ (_UseCases_ in this example) -> **New Diagram** -> **SysML 1.6 Block Definition Diagram**.

![](figs/trace-new-diag.png)

2. **Drag-and-drop** the _Requirement_ (_Transport Cargo_) from the **Model Explorer** to the diagram.

![](figs/trace-req-from-me.png)

3. **Drag-and-drop** the _Block_ satisfying the _Requirement_ (_Transportation Subsystem_) from the **Model Explorer** to the diagram.

![](figs/trace-block-from-me.png)

4. To _Satisfy_ the _Requirement_ select **Abstraction** from the **Palette** and connect the _Block_ to the _Requirement_. Than on the **Properties** window, on the **Profile** tab add the **Satisfy** _Stereotype_-t. The **Satisfy** _Stereotype_ must be in the **Applied Stereotypes** column!

![](figs/trace-satisfy.png)
![](figs/trace-satisfy-2.png)
![](figs/trace-satisfy-3.png)
![](figs/trace-satisfy-4.png)