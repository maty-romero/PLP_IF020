#| 
Funcion que: 
h) Combinatorio: recibe como parámetros a dos números enteros positivos m y n y devuelve el número combinatorio (m,n).

- num combinario - restricciones:
m y n E Naturales (>= 0 ; negativos no definidos) 
n <= m ; si n > m gneralmente coeficiente combinatorio = 0

|#

; -- fun: factorial
(define (factorial num)
  (if (<= num 1) 1
      (* num (factorial (- num 1) )) 
  )
)

; fun: combinatorio
; -- Sino cumple con las restricciones se devuelve 0 
(define (combinatorio m n)
  (if (or (< m 0) (< n 0) ) 0 
      (if (> n m) 0 
      ; se cumple que n<=m
      (/ (factorial m) ; numerador
         (* (factorial n) (factorial (- m n)) ) ; denominador 
      )
  )
  )
)


; ***** MAIN *****

; Casos validos (n<=m) 
(combinatorio 5 2)
(combinatorio 5 3)
(combinatorio 6 0)
(combinatorio 6 6)
(combinatorio 6 1)
(combinatorio 10 3)
(combinatorio 4 2)
(combinatorio 0 0)
(combinatorio 1 0)
(combinatorio 1 1)

; Casos inválidos [(n<0 OR m<0) OR (n > m)]
(combinatorio 5 -1)
(combinatorio -3 2)
(combinatorio 3 5)