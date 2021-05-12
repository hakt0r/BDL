# Terminal

The Linux command line is a text interface to your computer. Often referred to as the shell, terminal, console, prompt or various other names, it can give the appearance of being complex and confusing to use. Yet the ability to copy and paste commands from a website, combined with the power and flexibility the command line offers, means that using it may be essential when trying to follow instructions online, including many on this very website!

  - A terminal application is a text input output application
  - A shell is a so called command-line interpreter, a program that takes commands and runs them

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

  CARPE TAB!!! Use the tablulator key as often as possible
  
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

  GOTCHA