


/*
   crea_lista_n(+Tam,+N, -ListaR) es cierto si ListaR unifica con una lista de tamaño Tam y que contiene valores aleatorios entre 0 y N-1.
   
   crea_lista_n(1,10,Lista), time(quicksort(Lista,R)), write(R). time dice la cantidad de inferencias que hay (cuantas operaciones ha tenido que hacer)

*/


crea_lista_n(0, _, []).

crea_lista_n(Tam, N, [Cab|R] ) :- Tam > 0, Tam2 is Tam-1, crea_lista_n(Tam2, N, R), random(0,N,Cab).