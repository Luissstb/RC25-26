/*

comprime(+Lista, -R) es cierto si R unifica con una lista de la siguiente forma:

comprime([a,a,a,b,b,c,c,c,a,a],R)
R=[(a,3),(b,2),(c,3),(a,2)]
o tambien asi:
R=[a-3,b-2,c-3,a-2]

*/

comprime(Lista, R) :- comprime_tuplas(Lista, R).
comprime(Lista, R) :- comprime_guiones(Lista, R).

%---------------------------------

comprime_tuplas([], []).

comprime_tuplas([Cab|Resto], R) :- aux_tuplas(Resto, Cab, 1, R).

aux_tuplas([], Elem, N, [(Elem, N)]).

aux_tuplas([Cab|Resto], Cab, N, R) :- N1 is N + 1, aux_tuplas(Resto, Cab, N1, R). 

aux_tuplas([Cab|Resto], ElemAnt, N, [(ElemAnt, N) | R]) :- Cab \= ElemAnt, aux_tuplas(Resto, Cab, 1, R).

%---------------------------------

comprime_guiones([], []).

comprime_guiones([Cab|Resto], R) :- aux_guiones(Resto, Cab, 1, R).

aux_guiones([], Elem, N, [Elem-N]).

aux_guiones([Cab|Resto], Cab, N, R) :- N1 is N + 1, aux_guiones(Resto, Cab, N1, R). 

aux_guiones([Cab|Resto], ElemAnt, N, [ElemAnt-N | R]) :- Cab \= ElemAnt, aux_guiones(Resto, Cab, 1, R).


    
