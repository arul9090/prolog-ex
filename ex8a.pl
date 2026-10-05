% Flatten a List

flatten([], []).

flatten([H | T], FlatList) :-
    flatten(H, NewH),
    flatten(T, NewT),
    append(NewH, NewT, FlatList).

flatten(L, [L]).

% Query
?- flatten([1, [2, [3, 4], 5], 6], FlatList).
