

/*

   crea_ag(+ListaEtiquetas, -ArbolGenerico) es cierto si ArbolGenerico unifica 
   con un arbol generico que contiene todas las etiquetas de ListaEtiquetas y solo estas
   y un maximo de N hijos por nodo.

*/


crea_ag([Cab|ListaEtiquetas], N, a(Cab,ListaArboles) ) :- N2 is N + 1, length(ListaEtiquetas,L), L =< N2, crea_lista_arboles(ListaEtiquetas,ListaArboles).

crea_ag(Lista,N, ) :- length(Lista1,N), append(Lista1,Lista2,Lista), crea_ag(Lista2,R).




/*

crea_lista_arboles(ListaEtiquetas, ListaArboles). es cierto si ListaArboles unifica con una lista de arboles genericos sin hijos y con todas las etiquetas de ListaEtiquetas.

*/

crea_lista_arboles([],[]).

crea_lista_arboles([Cab|Resto], [a(Cab,[])|R]) :- crea_lista_arboles(Resto,R).