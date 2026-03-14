
/*
ordenar_insercion(+Lista,+E,-ListaE). ListaE unifica con una lista igual que Lista pero ordenada y con el elemento E en la posicion correcta.

[1,9,2,3]  7  --> [1,2,3,7,9]

*/


ordenar_insercion(Lista, E, ListaE) :- ordenar_lista(Lista, ListaOrdenada), insertar_en_orden(ListaOrdenada, E, ListaE).


%----------------------------------------------------------------------------------------------

ordenar_lista([], []).

ordenar_lista([Cab|Resto], R) :- ordenar_lista(Resto, R1), insertar_en_orden(R1, Cab, R).

%----------------------------------------------------------------------------------------------

insertar_en_orden([], E, [E]).

insertar_en_orden([Cab|Resto], E, [E, Cab|Resto]) :- E =< Cab.
    
insertar_en_orden([Cab|Resto], E, [Cab|R]) :- E > Cab, insertar_en_orden(Resto, E, R).
