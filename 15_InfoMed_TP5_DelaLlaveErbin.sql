SELECT p.nombre, c.fecha, c.diagnostico 
from consultas c
join pacientes p on c.id_paciente = p.id_paciente
where c.fecha = (
  select max(c2.fecha)
  from consultas c2
  where c2.id_paciente = c.id_paciente
);
