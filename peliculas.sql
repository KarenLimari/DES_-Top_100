--1. Crear una base de datos que se llame peliculas
postgres=#
CREATE DATABASE peliculas;
CREATE DATABASE
postgres=#
\c peliculas;
Ahora está conectado a la base de datos «peliculas» con el usuario «postgres».

peliculas=#
CREATE TABLE peliculas(id INT PRIMARY KEY, pelicula VARCHAR(100) NOT NULL, "Año estreno" INT NOT NULL, director VARCHAR(100) NOT NULL);
CREATE TABLE
peliculas=#
CREATE TABLE reparto(id SERIAL PRIMARY KEY, id_pelicula INT NOT NULL, nombre_actor VARCHAR(100) NOT NULL, FOREIGN KEY (id_pelicula) REFERENCES peliculas(id));
CREATE TABLE

--2. Cargar ambos archivos a su tabla correspondiente.

peliculas=#
\copy peliculas(id, pelicula, "Año estreno", director) FROM 'C:\Users\karen\bootcamppython\BOOTCAMP\M5\DES_ Top_100\peliculas.csv'DELIMITER ',' CSV HEADER;
COPY 100
peliculas=#
\copy reparto(id_pelicula, nombre_actor) FROM 'C:\Users\karen\bootcamppython\BOOTCAMP\M
5\DES_ Top_100\reparto.csv'DELIMITER ',' CSV HEADER;
COPY 1051

