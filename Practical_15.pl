%Write a PROLOG program to implement delete(N, L, R) that removes the
% element on Nth position from a list L to generate a list R.

% Base case:
% If N is 1, we skip the first element (delete it), and return the tail.
delete(1, [_ | T], T).

% Recursive case:
% If N > 1, keep the head, decrement N, and recurse on the tail.
delete(N, [H | T], [H | R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).
