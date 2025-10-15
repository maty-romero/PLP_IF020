(require (lib "trace.ss"))


(define (pedirNumero)
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))

(define (sumaComprendidos)
  (define (sumaValoresComprendidos x y)
    (if (= x y)          
        y
        (+ x (sumaValoresComprendidos (+ x 1) y)))) 
  (let ((a (pedirNumero))
        (b (pedirNumero))) 
    (if (< a b)
        (display (sumaValoresComprendidos (add1 a) (sub1 b)))
        (display (sumaValoresComprendidos (add1 b) (sub1 a)))
    )
    (newline)))

(trace sumaComprendidos)
(sumaComprendidos)