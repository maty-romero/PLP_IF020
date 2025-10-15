(require (lib "trace.ss"))

; esta funcion remueve todos los elementos distintos al atomo ingresado
; devolviendo la lista solo con los elementos que coinciden, es decir
; una lista con el valor ingresado 

(define (prueba atom lis)
 (cond
 ((null? lis) ()) ; si la lista esta vacia devuelve la devuelve
 ((eq? atom (car lis)) ; evalua si el atomo coincide con el primer elemento de la lista
  (cons (car lis) (prueba atom (cdr lis)))) ; si es verdad usa la concatenacion para poder "desplazarse" una posicion en la lista y evalua el resto
(else (prueba atom (cdr lis))) ; caso contrario omite el primer elemento y continua con el resto de la lista
 )
)

(trace prueba)
(prueba 'a '(d a a b a))