peliculas=#
SELECT * FROM peliculas;

 id  |                       pelicula                        | Año estreno |       director
   1 | Forest Gump                                           |        1994 | Robert Zemeckis
   2 | Titanic                                               |        1997 | James Cameron
   3 | El Padrino                                            |        1972 | Francis Ford Coppola
   4 | Gladiator                                             |        2000 | Ridley Scott
   5 | El Se├▒or de los anillos: El retorno del rey          |        2003 | Peter Jackson
   6 | El caballero oscuro                                   |        2008 | Christopher Nolan
   7 | Cadena perpetua                                       |        1994 | Frank Darabont
   8 | Piratas del Caribe: La maldici├│n de la Perla Negra   |        2003 | Gore Verbinski
   9 | Braveheart                                            |        1995 | Mel Gibson
  10 | La lista de Schindler                                 |        1993 | Steven Spielberg
  11 | Toy Story                                             |        1995 | John Lasseter
  12 | Eduardo Manostijeras                                  |        1990 | Tim Burton
  13 | El Se├▒or de los anillos: La comunidad del anillo     |        2001 | Peter Jackson
  14 | Salvar al soldado Ryan                                |        1998 | Steven Spielberg
  15 | Regreso al futuro                                     |        1985 | Robert Zemeckis
  16 | Monstruos S.A.                                        |        2001 | Pete Docter
  17 | Buscando a Nemo                                       |        2003 | Andrew Stanton
  18 | El Se├▒or de los anillos: Las dos torres              |        2002 | Peter Jackson
  19 | Harry Potter y el Prisionero de Azkaban               |        2004 | Alfonso Cuar├│n
  20 | American History X                                    |        1998 | Tony Kaye
  21 | 300                                                   |        2007 | Zack Snyder
  22 | El sexto sentido                                      |        1999 | M. Night Shyamalan
  23 | Pulp Fiction                                          |        1994 | Quentin Tarantino
  24 | V de Vendetta                                         |        2005 | James McTeigue
  25 | El silencio de los corderos                           |        1991 | Jonathan Demme
  26 | Rocky                                                 |        1976 | John G. Avildsen
  27 | El club de la pelea                                   |        1999 | David Fincher
  28 | E.T                                                   |        1982 | Steven Spielberg
  29 | Parque Jur├ísico                                      |        1993 | Steven Spielberg
  30 | Matrix                                                |        1999 | Andy y Lana Wachowski
  31 | La milla verde                                        |        1999 | Frank Darabont
  32 | Ratatouille                                           |        2007 | Brad Bird
  33 | Grease                                                |        1978 | Randal Kleiser
  34 | El Padrino. Parte II                                  |        1974 | Francis Ford Coppola
  35 | Wall-E                                                |        2008 | Andrew Stanton
  36 | Iron Man                                              |        2008 | Jon Favreau
  37 | El exorcista                                          |        1973 | William Friedkin
  38 | Piratas del Caribe: El cofre del hombre muerto        |        2006 | Gore Verbinski
  39 | Seven                                                 |        1995 | David Fincher
  40 | Terminator 2: el juicio final                         |        1991 | James Cameron
  41 | El resplandor                                         |        1980 | Stanley Kubrick
  42 | Hombres de negro                                      |        1997 | Barry Sonnenfeld
  43 | Spider-Man                                            |        2002 | Sam Raimi
  44 | Regreso al futuro II                                  |        1989 | Robert Zemeckis
  45 | El show de Truman                                     |        1998 | Peter Weir
  46 | Toy Story 2                                           |        1999 | John Lasseter
  47 | Pesadilla antes de navidad                            |        1993 | Henry Selick
  48 | Star Wars. Episodio IV: Una nueva esperanza           |        1977 | George Lucas
  49 | Saw                                                   |        2004 | James Wan
  50 | Terminator                                            |        1984 | James Cameron
  51 | Kill Bill Vol. 1                                      |        2003 | Quentin Tarantino
  52 | Lo que el viento se llev├│                            |        1939 | Victor Fleming
  53 | El Laberinto del Fauno                                |        2006 | Guillermo del Toro
  54 | Los incre├¡bles                                       |        2004 | Brad Bird
  55 | El viaje de Chihiro                                   |        2001 | Hayao Miyazaki
  56 | El precio del poder                                   |        1983 | Brian De Palma
  57 | King Kong                                             |        2005 | Peter Jackson
  58 | Ben-Hur                                               |        1959 | William Wyler
  59 | Indiana Jones y la ├║ltima cruzada                    |        1989 | Steven Spielberg
  60 | Infiltrados                                           |        2006 | Martin Scorsese
  61 | Entrevista con el vampiro                             |        1994 | Neil Jordan
  62 | Batman Begins                                         |        2005 | Christopher Nolan
  63 | En busca del arca perdida                             |        1981 | Steven Spielberg
  64 | Star Wars. Episodio III: La venganza de los Sith      |        2005 | George Lucas
  65 | Alien                                                 |        1979 | Ridley Scott
  66 | El bueno el feo y el malo                             |        1966 | Sergio Leone
  67 | Star Wars. Episodio V: El imperio contraataca         |        1980 | Irvin Kershner
  68 | El Padrino. Parte III                                 |        1990 | Francis Ford Coppola
  69 | Star Wars. Episodio VI: El retorno del Jedi           |        1983 | Richard Marquand
  70 | Escuela de Rock                                       |        2003 | Richard Linklater
  71 | El planeta de los simios                              |        1968 | Franklin J. Schaffner
  72 | Rambo                                                 |        1982 | Ted Kotcheff
  73 | Full Metal Jacket                                     |        1987 | Stanley Kubrick
  74 | Tibur├│n                                              |        1975 | Steven Spielberg
  75 | El profesional                                        |        1994 | Luc Besson
  76 | American Beauty                                       |        1999 | Sam Mendes
  77 | Casablanca                                            |        1942 | Michael Curtiz
  78 | Am├®lie                                               |        2001 | Jean-Pierre Jeunet
  79 | Trainspotting                                         |        1996 | Danny Boyle
  80 | axi driver                                            |        1976 | Martin Scorsese
  81 | Alguien vol├│ sobre el nido del cuco                  |        1975 | Milos Forman
  82 | Kill Bill Vol. 2                                      |        2004 | Quentin Tarantino
  83 | Spider-Man 2                                          |        2004 | Sam Raimi
  84 | X-Men 2                                               |        2003 | Bryan Singer
  85 | Transformers                                          |        2007 | Michael Bay
  86 | Star Wars. Episodio I: La amenaza fantasma            |        1999 | George Lucas
  87 | Blade Runner                                          |        1982 | Ridley Scott
  88 | Apocalypse Now                                        |        1979 | Francis Ford Coppola
  89 | Mejor... imposible                                    |        1997 | James L. Brooks
  90 | La vida de Brian                                      |        1979 | Terry Jones
  91 | El libro de la selva                                  |        1967 | Wolfgang Reitherman
  92 | Los cazafantasmas                                     |        1984 | Ivan Reitman
  93 | Sweeney Todd: El barbero diab├│lico de la calle Fleet |        2007 | Tim Burton
  94 | Oceans Eleven                                         |        2001 | Steven Spielberg
  95 | Blancanieves y los siete enanitos                     |        1937 | David Hand
  96 | Predator                                              |        1987 | John McTiernan
  97 | Indiana Jones y el templo maldito                     |        1984 | Steven Spielberg
  98 | Uno de los nuestros                                   |        1990 | Martin Scorsese
  99 | Mouling Rouge                                         |        2001 | Baz Luhrmann
 100 | Psicosis                                              |        1960 | Alfred Hitchcock
