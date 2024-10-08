# Desafío - Definición de Tablas

## Descripción

Se requiere crear un sitio web dedicado al mundo cinematográfico donde los usuarios puedan buscar detalles del top 100 de películas más populares. El plus más importante de este sitio web debe ser la variedad de filtros que ofrece para una búsqueda más efectiva. Para este desafío, se necesitan crear dos tablas llamadas `películas` y `reparto`, cuyos datos se obtienen de los ficheros de extensión CSV ubicados en el documento "Apoyo Desafío".

## Requerimientos

1. Crear una base de datos llamada `películas`.
2. Cargar ambos archivos a su tabla correspondiente.
3. Obtener el ID de la película “Titanic”.
4. Listar a todos los actores que aparecen en la película "Titanic".
5. Consultar en cuántas películas del top 100 participa Harrison Ford.
6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
7. Hacer una consulta SQL que muestre los títulos con su longitud, nombrando la longitud como “longitud_titulo”.
8. Consultar cuál es la longitud más grande entre todos los títulos de las películas.

## Ejecución de Consultas en PostgreSQL

Las consultas solicitadas se llevaron a cabo en PostgreSQL, donde se creó la tabla `peliculas` y se establecieron las tablas necesarias para almacenar la información. Posteriormente, se importaron los datos desde archivos CSV correspondientes a las películas y su reparto. Finalmente, toda la información y las consultas realizadas se trasladaron a Visual Studio Code a través de un archivo `.sql` para su revisión y presentación.

Los resultados de cada pregunta estan en el archivo **peliculas.sql**

## Autora

Karen Limarí
