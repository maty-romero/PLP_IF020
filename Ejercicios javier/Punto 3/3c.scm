(require (lib "trace.ss"))

(define (pedirNumero)
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))

(define (generarLista inicio fin)
  (if (> inicio fin)
      '()  
      (cons inicio (generarLista (+ inicio 1) fin))))

(define (crearLista)
  (let ((x (pedirNumero)))
    (if (= x 1)
        (list 1) 
        (append (generarLista 1 x) '()))))

(trace crearLista)
(crearLista)