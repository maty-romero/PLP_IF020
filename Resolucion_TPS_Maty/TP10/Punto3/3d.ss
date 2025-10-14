; --- Punto 3d) un entero n y produzca una lista con los números desde 1 a n en orden descendente. 

(require (lib "trace.ss")) ; Import de la libreria 

(define (get_lista_desc num)
  (cond
    ((= num 0) '() )
    (else (cons num (get_lista_desc (- num 1))))
  )
)


(trace get_lista_desc)
(get_lista_desc 7)