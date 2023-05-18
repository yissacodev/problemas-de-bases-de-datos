CREATE DATABASE universidad_db;

USE universidad_db;

CREATE TABLE IF NOT EXISTS ALUMNOS(
	cod_alumno INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL COMMENT "Nombre de alumno",
	apellido VARCHAR(100) NOT NULL COMMENT "Apellido de alumno",
	domicilio VARCHAR(50) DEFAULT "" COMMENT "Direccion de alumno",
	creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Fecha de creación de registros",
  	modificado TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Fecha de actualización de registros"
) ENGINE = InnoDB DEFAULT CHARSET "utf8mb4" COMMENT "Tabla de alumnos de la universidad";

CREATE TABLE IF NOT EXISTS ASIGNATURAS(
	cod_asignatura INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT "Código de asignatura",
	nombre VARCHAR(100) NOT NULL COMMENT "Nombre de asignatura",
	curso VARCHAR(100) NOT NULL COMMENT "Curso o grado de la asignatura",
	creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Fecha de creación de registros",
  	modificado TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Fecha de actualización de registros"
)ENGINE = InnoDB DEFAULT CHARSET "utf8mb4" COMMENT "Tabla de asignaturas de la universidad";

CREATE TABLE IF NOT EXISTS CALIFICACIONES(
	cod_alumno INT UNSIGNED NOT NULL COMMENT "Referencia a un alumno",
	cod_asignatura INT UNSIGNED NOT NULL COMMENT "Referencia a una asignatura",
	nota DECIMAL(3,2) DEFAULT 0.00 COMMENT "Calificacion individual",
	creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Fecha de creación de registros",
  	modificado TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Fecha de actualización de registros",
	PRIMARY KEY(cod_alumno, cod_asignatura)
) ENGINE = InnoDB DEFAULT CHARSET "utf8mb4" COMMENT "Tabla de calificaciones de la universidad";


CREATE TABLE IF NOT EXISTS CARRERAS(
	cod_carrera INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Código de carrera",
	nombre VARCHAR(50) NOT NULL COMMENT "Nombre de carrera",
	duración VARCHAR(20) NOT NULL COMMENT "Duración de la carrera",
	creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Fecha de creación de registros",
 	modificado TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Fecha de actualización de registros"
)

CREATE TABLE IF NOT EXISTS ASIGNATURAS_ASOCIADAS(
	cod_carrera INT UNSIGNED NOT NULL COMMENT "Referencia a una carrera",
	cod_asignatura INT UNSIGNED NOT NULL COMMENT "Referencia a una asignatura",
	creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Fecha de creación de registros",
 	modificado TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Fecha de actualización de registros",
	PRIMARY KEY(cod_carrera, cod_asignatura)
);

/* Constraints de calificaciones*/
ALTER TABLE CALIFICACIONES 
ADD CONSTRAINT FK_calificaciones_alumnos 
FOREIGN KEY(cod_alumno) 
REFERENCES ALUMNOS(cod_alumno)
ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE CALIFICACIONES 
ADD CONSTRAINT FK_calificaciones_asignaturas 
FOREIGN KEY(cod_asignatura) 
REFERENCES ASIGNATURAS(cod_asignatura)
ON DELETE CASCADE ON UPDATE NO ACTION;

/* Constraints de asignaturas asociadas*/
ALTER TABLE ASIGNATURAS_ASOCIADAS 
ADD CONSTRAINT FK_asigasociadas_asignaturas
FOREIGN KEY(cod_asignatura) 
REFERENCES ASIGNATURAS(cod_asignatura)
ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE ASIGNATURAS_ASOCIADAS 
ADD CONSTRAINT FK_asigasociadas_carreras
FOREIGN KEY(cod_carrera) 
REFERENCES CARRERAS(cod_carrera)
ON DELETE CASCADE ON UPDATE NO ACTION;


