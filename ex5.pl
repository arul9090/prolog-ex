in_room(bananas).
in_room(chair).
in_room(monkey).

clever(monkey).
tall(chair).

can_climb(monkey, chair).
can_move(monkey, chair, bananas).

get_on(X,Y) :-
    can_climb(X,Y).

under(X,Z) :-
    can_move(X,Y,Z),
    get_on(X,Y).

close(X,Z) :-
    under(X,Z),
    tall(Y).

can_reach(X,Y) :-
    clever(X),
    close(X,Y).