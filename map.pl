:- include('main.pl').
:- dynamic(lebarPeta/1).
:- dynamic(tinggiPeta/1).
:- dynamic(gymPeta/2).

map (X,Y):-
	% random(10,20,X),
	% random(10,20,Y),
	asserta(lebarPeta(X)), asserta(tinggiPeta(Y)),!, printMap(X,Y).
	
	% random(0,X,A),
	% random(0,Y,B),
	% asserta(gymPeta(A,B),!.

isBorderAtas(_,Y) :-
    Y=:=0
    ,!.
isBorderKiri(X,_) :-
    X=:=0,
    !.
isBorderBawah(_,Y) :-
    tinggiPeta(T),
    YMax is T+1,
    Y=:=YMax,
    !.
isBorderKanan(X,_) :-
    lebarPeta(L),
    XMax is L+1,
    X=:=XMax,
	!.

printMap(X,Y) :-
    isBorderKanan(X,Y), !, write('X').
printMap(X,Y) :-
    isBorderKiri(X,Y), !, write('X').
printMap(X,Y) :-
    isBorderAtas(X,Y), !, write('X').
printMap(X,Y) :-
	isBorderBawah(X,Y), !, write('X').
printMap(_,_) :-
	write('-').
	


	

