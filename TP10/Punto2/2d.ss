; d) Pregunte por su nombre y le conteste Hola nombre!.

(display "Ingrese su nombre: ")
(define nombre (read-line)) ; mejor para strings
(newline) 
(display (string-append "Hola " nombre "!"))