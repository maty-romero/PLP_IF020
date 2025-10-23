(require (lib "trace.ss"))

(define (factorial x)
  (if (= x 0) 
      1
      (* x (factorial (- x 1)))))

(define (combinatorio a b)
      (if (>= a b)
      (/ (factorial a) 
                   (* (factorial b) (factorial (- a b )))
                   )
      (display "El primer número debe ser mayor o igual al segundo")
  ))


(trace combinatorio)
(combinatorio 2 3)