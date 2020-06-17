------ PRIMER COMANDO EN POSTGRES -------
SELECT 'SQL is cool <3!'
 AS resultado;

----- INSTALACIÓN DE POSTGIS ------------
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

----- VISUALIZANDO LOS CODIGOS EPSG -----
SELECT * 
 FROM spatial_ref_sys 
 WHERE srid BETWEEN 32717 AND 32719; 

---- VISUALIZANDO LAS TABLAS GEOGRÁFICAS -
SELECT * 
 FROM geometry_columns;

----- CREANDO FEACTURES SIMPLES ----------
CREATE TABLE geometrias (
 	name VARCHAR,
	geom VARCHAR
	);

----- EDITANDO TABLA ---------------------
ALTER TABLE geometrias 
	ADD id VARCHAR;

----- VISUALIZANDO LA TABLA CREADA -------
SELECT * 
 FROM geometrias;

----- ORDENANDO LAS COLUMNAS CREADAS -----
ALTER TABLE geometrias 
	RENAME TO geometrias_old ;
	
CREATE TABLE geometrias(
	id VARCHAR,
	name VARCHAR,
	geom VARCHAR
	);

INSERT INTO 	
	geometrias (id, name, geom)
	SELECT id,name,geom
	FROM geometrias_old ;

---- ELIMINANDO TABLA ANTIGUA ------------
DROP
 TABLE geometrias_old;
 
---- VISUALIZANDO TABLA ORDENADA ---------
SELECT * 
 FROM geometrias ; 
 
---- EDITANDO LA TABLA CREADA ------------	
INSERT INTO geometrias  VALUES 
 ('01', 'Puntos'  , 'POINT (-77 -11)'),
 ('02', 'Línea'   , 'LINESTRING (-76 -13, -73 -11 ,-74 -12, -73 -13)'),
 ('03', 'Polígono', 'POLYGON ((-74 -8 , -77 -9 ,-76 -11, -74 -11, -74 -8))');

---- VISUALIZANDO LOS NUEVOS DATOS --------
SELECT *
 FROM geometrias ;

---- CREADO UN CAMPO DE ESPACIAL -----------
SELECT st_setsrid(st_geomfromewkt(geom),4326) as wtk 
 FROM geometrias; 
	