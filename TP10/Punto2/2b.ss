; b) segundo que obtenga el segundo elemento de una lista (utilice car y cdr).

; car: devuelve primer elemento de la lista 
; cdr: devuelve el cuerpo de la lista (todos los elementos menos la cabeza el primer elem)

(define (segundo lista)
  (car (cdr lista))
)


; operador ' indica: no evaluar lo sig como una funcion sino tal cual como un dato
(segundo '(4 3 1))