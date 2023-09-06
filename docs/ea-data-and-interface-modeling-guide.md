

---
title: Data and interface modeling using Enterprise Architect
subtitle: System Engineering (BMEVIMIAC01)
header: System Engineering (BMEVIMIAC01)
---

# Data and information modeling

## Download ISO 80000 library

The *ISO 80000* is an international standard, which defines numeous physicalquantities and units such as, force, distance, time, temperatures. The physical quantities and units are organized into 10 chapters. The OMG published in XML format the SysML model of the units and quantities of the *ISO 80000* standard. 

1. Create a package and right click on the package and select "*Add a Model using Wizard...*".
![Alt text](figs/ea-data-and-information/image.png)
1. In the SysML1.5 Libraries category select "*ISO 80000 Library (Downloaded)*" and press "*Create Model(s)*". 
![Alt text](figs/ea-data-and-information/image-1.png)

**Sometimes the library cannot be downloaded due to server issues of the OMG. If the server issue persists, then download the .xml from our Teams and import it similarly to the import of the template package (see the generic EA guide).**


## Create units and quantity kinds

1. Create a BDD and define some units and quantity kinds using the Toolbox.
![Alt text](figs/ea-data-and-information/image-2.png)
1. Set the attribute values of the quantity kinds and units in the Run States tab of the Preferences window.
![Alt text](figs/ea-data-and-information/image-3.png)

## Value types, enums and signals

1. Create a BDD and add some value types, enums and signals using the Toolbox.
![Alt text](figs/ea-data-and-information/image-5.png)
2. Select the quantity kind and unit of the value types in the Preferences window by clicking on the three dot icon near the attributes.
![Alt text](figs/ea-data-and-information/image-6.png)
3. Define the literals of the enums in the Attributes tab of the Features window, by writing the name of the literal in the *New Attribute* field.
![Alt text](figs/ea-data-and-information/image-8.png)
4. Define the attributes of the signals in the Attributes tab of the Features window, by writing the name of the attribute in the *New Attribute* field. Set the type and the visibility of the attribute near the name of the attribute.
![Alt text](figs/ea-data-and-information/image-10.png)

# Interface modeling

1. Create a BDD and add some interfaces and interface blocks using the Toolbox.
![Alt text](figs/ea-data-and-information/image-11.png)
1. Add signal receptions to the interfaces in the Receptions tab of the Features window by clicking on the three dot icon near the *New Reception* label.
![Alt text](figs/ea-data-and-information/image-12.png)
1. You can add flow properties to the interface blocks three ways:
      - drag a value type from the Browser and drop it over the interface block and select the *SysML1.4::FlowProperty* in the "*Drop as*" field, and click "*OK*", then rename the property;
      ![Alt text](figs/ea-data-and-information/image-13.png)
      - select the interface block and in the "*Parts/Properties*" field right click and select "*Add New*", then fill the form in the pop-up window and press "*OK*";
      ![Alt text](figs/ea-data-and-information/image-14.png)
      - use the Toolbar to create a flow property, and set the name, the type and the direction of the flow property in the Preferences window.
      ![Alt text](figs/ea-data-and-information/image-15.png)