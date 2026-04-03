

/*

lista_divisores(+X,+Y, -ListaR). es cierto cuando ListaR unifica con una lista que contiene a los numeros cuyo resto de la division entera de X entre Z es igual a 0 para valores de Z entre 1 e Y.

usamos el segundo argumento como parametro para la induccion, lista_divisores(9,9,R) significa busca los divisores desde 1 a 9 del primer argumento (9) y los que den resto 0 guardalos en R en orden inverso en este caso.

si usas append la lista resultante sale ordenada de menor a mayor.

*/



lista_divisores(_, 1, [1]).

lista_divisores(X, Y, [Y|Lista_divisores]) :- Y > 1, 0 is X mod Y, Y2 is Y - 1, lista_divisores(X, Y2, Lista_divisores).

lista_divisores(X, Y, Lista_divisores) :- Y > 1, \+ 0 is X mod Y, Y2 is Y - 1, lista_divisores(X, Y2, Lista_divisores).



/*

primo(+X) es cierto si X unifica con un numero primo.

*/


primo(X) :- X > 1, lista_divisores(X, X, [X, 1]).



/*

primosEntrexy(+X,+Y, -ListaR) es cierto cuando ListaR unifica con una lista que contiene a los primos que van desde X hasta Y ambos incluidos en orden ascendente

*/


primosEntrexy(X, X, [X]) :- primo(X).

primosEntrexy(X, X, []) :- \+ primo(X).

primosEntrexy(X, Y, [X|R]) :- X < Y, primo(X), X2 is X + 1, primosEntrexy(X2, Y, R).

primosEntrexy(X, Y, R) :- X < Y, \+ primo(X), X2 is X + 1, primosEntrexy(X2, Y, R).

