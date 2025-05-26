-- Actividad 13.

SELECT p.nombre, COUNT(*) AS total_recetas
FROM recetas r
JOIN pacientes p ON r.id_paciente = p.id_paciente
GROUP BY p.nombre
ORDER BY total_recetas DESC;










