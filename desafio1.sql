-- creamos la base de datos

CREATE DATABASE desafio_marco_camargo_123;

--selecciono la base de datos

\c desafio_marco_camargo_123;

--creamos la tabla

CREATE TABLE client(
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  client_name VARCHAR,
  phone VARCHAR(16),
  company VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);

--Ingresa 5 clientes distintos con distintas prioridades, el resto de los valores los puedes inventar

INSERT INTO client (email, client_name, phone, company, priority) VALUES ('gonzalo@gmail.com', 'Gonzalo', '123456789', 'Google', 7),
('roberto@gmail.com', 'Roberto', '123456789', 'Facebook', 3),('Felipe@gmail.com', 'Felipe', '123456789', 'Amazon', 8),
('devora@gmail.com', 'Devora', '123456789', 'Microsoft', 5),('marlyn@gmail.com', 'Marlyn', '123456789', 'Apple', 10);

--Selecciona los tres clientes de mayor prioridad

SELECT * FROM client ORDER BY priority DESC, id ASC LIMIT 3;

-- Selecciona, de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros.

SELECT * FROM client WHERE priority = 10 OR company = 'Facebook';

-- Sal de postgreSQL

\q