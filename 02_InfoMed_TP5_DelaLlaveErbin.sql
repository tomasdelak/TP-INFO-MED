-- Actividad 2

-- Creo una vista ya que es un valor tipicamente consultado.
-- Considero que la informacion relevante son los datos del paciente como su numero, edad, ciudad y nombre.
CREATE VIEW vista_fechas_de_nacimiento_pacientes AS
SELECT nombre, numero, ciudad, EXTRACT(YEAR FROM AGE(current_date, fecha_nacimiento)) AS edad
FROM pacientes;

-- Consulto la vista
SELECT * FROM vista_fechas_de_nacimiento_pacientes;




