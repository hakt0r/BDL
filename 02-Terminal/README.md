# Terminal

The Linux command line is a text interface to your computer. Often referred to as the shell, terminal, console, prompt or various other names, it can give the appearance of being complex and confusing to use. Yet the ability to copy and paste commands from a website, combined with the power and flexibility the command line offers, means that using it may be essential when trying to follow instructions online, including many on this very website!

  - A terminal application is a text input output application
  - A shell is a so called command-line interpreter, a program that takes commands and runs them

## Special folders

  -  ~ : shortcut to your home dir
  -  . : shortcut for current directory
  - .. : shortcut for parent directory

A command line consists of the program (e.g. echo) and the arguments (e.g. hello world)

  $ echo hello world
  hello world

  - pwd: show me where i am (folder/path)
  - cd: change directory
      cd             - without arguments gets you home
      Realtive paths:
      cd ..          - go back one directory
      cd path/to/your/folder - 
      Absolute Path:
      cd /home/awt   - same as cd (wihtout arguments)
      Shortcut for relative to $HOME
      cd ~/Android   - same as /home/$USER/Android
  - ls: list of files and folders
      ls -lh

  CARPE TAB!!! Use the tabulator key as often as possible
  
  - man: display information on command line programs
      use 'q' to close the man
      man ls
      man echo
  
  - mkdir $SOME_DIRECTORY : create a directory
  - touch $SOME_FILE      : create an empty! file
  - rm $SOME_FILE         : delete a file PERMANENTLY
  - rmdir  $SOME_DIR      : delete a directory and its contents PERMANENTLY
    rm -rf $SOME_DIR      : nuke a directory from the surface of your harddrive, no questions asked
  - mv $FROM $TO          : move a file or folder $FROM here $TO there.
  - cp $FROM $TO          : copy a file $FROM here $TO there.
  - cp -r $FROM $TO       : copy a folder and all it's contents

  Useful command lines: https://www.commandlinefu.com/commands/browse

## GOTCHA: Everything is case sensitive

‘Echo’ is a program we can run in our terminal: it’s command is to repeat everything that follows. 
What follows the command it’s called argument.


## Autocomplete feature

‘cd’ + ‘D’ + TAB*: give us the folders starting with ‘D’ (example: Desktop, Download)
*if we press TAB 2x it give us what’s inside the selected folder

Once you are inside a folder, if you want to go back to the previously folder: ‘cd’ + TAB

### Other cool commands

 - xdg-open .    - open the current directory as if you double clicked it
 - xdg-open test - open the "test" file as if you double clicked it
 - xdg-open https://google.com/ - open google in you preferred webbrowser

 - git - deal with git repositories (see: 03-Git)

 - history - show what you did so far
 - curl    - commandline downloader for web pages and stuff from the internet in general
 - nano    - commandline text editor
   - ctrl - o : save file, then press enter to actually do that
   - ctrl - x : close the editor
  
 - pkexec / sudo : run a command as admin

 - code $FILE_OR_FOLDER : open a file or folder in vscode from the terminal

## Installing stuff ;D

APT is the tool to install stuff for your whole system, and keep it up to date.

  - sudo apt update  - get a list of updated software packages
  - sudo apt upgrade - run a systemwide update
  - sudo apt install $PACKAGE - install the $PACKAGE package
  - sudo apt remove $PACKAGE - uninstall the $PACKAGE package

SNAP is a solution by ubuntu to install 3rd party application, systemwide

  - sudo snap install $PACKAGE

NPM is the nodejs package manager. It's the tool we are going to use use the most.

  - sudo npm -g install $PACKAGE
    - sudo and -g respectively because we want to install system-wide
    - sudo npm -g install npm : npm updates itself
    - sudo npm -g install http-server : installs your own personal video streaming site
  - sudo npm -g remove $PACKAGE

## Difference between them
Difference between apt, snap, npm is that apt is used for system updates and snap for
3d party apps, while npm is used for updating programing packages.
