%% Introduction to Matlab
% Matlab=Matrix Laboratory 
%
% Matlab has many resources available online. For example:
%
% https://www.mathworks.com/help/matlab/getting-started-with-matlab.html
%%
%%% Evaluating mathematical expressions:
%
%%
% $$ 4\cos(1.3)-\pi= $$
4*cos(1.3)-pi
%%
% $$ \log{(1000 + 2^{2\pi})}= $$
log(1000 + 2^(2* pi))
%%
% $$ e^{i \pi} = $$
exp(1i * pi)
%%
%%% Symbols in Matlab
%
% You can assign a symbol a value in matlab using the equal sign.
%
x=real(exp(1i * pi));
acos(x)
%%
%%% Vectors in Matlab
%
% Matlab allows one to create row and column vectors. 
%
% $$ v_1= \left[
% \begin{array}{ c }
% 1\\
% 2\\
% 1
% \end{array} \right]
% $$
v1=[1;2;1];
%%
% $$ v_2= \left[
% \begin{array}{ c c c }
% 1 & 2 & 1
% \end{array} \right]
% $$
v2=[1 2 1];
%%
%
% Vectors have a shape that can be found using the size command. 
%
size(v1)
size(v2)
length(v1)
%%
%
% Typical vector operations exist in matlab:
%
v1'
%%
v1'+v2
%%
2*v2
%%
v2*v1
%%
dot(v1,v2)
%%
%%% Elementwise operations
%
% You can also perform operations elementwise by inserting a . before the
% operator.
%
v2.*v2
%%
v1.*v1
%%
v1.^2
%%
sin(v1)
%%
%
% It is useful to be able to to create equally spaced vectors:
%
y1=linspace(0,1,11)'
%%
y2=(0:1/10:1)'
%%
y3=1:3
%%
y4=1:2:6
%%
%%% Indexing
%
% Indexing into a vector is done with parentheses as if evaluating a
% function. For example 'v1(1)' is the first entry of the vector v1. To
% select the first and third entries you could use 'v1([1 3])'.
%
v1(1)
v1([1 3])
v1(1:3)
%%
%%% For loops
for i=1:1:3
    v1(i)
end
%%
%%% Simple plotting
plot(y1,sin(y1),'b--')
%%
%%% Two dimensional arrays in Matlab

A=[1 2 3;4 5 6;7 8 9];

%This produces the array:
%%
%
% $$ \left[
% \begin{array}{ c c c }
% 1 & 2 & 3\\
% 4 & 5 & 6\\
% 7 & 8 & 9
% \end{array} \right]
% $$
%%
size(A)
%%
%%% Slicing an array
%
% You can index into a two dimensional array as with a one dimensional
% array, however you must provide two indecies. Note that using only ':' as
% an index means select a complete row or column of the matrix.
A(1,1)
%%
A(2,1)
%%
A(1,:)
%%
A(:,1)
%%
A(:,1:2)
%%
%%% Matrix operations
%
% Matlab was designed for matrix algebra so matrix operations are very
% simple to implement. They work by default.
%
B=[1 1;2 1];
x=[1;2];
B*x
%%
B*B
%%
%%% Matrix vector multiplcation
%
% We will soon discuss the fact that matrix  vector multiplcation can be
% thought of as taking a linear combination of the columns of your matrix
% with coefficients given by the vector entries. We demonstrate this fact
% below.
%
[m,n]=size(B)
%%
y=zeros(m,1);
for i=1:1:n
    y=y+x(i)*B(:,i);
end
%%
B*x
%%
y
%%
%%% Rank of a matrix and its inverse
%
% It is easy to check if a matrix is rank deficient in matlab.
%
rank(B)
%%
%
% If a matrix has full rank we can compute its inverse.
%
inv(B)
%%
inv(B)*B
%%
%%% Solving a linear system.
%
% Solving the linear system $$ y=B x $$ is typically done using the '\'
% operator in matlab. You could attempt to directly evaluate $$ x=B^{-1} y
% $$, however this will produce worse results for some matrices.
%
B\y
%%
inv(B)*y
%%
x