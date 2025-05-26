-- Actividad 1
-- Para optimizar la consulta que agrupa pacientes por ciudad, se creó un índice en la columna ciudad, lo cual reduce el tiempo de ejecución al evitar escaneos completos de tabla.
CREATE INDEX idx_paciente_ciudad ON pacientes(ciudad); 

-- La siguiente consulta permite agrupar de manera más eficiente los registros.

SELECT ciudad, COUNT(*) AS cantidad_pacientes
FROM pacientes
GROUP BY ciudad;

-- Se verificó la creación del indice mediante:
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'pacientes';

