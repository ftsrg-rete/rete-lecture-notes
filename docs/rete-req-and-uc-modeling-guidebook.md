---
title: Követelmény and Use case modellezés Papyrus segédlet 
subtitle: Informatikai Rendszertervezés (BMEVIMIAC01)
header: Informatikai Rendszertervezés (BMEVIMIAC01)
---


# Use case Modellezés

## Diagram létrehozás

1. **Jobb katt** a kiválasztott _Package_-en (_UseCases_ ebben a példában) -> **New Diagram** -> **SysML 1.6 Use Case Diagram**.

![](../figs/use-case-new-diag.png)

2. **Drag-and-drop** használatával helyezzük rá a rendszer határát (_System Boundary_) reprezentáló block-ot a diagramra.

![](../figs/use-case-system-boundary.png)

## Actorok és Use Case-ek felvétele

1. _Actor_ hozzáadáshoz a **Palette**-ről válasszuk ki az **Actor**-t és helyezzük el a diagramon. 

![](../figs/use-case-new-actor.png)

2. _Use Case_ hozzáadáshoz a **Palette**-ről válasszuk ki az **Use Case**-t és helyezzük el a diagramon.

![](../figs/use-case-new-uc.png)

3. _Asszociáció_ (_Association_) felvételéhez a **Palette**-ről válasszuk ki a **Communication Path**-t, majd kössük össze vele az _Actor_-t és a _Use Case_-t.

![](../figs/use-case-actor-uc-assoc.png)

![](../figs/use-case-actor-uc-assoc-2.png)

## Actorok közötti kapcsolatok felvétele

1. Leszármazás (_Generalization_) felvételéhez a **Palette**-ről válasszuk ki a **Generalization**-t, majd kössük össze vele a két _Actor_-unkat.

![](../figs/use-case-generalization.png)

![](../figs/use-case-generalization-2.png)

## Use Case-ek közötti kapcsolatok felvétele
1. Leszármazás (_Generalization_) felvételéhez a **Palette**-ről válasszuk ki a **Generalization**-t, majd kössük össze vele a két _Use Case_-ünket.

![](../figs/use-case-generalization-3.png)

2. _Use Case_ finomításához (_Refinement_) a **Palette**-ről válasszuk ki a **Include**-t, majd kössük össze vele a két _Use Case_-ünket. Figyeljünk a nyilak helyes irányára!

![](../figs/use-case-include.png)

![](../figs/use-case-include-2.png)

3. _Use Case_ bővítéséhez (_Extension_) a **Palette**-ről válasszuk ki a **Extend**-t, majd kössük össze vele a két _Use Case_-ünket. Figyeljünk a nyilak helyes irányára!

![](../figs/use-case-extend.png)

![](../figs/use-case-extend-2.png)