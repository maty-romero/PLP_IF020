; c) div_segura que devuelva 0 si el divisor es 0 (utilice if).

(define (div_segura numerador denominador)
  (cond
    ((= denominador 0) 0)
    (else (/ numerador denominador))
  )
) 

(div_segura 10 2)