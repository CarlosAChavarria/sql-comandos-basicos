/* renombrar tablas */
ALTER TABLE usuarios RENAME TO users;

/* cambiar el nombre de una columna y cambiando el tipo de dato*/
ALTER TABLE users CHANGE direccion dir VARCHAR(50); 

/* agregando columnas a una tabla*/
ALTER TABLE users ADD edad INT NOT NULL;

/* borrar una columna */
ALTER TABLE users DROP edad;