%Write a PROLOG program to implement two predicates evenlength(List) and
%oddlength(List) so that they are true if their argument is a list of
%even or odd length respectively.

% Base Case: An empty list has even length (0 is even).
evenlength([]).

% Recursive Case: If the list has at least two elements,
% we remove two elements and check if the rest has even length.
evenlength([_, _ | Tail]) :-
    evenlength(Tail).

% Base Case: A list with one element has odd length (1 is odd).
oddlength([_]).

% Recursive Case: If the list has at least two elements,
% remove two elements and check if the rest has odd length.
oddlength([_, _ | Tail]) :-
    oddlength(Tail).
