(require (lib "trace.ss"))

(define (hyp x y)
  (sqrt (+ (expt x 2) (expt y 2)))
 )

(trace hyp)
(hyp 4 5)