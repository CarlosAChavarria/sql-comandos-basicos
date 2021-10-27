/* creacion de tabla*/
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(255) NOT NULL,
    contrasenia VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    /*CONSTRAINT define de forma explicita la restriccion de la llave primaria en el campo id*/
    CONSTRAINT pk_usuario PRIMARY KEY(id)
);