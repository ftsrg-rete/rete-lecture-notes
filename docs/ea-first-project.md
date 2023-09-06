---
title: First steps using Enterprise Architect
subtitle: System Engineering (BMEVIMIAC01)
header: System Engineering (BMEVIMIAC01)
---

# Create project

1. Click on "*Create New*" in the Start Page
![Alt text](figs/ea-create-project/image.png)
2. In the pop-up window name the file and choose proper extension. For shared projects "*\*.qea*" extension is strongly advised, and click on save.
![Alt text](figs/ea-create-project/image-1.png)
3. The project is created. In the Start Page you can easily switch between the recently created projects. 
![Alt text](figs/ea-create-project/image-2.png)
4. You can open existing projects, by clicking on Open Project in the Start Page.
![Alt text](figs/ea-create-project/image-3.png)

# Create package structure

1. You can create a root-level package by right clicking in the Browser and choosing "*Add Root Node...*".
![Alt text](image.png)
2. Name the root-level package and click OK.
![Alt text](image-1.png)
3. You can add packages to root-level packages by clicking on "*Add Package*" in the "*Design*" menu tab.
![Alt text](image-2.png)
4. In the pop-up window name the package and click on OK.
![Alt text](image-3.png)
5. Except root-level packages you can add a subpackage, by  either:
   - right click the package in the Browser and choose "*Add a package*", or
![Alt text](image-4.png)
   - select the package in the Browser and press CTRL+N and select "*Add a package*"
![Alt text](image-5.png)


# Create diagrams

1. Right click on a any (not root-level) package in the browser (or select the package and press CTRL+N) and choose "*Add Diagram*". 
![Alt text](image-6.png)
2. In the pop-up window select the type of the diagram and name it. Finally press OK.
![Alt text](image-7.png)
3. The new diagram opens automatically and the EA loads all the relevant model creation tools into the toolbox. You can click on any tools in the toolbox to create new elements.
![Alt text](image-8.png)
4. You can add additional model creation tools to the toolbox by clicking on the menu button in the right upper corner of the toolbox and choose "*Toolbox Visibility*".
![Alt text](image-9.png)
5. Now you can select which groups of tools will be always visible. It isstrongly advised to select "*SysML Common*" and "*SysML Model*".
![Alt text](image-10.png)

**Please do not create behavior diagrams by right-clicking and after directly selecting diagram type, becouse this way you will create the UML version and not the SysML version of the diagrams.**