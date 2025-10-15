(require (lib "trace.ss"))

; ENUNCIADO
; un entero n y produzca una lista con los números desde 1 a n en orden descendente
; ---------------------------------------------------------------------------------


(define (pedirNumero)
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))

(define (generarListaInversa inicio fin)
  (if (< fin inicio)
      '()  
      (cons fin (generarListaInversa inicio (- fin 1))))) ; similar al punto c pero descuenta en vez de incrementar los elementos de la lista hasta llegar al valor ingresado

(define (crearLista)
  (let ((x (pedirNumero)))
    (cond
      ((< x 1)
       (begin
         (display "Ingrese un numero mayor a 0. \n")
         (crearLista))) 
      ((= x 1)
       (list 1))
      (else
       (generarListaInversa 1 x)))))

(trace crearLista)
(crearLista)