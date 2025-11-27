%Write a PROLOG program to implement sumlist(L, S) so that S is the sum of a givenlist L.

% Base case:The sum of an empty list is 0.
sumlist([], 0).

% Recursive case:
% We compute the sum of the tail recursively (ST),
% and then add the head (H) to get the total sum (S).
sumlist([H|T], S) :-
    sumlist(T, ST),
     S is H + ST.
