---
title: Behavior modeling using Enterprise Architect
subtitle: System Engineering (BMEVIMIAC01)
header: System Engineering (BMEVIMIAC01)
---

# Statemachine modeling

 - You can create a statemachine diagram if you right click a block and select "*Add/ State Machine*". Then name the statemachine and click "*OK*".
![Alt text](figs/ea-statemachine-modeling/image-1.png)
 - Create composite states by moving other states into other states.
![Alt text](figs/ea-statemachine-modeling/image-2.png)
 - Create multiple paralell regions within states in the "*Regions*" tab of the Preferences window. Define the name of the region in the "*Name*" field and click "*Add*".
![Alt text](figs/ea-statemachine-modeling/image-3.png)
 - You can define the guard of a transition if you select a transition, and in the "*Constraint*" tab of the Preferences window.
![Alt text](figs/ea-statemachine-modeling/image-4.png)
- In the "*Constraint*" tab of the Preferences window you can add triggers to transitions if you click "*New*" specify the name of the trigger and click "*Save*". The name and the label of the trigger is not affected by the type and the specification of the trigger. As a result, you should mind follow the syntax of the trigger labels when you define the name of triggers.
  - ![Alt text](figs/ea-statemachine-modeling/image-5.png)
  - ![Alt text](figs/ea-statemachine-modeling/image-6.png)
  - ![Alt text](figs/ea-statemachine-modeling/image-7.png)
 - In the "*Constraint*" tab of the Preferences window you can activites as effects of transitions if you set the "*Effect is a Behavior*" option. 
![Alt text](figs/ea-statemachine-modeling/image-8.png)
 - You can set the entry, do and exit actions of states in the "*Behavior*" tab of the Feature window. Firstly, you define the name of the action and if you double click the name of the action you can specify the referenced activity.
![Alt text](figs/ea-statemachine-modeling/image-9.png)


# Activity modeling

Work in progress...

# Sequence modeling

Work in progress...