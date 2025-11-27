% Case 1: multiply by 0 → result is 0
multi(_, 0, 0).

% Case 2: N2 is positive  → N1 * N2 = N1 + (N1 * (N2-1))
multi(N1, N2, R) :-
    N2 > 0,
    N21 is N2 - 1,
    multi(N1, N21, R1),
    R is R1 + N1.

% Case 3: N2 is negative → N1 * N2 = - (N1 * |N2|)
multi(N1, N2, R) :-
    N2 < 0,
    N2p is -N2,
    multi(N1, N2p, Rpos),
    R is -Rpos.
