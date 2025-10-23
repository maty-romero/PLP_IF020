(require(lib "trace.ss"))


;FUNCION QUE CALCULA EL PRODUCTO DE LOS ELEMENTOS DE LISTA

(define (producto x)
  (cond
    ((null? x) 1) ; el elemento de la sublista es una lista vacia, devuelve 1 para no alterar el producto (*)
    ((list? (car x)) ; si el primer elemento es lista, multiplica su producto recursivo
     (* (producto (car x)) (producto (cdr x))))
    ((= (car x) 0) 0) ; si algún elemento es 0 devuelve 0
    (else (* (car x) (producto (cdr x)))))) ; calcula el producto del resto de la lista, primer elemento * resto de la lista evaluado recursivamente


;FUNCION PARA ELIMINAR REPETIDOS (OPCIONAL)
(define (eliminarDupli x)
  (cond
    ((null? x) '())  ; si el elemento es una lista vacia lo ignora
    ((member (car x) (cdr x)) (eliminarDupli (cdr x))) ; evalua si el primer elemento ya existe en la lista
    ;si existe lo elimina por omision y llama recursivamente a la evalucacion del resto de la lista
    (else (cons (car x) (eliminarDupli (cdr x))))))  ; sino concatena el primer elemente y evalua el siguiente de forma recursiva

;FUNCION PRINCIPAL
(define (repetidos x)
  (cond
    ((null? x) '()) ; la lista esta vacia
    ((list? (car x)) ; si el primer elemento es una lista 
     ;<---------INICIO parte permite la iteración sobre listas anidadas 
     (let ((p (producto (car x)))) ;calcula el producto del primer elemento 
       (if (= p 1) ; si era sublista vacía, la ignora. aca considera uno por lo que hace (*)
           (repetidos (cdr x)) ; evalua recursivamente el resto de la lista
           (cons p (repetidos (cdr x)))))) ; concatena la sublista anidada al resto de elementos
    ;FIN parte permite la iteración sobre listas anidadas -------->
    (else (cons (car x) (repetidos (cdr x)))))) ; sino evalua el segundo elemento de la lista ya que se trataba de un numero

(trace repetidos)
(repetidos '(5 (2 4) 8 (1 (3 (1 2) 4) 2) ()))
(trace eliminarDupli)
(eliminarDupli(repetidos '(5 (2 4) 8 (1 2))))