#| 
Funcion que: 
a) Distancia: recibe como parámetros los nombres de dos provincias de Argentina y devuelve los nombres de sus 
capitales y la distancia en kilometros entre ellas.
|#

; --- Definicion provincias argentinas y sus capitales
; Formato: (define <ABREVIATURA> (list "<NombreCapital>" <latitud> <longitud>)) ; Provincia

(define BA     (list "La-Plata"                   -34.92 -57.95)) ; Buenos Aires
(define CAT    (list "San-Fernando-del-Valle-de-Catamarca"  -28.46 -65.78)) ; Catamarca
(define CHA    (list "Resistencia"                 -27.46 -58.98)) ; Chaco
(define CHB    (list "Rawson"                     -43.30 -65.10)) ; Chubut
(define COR    (list "Córdoba"                    -31.40 -64.18)) ; Córdoba
(define CRR    (list "Corrientes"                 -27.46 -58.83)) ; Corrientes
(define ER     (list "Paraná"                     -31.73 -60.52)) ; Entre Ríos
(define FOR    (list "Formosa"                    -26.18 -58.17)) ; Formosa
(define JUJ    (list "San-Salvador-de-Jujuy"      -24.19 -65.29)) ; Jujuy
(define LR     (list "La-Rioja"                   -29.41 -66.85)) ; La Rioja
(define LP     (list "Santa-Rosa"                 -36.61 -64.28)) ; La Pampa
(define MEN    (list "Mendoza"                    -32.88 -68.84)) ; Mendoza
(define MIS    (list "Posadas"                    -27.39 -55.92)) ; Misiones
(define NQN    (list "Neuquén"                    -38.95 -68.05)) ; Neuquén
(define RNE    (list "Viedma"                     -40.81 -63.00)) ; Río Negro
(define SAL    (list "Salta"                      -24.80 -65.41)) ; Salta
(define SCR    (list "Río-Gallegos"               -51.62 -69.25)) ; Santa Cruz
(define SJ     (list "San-Juan"                   -31.53 -68.52)) ; San Juan
(define SL     (list "San-Luis"                   -33.29 -66.32)) ; San Luis
(define SFE    (list "Santa-Fe"                   -31.64 -60.70)) ; Santa Fe
(define STE    (list "Santiago-del-Estero"        -27.80 -64.26)) ; Santiago del Estero
(define TDF    (list "Ushuaia"                    -54.81 -68.31)) ; Tierra del Fuego
(define TUC    (list "San-Miguel-de-Tucumán"      -26.81 -64.21)) ; Tucumán

; --- Obtencion de elementos, ejemplo:
;(car BA)   ; "La-Plata"
;(cadr BA)  ; -34.92
;(caddr BA) ; -57.95


; constantes para el calculo
(define PI 3.141592653589793) ; varios digitos para resultados mas precisos 
(define R 6371)  ; radio aprox de la tierra en km 

; funcion: conversion grados a radianes 
(define (grad->rad grad)
  (* grad (/ PI 180)))

; funcion: calculo distancia entre 2 puntos P(latitud, longitud) - Formula de Harvesine
(define (calc_distancia lat1 lon1 lat2 lon2)
  (let* ((lat1r (grad->rad lat1))
         (lon1r (grad->rad lon1))
         (lat2r (grad->rad lat2))
         (lon2r (grad->rad lon2))
         (dlat (- lat2r lat1r))
         (dlon (- lon2r lon1r))
         (a (+ (expt (sin (/ dlat 2)) 2)
               (* (cos lat1r)
                  (cos lat2r)
                  (expt (sin (/ dlon 2)) 2))))
         (c (* 2 (asin (sqrt a)))))
    (* R c))
)


; *** Funcion Distancia   
; 2 parametros (abrev. provincias), return: nombre capitales y distancia km entre ellas
(define (distancia prov1 prov2) 
  (display (string-append "Provincia 1 | Capital: " (car prov1)))
  (newline)
  (display (string-append "Provincia 2 | Capital: " (car prov2)))
  (newline)
  (display (string-append "Distancia entre capitales: "
                          (number->string 
                            (calc_distancia 
                              (cadr prov1) (caddr prov1) 
                              (cadr prov2) (caddr prov2)) 
           ) " km" )
  )
  (newline)
)


; ******* 'MAIN' o Programa ppal *******
; (calc_distancia -34.6037 -58.3816 40.7128 -74.0060)  ; Ejemplo uso: Buenos Aires a Nueva York (km)
(distancia BA CAT) 
(newline)
(distancia CHB JUJ)
