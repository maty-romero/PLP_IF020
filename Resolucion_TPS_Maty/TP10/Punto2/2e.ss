; e) Pregunte por un número y en caso de ingresar otro cosa, siga preguntando 
; hasta que el valor ingresado sea un número


(define (ingreso-num)
  (display "Ingrese un numero: ")
  (let ((valor (read)))  ; define variable local con let
    (cond
      ((number? valor) 
       (display (string-append "Valor ingresado: " (number->string valor)))
       valor)  ; devuelve el valor
      (else
       (display "Debe ingresar un numero!\n")
       (ingreso-num) ; vuelve a pedir
      ) 
    )
  ) 
)  

 
(define x (ingreso-num))