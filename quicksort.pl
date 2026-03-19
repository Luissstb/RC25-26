

/*

divide(+Elem,+Lista,-Menores,-Mayores) es cierto cuando Menores unifica con una lista que contiene los elementos de Lista
que son menores o iguales que Elem y Mayores unifica con una lista que contiene los elementos de Lista que son mayores que Elem.
---------------------------------------------------------------------------------------------------------------------------------------------------

*/




divide(_,[],[],[]).


divide(Elem,[Cab|Resto], [Cab|Menores] , Mayores ) :- Cab =< Elem, divide(Elem,Resto,Menores,Mayores).

divide(Elem,[Cab|Resto], Menores , [Cab|Mayores]) :- Cab > Elem, divide(Elem,Resto,Menores,Mayores).


quicksort([], []).

quicksort([Cab|Resto], R3) :- divide(Cab,Resto,Menores,Mayores), quicksort(Menores, R1), quicksort(Mayores,R2), append(R1,[Cab|R2],R3). 
