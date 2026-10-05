safe(bonds).
safe(gold).

invests(lingam, stocks).

invests(arul, X) :-
    invests(lingam, X).

safe(X) :-
    invests(X, X),
    \+ lost_from(X, X),
    !.
