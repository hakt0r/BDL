# GIT

Git was created by Linus Torvalds as well :D Because the old version control systems all s****@.
Git is a sofware that lets you share code with others and manage version differences.
Github is a platform using git for social coding mainly for open-source project (run by Microsoft).

## Installing git

  $ pkexec apt install git-core

## Cloning a repository

Copy the source code of some project from the internet (usually) to your local harddrive.
In order to do that you need to know the URL.

  $ git clone $URL

## Pulling a repo

By pulling we update a local repo with the current information from the internet.
you have to be in the directory in order to git pull for a specific repo.

  $ cd $REPO_DIR
  $ git pull

## Getting the status

  $ git status

Will give you info on your curren branch, if there are updates or if you changed files

## Committing and pushing

  $ git add $PATH_TO_CHANGED_FILE_OR_FOLDER

Prepare a file to be comitted (make git aware of the changes)

  $ git commit -m "$A_COMMIT_MESSAGE"

 - -m : commit message is the next argument (optional)

Description of you changes to the sourcecode. E.g. the diffence from the last version.

  $ git commit -a -m "$A_COMMIT_MESSAGE"

Take all changed files and create a commit with the following message.
 - -a : take all the changed files
 - -m : commit message is the next argument

  $ git push

Upload it to the internet.

## Init procedure (fully manual)

  $ mkdir my-repo
  $ cd my-repo
  $ git init
  $ touch README.md
  $ git add .
  $ git commit -m 'first commit'
  $ git branch -M main
  $ git remote add origin https://github.com/$YOUR_NAME/my-repo
  $ git push -u origin main
