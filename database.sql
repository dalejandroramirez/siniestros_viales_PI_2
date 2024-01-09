-- Active: 1695074456068@@127.0.0.1@3306@siniestros
CREATE DATABASE siniestros;

SET GLOBAL local_infile = ON;

SHOW VARIABLES LIKE 'secure_file_priv';


use siniestros;
DROP TABLE hechos;

CREATE TABLE hechos (
    id_hechos VARCHAR(10) PRIMARY KEY,
    n_victimas INT,
    fecha DATE,
    anho INT,
    mes INT,
    dia INT,
    hora TIME,
    franja_horaria INT,
    lugar_del_hecho VARCHAR(255),
    tipo_de_calle VARCHAR(50),
    calle VARCHAR(50),
    direccion_normalizada VARCHAR(255) COLLATE utf8mb4_unicode_ci,
    comuna INT,
    longitud FLOAT,
    latitud FLOAT,
    participantes VARCHAR(50),
    victimas VARCHAR(50),
    acusado VARCHAR(50),
    Cruce_boolean VARCHAR(5)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Asegúrate de ajustar el nombre de tu tabla y la ruta del archivo CSV según tus necesidades.
LOAD DATA local INFILE 'C:/Users/PC/Documents/siniestros_viales_PI_2/data/clear/hechos_homicidios.csv' INTO TABLE hechos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Para omitir la primera fila si contiene encabezados de columna.

SELECT * from hechos;


-- id_hechos	fecha	anho	mes	dia	rol	victimas	sexo	edad	fecha_fallecimiento	misma_fecha_accidente	rango_etario	semestre

DROP TABLE victimas;
CREATE TABLE victimas (
    id_hechos VARCHAR(10),
    fecha DATE,
    anho INT,
    mes INT,
    dia INT,
    rol VARCHAR(20),
    victimas VARCHAR(20),
    sexo VARCHAR(10),
    edad INT,
    fecha_fallecimiento DATE,
    misma_fecha_accidente VARCHAR(5),
    rango_etario VARCHAR(20),
    semestre INT
   -- FOREIGN KEY (id_hechos) REFERENCES hechos(id_hechos)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


LOAD DATA local INFILE 'C:/Users/PC/Documents/siniestros_viales_PI_2/data/clear/victimas_homicidios.csv' INTO TABLE victimas
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM victimas;

