/*

 crea_ab(+ListaEtiquetas, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario BALANCEADO que contiene solo las etiquetas de ListaEtiquetas
 
 variante:
 
 crea_abb(+ListaEtiquetas, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario de busqueda BALANCEADO que contiene solo las etiquetas de ListaEtiquetas.
 Los elementos de ListaEtiquetas estan ordenados de menor a mayor

*/


arbol1(a(1, a(2,nil,nil), a(3,nil, a(4,nil,nil)) )).

crea_ab(ListaEtiquetas, ArbolBinario) : is_list(ListaEtiquetas), !, crea_abb(ListaEtiquetas, ArbolBinario).

crea_ab(N, ArbolBinario) :- integer(N), N >= 0, !, (   N =:= 0->  Lista = [] ;   findall(X, between(1, N, X), Lista) ), crea_abb(Lista, ArbolBinario).


crea_abb ([], nil).

crea_abb (Lista, arbol(Izq, Raiz, Der)) :-
    Lista = [_|_],
    length(Lista, Longitud),
    Mitad is Longitud div 2,
    length(ListaIzq, Mitad),
    append(ListaIzq, [Raiz | ListaDer], Lista),
    crea_abb (ListaIzq, Izq),
    crea_abb (ListaDer, Der).


