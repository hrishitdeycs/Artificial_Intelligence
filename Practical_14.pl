%Write a PROLOG program to implement insert(I, N, L, R) that inserts an item I into
%Nth position of list L to generate a list R.

% Base case:
% Inserting at position 1 means placing the item at the head of the list.
insert(I, 1, L, [I | L]).

% Recursive case:
% If N > 1, we recursively reduce N and decompose the list
insert(I, N, [H | T], [H | R]) :-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).
