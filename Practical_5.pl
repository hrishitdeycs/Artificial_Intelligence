% Write a PROLOG program to implement max(X, Y, M) so that M is the
% maximum of two numbers X and Y.

% Case 1: X is greater than or equal to Y
max(X, Y, X) :-
    X >= Y.

% Case 2: Y is greater than X
max(X, Y, Y) :-
    Y > X.
