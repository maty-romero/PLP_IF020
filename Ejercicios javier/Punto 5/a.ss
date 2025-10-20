(require (lib "trace.ss"))

(define (misterio ls)
(if (null? (cddr ls)) (cons (car ls) ()) 
    ;la primer condición evalua que la lista tenga al menos 3 elementos
    ;sino evalua el primer elemento
(cons (car ls) (misterio (cdr ls))))) ; concatena el primer elemento de la lista
; con la iteracion del resto de la lista

;De esta forma sucede un llamado recursivo de la funcion hasta que esta tiene una longitud menor a 3
;Por lo tanto al llamar recursivamente con una lista de dos elementos solo extrae el primero y concatena
;Con el resto de la lista

;Como la ultima iteracion evalua la lista con dos elementos y finaliza contatenando el primero de ellos con el resto podria llamarse "quitarUltimo" porque devuelve la lista sin su ultimo elemento

(trace misterio)
(misterio '(1 2 3 4 5))