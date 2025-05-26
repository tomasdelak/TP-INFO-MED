-- Es el mismo query que cree en la actividad 1.

SELECT ciudad, COUNT(*) AS cantidad_pacientes
FROM pacientes
GROUP BY ciudad;