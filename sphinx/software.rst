

.. _software:

=============================================================
Software for the course
=============================================================

You can use either Matlab or Python.  The language R might also be
possible but not recommended.

If you don't know either Matlab or Python I suggest using Matlab, which
was originally designed explcitly for doing numerical linear algebra and so
the syntax is a bit easier, and it is more straightforward to install and
use.  Also everyone should know some Matlab.

If you like using Python, or know Matlab well already and are looking to
expand your programming expertise, then you should consider learning
to use the Python Numpy libraries for numerical computing.


Matlab
------

Matlab is available on the Applied Mathematics computing system for students
in this department.  It is also available in the 
`Arts and Sciences Instructional Computing Lab
<http://depts.washington.edu/aslab/>`_ located in Communications B-022, and
also available via their `terminal server
<https://depts.washington.edu/aslab/remote/login.html>`_.

`The Student Version of Matlab
<http://www.mathworks.com/academia/student_version/>`_
is available for as little as $49.  This is worth buying if you
think you will use Matlab regularly.

Some useful Matlab scripts and demos will be available in the `Matlab` subdirectory
of the :ref:`class_repos`. For demos that use Matlab publish please see the following link
`Matlab Publish
<https://www.mathworks.com/help/matlab/matlab_prog/publishing-matlab-code.html>`_.

Python
------

All the functionality of Matlab that is needed for this course is also
available as open source software in the 
`NumPy  and SciPy <http://numpy.scipy.org/>`_ Python modules,
along with 
`matplotlib <http://matplotlib.sourceforge.net/>`_ for plotting purposes.
Together with the
`IPython shell <http://ipython.org/>`_ this provides an interactive computing
environment very similar to Matlab's. 

See `NumPy for Matlab Users
<http://docs.scipy.org/doc/numpy-dev/user/numpy-for-matlab-users.html>`_
for some handy tips on the correspondence between the two (tips that are
also useful for users of either system to learn some commands you may not know).

Python is a standard language that is probably on your computer already.
An easy way to install all of the numerical python routines you would need for
this course is to use the free
`Anaconda Python distribution <https://www.continuum.io/downloads>`_.
If you install this, you can
also then use the `conda package installer
<http://conda.pydata.org/docs/install/quick.html>`_ to install various
extensions easily.  
**Note:** If you also use `pip install` on your computer be aware that
installing different packages in different ways can lead to various
incompatibilities.  You might want to consider creating a new 
`conda environment <http://conda.pydata.org/docs/using/envs.html>`_.

You should install Python 2.7 (not 3.x) to be compatible with what is used
in the notebooks posted for this this class.

Juptyer Notebooks
-----------------

Jupyter notebooks are a web-based notebook environment. They used
to be called IPython notebooks, but proved to be useful for many
languages other than Python and so the web interface was expanded
as Jupyter.  See http://jupyter.org for more information and
documentation.

If you have a Matlab license then you can also write Matlab code
in a Juptyer notebook.  Some examples used in this class will be
presented in this manner.

See :ref:`jupyter` for hints on using notebooks.

The notebook platform is rapidly being improved but as a result how things
behave often depend on what version you have installed.  If you installed
the Anaconda Python, you can insure you have jupyter and  are up to date 
via the bash commands::

    conda install jupyter
    conda update jupyter

Then in a bash shell you should be able to execute::

    jupyter notebook

to start the notebook server.  You can then navigate your browser
to the address shown when the notebook starts, e.g. ::

    http://localhost:8888/tree

If you want to easily run notebooks without installing any software, you
might try :ref:`smc`.  


LAPACK
------

Both Matlab and NumPy provide convenient wrappers for 
`LAPACK (Linear Algebra Package), <http://www.netlib.org/lapack/>`_
which is an open source package written in Fortran 90 for
solving linear algebra problems.  So under the hood, you are using the same
software whether you use Matlab or Python.

For large scale computing projects you may want to call LAPACK routines
directly from a Fortran or C code.  

LaTeX
-----

For writing up homework, please use latex if possible.  Free distributions are
available on-line for different operating systems and some include nice editing
tools.  See the :ref:`biblio-latex` section of the bibliography
for some references, but there are also many tutorials online.

SageMathCloud includes a latex editor so you can use latex there
without any installation required.  See :ref:`smc`.

You might also want to try `Overleaf <https://www.overleaf.com>`_ as another
free web-based online latex writing and collaboration tool.

For writing up computational results, you might want to explore the 
`Matlab Publish
<https://www.mathworks.com/help/matlab/matlab_prog/publishing-matlab-code.html>`_ 
tools that allow you to include latex in Matlab comments that gets rendered
along with your code and output.

:ref:`jupyter` also allow putting latex in markdown cells to incorporate
mathematics in the description.


