-- Actividad 13.

SELECT 
  p.nombre, 
  COUNT(r.id_receta) AS total_recetas
FROM pacientes p
LEFT JOIN recetas r ON r.id_paciente = p.id_paciente
GROUP BY p.nombre
ORDER BY total_recetas DESC;










