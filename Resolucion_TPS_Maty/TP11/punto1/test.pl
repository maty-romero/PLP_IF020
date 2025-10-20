atom_chars(hello, X). % X = [h, e, l, l, o].
string_length('toto', X). % X = 4.
atom_length(15478, X). % X = 5.
string_concat('su','per',Z). % Z = "super".
string_to_atom('toto', Z). % Z = toto.
concat_atom([1, 2 ,3 ,4], A). % A = '1234'.
atom_concat(34, 12, Z). % Z = '3412'.
succ(5, I).
between(5, 10, Z). % Z = 5 -> cantidad de enteros entre 2 valores
between(2, 4, Z). % Z = 2 
plus(6, 5, I). % suma enteros: I = 11
12 =< 9. % uso correcto =<: false.
‘papa’ = ‘Papa’.
9 =:= 6+3. % desigualdad aritmetica: true.
not('papa' = 'Papa'). % true.
1.0 is sin(pi/2). % true. -> transformado internamente en: 1.0 is 1.0. 
1.0 is float(sin(pi/2)). % true.
1.0 =:= sin(pi/2). % true -> valor cercano a 1.0 por lo tanto es true.
integer(12.3). % false.
float(12.3). % true.
append([su], [per], L). % L = [su, per].
append(su, per, L). % false. -> su y per son atomos, no listas
member(3, [1, 2, 3, 4]). % true.
last([1, 2, 3, 4],X).
delete([a, b, c, d], c, List2). % List2 = [a, b, d].
select(c, [a, b, c, d], Rest). % Rest = [a, b, d]
nth0(2, [a, b, c, d], c). % true. -> Elemento es el elemento en la posición Index de la lista Lista, empezando a contar desde 0
nth0(1, [a, b, c, d], c). % false
reverse([a, b, c, d], L2). % L2 = [d, c, b, a].
length([a, b, c, d], I). % I = 4.
intersection([a, b, c],[c, d, e], L). % L = [c].
union([a,b,c],[c,d,e], L). % L = [a, b, c, d, e].
abs(-7, X).
sqrt(25, X). % X = 5.0.
25 mod 2 =\= 0. % true. -> =\=: desigualdad aritmetica "el modulo es <> de 0 ?"
24 mod 2 =\= 0. % false