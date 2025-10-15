(require (lib "trace.ss"))

(define (divsegura a b)
  (if (eq? b 0)  "error" (/ a b)) 
)

(trace divsegura)
(divsegura 4 2)