-- Actividad 5

-- Primero elimino espacios en blanco y pongo las primeras letras de cada palabra en mayuscula.
-- Tambien elimino los espacios duplicados.
UPDATE pacientes
SET ciudad = INITCAP(REGEXP_REPLACE(TRIM(ciudad), '\s+', ' ', 'g'));

-- Como hay ciudades que estan mal escritas, debo agregar una forma mas especifica de correccion para estos errores tipicos.
-- Por ejemplo podria ser lo siguiente.

UPDATE pacientes SET ciudad = 'Buenos Aires'
WHERE ciudad IN ('Bs As', 'Bsas', 'Buenosaires', 'Buenos Aiers', 'Bs Aires');

UPDATE pacientes SET ciudad = 'Córdoba'
WHERE ciudad IN ('Cordba', 'Cordova', 'Corodoba', 'Córodoba', 'Córodba', 'Cordoba');

UPDATE pacientes SET ciudad = 'Mendoza'
WHERE ciudad IN ('Mendzoa');

-- Visualizo todos los tipos de ciudades que tengo en mi tabla de pacientes
SELECT DISTINCT ciudad FROM pacientes ORDER BY ciudad;