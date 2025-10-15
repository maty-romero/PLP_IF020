(require (lib "trace.ss"))

(define (saludo x)
    (string-append "Hola " x)
)

(trace saludo)
(saludo "Javier")