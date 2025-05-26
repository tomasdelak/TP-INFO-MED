-- Actividad 13.

SELECT COUNT(*) AS total_recetas, p.id_paciente AS id_paciente, p.nombre
FROM recetas r
JOIN pacientes p ON r.id_paciente = p.id_paciente
GROUP BY p.id_paciente, p.nombre
ORDER BY total_recetas DESC;










