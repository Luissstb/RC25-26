/*

 crea_ab(+ListaEtiquetas, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario BALANCEADO que contiene solo las etiquetas de ListaEtiquetas
 
 variante:
 
 crea_ab(+N, -ArbolBinario) es cierto cuando ArbolBinario unifica con un arbol binario BALANCEADO que contiene todas las etiquetas sin repeticion desde 1 a N

*/

arbol1(a(1, a(2,nil,nil), a(3,nil, a(4,nil,nil)) )).

crea_ab(ListaEtiquetas, ArbolBinario) : is_list(ListaEtiquetas), !, construir_arbol_balanceado(ListaEtiquetas, ArbolBinario).

crea_ab(N, ArbolBinario) :- integer(N), N >= 0, !, (   N =:= 0->  Lista = [] ;   findall(X, between(1, N, X), Lista) ), construir_arbol_balanceado(Lista, ArbolBinario).


