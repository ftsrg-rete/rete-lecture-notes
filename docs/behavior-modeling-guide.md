---
title: Behavior modeling using Enterprise Architect
subtitle: System Modeling (VIMIAD03)
header: System Modeling (VIMIAD03)
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

1. You can create an activity diagram if you select *SysML* persepective and you right click on any block or package and select "*Add/Activity/with Activity Diagram*". In the pop-up window specify the name of the activity and press "*OK*".
   ![Alt text](figs/ea-activity-and-seq/image.png)
   ![Alt text](figs/ea-activity-and-seq/image-1.png)
2. Drag and drop elements from the "Toolbox" to create new elements in the activity diagram.
![Alt text](figs/ea-activity-and-seq/image-2.png)
3. Add actions from the Toolbar and int the pop-up menu select the type of the new action.
![ ](figs/ea-activity-and-seq/image-3.png)
4. In the case of "*Send*" and "*Accept*" actions, you can specify in the "*Properties*" window the port of the actions in the "*On Port*" field in the "*Element*" tab.
![Alt text](figs/ea-activity-and-seq/image-4.png)
5. You can specify the transmitted or recieved signal in the "*Signal*" of the "*Condition*" tab in the "*Properties*" window.
![Alt text](figs/ea-activity-and-seq/image-5.png)
6. Unfortunately none of these properties is visualized in the diagram, therefore it is strongly advised to add a note, which contains all these information.
![Alt text](figs/ea-activity-and-seq/image-6.png)

# Sequence modeling

1. You can create a sequence diagram if you right click an element in the "*Browser*" and select add diagram and choose "*Sequence Diagram*".
![Alt text](figs/ea-activity-and-seq/image-7.png)
![Alt text](figs/ea-activity-and-seq/image-8.png)
1. You can create new objects with lifelines using by draging "*Sequence*" elements from the "*Toolbox*".
![Alt text](figs/ea-activity-and-seq/image-9.png)
1. Alternatively, you can drag and drop existing elements from the "*Browser*" into the diagram. The Enterprise Architect will automatically add lifeline to the elements. Moreover you can add properties of the elements to the diagram.
![Alt text](figs/ea-activity-and-seq/image-10.png)
1. Using the "*Toolbox*" you can add messages into the diagram.
![Alt text](figs/ea-activity-and-seq/image-11.png)
1. You can add signals and data objects to the messages if you right click on a message and select the "*Advanced/Information Flows Realized*" command. In the pop-up windows you shall click on "*Create new information flow*" field and select a Class or a Signal.
![Alt text](figs/ea-activity-and-seq/image-12.png)
![Alt text](figs/ea-activity-and-seq/image-13.png)
![Alt text](figs/ea-activity-and-seq/image-14.png)
1. You can add duration and timing constraints to messages if you right click on a message and select "*Timing Details*". In the pop-up window you can specify the timing related constraints and observations.
![Alt text](figs/ea-activity-and-seq/image-15.png)
![Alt text](figs/ea-activity-and-seq/image-16.png)
![Alt text](figs/ea-activity-and-seq/image-17.png)
1. You can set the synchronicity type of a message if you right click on a message and select the "Toogle IsReturn" command.
![Alt text](figs/ea-activity-and-seq/image-18.png)
![Alt text](figs/ea-activity-and-seq/image-19.png)
1. You can modify the lifeline activations if you right click on a message and select the "*Activations/Extend Source Activation*" commands.
![Alt text](figs/ea-activity-and-seq/image-20.png)
![Alt text](figs/ea-activity-and-seq/image-21.png)
1. You can add fragments using the toolbox.
![Alt text](image-22.png)
1.  You can add multiple region to a fragment by adding new conditions in the "*Combined fragment*" tab of the "*Properties*" window. 
![Alt text](figs/ea-activity-and-seq/image-23.png)