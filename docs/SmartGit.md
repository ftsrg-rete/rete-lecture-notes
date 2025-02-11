---
title: SmartGit FAQ
subtitle: System Modeling (VIMIAD03)
header: System Modeling (VIMIAD03)
---

# Potential Issues with SmartGit

1. **"Local file has changed"**: if you are sure you don't have valuable changes in your model file, close EA, then click "discard", and retry the original operation.

1. **No branches when cloning repository**: You might have cloned an uninitialized repository. Try creating a branch (either locally or on GitHub), click fetch, then checkout the `origin/<branchname>` branch under "All branches and tags".

1. **Merging fails because LemonTree/SmartGit could not write the model file**: close EA.
