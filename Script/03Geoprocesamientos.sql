--- Creando una nueva vista ------
CREATE TABLE centroide AS
 SELECT st_centroid(geom) as geom
 FROM public."Provincias"
 WHERE NOMBDEP = 'CUSCO'

--- Visualizando resultados -------

SELECT * 
FROM public."centroide"

--- Creando polígonos de voroni ---

CREATE TABLE voroni as 
 SELECT (st_dump(st_voronoipolygons(st_collect(geom)))).geom as geom
 FROM public."centroide"
 
--- Visualizando los pol.voroni ----

SELECT *
FROM public."voroni"

--- Filtrando el dep de CUSCO -------
CREATE TABLE Cusco AS
	SELECT *
	FROM "Departamentos"
	WHERE NOMBDEP = 'CUSCO'


--- Aplicando corte -----------------

CREATE TABLE corte as 
  SELECT st_intersection(a.geom, b.geom) AS geom
  FROM cusco a
  CROSS JOIN voroni b
  
--- Visualizando la capa final ------
SELECT * 
FROM corte

--- Calular en area en m2 -----------
CREATE TABLE area_voroni AS
	SELECT * ,st_area(geom)as grados, 
	          st_area(st_transform((geom),32718))/1000000 as km2
	FROM corte  








  
  










 








