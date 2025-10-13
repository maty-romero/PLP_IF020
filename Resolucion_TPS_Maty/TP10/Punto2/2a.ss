; a) hyp que calcule la hipotenusa teniendo los lados a y b de un triángulo rectángulo.
; h = a2 + b2
;(define a 5)
;(define b 5)
;(define h 5)

(define (calc_hip a b) 
  (sqrt 
   (+ (expt a 2) (expt b 2))  
  )
) 

(calc_hip 3 5)