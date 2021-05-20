# Branches
Branches are different versions of a progam, inside one repo.
Opposed to Forks branches exist in one repo. Forks on the other hand
are copies of repos. They can have the same branches but also more or
less branches as the original repo.

Create branches like this:

```
  git branch $NAME
```

To switch to a branch:

```
  git checkout $NAME
```

Or all at once:

```
  git checkout -b $NAME
```

This will creat a branch and then switch to it!

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

## If pulling goes wrong

git pull

Auto-merging 03-Git/BRANCHES.md
CONFLICT (content): Merge conflict in 03-Git/BRANCHES.md
Auto-merging .gitignore
CONFLICT (content): Merge conflict in .gitignore
Automatic merge failed; fix conflicts and then commit the result.

a conflict comes up... but you dont want to deal with it now...

git merge --abort

This will give you all the files you had before the pull.

## Rebasing

git pull --rebase

Rebasing is like pulling but you take the remote code and put your
local changes ontop of that. Only makes sense, but alot of that,
if you have commits on you compouter that the github repo does not have.

**If pull --rebase goes wrong**

git rebase --abort

This will give you all the files you had before the pull.

## If you want to DELETE ALL YOUR LOCAL WORK
... and just get the updates from github

git reset --hard origin main
git reset --hard $REMOTE $BRANCH

This is freaking' dangrous, you could loose all your work.

## Delete branches

git branch -d $NAME

Aaaand it's gone

## Checkout files from another branch individually

Sometimes you need just one file from another branch...
in that case you can also you checkout:

```
  git checkout $BRANCH -- $FILE1 [$FILE2]
```