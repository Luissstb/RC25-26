

/*

   crea_ag(+ListaEtiquetas, -ArbolGenerico) es cierto si ArbolGenerico unifica con un arbol generico que contiene todas las etiquetas de ListaEtiquetas y solo estas y un maximo de N hijos por nodo.

   crea_lista_arboles(ListaEtiquetas, ListaArboles). es cierto si ListaArboles unifica con una lista de arboles genericos sin hijos y con todas las etiquetas de ListaEtiquetas.

*/


crea_ag([Raiz|Resto], N, a(Raiz,R) ) :- length(Resto,L),N2 is N+1,L =< N2, crea_lista_arboles(Resto,R).




crea_lista_arboles([],[]).

crea_lista_arboles([Cab|Resto], [a(Cab,[])|R]) :- crea_lista_arboles(Resto,R).
