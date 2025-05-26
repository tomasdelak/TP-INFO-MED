-- Actividad 12.

SELECT m.nombre AS id_medicamento, COUNT(*) AS veces_prescripto
FROM recetas r
JOIN medicamentos m ON r.id_medicamento = m.id_medicamento
WHERE r.id_medico = 2
GROUP BY m.nombre
HAVING COUNT(*) > 1
ORDER BY veces_prescripto DESC;







