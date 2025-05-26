-- Actividad 3

-- Actualizamos la direccion de Luciana Gomez en la base de datos
-- Asumo que no hay duplicados, si los hubiera tendria que agregar mas condiciones.

UPDATE pacientes
SET calle = 'Calle Corrientes 500', ciudad = 'Buenos Aires'
WHERE nombre = 'Luciana Gómez';

-- Confirmo que se haya cambiado correctamente la direccion.
SELECT * 
FROM pacientes 
WHERE nombre = 'Luciana Gómez';

