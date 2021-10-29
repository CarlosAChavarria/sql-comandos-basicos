/* agrupamiento */

#SELECT * FROM sakila.film;
# SELECT * FROM film WHERE rental_duration = 3;

/* saber cuantos registros extraigo filtrado por un campo especifico */

# SELECT rental_duration, COUNT(film_id) AS "Total" FROM film WHERE rental_duration = 3;

/* agrupar elementos con group y ordenandola por decendencia*/

# SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY total ASC;

/* obtener promedio con AVG */
# SELECT AVG(replacement_cost) AS "Costo promedio" FROM film;

/* trae la suma de todos los elementos */
# SELECT SUM(replacement_cost) AS "Total de reemplazo" FROM film;

# SELECT max(replacement_cost) AS "Mayor" FROM film;
/* trayendo el numero mayor de un campo con todo el registro completo */
SELECT * FROM film ORDER BY replacement_cost desc LIMIT 1;
/* comporbacion */
SELECT * FROM film WHERE film_id = 34;