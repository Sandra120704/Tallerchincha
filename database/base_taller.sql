CREATE DATABASE IF NOT EXISTS tallerchincha;
USE tallerchincha;

CREATE TABLE IF NOT EXISTS marcas (
    idmarca INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(40) NOT NULL,
    CONSTRAINT uk_marca_ma UNIQUE (marca)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS vehiculos (
    idvehiculo INT AUTO_INCREMENT PRIMARY KEY,
    idmarca INT NOT NULL,
    modelo VARCHAR(40) NOT NULL,
    color VARCHAR(40) NOT NULL,
    combustible ENUM('DIESEL', 'gasolina', 'GLP', 'gnv', 'Hidrido'),
    afabricacion CHAR(4) NOT NULL,
    condicion ENUM('Nuevo', 'Seminuevo'),
    CONSTRAINT fk_idmarca_veh FOREIGN KEY (idmarca) REFERENCES marcas(idmarca)
) ENGINE = InnoDB;

-- Insertar marcas necesarias
INSERT INTO marcas (marca) VALUES
    ('KIA'),
    ('Toyota'),
    ('Hyundai'),
    ('Nissan');

-- Insertar vehículos
INSERT INTO vehiculos (idmarca, modelo, color, combustible, afabricacion, condicion) VALUES 
    (1, 'Corolla', 'Blanco', 'gasolina', '2020', 'Nuevo'),
    (2, 'Civic', 'Negro', 'DIESEL', '2019', 'Seminuevo'),
    (3, 'Tucson', 'Gris', 'GLP', '2021', 'Nuevo'),
    (1, 'Yaris', 'Rojo', 'gnv', '2018', 'Seminuevo'),
    (4, 'Prius', 'Verde', 'Hidrido', '2022', 'Nuevo');
