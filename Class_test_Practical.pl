% Base case: if the second number is 0, GCD is the first number
gcd(X, 0, X).

% Recursive case: apply Euclidean algorithm directly
gcd(X, Y, G) :-
    Y \= 0,
    gcd(Y, X mod Y, G).
