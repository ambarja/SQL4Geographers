--- VISUALIZANDO DATOS 
SELECT * 
FROM  new; 
--- INSTALANDO POSTGIS 
CREATE EXTENSION postgis
CREATE EXTENSION postgis_topology;

--- ELIMINANDO TABLA CREADA 
DROP TABLE new;

--- IDENTIFICANDO TABLAS CON COMPONENTE SPATIAL
SELECT * 
 FROM geometry_columns;

--- IDENTIFICANDO CODIGOS EPSG
SELECT * 
 FROM spatial_ref_sys
 WHERE srid BETWEEN 32717 AND 32719; 

--- CREANDO TABLAS 
CREATE TABLE sin_geometrias(
	id char(6),
	nombre varchar,
	apellidos varchar,
	profesión varchar);

--- VISUALIZANDO LA TABLA CREADA 
SELECT * 
 FROM sin_geometrias;

--- AGREGANDO UNA NUEVA COLUMNA 
ALTER TABLE sin_geometrias 
	ADD COLUMN sexo char(1);  
SELECT * 
 FROM sin_geometrias;

--- AGREGANDO DATOS A LAS COLUMNAS
INSERT INTO sin_geometrias(id, nombre, apellidos,profesión, sexo) VALUES
	('1', 'Antony','Barja Ingaruca','Ingeniería Geográfica', 'M'),
    ('2', 'Adriano','Barja Blas','Científico de datos','M'),
	('3','Shayna','Blas Vicente','Ingeniería Geográfica','F') ;

SELECT * 
 FROM sin_geometrias;

--- ELIMANDO FILAS 
DELETE FROM sin_geometrias
 WHERE id = '3' ; 
SELECT * 
 FROM sin_geometrias;

--- ELIMINANDO COLUMNAS 

ALTER TABLE sin_geometrias DROP COLUMN sexo;
SELECT * FROM sin_geometrias;

--- ELIMINAR TODO LOS REGISTROS
TRUNCATE sin_geometrias CASCADE ;
SELECT * FROM sin_geometrias ;

DROP TABLE sin_geometrias;

--- CREANDO TABLAS CON GEOMETRÍAS ---
CREATE TABLE con_geometrías (
	id char,
    Estación varchar,
	Geometría varchar,
	Lat float,
	lon float,
    wkt varchar); 

SELECT * FROM "con_geometrías";

--- AGREGANDO DATOS A LA TABLA
--TRUNCATE "con_geometrías" CASCADE;

INSERT INTO con_geometrías (id, estación, geometría, lat, lon, wkt) VALUES
 ('1', 'Chosica',     'Punto', -11.76, -76.42, 'POINT (-76.42 -11.76)'),
 ('2', 'Tambo Grande','Punto', -10.75, -75.43, 'POINT (-75.43 -10.75)'),
 ('3', 'Carabayllo',  'Punto', -10.75, -75.75, 'POINT (-75.75 -10.75)');

SELECT * FROM "con_geometrías";

--- VISUALIZANDO LAS GEOMETRÍAS
SELECT st_setsrid(st_geomfromtext(wkt),4326)
 FROM "con_geometrías";



