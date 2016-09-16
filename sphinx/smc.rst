
.. _smc:

===================
Using SageMathCloud
===================

SageMathCloud (SMC) is a cloud computing platform that allows you to create
"projects", each of which is a virtual 
machine running Linux that you can access from any web browser.  
It has a lot of scientific software installed, including IPython and Jupyter
notebooks, and also has a nice WYSIWIG Latex editor.

**Note:** Free accounts on SMC no longer support internet connections,
meaning in particular that you cannot use "git clone" or other commands to
interact with GitHub, or use "scp" to transfer files as described below. 
You might want to invest in a personal subscription, starting at $7/month,
to get internet access and other advantages such as "member hosting", which
means your project runs on a less heavily used server.  See `SMC Subscriptions
and Pricing <https://cloud.sagemath.com/policies/pricing.html>`_.

First create an account at `SageMathCloud <https://cloud.sagemath.com/>`_.
You might want to create an account using your UW email address `netid@uw.edu`.

When you log into your account, click on the "New Project" button.  It will
take a few minutes to launch the project.

Within this project, click on "New" and you will see several options.  In
particular you could create a ...

* *Terminal:* this will give you a linux terminal window.  You can type
  commands here as you would in any other linux terminal.  See :ref:`unix`.

  You might start by cloning the class repository into your project by
  following the instructions at 

* *Jupyter Notebook:* If you are familiar with Python, you can type Python
  commands into the first input cell and hit Shift-Enter to evaluate a cell.


* *Latex editor:* This is a nice WYSIWYG editor for the mathematical
  typesetting program latex, which is widely used for scientific writing,
  particularly in the mathematical sciences.

  You can open an existing latex file in this editor via::

      open filename.tex


Making a plot via a Python script
---------------------------------

If you try to run a script that creates plots on SMC, you may get an error
saying that `... no $DISPLAY environment variable`.  The default 
`matplotlib backend
<http://matplotlib.org/faq/usage_faq.html#what-is-a-backend>`_
seems to be set to `TKAgg`, which is an interactive backend that doesn't
work from scripts.  

There are two ways to fix this.  In the script, do this before any
other statements that import `matplotlib` or `pylab`::

    import matplotlib
    matplotlib.use('Agg')

This should make the script run.  To avoid having to do this for each script
separately, create a file `~/.config/matplotlib/matplotlibrc` containing::

    backend : Agg

which should set the default for all uses of `matplotlib`.

Making a plot in Jupyter notebooks
-----------------------------------

Open a Jupyter Notebook and type this command in the first cell::

    %pylab inline

Then hit Shift-Enter to evaluate.  This loads all the NumPy and Matplotlib
commands, and makes plots appear inline in the notebook (rather than trying
to open a new window).  

Then in the second cell, type::

    x = linspace(0,1,1001)
    plot(x, sin(10*pi*x**2))

Then hit Shift-Enter to evaluate, which should produce a plot in the
notebook.

Now in the next cell type::

    plot(x, sin(20*pi*x**2))
    savefig('myplot.png')

and Shift-Enter, to recreate the plot and save this as a png file.   
(Note that it only saves a figure created in the same cell, not the one from
the previous cell!)

Viewing a png file
------------------

To view this png file (from outside the notebook) there are several options:

* Click on the Files tab at the top of the page and then click on
  `myplot.png`.

* Open a terminal and do `ls` to list the files.  Assuming you're in the
  home directory you should see `myplot.png` listed as one of the files.
  Type::

       $ open myplot.png 

  in the terminal.

* View it on the web from a web browser (even on a different computer) at
  the URL
  `https://cloud.sagemath.com/PROJECT-ID/raw/myplot.png`
  where `PROJECT-ID` is replaced by the long string of numbers that appears
  in the address bar when you're working on your project, e.g.
  `0c7b8079-70bb-45ef-8554-53178fd7e447`.

* Download the file to your own computer to view it locally, or to
  incorporate in a paper you are writing, for example.

  One simple way to transfer files in general is to clone your own git
  repository on the SMC project and then add and commit 
  the file you want to transfer.  

  Or if you open the *Files* tab on the SMC project page and navigate to the
  directory containing the desired file, click on the box to the far left of
  file name to select this file, and then you will see a Download button 
  appear above.  (When you click on Download, it will also show you the
  link described above where you can view it on the web.)

  You can also use `scp` to copy a file *from* the SMC to your account on
  some other machine, e.g. a UW computer.  In a terminal window on the SMC 
  project, type::

    scp myplot.png NETID@COMPUTER.u.washington.edu:

  This will copy the file to your account on a UW computer (replace NETID with
  yours and COMPUTER with the appropriate computer name).
  You can put a directory path after the : in this command if you want to
  put it somewhere other than the home directory.

  
.. _smc_view_html:

Viewing an html file
--------------------

If you create an html file on your computer then if you simply use
`open` at the command line or click on it in the File selector, the
editor will open to the raw html text file.

To view it instead as a webpage in your browser, there are three options:

* Download it to your computer and open it with a browser.  You can download
  using one of the methods suggested above for `png` files.

* View it in a browser window by navigating to the page
  `https://cloud.sagemath.com/PROJECT-ID/raw/file.html`
  where `PROJECT-ID` is replaced by the long string of numbers that appears
  in the address bar when you're working on your project, e.g.
  `0c7b8079-70bb-45ef-8554-53178fd7e447` and `file.html` is the
  filename of the `html` file.  If the file is not in the top level of your
  project directory structure, the full path must be used after `raw` in the
  URL.

* Transfer it by `scp` or some other means to a webserver, e.g. if you maintain
  your own webpages and want to add this `html` file so that others can view it.

Editing files
-------------

Several editors are available from a SMC terminal window, e.g.

* nano
* emacs
* vi

For example, in a terminal window you can type::

    nano filename.txt

to edit a file.

For a simple point-and-click editor, simply type::

    open filename.txt

This opens it in a separate window.  This is the best way to edit a file if
you are working collaboratively with others.
Other editors sometimes behave strangely if more than one person is viewing
the terminal window of the project simultaneously.

Collaborating
-------------

Multiple people can open the same project and see the same set of files,
even take turns typing into the same terminal window or Jupyter Notebook. To
give someone else access to a project, open the project and then click on
the wrench icon at the top of the page. Then just type in the email address
or name of the person you want to add.

The collaborator should then see this project appear in the list of projects
of their own account.
    
