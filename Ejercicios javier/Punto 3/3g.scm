(require (lib "trace.ss"))
(require(lib "compat.ss"))

(define (pedirAtomo)
  (display "Ingrese un átomo: ")
  (let ((x (read)))
    (if (atom? x)
        x
        (begin
          (display "No es un átomo, intente de nuevo.\n")
          (pedirAtomo)))))


(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, intente de nuevo.\n")
          (pedirLista)))))


(define (mem?)
  (let ((x (pedirAtomo))
        (y (pedirLista)))
    (define (buscar a lst)
      (cond
        ((null? lst) #f)  ; si esta vacia la lista -> falso
        ((list? (car lst)) ; si es lista, busca dentro de la misma para chequear anidamientos                   
         (or (buscar a (car lst)) (buscar a (cdr lst)))) 
        ((equal? a (car lst)) #t) ; encuentra -> verdadero             
        (else (buscar a (cdr lst))))) ; continua con el resto de la lista en otro caso       
    (buscar x y)))

(trace mem?)
(mem?)