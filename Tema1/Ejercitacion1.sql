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

DELETE from curso WHERE nombre = "Algoritmos"