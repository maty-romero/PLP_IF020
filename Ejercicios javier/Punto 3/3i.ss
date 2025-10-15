(require (lib "trace.ss"))
(require(lib "compat.ss"))

(define (pedirAtomo)
  (display "Ingrese un atomo: ")
  (let ((x (read)))
    (if (atom? x)
        x
        (begin
          (display "No es un atomo, vuelva a ingresarlo.\n")
          (pedirAtomo)))))


(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, vuelva a intentarlo.\n")
          (pedirLista)))))

(define (memNuevo? atom lst)
  (cond
    ((null? lst) '()) ; lista vacía
    ((list? (car lst)) ; itera por si el primer atomo es una lista
     (cons (memNuevo? atom (car lst)) (memNuevo? atom (cdr lst))))
    ((equal? atom (car lst)) (memNuevo? atom (cdr lst))) ; si encuentra una coincidencia remueve el primer elemento
    (else (cons (car lst) (memNuevo? atom (cdr lst)))))) ; sino anexa el primer elemento al resto de la lista (evaluandola recursivamente con la funcion)


(define (testMem?)
  (let ((atom (pedirAtomo))
        (lst (pedirLista)))
    (memNuevo? atom lst)))  

(trace testMem?)
(testMem?)


      