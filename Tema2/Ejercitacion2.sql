CREATE TABLE curso (

 codigo INT NOT NULL,

 nombre VARCHAR(45) NOT NULL,

 descripcion VARCHAR(45),

 turno VARCHAR(45) NOT NULL,
 PRIMARY KEY(codigo)

);

ALTER TABLE curso ADD  cupo INT NOT NULL DEFAULT 20;

INSERT INTO curso VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);
INSERT INTO curso(codigo,nombre,descripcion,turno,cupo) VALUES (102, "Matemática Discreta","","Tarde",30);

INSERT INTO curso VALUES (103, null,"Algoritmos y Estructuras de Datos","Mañana",35);
INSERT INTO curso VALUES (101, "Algoritmos2","Algoritmos y Estructuras de Datos2","Mañana2",36);

UPDATE curso SET cupo = 25;

DELETE from curso WHERE nombre = "Algoritmos";

CREATE TABLE profesor (
id INT NOT NULL,
nombre VARCHAR(45) NOT NULL,
apellido VARCHAR(45) NOT NULL,
fecha_nacimiento DATE NOT NULL,
salario FLOAT NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO profesor VALUES (1,'María Emilia','Paz','1984-07-15',60000);
INSERT INTO profesor VALUES (2,'Juan','Perez','1984-07-15',45000);
INSERT INTO profesor VALUES (3,'Pepe','Montana','1984-07-15',90000);
INSERT INTO profesor VALUES (4,'Tobias','Martinez','1984-07-15',40000);

ALTER TABLE curso ADD  PROFESOR_id INT;

UPDATE curso SET PROFESOR_id = 1 WHERE nombre = "Algoritmos";
UPDATE curso SET PROFESOR_id = 2 WHERE nombre = "Algoritmos y Estructuras de Datos";
UPDATE curso SET PROFESOR_id = 3 WHERE nombre = "Matemática Discreta";
UPDATE curso SET PROFESOR_id = 4 WHERE nombre = "Algoritmos2";

SELECT profesor.apellido , curso.nombre, curso.turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;


