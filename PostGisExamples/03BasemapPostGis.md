## Visualización del mapa base en PostGIS

    1.Necesitaremos devolver la representación WKT a la
    geometría prefijada SRID. Para ello utilizaremos
    la capa 'puntos', especificando alguna característica
    en este caso la 'región'.

<img alt="03BasemapPostGis-12_st_asewkt_SRID.jpg" src="assets/03BasemapPostGis-12_st_asewkt_SRID.jpg" width="" height="" >


    2.Convertiremos en una nueva geometría según
    la requerida, en nuestro caso el EPSG:4326.
<img alt="03BasemapPostGis-13_st_transform_4326.jpg" src="assets/03BasemapPostGis-13_st_transform_4326.jpg" width="" height="" >       

    3.Actualizamos el archivo en Qgis, y lo volvemos a
    cargar en la base como shape denominado 'puntos2'

<img alt="03BasemapPostGis-14_actualiar_base.jpg" src="assets/03BasemapPostGis-14_actualiar_base.jpg" width="200" height="200" >

<img alt="03BasemapPostGis-15_cargar_shape.jpg" src="assets/03BasemapPostGis-15_cargar_shape.jpg" width="200" height="200" >

    4.Llevar el shape a la base de datos!

   <img alt="03BasemapPostGis-16_puntos2_base.jpg" src="assets/03BasemapPostGis-16_puntos2_base.jpg" width="" height="" >


    5.Actualizar tabla en PostgreSQL  y ver tabla Puntos2.
<img alt="03BasemapPostGis-17_basemap_yuhu.jpg" src="assets/03BasemapPostGis-17_basemap_yuhu.jpg" width="" height="" >


*Este es uno de los modos, usando Qgis!*
