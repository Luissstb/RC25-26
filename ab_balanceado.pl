/*

altura(+ArbolBinario,-Altura) es cierto si Altura unifica con la altura del arbol binario ArbolBinario

balanceado(+ArbolBinario) es cierto si ArbolBinario unifica con un arbol binario que para todo nodo la diferencia entre la altura del arbol izquierdo y derecho es como maximo 1

*/

arbol1(a(1, a(2,nil,nil), a(3,nil, a(4,nil,nil)) )).

altura(nil,0).

altura(a(_,Hi,Hd), ) :- altura(Hi,Ai), altura(Hd,Ad), A is max(Ai,Ad), Altura is A+1.

balanceado(nil).

balanceado(a(_,Hi,Hd), ) :- altura(Hi,Ai), altura(Hd,Ad), Dif is Ai - Ad, Abs is abs(Dif), Abs =<1, balanceado(Hi),balanceado(Hd).