(100 filas)

peliculas=#
SELECT * FROM reparto;

  id  | id_pelicula |        nombre_actor
------+-------------+-----------------------------
    1 |           1 | Tom Hanks
    2 |           1 | Robin Wright Penn
    3 |           1 | Gary Sinise
    4 |           1 | Mykelti Williamson
    5 |           1 | Sally Field
-- Más  --
(1051 filas)

-- 3. Obtener el ID de la película “Titanic”.

peliculas=#
SELECT id FROM peliculas WHERE pelicula = 'Titanic';

id
----
  2
(1 fila)

-- 4. Listar todos los actores que apareceb en la pelicula "Titanic".

peliculas=#
SELECT nombre_actor FROM reparto WHERE id_pelicula = 2;
  nombre_actor
-------------------
Leonardo DiCaprio
Kate Winslet
Billy Zane
Kathy Bates
Frances Fisher
Bernard Hill
Jonathan Hyde
Danny Nucci
David Warner
Bill Paxton
Gloria Stuart
Victor Garber
Suzy Amis
(13 filas)

-- 5. Consultar en cuántas películas del top 100 participa Harrison Ford.

peliculas=#
SELECT COUNT(DISTINCT id_pelicula) as participacion_peliculas_HarrisonFord FROM reparto WHERE nombre_actor = 'Harrison Ford';
 participacion_peliculas_harrisonford
--------------------------------------
                                    8
(1 fila)

-- 6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.

peliculas=#
SELECT pelicula, "Año estreno" FROM peliculas WHERE "Año estreno" BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;

                  pelicula                  | Año estreno
--------------------------------------------+-------------
 American Beauty                            |        1999
 American History X                         |        1998
 Braveheart                                 |        1995
 Cadena perpetua                            |        1994
 Eduardo Manostijeras                       |        1990
 El club de la pelea                        |        1999
 El Padrino. Parte III                      |        1990
 El profesional                             |        1994
 El sexto sentido                           |        1999
 El show de Truman                          |        1998
 El silencio de los corderos                |        1991
 Entrevista con el vampiro                  |        1994
 Forest Gump                                |        1994
 Hombres de negro                           |        1997
 La lista de Schindler                      |        1993
 La milla verde                             |        1999
 Matrix                                     |        1999
 Mejor... imposible                         |        1997
 Parque Jur├ísico                           |        1993
 Pesadilla antes de navidad                 |        1993
 Pulp Fiction                               |        1994
 Salvar al soldado Ryan                     |        1998
 Seven                                      |        1995
 Star Wars. Episodio I: La amenaza fantasma |        1999
 Terminator 2: el juicio final              |        1991
 Titanic                                    |        1997
 Toy Story                                  |        1995
 Toy Story 2                                |        1999
 Trainspotting                              |        1996
 Uno de los nuestros                        |        1990
(30 filas)

-- 7. Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.

peliculas=#
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas;

                       pelicula                        | longitud_titulo
