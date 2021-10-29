/* JOINS - sirven para unir tablas a traves de especificacion de columnas*/
/* une las tablas pero aun no tienen relacion */
#SELECT * FROM actor, film_text;

/* une las tablas pero no hay relacion directa e incluso los duplica */
#SELECT * FROM actor, film_actor;

/* join evita la duplicidad de los campos */
#SELECT city_id, city, country FROM city INNER JOIN country ON city.country_id = country.country_id; 
/* otra forma de hacerlo es: */
#SELECT city_id, city, country FROM city, country WHERE city.country_id = country.country_id;

/* ejercicio imprimiendo peliculas por actor film_id, first_name, last_name, title */
SELECT film.film_id, first_name, last_name, title FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 1;
/* otra forma */
SELECT film_id, first_name, last_name, title FROM film 
INNER JOIN actor ON actor_id = 5
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);

SELECT * FROM departamentos
JOIN empleados ON departamentos.ID = empleados.DepartamentoId;

/* USO DE ALIAS */
SELECT * FROM departamentos d
JOIN empleados ON d.ID = empleados.DepartamentoId;

/* Join - trae los datos de la interseccion */
SELECT Id, e.Nombre, d.Nombre AS "Nombre departamento" FROM departamentos d JOIN
empleados e ON d.Id = e.DepartamentoId;

/*left join - trae los datos de la interseccion y los de la primera tabla */
SELECT Id, e.Nombre, d.Nombre AS "Nombre departamento" FROM departamentos d LEFT JOIN
empleados e ON d.Id = e.DepartamentoId;

/* rigth join - trae los datos de la interseccion y de la tabla de la derecha */
SELECT Id, e.Nombre, d.Nombre AS "Nombre departamento" FROM departamentos d RIGHT JOIN
empleados e ON d.Id = e.DepartamentoId;

/* FULL JOIN - trae todos los datos de la union y de las tablas unidas*/
SELECT * FROM departamentos FULL JOIN empleados WHERE departamentos.Id = empleados.DepartamentoId;