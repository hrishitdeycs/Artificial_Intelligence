%Write a PROLOG program to implement reverse(L, R) where List L is
%original and List R is reversed list.

%Predicate to concatenate two lists.
conc([], L2, L2).

conc([H|T], L2, [H|R]):-
    conc(T, L2, R).

% Base case: The reverse of an empty list is an empty list.
reverse([], []).

% Recursive case: Reverse the tail (T), then append the head (H) to the end.
reverse([H|T], R) :-
    reverse(T, RevT),
    conc(RevT, [H], R).
