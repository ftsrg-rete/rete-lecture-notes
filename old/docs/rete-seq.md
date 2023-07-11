---
title: Sequence Diagrams Papyrus guidebook 
subtitle: System Engineering (BMEVIMIAC01)
header: System Engineering (BMEVIMIAC01)
---
 
# Diagram creation

Inside the Model Explorer windows of Papyrus, right-click the destination package, and choose _new diagram_/_SysML 1.6 Sequence Diagram_.

![](figs/seq-001-create-seq.png)

This should create the following structure in the model explorer window. 

![](figs/seq-002-created-model-explorer.png)

Visually, the sequence diagram editor should look like this.

![](figs/seq-003-empty-diagram.png)

# Structure

To add lifelines of participants (parts) to the interaction, drag and drop blocks onto the diagram area, or choose the lifeline element in the palette to the right. 

![](figs/seq-004-lifeline.png)

Messages (including found & lost messages) can be added via the same palette.

![](figs/seq-005-found-message.png)

To set the contents of the message, add the corresponding signal in the properties window (as a signature).

![](figs/seq-006-message-spec.png)

Execution specifications can also be added from the palette.

![](figs/seq-007-execution-spec.png)

Ensure that the execution speficiation has reasonable start and finish points (events). Here, _start_ is bound to the message reception, but _finish_ has no constraint.

![](figs/seq-007-execution-specification-diagram.png)
![](figs/seq-008-execution-specification-prop.png)

Synchronous and asynchronous messages can be added from the palette to the diagram are between lifelines. Such messages need not contain a signal, if the semantics of the message do not require such specification (e.g., a return message does not need to specify a type).
![](figs/seq-009-two-lifelines-message.png)

Combined fragments are a bit cumbersome to use, because they re-arrange the containment hierarchy in the model explorer every time they are moved (and thus include/exclude some elements). The type of the fragment can be selected from a drop-down in the properties window.
![](figs/seq-010-combined-fragment.png)

The label of the combined fragment is added via simple string literals using the properties window.
![](figs/seq-011-combined-fragment-label.png)

State invariants are added from the palette onto lifelines. 
![](figs/seq-012-state-invariant.png)

The specification of the state invariant is done through the constraint pop-up in the properties window.
![](figs/seq-013-state-invariant-prop.png)

Instead of duration constraints (which are not supported for SysML sequence diagrams in Papyrus), we can use time constraints at specific events. Add a time constraint from the palette onto a lifeline at a message send/receive point:
![](figs/seq-014-time-constraint-add.png)

Ensure that the constrained element is sensible (not unconstrained):
![](figs/seq-015-time-constraint-prop.png)

To show a duration, use an initial "t[N]" label, then an offset. Here, a 10 second offset is used to specify that the duration of the execution specification is 10 seconds. Note that separate starting points are necessary for the lifelines (i.e., do not use t[0] on the second lifeline in the example).
![](figs/seq-016-time-constraints-duration.png)
