/* Definiciones de tablas*/
CREATE DATABASE IF NOT EXIST centro_ensenanza_db;

CREATE TABLE IF NOT EXISTS alumnos(
	id_alumno INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL COMMENT 'Nombre alumno',
	apellido VARCHAR(50) NOT NULL COMMENT 'Apellido alumno',
	domicilio VARCHAR(50) NOT NULL COMMENT 'Direccion alumno'
)ENGINE = InnoDB, DEFAULT CHARSET="utf8mb4" ,COMMENT = "Tabla donde se guardan todos los alumnos del centro educativo";


CREATE TABLE IF NOT EXISTS asignaturas(
	id_asig INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre_asig VARCHAR(50) NOT NULL COMMENT 'Nombre asignatura',
	curso VARCHAR(50) NOT NULL COMMENT 'Curso al que pertenece la asignatura'
)ENGINE = InnoDB, DEFAULT CHARSET="utf8mb4", COMMENT = "Tabla donde se guardan todos las asignaturas del centro educativo";


CREATE TABLE IF NOT EXISTS calificaciones(
	id_alumno INT UNSIGNED NOT NULL COMMENT 'Referencia a alumno',
	id_asig INT UNSIGNED NOT NULL COMMENT 'Referencia a asignatura',
	nota DECIMAL(3,2) NOT NULL COMMENT 'Nota de un alumno',
	FOREIGN KEY(id_alumno) REFERENCES alumnos(id_alumno),
	FOREIGN KEY(id_asig) REFERENCES asignaturas(id_asig),
	PRIMARY KEY(id_alumno, id_asig)
)ENGINE = InnoDB, DEFAULT CHARSET="utf8mb4", COMMENT = "Tabla donde se guardan las calificaciones de los alumnos que cursan las materias";


/*Eliminar los nombres de las llaves foraneas*/
ALTER TABLE calificaciones DROP CONSTRAINT calificaciones_alumno_fk;
ALTER TABLE calificaciones DROP CONSTRAINT calificaciones_asignatura_fk;

/*Personalizar los nombres de la llaves foraneas*/
ALTER TABLE calificaciones ADD CONSTRAINT calificaciones_alumno_fk 
FOREIGN KEY(id_alumno) 
REFERENCES alumnos(id_alumno) 
ON DELETE CASCADE ON UPDATE NO ACTION;


ALTER TABLE calificaciones ADD CONSTRAINT calificaciones_asignatura_fk 
FOREIGN KEY(id_asig) 
REFERENCES asignaturas(id_asig)
ON DELETE CASCADE ON UPDATE NO ACTION;

/*Insertar datos*/
INSERT INTO alumnos (id_alumno, nombre, apellido, domicilio) 
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

/*-----------------------------------------*/
INSERT INTO asignaturas (id_asig, nombre_asig, curso) 
VALUES
(1, 'Programación', 'Tecnología'),
(2, 'Matemáticas', 'Ciencias exactas'),
(3, 'Fisica', 'Ciencias exactas'),
(4, 'Ciencias naturales', 'Ciencias exactas'),
(5, 'Ciencias sociales', 'Sociologia'),
(6, 'Filosofía', 'Sociologia'),
(7, 'Educación fisica', 'Deportes'),
(8, 'Lenguajes', 'Letras'),
(9, 'Arte', 'Arte y música'),
/*------------------------------*/

INSERT INTO `calificaciones` (`id_alumno`, `id_asig`, `nota`) VALUES
(4, 10, '4.08'),
(5, 6, '4.42'),
(6, 8, '2.32'),
(6, 9, '1.06'),
(7, 3, '3.51'),
(7, 8, '3.60'),
(9, 4, '1.01'),
(12, 5, '1.79'),
(14, 2, '2.11'),
(14, 8, '1.85'),
(15, 4, '3.48'),
(16, 4, '1.68'),
(16, 9, '2.34'),
(17, 1, '3.90'),
(17, 3, '2.30'),
(18, 2, '3.22'),
(18, 7, '2.76'),
(20, 1, '4.66'),
(20, 4, '3.47'),
(20, 10, '1.40'),
(22, 3, '2.96'),
(24, 1, '2.16'),
(25, 1, '1.87'),
(25, 7, '3.69'),
(27, 1, '3.38'),
(29, 5, '3.01'),
(31, 6, '4.06'),
(32, 7, '3.03'),
(32, 10, '4.48'),
(33, 1, '2.24'),
(33, 2, '3.31'),
(33, 4, '4.13'),
(33, 9, '3.39'),
(34, 7, '2.41'),
(34, 8, '2.24'),
(36, 9, '1.30'),
(37, 4, '4.13'),
(39, 3, '2.25'),
(41, 2, '1.55'),
(41, 4, '3.18'),
(41, 9, '1.42'),
(41, 10, '2.25'),
(42, 1, '3.45'),
(42, 5, '4.39'),
(42, 6, '3.58'),
(43, 8, '1.32'),
(46, 6, '1.37'),
(46, 10, '3.50'),
(48, 1, '2.66'),
(50, 1, '3.98');




