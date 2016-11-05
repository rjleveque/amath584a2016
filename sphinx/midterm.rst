


.. _midterm:

===================
Midterm Exam
===================

The in-class Midterm exam will be on Wednesday November 16, 2:30 - 4:20pm.

The exam is closed book, closed notes.  No calculators.

The exam will cover roughly Lectures 1-15 in Trefethen and Bau.

**Note:**

 - There is no lecture on Friday, November 11 (Veterans' Day)

 - There will be no in-class lecture on Monday, November 14.  Instead a video
   lecture will be posted that will primarily review some of the key concepts.

 - Some extra office hours will be scheduled, but don't put off understanding this
   material to the last minute.

**Some key concepts and algorithms that you should know:**

*(Draft, might be modified!)*

 - Basic linear algebra concepts we have used, e.g. linear spaces, basis for a
   space, inner and outer products, orthogonality, vector and matrix norms.

 - Formulas for computing 1-norm and :math:`\infty`-norm of vectors and
   matrices.  Formula for 2-norm of vector, Frobenius norm of matrix,
   and 2-norm of matrix (in terms of singular values).

 - The form of the SVD for a general :math:`m\times n` matrix (reduced form and
   full).  What properties the matrices :math:`U, \Sigma, V` have.

 - Finding an SVD by hand of very simple matrices, as in some of the homework
   problems.

 - Form of the QR factorization of a general matrix (reduced form and full),
   and what properties these factors have.

 - Classical Gram-Schmidt orthogonalization of a set of vectors (e.g. columns of
   a matrix) and how this is used to compute the QR factorization of a full
   rank matrix.

 - You don't have to memorize the modified Gram-Schmidt algorithm, but you 
   should understand it.

 - Properties of projection matrices and orthogonal projections.

 - Determining the projection matrix for orthogonal projection onto the
   one-dimensional subspace described as the span of a given nonzero vector.

 - Determining the projection matrix for orthogonal projection onto the range
   of a matrix with full column rank, using the SVD or the QR factorization.

 - You should understand reflectors and the ideas of the Householder
   triangularization algorithm for computing a QR factorization, but you don't
   have to memorize the formulas.

 - Least squares problems: The normal equations, and how to compute the solution
   using the QR factorization or the SVD of a matrix with full column rank.

 - Setting up a least squares problem, e.g. "find the function of a given form
   (in terms of some specified basis functions) that gives the best fit to some
   set of data in the least squares sense".  (Setting up the matrix and right hand
   side).

 - The condition number of a problem vs. stability of an algorithm -- basic
   ideas.  

 - The condition number of a matrix, :math:`\kappa(A)`, how to compute it (in
   terms of norms, or in terms of singular values for the 2-norm case),
   what it means in terms of bounds on the relative errors in a problem
   solution when the data is perturbed.


