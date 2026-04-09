


/*

 crea_ab(+ListaEtiquetas, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario BALANCEADO que contiene solo las etiquetas de ListaEtiquetas
 
 
 variante:
 
 crea_ab(+N, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario BALANCEADO que contiene todas las etiquetas sin repeticion desde 1 a N

*/

crea_ab(ListaEtiquetas, ArbolBinario) :-
    is_list(ListaEtiquetas), 
    !,
    construir_arbol_balanceado(ListaEtiquetas, ArbolBinario).

crea_ab(N, ArbolBinario) :-
    integer(N),
    N >= 0,
    !,
    (   N =:= 0
    ->  Lista = []
    ;   findall(X, between(1, N, X), Lista) 
    ),
    construir_arbol_balanceado(Lista, ArbolBinario).

construir_arbol_balanceado([], nil).

construir_arbol_balanceado(Lista, arbol(Izq, Raiz, Der)) :-
    Lista = [_|_],
    length(Lista, Longitud),
    Mitad is Longitud // 2,
    length(ListaIzq, Mitad),
    append(ListaIzq, [Raiz | ListaDer], Lista),
    construir_arbol_balanceado(ListaIzq, Izq),
    construir_arbol_balanceado(ListaDer, Der).
