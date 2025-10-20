(require (lib "trace.ss"))
(require (lib "compat.ss"))

; ENUNCIADO
;Escriba una función suma_todo que encuentre la suma de los números de una lista que puede
; contener sublistas anidadas de números
;-------------------------------------------
; Tira un error al usar read al ingresarla con quote
(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, vuelva a intentarlo.\n")
          (pedirLista)))))

(define (sumaList lst)
  (cond
    ((null? lst) 0)  ; si la lista está vacía, suma = 0 retorna
    ((list? (car lst))  ; si el primer elemento es una lista
     (+ (sumaList (car lst)) (sumaList (cdr lst)))) ; itera sobre la lista interna (primer elemento) + el resto de la lista
    (else  ; si es un número, lo suma al resto, llama una iteracion del resto
     (+ (car lst) (sumaList (cdr lst))))))

(define (sumarTodo)
  (let ((lista (pedirLista)))
    (display "La suma es: ")
    (display (sumaList lista))
   ))

(trace sumaList)
(sumarTodo)