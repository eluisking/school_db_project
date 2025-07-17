-- School DB
-- Crear Base de Datos
CREATE DATABASE school_db;

-- Creamos Tablas
USE school_db;

-- Tabla Ciclos
CREATE TABLE school_cycles (
	id_cle INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	period_cle VARCHAR(12) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--Tabla Materias
CREATE TABLE subjects (
        id_subj INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        name_subj VARCHAR(30) NOT NULL UNIQUE,
        code_subj VARCHAR(10) NOT NULL UNIQUE,
        description_subj TEXT,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla Grupos
CREATE TABLE students_groups (
        id_grp INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        name_grp VARCHAR(5) NOT NULL,
        grade_grp VARCHAR(3) NOT NULL,
        generation_grp VARCHAR(8) NOT NULL,
        fk_school_cle INT UNSIGNED, -- 2021-2022
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
		CONSTRAINT fk_students_subjects_school_cycles FOREIGN KEY (fk_school_cle) REFERENCES school_cycles(id_cle),
        UNIQUE (name_grp, generation_grp)
);

-- Tabla Maestros
CREATE TABLE teachers (
        id_tch INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        name_tch VARCHAR(35) NOT NULL,
        last_name_tch  VARCHAR(50) NOT NULL,
        mail_tch VARCHAR(40) UNIQUE,
        profesional_licence_tch VARCHAR(12) UNIQUE,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla Grupos - Materias
CREATE TABLE groups_subjects (
        id_grp_subj INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        fk_id_subj INT UNSIGNED NOT NULL,
        fk_id_grp INT UNSIGNED NOT NULL,
        fk_id_tch INT UNSIGNED NOT NULL,
        fk_school_cle INT UNSIGNED NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,   
        CONSTRAINT fk_groups_subjects_subjects FOREIGN KEY (fk_id_subj) REFERENCES subjects(id_subj),
        CONSTRAINT fk_groups_subjects_groups FOREIGN KEY (fk_id_grp) REFERENCES students_groups(id_grp),
        CONSTRAINT fk_groups_subjects_teachers FOREIGN KEY (fk_id_tch) REFERENCES teachers(id_tch),
		CONSTRAINT fk_groups_subjects_school_cycles FOREIGN KEY (fk_school_cle) REFERENCES school_cycles(id_cle)
);

-- Tabla Estudiantes
CREATE TABLE students (
        id_std INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        first_name_std VARCHAR(50) NOT NULL,
        last_name_std VARCHAR(100) NOT NULL,
        gender_std ENUM('M','H','Otro') NOT NULL,
        bitrhdate_std DATE NOT NULL,
        curp_std VARCHAR(18) NOT NULL,
        email_std VARCHAR(30) NOT NULL,
        phone_std VARCHAR(12),
        status_std ENUM('A','I') NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla Calificaciones
CREATE TABLE grades (
        id_grds INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        evaluation_type ENUM('P1','P2','P3') NOT NULL,
        grade DECIMAL(5,2) NOT NULL,
        fk_id_std INT UNSIGNED NOT NULL,
        fk_id_subj INT UNSIGNED NOT NULL,
        fk_id_cle INT UNSIGNED NOT NULL ,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        CONSTRAINT grades_students FOREIGN KEY (fk_id_std) REFERENCES students(id_std),
        CONSTRAINT grades_subjects FOREIGN KEY (fk_id_subj) REFERENCES subjects(id_subj),
        CONSTRAINT grades_school_cycles FOREIGN KEY (fk_id_cle) REFERENCES school_cycles(id_cle)
);


CREATE TABLE students_students_groups (
  id_std_grp INT UNSIGNED NOT NULL AUTO_INCREMENT,
  fk_id_std INT UNSIGNED NOT NULL,
  fk_id_grp INT UNSIGNED NOT NULL,
  created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_std_grp),
  KEY fk_students_students_groups_groups (fk_id_std),
  CONSTRAINT fk_students_students_groups_groups FOREIGN KEY (fk_id_grp) REFERENCES students_groups(id_grp),
  CONSTRAINT fk_students_students_groups_students FOREIGN KEY (fk_id_std) REFERENCES students(id_std)
);
