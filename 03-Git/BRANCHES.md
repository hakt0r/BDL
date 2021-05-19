# Branches
Branches are different versions of a progam, inside one repo.
Opposed to Forks branches exist in one repo. Forks on the other hand
are copies of repos. They can have the same branches but also more or
less branches as the original repo.

## Pull Requests
On github a fork or a different branch can be merged into another branch
by issueing a pull request. This is basically the qustion can you take 
my code and merge it with yours.

## Workflows
Workflow are procedures that tell us how the code should flow.
Consider the follwing repo with 2 branches.

hakt0r/nuu
 - main (stable version of my game)
 - devel (experimental version of my game)

### Possible workflow:
Write code in devel, test it and then merge it into main.

### Pull request workflow
Other people write some code as an addition to my code an then ask
me to integrate their code, in the form of a pull request.

### Typical company workflow

microsoft/vscode
 - main
 - devel
 - fix-123123-crashes-after-40-minutes
 - feature-add-green-dot

In bigger companies or projects we actually have branches for each
tiny change. Those branches are merged via pullrequest into devel
first then into main if they are stable.

### Sadly: this can lead to conflicts

Merge conflicts are bad, no point in denying this. They are hard to solve,
luckily we have git and if something goes we can try to fix and go
back to the original versions.

In a merge confict you will be asked what the final version of the
file will be. Usually denoted with a special syntax that show you
the different versions, or options.

```
1 <<<<<<<<<
2 One version 
3 =========
4 Another version
5 >>>>>>>>>
```

You are supposed to choose the right version (or both) and delete the special
code.

Changed by Sempris
