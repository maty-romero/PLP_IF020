(require (lib "trace.ss"))
;ENUNCIADO
;un número y determine si es positivo, negativo o nulo informando con estas palabras el
;resultado. Incluya la lectura de datos.
;--------------------------------------------------------------------------------------
;funcion para pedir ingreso por usuario, read para pedir valor
;comprueba que sea numero sino pide reingreso
(define (pedirNumero)
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))
  
;compruebo las 3 condiciones para el numero
(define (checkNumero)
  (let ((x (pedirNumero))) ;asocio el valor ingresado en pedir numero a la variable x
    (cond  ; serie de condiciones a evaluar
      ((< x 0) (display "El numero es menor a 0.\n"))
      ((> x 0) (display "El numero es mayor a 0.\n"))
      (else    (display "El numero es 0.\n")))))

(trace checkNumero)
(checkNumero)