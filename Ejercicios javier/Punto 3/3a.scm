(require (lib "trace.ss"))

(define (pedirNumero)
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))
  
(define (checkNumero)
  (let ((x (pedirNumero)))
    (cond
      ((< x 0) (display "El numero es menor a 0.\n"))
      ((> x 0) (display "El numero es mayor a 0.\n"))
      (else    (display "El numero es 0.\n")))))

(trace checkNumero)
(checkNumero)