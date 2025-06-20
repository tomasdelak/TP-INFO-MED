SELECT 
  m.nombre AS nombre_medico,
  COUNT(DISTINCT c.id_paciente) AS total_pacientes
FROM medicos m
LEFT JOIN consultas c ON m.id_medico = c.id_medico
GROUP BY m.nombre
ORDER BY total_pacientes DESC;

 
