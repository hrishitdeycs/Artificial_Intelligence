%Write a PROLOG program to implement power (Num, Pow, Ans) : where Num is
%raised to the power Pow to get Ans.
% Base case:Any number raised to the power 0 is 1
power(_, 0, 1).

% Recursive case:Num^Pow = Num * Num^(Pow - 1)
power(Num, Pow, Ans) :-
    Pow > 0,
    P1 is Pow - 1,
    power(Num, P1, Temp),
    Ans is Num * Temp.
