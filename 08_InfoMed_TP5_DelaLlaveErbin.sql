-- Actividad 8.

SELECT ciudad, id_sexo, COUNT(*) AS cantidad_pacientes_sexo
FROM pacientes
GROUP BY ciudad, id_sexo
ORDER BY ciudad, id_sexo;

