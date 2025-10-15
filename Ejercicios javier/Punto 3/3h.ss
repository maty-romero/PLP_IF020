(require(lib "compat.ss"))
(require(lib "trace.ss"))


(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, intente de nuevo.\n")
          (pedirLista)))))



(define (memNuevo? a lst)  ;version de mem sin pedir los parametros
  (cond
    ((null? lst) #f) ; si esta vacia devuelve falso
    ((list? (car lst)) ; compueba anidamiento
     (or (memNuevo? a (car lst)) (memNuevo? a (cdr lst)))) 
    ((equal? a (car lst)) #t) ; si ya existe elelemento devuelve true
    (else (memNuevo? a (cdr lst))))) ; sino comprueba el resto de la lista con el elmeento a evaluar


(define (unionSinRepetidos)
  (let ((listaA (pedirLista))
        (listaB (pedirLista)))
    (define (union l1 l2)
      (cond
        ((null? l1) l2) ; si la primer lista esta vacia solo devuelve la segunda
        ((memNuevo? (car l1) l2) (union (cdr l1) l2)) ; si ya el primer elemento (usando mem) esta sigue
        (else (union (cdr l1) (append l2 (list (car l1))))))) ; si no esta lo agrega al final 
    ;llama recursivamente de nuevo a union entre el resto de la lista y lista2 + primer elemeento de lista1
    (union listaA listaB)))



(trace unionSinRepetidos)
(unionSinRepetidos)
