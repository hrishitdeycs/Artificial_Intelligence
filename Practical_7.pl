%Write a program in PROLOG to implement generate_fib(N,T) where T represents the
%Nth term of the Fibonacci series.
% Base case 1:first term is 0
generate_fib(0, 0).

% Base case 2:second term is 1
generate_fib(1, 1).

% Recursive case:
% For N > 1, compute the (N-1)th and (N-2)th Fibonacci numbers,
% then sum them to get the Nth number.
generate_fib(N, T) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    generate_fib(N1, T1),
    generate_fib(N2, T2),
    T is T1 + T2.
