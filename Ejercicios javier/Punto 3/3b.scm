(require (lib "trace.ss"))

; funcion para solicitar el input numerico
(define (pedirNumero)
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))

(define (sumaComprendidos)
  (define (sumaValoresComprendidos x y)
    (if (> x y)           ; caso base, devuelve 0 cuando el numero que hace de limite inferior supera al superior
        0
        (+ x (sumaValoresComprendidos (+ x 1) y)))) ; sino va sumando los valores intermedios
  (let ((a (pedirNumero))
        (b (pedirNumero)))
    (display
      (if (= a b) ; si los valores ingresado son iguales termina
          0                      ; devolvemos 0
          (if (< a b)
              (sumaValoresComprendidos (+ a 1) (- b 1))  ; si a < b incrementa a y decrementa b para tener el rango de valores a sumar
              (sumaValoresComprendidos (+ b 1) (- a 1)))))  ; si a > b hace lo contrario al anterior
    ))


(trace sumaComprendidos)
(sumaComprendidos)