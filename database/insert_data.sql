-- Insersiones de data.

-- Isertar Ciclos
INSERT INTO school_cycles (period_cle)
VALUES ('2022-2023');

-- Insertar en Profesores
INSERT INTO teachers (name_tch, last_name_tch, mail_tch, profesional_licence_tch)
VALUES 
  ('Luis', 'Olvera', 'luis_olv@mail.com', 'L0001'),
  ('María', 'Santos', 'maria.santos@mail.com', 'L0002'),
  ('Carlos', 'Ramírez', 'c.ramirez@mail.com', 'L0003'),
  ('Andrea', 'Gómez', 'andrea.gomez@mail.com', 'L0004'),
  ('Javier', 'Torres', 'j.torres@mail.com', 'L0005');

-- Insertar en Materias
INSERT INTO subjects (name_subj, code_subj, description_subj)
VALUES 
  -- 1° Grado
  ('Matemáticas I', 'MAT-1', 'Curso de matemáticas para alumnos de 1° grado'),
  ('Español I', 'ESP-1', 'Curso de español para alumnos de 1° grado'),
  ('Historia I', 'HIS-1', 'Curso de historia para alumnos de 1° grado'),
  ('Biología I', 'BIO-1', 'Curso de biología para alumnos de 1° grado'),
  ('Inglés I', 'ING-1', 'Curso de inglés básico para alumnos de 1° grado'),

  -- 2° Grado
  ('Matemáticas II', 'MAT-2', 'Curso de matemáticas para alumnos de 2° grado'),
  ('Español II', 'ESP-2', 'Curso de español para alumnos de 2° grado'),
  ('Historia II', 'HIS-2', 'Curso de historia para alumnos de 2° grado'),
  ('Física I', 'FIS-1', 'Curso de física introductoria para alumnos de 2° grado'),
  ('Inglés II', 'ING-2', 'Curso de inglés intermedio para alumnos de 2° grado'),

  -- 3° Grado
  ('Matemáticas III', 'MAT-3', 'Curso de matemáticas para alumnos de 3° grado'),
  ('Español III', 'ESP-3', 'Curso de español para alumnos de 3° grado'),
  ('Historia III', 'HIS-3', 'Curso de historia para alumnos de 3° grado'),
  ('Química I', 'QUI-1', 'Curso de química introductoria para alumnos de 3° grado'),
  ('Inglés III', 'ING-3', 'Curso de inglés avanzado para alumnos de 3° grado');
  
 -- Insertar en Grupos
 INSERT INTO students_groups (name_grp, grade_grp, generation_grp, fk_school_cle)
VALUES 
  ('1-A', '1', '2022', 1),
  ('1-B', '1', '2022', 1);
  
-- Insertar alumnos
INSERT INTO students (first_name_std, last_name_std, gender_std, bitrhdate_std, curp_std, email_std, phone_std, status_std)
VALUES 
  ('Carlos', 'Morales', 'H', '2007-11-01', 'CAMO071107HQTSJ02', 'carlos_m@mail.com', '4271282095', 'A'),
  ('Fernanda', 'López', 'M', '2008-03-12', 'FELO080312MJCLPR03', 'fernanda.l@mail.com', '4271282096', 'A'),
  ('Diego', 'Ramírez', 'H', '2007-06-25', 'DIRA070625HZTSL04', 'diego_r@mail.com', '4271282097', 'I'),
  ('Jimena', 'Sánchez', 'M', '2008-08-09', 'JISA080809MJZNL05', 'jimena_s@mail.com', '4271282098', 'A'),
  ('Alexis', 'Vargas', 'H', '2007-10-14', 'ALVA071014HZKTR06', 'alexis_v@mail.com', '4271282099', 'A'),
  ('Miriam', 'Gómez', 'M', '2007-12-02', 'MIGO071202MJZCM07', 'miriam_g@mail.com', '4271282100', 'I'),
  ('Sofía', 'Hernández', 'M', '2008-01-20', 'SOHE080120MJMNZ08', 'sofia_h@mail.com', '4271282101', 'A'),
  ('Raúl', 'Domínguez', 'H', '2007-07-19', 'RADO070719HZTNR09', 'raul_d@mail.com', '4271282102', 'A'),
  ('Elena', 'Flores', 'M', '2008-05-05', 'ELFL080505MJZTR10', 'elena_f@mail.com', '4271282103', 'I'),
  ('Luis', 'Santillán', 'H', '2007-09-03', 'LUSA070903HZTSN11', 'luis_s@mail.com', '4271282104', 'A'),
  ('Dana', 'Martínez', 'M', '2007-02-22', 'DAMA070222MJZTR12', 'dana_m@mail.com', '4271282105', 'A'),
  ('Jorge', 'Castro', 'H', '2008-04-17', 'JOCA080417HZTPL13', 'jorge_c@mail.com', '4271282106', 'A'),
  ('Valeria', 'Núñez', 'M', '2007-11-30', 'VANU071130MJZCL14', 'valeria_n@mail.com', '4271282107', 'I'),
  ('Noah', 'Reyes', 'Otro', '2008-06-08', 'NORE080608HQTRR15', 'noah_r@mail.com', '4271282108', 'A'),
  ('Luna', 'Cervantes', 'M', '2007-05-27', 'LUCE070527MJZCR16', 'luna_c@mail.com', '4271282109', 'A'),
  ('Isaac', 'Ortega', 'H', '2007-03-09', 'ISOR070309HZTRL17', 'isaac_o@mail.com', '4271282110', 'A'),
  ('Renata', 'Ríos', 'M', '2008-07-01', 'RERI080701MJZRR18', 'renata_r@mail.com', '4271282111', 'I'),
  ('Mateo', 'Pérez', 'H', '2007-01-15', 'MAPE070115HZTSR19', 'mateo_p@mail.com', '4271282112', 'A'),
  ('Julieta', 'Campos', 'M', '2008-02-28', 'JUCA080228MJZNC20', 'julieta_c@mail.com', '4271282113', 'A'),
  ('Emiliano', 'Zamora', 'H', '2007-08-21', 'EMZA070821HZTRR21', 'emiliano_z@mail.com', '4271282114', 'I');
  
  
 -- Insertar Grupos - alumnos
INSERT INTO students_students_groups (fk_id_std, fk_id_grp)
VALUES 
  (1, 1),
  (2, 2),
  (3, 1),
  (4, 1),
  (5, 2),
  (6, 2),
  (7, 1),
  (8, 2),
  (9, 1),
  (10, 1),
  (11, 2),
  (12, 1),
  (13, 2),
  (14, 1),
  (15, 1),
  (16, 2),
  (17, 1),
  (18, 1),
  (19, 2),
  (20, 1);
  
-- Insertar Materias a Grupos
INSERT INTO groups_subjects (fk_id_subj, fk_id_grp, fk_id_tch, fk_school_cle)
VALUES
  (1,1,2,1),
  (2,1,3,1),
  (3,1,4,1),
  (4,1,1,1),
  (5,1,5,1),
  (1,2,2,1),
  (2,2,3,1),
  (3,2,4,1),
  (4,2,1,1),
  (5,2,5,1);
  
 -- Insertar calificaciones

INSERT INTO grades (evaluation_type, grade, fk_id_std, fk_id_subj, fk_id_cle)
VALUES
