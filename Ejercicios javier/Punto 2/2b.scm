(require (lib "trace.ss"))

(define (segundo list)
  (car (cdr list))
)

(trace segundo)
(segundo '(a b c))