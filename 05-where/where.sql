/* busqueda por campo */
/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/


# trae todos los datos contenidos en el rango especificado.
# SELECT * FROM actor WHERE actor_id BETWEEN 10 AND 50;

# trae todos los datos distintos al que se indica
#SELECT * FROM actor WHERE actor_id != 135;

# busca todos los datos que esten debajo de ese numero
# SELECT * FROM actor WHERE actor_id <= 63;

# selecciona un actor en especifivo
# SELECT * FROM actor WHERE actor_id = 135;

/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/

# SELECT * FROM actor WHERE first_name = "Chris" AND actor_id > 50;

/*
COMODINES: permite buscar por algun caracter o frase en espeficico
Cualquier cantidad de caracteres: %  
	dependiendo de donde este el smbolo % buscara que el caracter este al inicio o al final
    el caracter entre % caracter % busca que contenga el ese caracter en alguna parte de la cadena
Un caracter desconocido: _
*/

SELECT * FROM actor WHERE first_name LIKE "%a%" AND last_name LIKE "%y%";