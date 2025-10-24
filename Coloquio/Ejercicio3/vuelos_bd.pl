% ---- Base de datos ** HECHOS ** ----
% hecho: vuelo(IdVuelo, Origen, Destino, Frecuencia, Sale(H,Min), Dur(H,Min), PrecioARS, DistanciaKm, IdAvion).
% Frecuencia: puede ser diario o lista de días [lu,ma,mi,ju,vi,sa,do] 
vuelo(1820, 'Buenos Aires', 'Ushuaia', [lu,ma,mi,ju,vi], sale(5,0),  dur(3,40), 78000, 2376, 2).
vuelo(1821, 'Ushuaia', 'Buenos Aires', [lu,ma,mi,ju,vi], sale(9,50), dur(3,25), 78000, 2376, 2).
    
vuelo(1822, 'Buenos Aires', 'Comodoro Rivadavia', diario, sale(23,30), dur(2,25), 76500, 1458, 3).
vuelo(1823, 'Comodoro Rivadavia', 'Buenos Aires', diario, sale(4,0),   dur(2,15), 76500, 1458, 3).

vuelo(1501, 'Salta', 'Buenos Aires', [mi,sa], sale(23,0), dur(2,0),  76500, 1276, 1).
vuelo(1504, 'Buenos Aires', 'Cordoba', [mi,sa], sale(19,0), dur(1,5),  64500, 649, 1).
vuelo(1505, 'Cordoba', 'Salta', [mi,sa], sale(21,0), dur(1,10), 65800, 728, 1).

vuelo(4226, 'Buenos Aires', 'Comodoro Rivadavia', [ma,ju,sa], sale(22,0), dur(2,30), 76500, 1458, 4).
vuelo(4227, 'Comodoro Rivadavia', 'Buenos Aires', [mi,vi,do], sale(4,0), dur(2,15), 76500, 1458, 4).

vuelo(4130, 'Buenos Aires', 'Mendoza', [lu,ma,vi], sale(21,30), dur(1,30), 70000, 978, 5).
vuelo(4131, 'Mendoza', 'Buenos Aires', [ma,mi,sa], sale(6,0), dur(1,20), 70000, 978, 5).

vuelo(1386, 'Buenos Aires', 'Montevideo', diario, sale(8,15), dur(0,40), 60000, 221, 1).
vuelo(1387, 'Montevideo', 'Buenos Aires', diario, sale(10,0), dur(0,45), 60000, 221, 1).

vuelo(1602, 'Buenos Aires', 'Mar del Plata', diario, sale(7,0),  dur(0,50), 62000, 382, 3).
vuelo(1603, 'Mar del Plata', 'Bahia Blanca', diario, sale(8,30), dur(0,55), 62000, 411, 3).
vuelo(1604, 'Bahia Blanca', 'Buenos Aires', diario, sale(10,0), dur(1,5),  64000, 571, 3).

% hecho: avion(IdAvion, Fabricante, Modelo, Matricula, AsientosTurista, AsientosBusiness).
avion(1, 'Boeing', '737-700', 'LV-GOO', 120, 8).
avion(2, 'Boeing', '737-800', 'LV-FUA', 162, 8).
avion(3, 'Boeing', '737-800', 'LV-FUB', 162, 8).
avion(4, 'Airbus', 'A320', 'LV-IVO', 144, 18).
avion(5, 'Airbus', 'A320', 'LV-HVT', 144, 18).

% ----------DEF HECHOS---------- 
% hecho: vuelo(IdVuelo, Origen, Destino, Frecuencia, Sale(H,Min), Dur(H,Min), PrecioARS, DistanciaKm, IdAvion).
% hecho: avion(IdAvion, Fabricante, Modelo, Matricula, AsientosTurista, AsientosBusiness).
% ----------------------

% --- Predicados 
% 1) Informar los distintos modelos de avión (fabricante y modelo) que vuelan una ruta determinada.
info_avion_por_ruta(Origen, Destino, Fabricante, Modelo) :- 
    vuelo(_, Origen, Destino, _, _, _, _, _, IdAvion), % and
    avion(IdAvion, Fabricante, Modelo, _, _, _).

% 2. Informar los vuelos que realiza un avión (matrícula) en particular en un determinado dia.
% - Variables en consulta --> IdVuelo, Origen, Destino 
vuelos_segun_avion_dia(Matricula, Dia, IdVuelo, Origen, Destino) :- 
    vuelo(IdVuelo, Origen, Destino, Frecuencia, _, _, _, _, IdAvion),
    ( % filtrado por frecuencia (Dia)
      Frecuencia == diario ; % tanto si es diario la frec. como sino:
      is_list(Frecuencia), member(Dia, Frecuencia)  
    ), % 'JOIN' con avion 
    avion(IdAvion, _, _, Matricula, _, _) .


% 3. Informar el día y hora de salida y el día y hora de llegada de un determinado vuelo.



