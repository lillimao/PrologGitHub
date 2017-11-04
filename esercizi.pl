%max([], P) :- P = 'nessuno'.
%max([[]], P). %:- !.
%max([X], X). %:- !.
%max([[X]], X). % :- !.
%max([X, Y|Ys], X) :- X > Y, max([X|Ys], _).
%max([X, Y|Ys], Y) :- Y > X, max([Y|Ys], _).


max([X], X).
max([X|Ys], X) :- max(Ys, K), X >= K.
max([X|Ys], N) :- max(Ys, N).
