SELECT 
  doc.nombre as nombre_medico,
  count(*) as total_pacientes
 
 from consultas c
 
 join medicos doc on c.id_medico = doc.id_medico
 
 group by doc.nombre
 order by total_pacientes DESC;
 