%Write a PROLOG program to implement conc(L1, L2, L3) where L2 is the
%list to be appended with L1 to get the resulted list L3.

%Base case: Adding an empty list to another list gives the second list.
conc([], L2, L2).

% Recursive case: Add the head of the first list to the result of appending the tail to the second list.
conc([H|T], L2, [H|R]) :-
    conc(T, L2, R).
