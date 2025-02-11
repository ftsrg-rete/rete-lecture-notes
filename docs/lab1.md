---
title: Laboratory Exercise 1
subtitle: System Modeling (VIMIAD03)
header: System Modeling (VIMIAD03)
---

# Models in Version Control

_The initial model in this repository comes from the [ESPD-EDM](https://github.com/OP-TED/ESPD-EDM) repository, licensed under the [EUPL-1.2 license](https://github.com/OP-TED/ESPD-EDM?tab=EUPL-1.2-1-ov-file#readme). For more information, see the [Technical Documentation](https://docs.ted.europa.eu/ESPD-EDM/latest/technical/index.html). Part of this file has been adapted from the [EU TED Portal](https://docs.ted.europa.eu/ESPD-EDM/latest/index.html)._

To download the initial model, click [here](assets/espd.qeax).

## Introduction

The *European Single Procurement Document* (ESPD) is a mandatory electronic form, in two parts, used by buyers to assess the suitability of suppliers tendering in a public procurement procedure. The [model](model.qeax) provided here showcases the ESPD Exchange Data Model (ESPD-EDM) to help member states and commercial entities create an ESPD service. 

Your tasks during this exercise will cover the following:

1. Create a dynamically updating documentation about the data model
1. Modify part of the data model and merge the modifications via the [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow)  
1. Accept an incoming pull request and solve merge conflicts within the model file
1. (_Optional_) Create an activity diagram that showcases a possible flow of information using the ESPD data model.

> [!WARNING]
> We will only grade **merged** pull requests! Each step includes merging the corresponding branch with a specific label. Make sure that when you're ready, under ["merged pulls"](../../pulls?q=is%3Apr+is%3Amerged), you see all correctly labeled PRs. 
 
## Prerequisites & Setup

For the exercise, the installation and licensing of Enterprise Architect, SmartGit and LemonTree Desktop is necessary. The following files will be needed:

* `easetupfull_x86.exe`: Enterprise Architect installation file
* `smartgit-24_1-preview-13-setup.exe`: SmartGit installation file
* `LemonTree.msi`: LemonTree Desktop installation file

Furthermore, the activation codes and license server credentials are also necessary for licensing the tools.

### Enterprise Architect

We will use Enterprise Architect to edit the UML model for ESPD.

Launching the installer, the wizard takes the user through the installation steps. Administrator permissions are necessary. All default values are suitable as-is.

After installation, launch Enterprise Architect. The licensing window should greet the user. Click `Add Key`, then select `Get Shared Key`. Complete the form using your name and company (e.g., `BME`). Click on the three dots next to `Shared Keystore`, and fill in the form using the license server details.

Click `Test`, which should succeed, then click `OK`. Under `Select a Product`, choose the correct edition, then click `OK`. The License Management window should now be populated.

Click `Close`. A new window should appear, prompting for an activation code. Fill in the code, accept the agreement (after reading it through), then click `OK`. The main window of EA should now open. 

Close Enterprise Architect for now. 

### SmartGit

We will use SmartGit as a git client, because it provides bindings to LemonTree.

Launch the installer (Administrator permission are necessary). The default values are suitable as-is.

Launch SmartGit, and choose "Standard (workflow oriented)" style. The next window asks for username and email, **use the same as you normally use for Git and GitHub**. Next, agree to the license agreement. Check `Register existing license`, and click on the "Have an on-premise license server?" text.

Next, provide the address and port (together with the `http://` part) for the license server. In the pop-up window, click OK. Finish the setup by clicking through the rest of the windows.

Next, SmartGit should open. Click `Edit`/`Preferences`, choose `Add`/`GitHub`, and decide which option is best for you (using a master password or using no master password -- for personal computers, the latter is easier and safe enough). In the following screen, click `Generate token`. This should open a browser. Log in to GitHub on the opened webpage. After a successful login, an "authorization successful" page should open. In the meantime, SmartGit should have populated the token textbox. Without modifying it, click `Add`.

On the main page, click `Clone`, and search for the desired repository to clone (it should be this current repo). After some dialog windows (where default options are OK), this should start the cloning process.

Close SmartGit for now.

### LemonTree Desktop

LemonTree can be used to diff and merge the non-textual model files of Enterprise Architect.  

Launch the LemonTree installer, and click through the installer. Make sure that `SmartGit Integration` is selected on the `Custom Setup` page. All other options are suitable as-is. 

After finishing the installation, launch LemonTree. In the pop-up windows (or through the top-left menu, Help, License), choose `Apply New License`, and `Floating license from URL`.

Write in the license server information, then click `Apply`.

Follow the steps outlined in [this](https://help.lieberlieber.com/LemonTree/SmartGit%20Integration.html#conflict-solver-integration-of-lemontree-for-eap-files) documentation to ensure LemonTree is properly set up to integrate with SmartGit. This should be done automatically, but sometimes LemonTree fails to find SmartGit.

Close LemonTree for now. 

## Creating a Dynamically Updating Documentation

Inspect the `renders` branch of this repository. It should have a few `.svg` files, which are renders of the diagrams in the model. They are named using their fully qualified names (i.e., they include the package names where the diagram can be found).  

Open `model.qeax` in Enterprise Architect, and find all diagrams. 

**DO:** Create a new file in the repository, called `Documentation.md`. Using [GitHub Markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax), include the existing diagram renders in the document using the [image](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#images) syntax (look at the `In a .md file on another branch` row in the table). You may exclude diagrams that have no meaning (such as the LostAndFound diagram).

> [!IMPORTANT]
> You won't be able to add this file directly, as the `main` branch is protected. Create a feature branch (**from `main`**) for the documentation, add the `documentation` label to it, and when it's ready, merge it.
>
> **To clarify**: you will add the file first to this new feature branch, then merge it to main, but the image links in the file should always reference the `renders` branch.  

Also try and include some descriptions on what each diagram represents. The resources linked at the top of this file can help you determine their purpose. 

> [!WARNING]
> The `renders` branch only gets updated when diagrams are changed in the `model.qeax` file **on the main branch**. This is an automatic process.
> This documentation is therefore dynamically updated after a merge into main, but cannot help you determine how the documentation would look like prior to a merge. 

## Model Change and 2-Way Merge

Next, locate `cac::QualificationApplicationRequest` either in the model hierarchy or on one of the diagrams. We want to change this element so that `issuetime` is not optional, and `previousversionid` may contain any number of entries. We also want to add a child class,`cac::SpecialQualificationApplicationRequest`, inheriting from this base, to allow specialization later on. 

**DO**: 
1. Change the multiplicities of these attributes, create the child class on the diagram where `QualificationApplicationRequest` was found, and open a PR from a feature branch towards `main`. 
1. Add the `2-way` label to the PR (this likely won't exist, so feel free to create this label).
1. Inspect the comments and fix any issues that may prevent the checks from succeeding (there will be comments highlighting the problems).
1. In one of the comments, there is a link to open the differences in LemonTree. Open the link, and inspect the changes.
1. When the checks pass successfully, merge the PR. 

> [!IMPORTANT]
> This type of merge is called a _2-way merge_, because we merge two branches that have not diverged. Therefore, there cannot be any merge conflicts, every change is present on the same (feature branch). This means the model file (which is not a text file) is just overwritten by the version from the feature branch. Had the two branches diverged, this would be a _3-way merge_, and `git` alone could not solve the merge conflicts within this non-text file.

## Causing a Conflict and 3-Way Merge

You can find a PR that was automatically opened towards `main` containing some changes in the model file. If you successfully merged the `2-way` PR in the previous step, now you should see that there is a merge conflict, and GitHub doesn't let you update the branch.

**DO**: 

1. Assign the label `3-way` to this PR (this likely won't exist, so feel free to create this label).
1. Open SmartGit, checkout `main` (double-click) then click `Pull` to pull the changes.
1. Checkout the source branch of the PR, then select main and click merge in the right-click (context) menu. A prompt should appear asking how the merge should be performed. Choose `Create Merge-Commit`. This will open the merge window, where conflicts have to be dealt with.
1. Double-click the conflicting `model.qeax` to open in LemonTree.
1. After LemonTree opens, there are 3 columns in the right partition: "ours", "theirs", and "target". We can see the current feature branch's modifications in the "ours" column, the second feature branch's modifications in the "theirs" column, and the desired outcome in the "target" column. Pick the model elements to keep -- it is better to accept your own modifications in the previous step than the new changes, but for other elements, accept the changes.
1. Push your local changes to GitHub, and merge the PR.

## (_Optional_) Creating an Activity Diagram

Next, you'll create an activity diagram showcasing how information may flow using the ESPD data model. You can find information in the resources linked above, but you may also assume a simple workflow. The realized process itself will not be graded.

**DO**:

1. Open an issue in the repository, stating the expected behavior (textually). Assign yourself to the issue.
1. Create a feature branch and open a PR with your modifications. Label it with `activity`.
1. [Link](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue) the pull request to the issue so that when the PR is merged, the issue is automatically closed.
1. Merge the PR.


> [!NOTE]
> In Enterprise Architect, creating an Activity Diagram can be a bit complicated. Feel free to search online for guides and documentation, such as [this](https://sparxsystems.com/resources/tutorials/uml2/activity-diagram.html) one. 
