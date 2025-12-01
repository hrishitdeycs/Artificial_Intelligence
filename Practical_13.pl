%Write a PROLOG program to implement maxlist(L, M) so that M is the
% maximum number in the list.
% Base case: single element
maxlist([X], X).

% Case: head is greater or equal to max of tail
maxlist([H|T], H) :-
    maxlist(T, MT),
    H >= MT.

% Case: head is less than max of tail
maxlist([H|T], MT) :-
    maxlist(T, MT),
    H < MT.

