(require (lib "trace.ss"))

;ENUNCIADO
;una lista simple como parámetro y retorne la lista inversa (no usar reverse)
;----------------------------------------------------------------------------

(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, intente de nuevo.\n")
          (pedirLista)))))

(define (crearListaPrincipal lst)
  (if (null? lst)
      '()
      (append (crearListaPrincipal (cdr lst)) (list (car lst)))))


(define (crearLista)
  (let ((x (pedirLista)))
    (cond   
      ((null? x) '()) ; si es nulo devuelvo la lista vacia
      (else
       (append (crearListaPrincipal (cdr x)) (list (car x))))))) ; sino itero concatenando

; concatena resto de la lista con el primer elemento
; (resto de lista, primer elemento)




(trace crearLista)
(crearLista)