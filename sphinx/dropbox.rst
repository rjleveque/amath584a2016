
.. _dropbox:

Using Dropbox to submit homework
================================

All of your homework for this course will be submitted using Dropbox.
A free Dropbox account can be obtained at `www.dropbox.com
<www.dropbox.com>`_.
 
Dropbox is a cloud storage service that offers free
accounts (they also offer paid accounts with extra storage). 

Dropbox can be used through a web browser or the Dropbox app. The 
app creates a folder called Dropbox in a location
specified by the user. This folder is automatically synced by
dropbox. Changes made in this folder will be automatically 
reflected in your Dropbox account. More information can be 
found `here
<https://www.dropbox.com/en/help/8839>`_. 

Installing the Dropbox app
--------------------------
Information on installing the Dropbox app for various
operating systems can be found `here
<https://www.dropbox.com/install>`_. This is not required but
many find the app to be more convenient. 

Class Dropbox folder
------------------------

As part of homework 0 you will be expected to fill out an online
survey where you provide the email address used to create your
Dropbox account.

After completing this survey a Dropbox folder will be
shared with you. This folder will be named `amath584_yournetid`.
Where `yournetid` is replaced by your actual netid. 

Turning in homework
------------------
You will be expected to turn in the final version of
your homework in the `amath584_yournetid` folder shared with you through Dropbox.

Each homework should be given its own sub-folder with the
same name as its respective homework sub-folder in the class repository.
For example for homework 0 you should create a `hw0` directory in
your `amath584_yournetid` folder. 

Assuming you have installed the Dropbox app
and that you have followed the instructions on the :ref:`class_repos` 
page you can turn in `hw0` by executing the following commands::

    export DROPBOX=/full/path/to/Dropbox
    export MY584=/full/path/to/my584
    cd $DROPBOX/amath584_yournetid
    mkdir hw0
    cp $MY584/hw0/hw0.tex hw0/
    cp $MY584/hw0/hw0.pdf hw0/
    

Proper directory structure
--------------------------

By the end of the 
quarter you will have completed six homeworks so that if you run the command::

    ls $DROPBOX/amath584_yournetid

you should get the output::

    hw0 hw1 hw2 hw3 hw4 hw5

Each of these folders should contain the files turned in for that homework assignment.
You should create these folders one at a time as you turn in each assignment.

Getting help
------------

If any of these instructions are confusing please get help
from the professor or TA as soon as possible! 
