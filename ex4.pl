nqueens(N, Solution) :-
    range(1, N, Rows),
    permutation(Rows, Solution),
    safe(Solution).

range(N, N, [N]).

range(I, N, [I|R]) :-
    I < N,
    I1 is I + 1,
    range(I1, N, R).

safe([]).

safe([Q|Qs]) :-
    noattack(Q, Qs, 1),
    safe(Qs).


noattack(_, [], _).

noattack(Q, [Q1|Qs], D) :-
    Q =\= Q1,
    abs(Q-Q1) =\= D,
    D1 is D + 1,
    noattack(Q, Qs, D1).