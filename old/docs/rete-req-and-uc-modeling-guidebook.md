---
title: Követelmény és Use case modellezés Papyrus segédlet 
subtitle: Informatikai Rendszertervezés (VIMIAD03)
header: Informatikai Rendszertervezés (VIMIAD03)
---


# Követelmény modellezés

## Diagram létrehozás

1. **Jobb katt** a kiválasztott _Package_-en (_Requirements_ ebben a példában) -> **New Diagram** -> **SysML 1.6 Requirement Diagram**.

![](figs/req-new-diag.png)

2. _Requirement_ hozzáadáshoz a **Palette**-ről válasszuk ki az **Requirement**-t és helyezzük el a diagramon, majd a **Properties** ablakban a **SysML 1.6** fülön töltsük ki az _**Id**_ és a _**Text**_ mezőket. 

![](figs/req-new-req.png)
![](figs/req-properties.png)

## Követelmények lebontása

1. _Requirement_ lebontásához (_Decomposition_) a **Palette**-ről válasszuk ki a **Containment Link**-t, majd kössük össze vele a két _Requirement_-ünket. Figyeljünk a nyilak helyes irányára!

![](figs/req-containment.png)
![](figs/req-containment2.png)

## Követelmények származtatása

1. _Requirement_ származtatásához (_Derive_) a **Palette**-ről válasszuk ki a **DeriveReqt**-t, majd kössük össze vele a két _Requirement_-ünket. Figyeljünk a nyilak helyes irányára!

![](figs/req-derived-req.png)
![](figs/req-derived-req-2.png)



# Use case Modellezés

## Diagram létrehozás

1. **Jobb katt** a kiválasztott _Package_-en (_UseCases_ ebben a példában) -> **New Diagram** -> **SysML 1.6 Use Case Diagram**.

![](figs/use-case-new-diag.png)

2. **Drag-and-drop** használatával a **Model Explorer**-ből helyezzük rá a rendszer határát (_System Boundary_) reprezentáló block-ot a diagramra.

![](figs/use-case-system-boundary.png)

## Actorok és Use Case-ek felvétele

1. _Actor_ hozzáadáshoz a **Palette**-ről válasszuk ki az **Actor**-t és helyezzük el a diagramon. 

![](figs/use-case-new-actor.png)

2. _Use Case_ hozzáadáshoz a **Palette**-ről válasszuk ki az **Use Case**-t és helyezzük el a diagramon.

![](figs/use-case-new-uc.png)

3. _Asszociáció_ (_Association_) felvételéhez a **Palette**-ről válasszuk ki a **Communication Path**-t, majd kössük össze vele az _Actor_-t és a _Use Case_-t.

![](figs/use-case-actor-uc-assoc.png)

![](figs/use-case-actor-uc-assoc-2.png)

## Actorok közötti kapcsolatok felvétele

1. Leszármazás (_Generalization_) felvételéhez a **Palette**-ről válasszuk ki a **Generalization**-t, majd kössük össze vele a két _Actor_-unkat.

![](figs/use-case-generalization.png)

![](figs/use-case-generalization-2.png)

## Use Case-ek közötti kapcsolatok felvétele
1. Leszármazás (_Generalization_) felvételéhez a **Palette**-ről válasszuk ki a **Generalization**-t, majd kössük össze vele a két _Use Case_-ünket.

![](figs/use-case-generalization-3.png)

2. _Use Case_ finomításához (_Refinement_) a **Palette**-ről válasszuk ki a **Include**-t, majd kössük össze vele a két _Use Case_-ünket. Figyeljünk a nyilak helyes irányára!

![](figs/use-case-include.png)

![](figs/use-case-include-2.png)

3. _Use Case_ bővítéséhez (_Extension_) a **Palette**-ről válasszuk ki a **Extend**-t, majd kössük össze vele a két _Use Case_-ünket. Figyeljünk a nyilak helyes irányára!

![](figs/use-case-extend.png)

![](figs/use-case-extend-2.png)

# Nyomonkövethetőség

## Diagram létrehozás

1. **Jobb katt** a kiválasztott _Package_-en (_Traceability_ ebben a példában) -> **New Diagram** -> **SysML 1.6 Block Definition Diagram**.

![](figs/trace-new-diag.png)

2. **Drag-and-drop** használatával a **Model Explorer**-ből helyezzük rá a követelményt (_Transport Cargo_) a diagramra.

![](figs/trace-req-from-me.png)

3. **Drag-and-drop** használatával a **Model Explorer**-ből helyezzük rá a követelményt megvalósítós _Block_-ot (_Transportation Subsystem_) a diagramra.

![](figs/trace-block-from-me.png)

4. Követelmény kielégítéséhez (_Satisfy_) a **Palette**-ről válasszuk ki a **Abstraction**-t, majd kössük össze vele a két _Block_-unkat a _Requirement_-ünkkel. Ezután a **Properties** ablakon a **Profile** fülön adjuk hozzá a **Satisfy** _Stereotype_-t. Figyeljünk rá, hogy a **Satisfy**-nak az **Applied Stereotypes** hasábban legyen, ezután okézzuk csak le.

![](figs/trace-satisfy.png)
![](figs/trace-satisfy-2.png)
![](figs/trace-satisfy-3.png)
![](figs/trace-satisfy-4.png)