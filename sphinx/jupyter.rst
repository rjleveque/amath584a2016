
.. _jupyter:

=============================================================
Jupyter notebooks
=============================================================

See :ref:`software` for information on installing Jupyter notebooks.

See the `Jupyter documentation
<http://jupyter-notebook.readthedocs.io/en/latest/>`_
and this `gallery of interesting notebooks
<https://github.com/ipython/ipython/wiki/A-gallery-of-interesting-IPython-Notebooks>`_.

Some notebooks developed for this class will be in the `notebooks` subdirectory
of the :ref:`class_repos`.  You can view them online by clicking on a
notebook from `this Github page
<https://github.com/rjleveque/amath584a2016/blob/master/notebooks/>`_.

Python is the default language if you start a new notebook.


.. _pymatbridge:

Using Matlab in notebooks
-------------------------

**Note:** This is all rather fragile as versions of Python and Matlab have
changed recently, so I don't currently recommend trying this unless you're
already comfortable with Matlab and Jupyter and looking for a new challenge.

If you want to type Matlab code in a cell and execute that cell using Matlab,
you can use `Pymatbridge <https://arokem.github.io/python-matlab-bridge/>`_ so
that a cell that starts with the "magic command" `%%matlab` will be executed
in Matlab.

If you install Pymatbridge and also the `Matlab kernel extension
<https://pypi.python.org/pypi/matlab_kernel>`_ then you can create a notebook
that runs the Matlab kernel as the default for all cells.
Then you do not need to start cells with
`%%matlab`.  (In this case you can start a cell with `%%python` if you want
one cell to use Python instead.)

You should be able to get both `pymatbridge` and `matlab_kernel` via::

    pip install matlab_kernel

If you don't have the Python package manager `pip` but have the Anaconda
Python, try::

    conda install pip
