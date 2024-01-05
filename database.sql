-- Active: 1695074456068@@127.0.0.1@3306@siniestros
CREATE DATABASE siniestros;

SET GLOBAL local_infile = ON;

SHOW VARIABLES LIKE 'secure_file_priv';


use siniestros;
DROP TABLE hechos;
CREATE TABLE hechos (
    ID VARCHAR(10) PRIMARY KEY,
    N_VICTIMAS INT,
    FECHA DATE,
    AAAA INT,
    MM INT,
    DD INT,
    HORA TIME,
    HH INT,
    LUGAR_DEL_HECHO VARCHAR(255),
    TIPO_DE_CALLE VARCHAR(50),
    Calle VARCHAR(50),
    Altura INT,
    Cruce VARCHAR(255) COLLATE utf8mb4_unicode_ci,
    Direccion_Normalizada VARCHAR(255) COLLATE utf8mb4_unicode_ci,
    COMUNA INT,
    pos_x FLOAT,
    pos_y FLOAT,
    PARTICIPANTES VARCHAR(50),
    VICTIMA VARCHAR(50),
    ACUSADO VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Asegúrate de ajustar el nombre de tu tabla y la ruta del archivo CSV según tus necesidades.
LOAD DATA local INFILE 'C:/Users/PC/Documents/siniestros_viales_PI_2/data/clear/hechos_homicidios.csv' INTO TABLE hechos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Para omitir la primera fila si contiene encabezados de columna.

SELECT * from hechos;

DROP TABLE victimas;
CREATE TABLE victimas (
    ID_hecho VARCHAR(10),
    FECHA DATE,
    AAAA INT,
    MM INT,
    DD INT,
    ROL VARCHAR(20),
    VICTIMA VARCHAR(20),
    SEXO VARCHAR(10),
    EDAD INT,
    FECHA_FALLECIMIENTO DATETIME,
    FOREIGN KEY (ID_hecho) REFERENCES hechos(ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


LOAD DATA local INFILE '/home/pc/Documentos/henry/siniestros_viales_PI_2/data/clear/victimas_homicidios.csv' INTO TABLE victimas
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM victimas;

