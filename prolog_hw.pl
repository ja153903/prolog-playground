% using the structures parent(X, Y), male(X), and female(X), write a structure
% that defines mother(X, Y)
mother(X, Y) :- parent(X, Y), female(X).

% using the structures parent(X, Y), male(X), and female(X), write a structure
% that defines sister(X, Y)
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X\=Y.

% write a prolog program that finds the maximum of a list of numbers
max_list([A], A).
max_list([Head | Tail], Head) :- max_list(Tail, Z), Head >= Z.
max_list([Head | Tail], Z) :- max_list(Tail, Z), Z > Head.

% write a prolog program that succeeds if the intersection of two
% given lists parameters is empty
intersecting_list([], _, []).
intersecting_list([X|XS], Y, Z) :- not(member(X, Y)), !, intersecting_list(XS, Y, Z).

empty_intersection([], []).
empty_intersection(X,Y) :- intersecting_list(X, Y, []).

% write a prolog program that returns a list containing the union of
% the elements of two given lists.
union([], X, X).
union([X|XS], Y, Z) :- member(X, Y), !, union(XS, Y, Z).
union([X|XS], Y, [X|Z]) :- union(XS, Y, Z).

% write a prolog program that returns the final element of a given list
final_element(X, [X]).
final_element(X, [_|Z]) :- final_element(X, Z). 


