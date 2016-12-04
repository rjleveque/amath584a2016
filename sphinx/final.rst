


.. _final:

===================
Final Exam
===================

The in-class Final exam will be on Tuesday December 13, 2:30 - 4:20pm.

The exam is closed book, closed notes.  No calculators.

The exam will cover all the course material, but with an emphasis on the
material since the midterm, roughly Lectures 20-27 in Trefethen and Bau.

In the video lecture for December 9, I plan to briefly discuss the
QR algorithm and computation of the SVD, but these won't be on the exam.

**Note:**

 - Please complete the `course evaluations
   <https://uw.iasystem.org/survey/164682>`_ by Friday December 9.
   Feedback to help improve this course is very welcome.

 - There will be no lecture on Friday, December 9 (the last day of classes).
   Instead a video lecture will be posted.
   See the `Canvas page <https://canvas.uw.edu/courses/1062881/external_tools/21130>`_

 - Some extra office hours will be scheduled, but don't put off 
   understanding this material to the last minute.

**Office hours**

LeVeque will have office hours December 4,5 as usual.  During Finals week:

 - in Lewis 328 

    - Monday 12/12, 10:00 - 12:00

 - On GoToMeeting

    - Monday 12/12, 5:00 - 6:00pm PST
    - Tuesday 12/13, 7:00 - 8:00am PST

**Some key concepts and algorithms that you should know:**

 - Review material from the :ref:`midterm`.

 - Gaussian elimination without pivoting, :math:`A = LU`.

 - Gaussian elimination with partial pivoting, :math:`PA = LU`.

 - Permutation matrices.

 - Cholesky factorization of a hermitian positive definite matrix.

 - Basic properties of eigenvalues and eigenvectors, 
   characterization of eigenspace as the nullspace of a matrix.

 - How to compute eigen-decomposition for a :math:`2 \times 2` matrix.

 - Determining eigenvalues and eigenvectors of a diagonal or triangular
   matrix.

 - Diagonalizable matrices: :math:`A = X\Lambda X^{-1}`.  For normal
   matrices, can choose :math:`X` to be unitary.

 - Schur decomposition: :math:`A = QTQ^*` with :math:`T` upper triangular.
   Agrees with eigen-decomposition (i.e. :math:`T` is diagonal) if :math:`A`
   is normal.

 - Relation between Schur decomposition and SVD when :math:`A` is normal.

 - Rayleigh quotient and why this approximates an eigenvalue if :math:`x` is
   close to an eigenvector.

 - Power method, inverse power method, Rayleigh quotient method.

 - Decomposition of a vector into eigen-components and use in analyzing
   power method.

 - Basic idea of reduction to Hessenberg form via Householder reflector 
   similarity transformations.

 - Operation counts for algorithms such as Gaussian elimination, back
   substitution, Gram-Schmidt, Householder reduction.  You should know order
   of magnitude for basic algorithms (e.g. :math:`{\cal O}(m^3)` to factor a
   general :math:`m\times m` matrix) and
   how to compute for something involving nested loops.

