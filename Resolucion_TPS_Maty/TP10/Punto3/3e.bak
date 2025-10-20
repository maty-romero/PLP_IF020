; e) una lista simple como parámetro y retorne la lista inversa (no usar reverse)

; (cons elemento lista)
; cons cdr ()

(require (lib "trace.ss"))
#| 
Solucion ChatGPT:

(define (lista_inversa lista)
  (cond
    ((null? lista) '())
    (else (append (lista_inversa (cdr lista)) (list (car lista))))
  ))
|#


(trace lista_inversa)
(lista_inversa '(2 4 1 7) )