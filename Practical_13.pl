%Write a PROLOG program to implement maxlist(L, M) so that M is the
% maximum number in the list.

% Base case: If the list has only one element, that element is the maximum.
maxlist([X], X).

% Recursive case:
% If the list has a head H and tail T, first find the maximum of the tail (MT),
% then compare H with MT to find the maximum M.
maxlist([H | T], M) :-
    maxlist(T, MT),
    (H > MT -> M = H
    ; M = MT).

