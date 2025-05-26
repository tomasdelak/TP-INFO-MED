SELECT 
  m.nombre as nombre_medico,
  p.nombre as nombre_paciente,
  count(*) as total_consultas
 
 from consultas c
 join medicos m on c.id_medico = m.id_medico
 join pacientes p on c.id_paciente = p.id_paciente
 group by m.nombre, p.nombre
 order by m.nombre;
 