/*Inserción de datos*/
INSERT INTO ALUMNOS (cod_alumno, nombre, apellido, domicilio) 
VALUES
(1, 'Benoite', 'Pickworth', '5 Kingsford Way'),
(2, 'Bentlee', 'Bettaney', '67 Memorial Terrace'),
(3, 'Arlena', 'Dowry', '6 Sullivan Pass'),
(4, 'Esteban', 'Ianinotti', '6625 Corry Court'),
(5, 'Jere', 'Bergeau', '546 Welch Terrace'),
(6, 'Alane', 'Mazzeo', '601 Drewry Street'),
(7, 'Drusy', 'Pidon', '98996 Lakeland Street'),
(8, 'Merralee', 'McLae', '8 7th Center'),
(9, 'Denyse', 'Slessor', '05243 Kings Way'),
(10, 'Chryste', 'Widd', '646 Cottonwood Hill'),
(11, 'Abbie', 'Arkell', '234 Mosinee Trail'),
(12, 'Inga', 'Philippeaux', '25577 8th Avenue'),
(13, 'Marty', 'Heighton', '6659 Westport Way'),
(14, 'Moises', 'Fitzer', '80353 Holmberg Center'),
(15, 'Garreth', 'Mangeney', '9849 Bowman Park'),
(16, 'Selestina', 'Copozio', '66 Redwing Court'),
(17, 'Christin', 'Mayberry', '40 Bartelt Circle'),
(18, 'Goldie', 'Vasyuchov', '46 Dryden Avenue'),
(19, 'Ewell', 'Doerr', '6 Superior Terrace'),
(20, 'Cazzie', 'Howsego', '16515 Grover Drive'),
(21, 'Berny', 'Burehill', '658 Forest Avenue'),
(22, 'Rudolfo', 'Spreadbury', '85 Bobwhite Hill'),
(23, 'Godard', 'Armin', '64654 Mcbride Point'),
(24, 'Tadd', 'Fogg', '55602 Paget Road'),
(25, 'Mackenzie', 'McCole', '4 Marcy Avenue'),
(26, 'Tabby', 'Linde', '84 Transport Trail'),
(27, 'Margalit', 'Pawlik', '1694 Messerschmidt Avenue'),
(28, 'Tiffie', 'Dorney', '18361 Kim Plaza'),
(29, 'Doug', 'Eidler', '273 Hollow Ridge Trail'),
(30, 'Saloma', 'Wise', '83397 Crowley Park'),
(31, 'Rafaelia', 'Demelt', '9 Lindbergh Alley'),
(32, 'Carlynne', 'Wickstead', '6575 Cambridge Park'),
(33, 'Pablo', 'Boatwright', '781 Buell Circle'),
(34, 'Yulma', 'Tallboy', '257 Norway Maple Drive'),
(35, 'Emmeline', 'Gonnelly', '588 Nobel Hill'),
(36, 'Risa', 'Sallnow', '16 Moose Center'),
(37, 'Tades', 'Woolsey', '7203 Kedzie Trail'),
(38, 'Miller', 'Rainbird', '00179 Reinke Trail'),
(39, 'Fitzgerald', 'Gifford', '02 Schiller Alley'),
(40, 'Sheena', 'Sola', '234 Blaine Plaza'),
(41, 'Stanislaw', 'Goundry', '00 Lindbergh Center'),
(42, 'Otto', 'Pinck', '90 Hanson Crossing'),
(43, 'Darnall', 'Covelle', '696 Mariners Cove Street'),
(44, 'Joseito', 'Hallowes', '7840 Northwestern Street'),
(45, 'Raimund', 'Brecknock', '07872 Hollow Ridge Circle'),
(46, 'Nixie', 'Bromwich', '38 Heath Street'),
(47, 'Sherri', 'Heintzsch', '520 Dwight Hill'),
(48, 'Diahann', 'Midghall', '9 Pankratz Plaza'),
(49, 'Mordecai', 'Brigstock', '90 Northwestern Court'),
(50, 'Sisely', 'Ginnety', '4 Nancy Point');

/*Insertar carreras*/

INSERT INTO CARRERAS(nombre, duracion)
VALUES
('Ingeniería de sistemas', '6 años'),
('Ingeniería de civil', '6 años'),
('Ingeniería de electrónica', '6 años'),
('Ingeniería de agronomica', '5 años'),
('Licenciatura en inglés', '4 años'),
('Licenciatura en música', '5 años'),
('Geografía', '5 años'),
('Medicina', '7 años'),
('Comercio internacional', '5 años');



/*Insertar calificaciones*/
INSERT INTO CALIFICACIONES (cod_alumno, cod_asignatura, nota) VALUES 
(16, 13, 1.96),
(2, 14, 2.29),
(2, 4, 3.85),
(12, 10, 4.3),
(24, 14, 1.18),
(12, 11, 1.75),
(5, 9, 4.57),
(5, 14, 2.03),
(13, 13, 4.25),
(5, 15, 4.37),
(6, 1, 3.97),
(9, 4, 0.42),
(9, 7, 3.44),
(22, 11, 2.05),
(24, 16, 0.14),
(8, 3, 2.79),
(15, 11, 2.03),
(23, 8, 0.04),
(20, 9, 2.45),
(15, 12, 4.36),
(22, 5, 3.24),
(5, 10, 1.2),
(23, 17, 3.38),
(20, 2, 4.16),
(4, 6, 0.03),
(23, 5, 1.16),
(13, 3, 3.94),
(7, 8, 2.89),
(1, 6, 1.35),
(13, 15, 4.27),
(13, 9, 3.3),
(10, 3, 1.08),
(12, 18, 1.06),
(3, 13, 2.01),
(7, 2, 3.99),
(23, 7, 0.16),
(6, 17, 2.43),
(23, 3, 0.34),
(21, 7, 0.02),
(1, 4, 1.5),
(14, 11, 1.61),
(3, 18, 3.49),
(14, 12, 1.32),
(15, 7, 4.66),
(11, 7, 2.45),
(3, 14, 0.79),
(16, 1, 3.29),
(8, 14, 2.06),
(23, 18, 0.27),
(7, 14, 4.36),
(5, 16, 1.34),
(8, 16, 0.57),
(21, 6, 4.45);

/* Insertar Asignaturas asociadas*/
INSERT INTO asignaturas_asociadas (cod_carrera, cod_asignatura) 
VALUES 
(1, 12),
(6, 2),
(3, 12),
(7, 3),
(3, 5),
(1, 3),
(2, 12),
(9, 5),
(2, 9),
(7, 6),
(6, 12),
(9, 8),
(4, 15),
(5, 12),
(7, 9),
(4, 8),
(4, 2),
(3, 1),
(2, 4),
(2, 5),
(4, 9),
(1, 9),
(1, 13),
(1, 11),
(9, 17),
(3, 10),
(8, 13),
(9, 18),
(9, 16),
(8, 2);