-------------------------------------------------------+-----------------
 Forest Gump                                           |              11
 Titanic                                               |               7
 El Padrino                                            |              10
 Gladiator                                             |               9
 El Se├▒or de los anillos: El retorno del rey          |              44
 El caballero oscuro                                   |              19
 Cadena perpetua                                       |              15
 Piratas del Caribe: La maldici├│n de la Perla Negra   |              51
 Braveheart                                            |              10
 La lista de Schindler                                 |              21
 Toy Story                                             |               9
 Eduardo Manostijeras                                  |              20
 El Se├▒or de los anillos: La comunidad del anillo     |              49
 Salvar al soldado Ryan                                |              22
 Regreso al futuro                                     |              17
 Monstruos S.A.                                        |              14
 Buscando a Nemo                                       |              15
 El Se├▒or de los anillos: Las dos torres              |              40
 Harry Potter y el Prisionero de Azkaban               |              39
 American History X                                    |              18
 300                                                   |               3
 El sexto sentido                                      |              16
 Pulp Fiction                                          |              12
 V de Vendetta                                         |              13
 El silencio de los corderos                           |              27
 Rocky                                                 |               5
 El club de la pelea                                   |              19
 E.T                                                   |               3
 Parque Jur├ísico                                      |              16
 Matrix                                                |               6
 La milla verde                                        |              14
 Ratatouille                                           |              11
 Grease                                                |               6
 El Padrino. Parte II                                  |              20
 Wall-E                                                |               6
 Iron Man                                              |               8
 El exorcista                                          |              12
 Piratas del Caribe: El cofre del hombre muerto        |              46
 Seven                                                 |               5
 Terminator 2: el juicio final                         |              29
 El resplandor                                         |              13
 Hombres de negro                                      |              16
 Spider-Man                                            |              10
 Regreso al futuro II                                  |              20
 El show de Truman                                     |              17
 Toy Story 2                                           |              11
 Pesadilla antes de navidad                            |              26
 Star Wars. Episodio IV: Una nueva esperanza           |              43
 Saw                                                   |               3
 Terminator                                            |              10
 Kill Bill Vol. 1                                      |              16
 Lo que el viento se llev├│                            |              26
 El Laberinto del Fauno                                |              22
 Los incre├¡bles                                       |              15
 El viaje de Chihiro                                   |              19
 El precio del poder                                   |              19
 King Kong                                             |               9
 Ben-Hur                                               |               7
 Indiana Jones y la ├║ltima cruzada                    |              34
 Infiltrados                                           |              11
 Entrevista con el vampiro                             |              25
 Batman Begins                                         |              13
 En busca del arca perdida                             |              25
 Star Wars. Episodio III: La venganza de los Sith      |              48
 Alien                                                 |               5
 El bueno el feo y el malo                             |              25
 Star Wars. Episodio V: El imperio contraataca         |              45
 El Padrino. Parte III                                 |              21
 Star Wars. Episodio VI: El retorno del Jedi           |              43
 Escuela de Rock                                       |              15
 El planeta de los simios                              |              24
 Rambo                                                 |               5
 Full Metal Jacket                                     |              17
 Tibur├│n                                              |               8
 El profesional                                        |              14
 American Beauty                                       |              15
 Casablanca                                            |              10
 Am├®lie                                               |               7
 Trainspotting                                         |              13
 axi driver                                            |              10
 Alguien vol├│ sobre el nido del cuco                  |              36
 Kill Bill Vol. 2                                      |              16
 Spider-Man 2                                          |              12
 X-Men 2                                               |               7
 Transformers                                          |              12
 Star Wars. Episodio I: La amenaza fantasma            |              42
 Blade Runner                                          |              12
 Apocalypse Now                                        |              14
 Mejor... imposible                                    |              18
 La vida de Brian                                      |              16
 El libro de la selva                                  |              20
 Los cazafantasmas                                     |              17
 Sweeney Todd: El barbero diab├│lico de la calle Fleet |              53
 Oceans Eleven                                         |              14
 Blancanieves y los siete enanitos                     |              33
 Predator                                              |               8
 Indiana Jones y el templo maldito                     |              33
 Uno de los nuestros                                   |              19
 Mouling Rouge                                         |              13
 Psicosis                                              |               8
(100 filas)

-- 8. Consultar cual es la longitud más grande entre todos los títulos de las películas.

peliculas=#
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas WHERE LENGTH(pelicula) = (SELECT MAX(LENGTH(pelicula)) FROM peliculas) LIMIT 1;

                       pelicula                        | longitud_titulo
-------------------------------------------------------+-----------------
 Sweeney Todd: El barbero diab├│lico de la calle Fleet |              53
(1 fila)