(require (lib "trace.ss"))

(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, intente de nuevo.\n")
          (pedirLista)))))


(define (crearLista)
  (let ((x (pedirLista)))
    (cond   
      ((null? x) '()) 
      (else
       (append (crearListaAux (cdr x)) (list (car x))))))) 


(define (crearListaAux lst)
  (if (null? lst)
      '()
      (append (crearListaAux (cdr lst)) (list (car lst)))))

(trace crearLista)
(crearLista)