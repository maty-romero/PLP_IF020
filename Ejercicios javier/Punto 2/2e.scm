(require (lib "trace.ss"))

(define (pedirNumero)
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))
  
(trace pedirNumero)
(pedirNumero)  