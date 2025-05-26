SELECT 
  p.nombre, 
  c.fecha, 
  c.diagnostico
FROM pacientes p
LEFT JOIN consultas c ON c.id_paciente = p.id_paciente
  AND c.fecha = (
    SELECT MAX(c2.fecha)
    FROM consultas c2
    WHERE c2.id_paciente = p.id_paciente
  )
ORDER BY p.nombre;

