%Write a PROLOG program to implement memb(X, L): to check whether X is a member
%of L or not.
% Base case: If the head of the list is X, then X is a member.
memb(X, [X|_]) :- !.

% Recursive case: Else, check whether X is in the tail of the list.
memb(X, [_|T]) :-
    memb(X, T).
