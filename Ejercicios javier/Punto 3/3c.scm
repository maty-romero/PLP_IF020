(require (lib "trace.ss"))
;ENUNCIADO
;un entero n y produzca una lista con los números desde 1 a n en orden ascendente. 
;---------------------------------------------------------------------------------
(define (pedirNumero) ;funcion de input
  (display "Ingrese un numero: ")
  (let ((x (read)))
    (if (number? x)
        x
        (begin
          (display "No es un numero, intente de nuevo.\n")
          (pedirNumero)))))

(define (generarLista inicio fin)
  (if (> inicio fin) ; si el numero ingresado es menor a 1 
      '()  ;devuelve una lista vacia
      (cons inicio (generarLista (+ inicio 1) fin)))) ; sino itera sobre la funcion y genera la lista 
;contatena el inicio de la lista con el primer elemento +1

(define (crearLista)
  (let ((x (pedirNumero)))
    (if (= x 1)  ; si el valor es 1 devuelve una lista con 1
        (list 1) 
        (append (generarLista 1 x) '())))) ; sino inicia el proceso de creacion de la lista

(trace crearLista)
(crearLista)