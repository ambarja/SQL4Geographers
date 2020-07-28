## Consultas SQl: Unión de datos

    1.Primero, podemos empezar a unir datos definiendo las tablas que trabajaremos
    usando la instrucción Select. Nosotros usaremos las tablas 'sector' y 'subsector'.

    select * from sector
    select * from subsector;
#### *Inner join*

     2.La cláusula 'inner join' es la más importante de las sentencias 'join',
     debido que se esta solo presentará como resultado los datos que cumplen con la
     condición de la selección.

<img alt="05SentenciasJoin-7_innerJoin1.jpg" src="assets/05SentenciasJoin-7_innerJoin1.jpg" width="200" height="200" >

    3.Tener en cuenta que si ambas tablas están correctamente enlazadas
    por una relación de clave externa (foreign key), podemor relacionar información
    mayor del siguiente modo:

    select * from sector
    inner join subsector
    on sector.id=subsector.id_sector

<img alt="05SentenciasJoin-8_innerJoin2_keyforeign.jpg" src="assets/05SentenciasJoin-8_innerJoin2_keyforeign.jpg" width="200" height="200" >


  *Unir colummnas de distintas tablas nos será de mucha ayuda para realizar consultas!*
