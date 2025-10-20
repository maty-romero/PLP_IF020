(require (lib "trace.ss"))

;ENUNCIADO 
;Defina una función producto_punto, que tome como entrada 2 listas de la misma longitud,
;multiplique sus componentes correspondientes y sume los productos resultantes.
;-------------------------------------------------------

;ingresos de listas
(define (pedirLista)
  (display "Ingrese una lista: ")
  (let ((x (read)))
    (if (list? x)
        x
        (begin
          (display "No es una lista, vuelva a intentarlo.\n")
          (pedirLista)))))

;funcion recursiva interna
(define (sumarProductoRec lista1 lista2)
  (cond
    ((or (null? lista1) (null? lista2)) 0)  ; si alguna lista es nula devuelve 0
    (else
     (+ (* (car lista1) (car lista2)) ;hace la suma del producto de los primeros elementos
        (sumarProductoRec (cdr lista1) (cdr lista2)))))) ; itera evaluando el resto de ambas listas

;funcion princial que usar el ingreso de listas y la recusiva de producto
(define (sumarProducto)
  (let ((lista1 (pedirLista))
        (lista2 (pedirLista)))
    (if (not (= (length lista1) (length lista2))) ; si el tamaño de las listas no es igual vuelve a pedir ingreso 
        (begin
          (display "Las listas no tienen el mismo tamaño. Intente de nuevo.\n")
          (sumarProducto))
        (sumarProductoRec lista1 lista2))))  ; si tienen el mismo tamaño llama a la funcion de iteracion


(trace sumarProducto)
(sumarProducto)