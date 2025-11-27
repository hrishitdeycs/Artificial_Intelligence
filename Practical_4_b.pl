% Base case: when X becomes 0, answer is Y
sum(0, Y, Y).

% Case 1: X > 0
% Decrease X, and increase the result by 1
sum(X, Y, R) :-
    X > 0,
    X1 is X - 1,
    sum(X1, Y, R1),
    R is R1 + 1.

% Case 2: X < 0
% Increase X, and decrease the result by 1
sum(X, Y, R) :-
    X < 0,
    X1 is X + 1,
    sum(X1, Y, R1),
    R is R1 - 1.
