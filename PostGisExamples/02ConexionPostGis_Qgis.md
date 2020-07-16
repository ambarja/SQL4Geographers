## Conexión de PostGis desde Qgis

    1.Abrir Qgis y asegurarnos de tener el complemento DB Manager activado.


<img alt="02ConexionPostGis_Qgis-6_bd_complemento.jpg" src="assets/02ConexionPostGis_Qgis-6_bd_complemento.jpg" width="200" height="200" >

    2.Nos dirigimos al navegador de Qgis, y clickeamos en el ícono PostGIS>Conexión nueva
<img alt="02ConexionPostGis_Qgis-7_conexion_qgis_postgis.jpg" src="assets/02ConexionPostGis_Qgis-7_conexion_qgis_postgis.jpg" width="200" height="200" >

    3.Completamos la información dándole nombre a la tabla que quieres conectar, en nuestro caso la llamaremos 'puntos_ayacucho'. Recordamos antes, que habíamos creado una base de datos en Postgres llamada 'arqueologia_forense', pues la base en Qgis se contectará a esta última finalmente ;). Así que recomendamos tener abierto también Pg Admin (Postgres). Los datos que empezaremos a completar son los siguientes:

* nombre: *el que quieras*
* Anfitrión: localhost
* Puerto: 5432
* Base de datos: arqueologia_forense
* Nombre de usuario: *el que colocaste en Postgres*
* Contraseña: ídem! - te recomiendo apuntarlas, sino no conectará -
* Por último, puedes escoger entre la opciones en la parte inferior (como 'Buscar solo en esquema público') o dejarlo en blanco.

<img alt="02ConexionPostGis_Qgis-7_conexion_qgis_postgis.jpg" src="assets/02ConexionPostGis_Qgis-7_conexion_qgis_postgis.jpg" width="200" height="200" >
<img alt="02ConexionPostGis_Qgis-7b_conexion_qgis_postgis.jpg" src="assets/02ConexionPostGis_Qgis-7b_conexion_qgis_postgis.jpg" width="200" height="200">

    4.Tener lista la capa vectorial en Qgis que será exportada a la base de datos, en nuestro caso la capa 'puntos' hacia 'puntos_ayacucho'.
<img alt="02ConexionPostGis_Qgis-7c_conexion_qgis_postgis.jpg" src="assets/02ConexionPostGis_Qgis-7c_conexion_qgis_postgis.jpg" width="300" height="200" >

    5.Existen varios modos para agregar una capa vectorial en una base de datos, en nuestro caso escogemos dar click en el ícono 'Administrador de base de datos'>importar capa/archivo>aceptar
<img alt="02ConexionPostGis_Qgis-8_bd_qgis.jpg" src="assets/02ConexionPostGis_Qgis-8_bd_qgis.jpg" width="200" height="200" >
<img alt="02ConexionPostGis_Qgis-9_importar_capa_bd.jpg" src="assets/02ConexionPostGis_Qgis-9_importar_capa_bd.jpg" width="200" height="200" >

    6.Nos dirigimos al navegador de Qgis y ver que la capa 'puntos' ha sido agregada a la base de datos, y a su vez, en Postgres - haciendo refresh- podemos ver la capa 'puntos' en la base de datos 'arqueologia_forense' - tanto la vista de la tabla y su distribución espacial!-

<img alt="02ConexionPostGis_Qgis-10_verTabla_postgres.jpg" src="assets/02ConexionPostGis_Qgis-10_verTabla_postgres.jpg" width="200" height="200" >
<img alt="02ConexionPostGis_Qgis-11_geometry_viewer.jpg" src="assets/02ConexionPostGis_Qgis-11_geometry_viewer.jpg" width="300" height="200" >

*nota: en el siguiente capítulo (03), veremos como agregar un basemap a los puntos en Postgre!*
