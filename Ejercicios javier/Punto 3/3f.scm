(require (lib "trace.ss"))

;ENUNCIADO
;una lista y cuente la cantidad de átomos.
;----------------------------------------------------------------------------


(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, intente de nuevo.\n")
          (pedirLista)))))


(define (cuentaAtomos)
  (let ((x (pedirLista)))
    (define (contar lst)
      (cond
        ((null? lst) 0)                              
        ((list? (car lst))   ; esto es por si esta anidada otra lista                        
         (+ (contar (car lst)) (contar (cdr lst))))   ; aca sumamos la lista anidada
        (else
         (+ 1 (contar (cdr lst))))))             ; si no sumo 1 por el atomo
    (contar x)))


(trace cuentaAtomos)
(cuentaAtomos)