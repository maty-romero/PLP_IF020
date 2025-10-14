; --- INTENTOS

; (define index 1) 
; El uso de esta variable global no se va actualizando como en otros leng. 
; Con cada llamado vuelve a tomar el valor de 1

#|
(define (get_lista_asc num)
    (cond 
      ((= index num) '())
      (else (cons (index (get_lista_asc (+ index 1)))) )
    )
)
|#
  

; --------------
; RESOLUCION EN LIMPIO

(require (lib "trace.ss")) ; Import de la libreria 

; Enunciado.
; 3 c) un entero n y produzca una lista con los números desde 1 a n en orden ascendente.

; --- Punto 3c - obtener lista ascendente
(define (get_lista_asc num)
  ; armo_lista: funcion recursiva local
  ; i: variable local (indice)
  (let armo_lista ((i 1))
    (cond 
      ((> i num) '())
      (else (cons i (armo_lista (+ 1 i) )))
    )
    
  )  
)


(trace get_lista_asc)
(get_lista_asc 7)