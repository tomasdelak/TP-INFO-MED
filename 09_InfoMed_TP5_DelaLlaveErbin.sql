-- Actividad 9.

SELECT id_medico, COUNT(*) AS cantidad_recetas
FROM recetas
GROUP BY id_medico;



