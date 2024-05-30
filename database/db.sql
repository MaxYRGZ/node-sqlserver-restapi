CREATE DATABASE ciberguarddb;
USE ciberguarddb;

CREATE TABLE products (
id INT IDENTITY(1, 1) PRIMARY KEY,
name VARCHAR(100) NOT NULL,
price DECIMAL(10, 2),
quantity INT,
description TEXT);

INSERT INTO products(name,description,quantity,price)VALUES ('mouse','mouse gaming',10, 100)

CREATE TABLE correos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    correo VARCHAR(1000) NOT NULL ,
    password VARCHAR(1000) NOT NULL
);
DROP TABLE correos

CREATE TABLE contrasena (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL
);
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario1', 'pass1234', '2023-01-15');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario2', 'securePass!45', '2022-11-22');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario3', 'abcXYZ789', '2023-03-10');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario4', 'randomPass9', '2023-05-05');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario5', 'mypassword123', '2022-12-30');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario6', 'superSecure$8', '2023-02-27');
