#|
;(define (factorial n)
;  (if (zero? n)
;      1
;      (* n (factorial (- n 1)))))

(trace factorial)

(factorial 4)
|#

; Realizar traza ejecucion - invocar libreria y hacer (trace nombre_funcion)
; a) un número y determine si es positivo, negativo o nulo informando con estas palabras el 
;resultado. Incluya la lectura de datos.



(require (lib "trace.ss")) ; Import de la libreria 

; Lectura de datos 

(display "Ingrese un numero: ")
(define numero (read))

; Definicion funcion

(define (evalua_valor num)
  (cond 
    ((= num 0) (display "es valor nulo"))
    ((> num 0) (display "es mayor a cero"))
    (else (display "es menor a cero"))
  )
)
; Uso de libreria trace. 1ro se aclara que se usara para cierta funcion
; Luego se llama a la funcion normalmente
(trace evalua_valor)
(evalua_valor numero)




