SELECT 
  med.nombre as nombre_medicamento,
  doc.nombre as nombre_medico,
  p.nombre as nombre_paciente,
  count(*) as total_recetas
 from recetas r
 
 join medicamentos med on r.id_medicamento = med.id_medicamento
 join medicos doc on r.id_medico = doc.id_medico
 join pacientes p on r.id_paciente = p.id_paciente
 
 group by med.nombre, doc.nombre, p.nombre
 order by total_recetas DESC;
 