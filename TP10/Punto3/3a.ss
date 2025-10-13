; Realizar traza ejecucion - invocar libreria y hacer (trace nombre_funcion)
; a) un número y determine si es positivo, negativo o nulo informando con estas palabras el 
;resultado. Incluya la lectura de datos.

#lang racket
(require racket/trace) ; Import de la libreria 

(define (factorial n)
  (if (zero? n)
      1
      (* n (factorial (- n 1)))))

(trace factorial)

(factorial 4)
