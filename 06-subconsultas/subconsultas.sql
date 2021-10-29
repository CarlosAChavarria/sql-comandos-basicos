/* subconsultas */
/* consultas dentro de otras consultas */
#SELECT * FROM sakila.film_category; 
/* conocidas tambien como tablas pivote */
/* filtrar peliculas que sean de una categoria */
#SELECT * FROM film_category WHERE film_id = 4;

/* where campo in(), permite agregar diferentes valores del campo indicado */
# SELECT * FROM film WHERE film_id IN (1,3,4);

/* obtener todas las peliculas relacionadas a una categoria especifica */
# SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 5) LIMIT 5;
/* agregando un rango */
# SELECT * FROM film WHERE film_id BETWEEN 1 AND 10;

/* filtrado por actores */
SELECT title FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 1);