; (define pi 3.1416)
;(define (circ_sup r) (* pi (expt r 2)))

;circ_sup 2
;(define area (circ_sup 2))
;(display area)

; calculo de area, superficie de un trapecio 
(define (suptrap h b1 b2)(/ (* (+ b1 b2) h) 2) )
(suptrap 10 4 6)