(require (lib "trace.ss"))
(require(lib"compat.ss"))

(define (que_hace lis) ;recibe una lista como parametro
 (cond
 ((empty? lis) 0) ; si esta vacia devuelve 0
 ((atom? (car lis)) ;evalua si el primer valor es un atomo
 (cond ; si es un atomo 
 ((eq? (car lis) null) (que_hace (cdr lis))) ; si el primer elemento es null entonces evalua el siguiente elemento recursivamente
 (else (add1 (que_hace (cdr lis)))) ; si no es null entonces incrementa en 1 el valor de retorno y evalua el resto de la lista
 )
 )
 (else (+ (que_hace (car lis)) (que_hace (cdr lis)))) ; si no es un atomo entonces incrementa en 1 el contador cada vez que se evalua
)
 )

; en resumen creo lo que hace es contar los elementos de la lista, sumando 1 extra por cada no atomo que se encuentre
(que_hace '(1 2 3 4 5 (a b c) 6 ()))
