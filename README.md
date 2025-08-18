### Release Drafter Logic

This repository uses **Release Drafter** to automatically generate release notes from merged PRs.

### Versioning

Release Drafter calculates the next version using PR labels:

- **Major:** `major` → increments major version  
- **Minor:** `enhancement`, `dev task`, `dev process optimization` → increments minor version  
- **Patch:** `bug`, `hotfix`, `task` → increments patch version  
- **Default:** patch if no label matches  

The version is applied to both **release name** and **Git tag** as `v$RESOLVED_VERSION`.

### Categorizing PRs

PRs are grouped in release notes by label:

- **Breaking Changes:** `major`  
- **Enhancements:** `enhancement`, `dev task`, `dev process optimization`  
- **Bug Fixes:** `bug`, `hotfix`  
- **Tasks:** `task`  

