%Write a PROLOG program to implement the family tree and demonstrate the family
relationship.
%facts
female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

parent(pam, bob).
parent(tom, bob).
parent(pam, liz).
parent(tom, liz).

parent(bob, ann).
parent(bob, pat).

parent(pat, jim).

%Rules
mother(X, Y) :- female(X), parent(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

sister(X, Y) :-
    female(X),
    sibling(X, Y).

predecessor(X, Y) :-
    parent(X, Y).
predecessor(X, Y) :-
    parent(X, Z),
    predecessor(Z, Y).

relative(X, Y) :- predecessor(Z, X), predecessor(Z, Y), X \= Y.
relative(X, Y) :- predecessor(Z, Y), predecessor(Z, X), X \= Y.
relative(X, Y) :- sibling(X, Y).
