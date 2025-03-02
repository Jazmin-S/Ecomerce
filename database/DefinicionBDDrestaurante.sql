CREATE DATABASE Restaurant;
USE Restaurant;

CREATE TABLE Mesero (
    idMesero INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    PRIMARY KEY (idMesero)
);

CREATE TABLE Orden (
    idOrden INTEGER NOT NULL AUTO_INCREMENT,
    idMesero INTEGER NOT NULL,
    numMesa INTEGER NOT NULL UNIQUE,
    Fecha_hora DATETIME NOT NULL,
    PRIMARY KEY (idOrden)
);

CREATE TABLE Platillo (
    idPlatillo INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio FLOAT NOT NULL,
    Descripcion VARCHAR(255) NOT NULL,
    modoPreparacion TEXT NULL,
    tiempoPreparacion VARCHAR(50) NULL,
    tipoPlatillo varchar(50) NOT NULL,
    PRIMARY KEY (idPlatillo)
);

CREATE TABLE Platillos_Solicitados (
    idOrden INTEGER NOT NULL,
    idPlatillo INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    PRIMARY KEY (idOrden, idPlatillo)
);

CREATE TABLE Pago (
    idPago INT NOT NULL AUTO_INCREMENT,
    Monto FLOAT NOT NULL,
    Fecha DATE NOT NULL,
    tipoPago varchar(50) NOT NULL,
    PRIMARY KEY (idPago)
);

CREATE TABLE Ventas (
    Folio INTEGER NOT NULL AUTO_INCREMENT,
    idPago INTEGER NOT NULL,
    idOrden INTEGER NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY (Folio)
);

CREATE TABLE Platillos_Consumidos (
    FolioVenta INTEGER NOT NULL,
    idPlatillo INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    PRIMARY KEY (FolioVenta, idPlatillo)
);

ALTER TABLE Orden ADD CONSTRAINT 
fk_orden_1 FOREIGN KEY (idMesero) 
REFERENCES Mesero(idMesero);

ALTER TABLE Platillos_Solicitados ADD CONSTRAINT 
fk_platillossolicitados_1 FOREIGN KEY (idOrden) 
REFERENCES Orden(idOrden);

ALTER TABLE Platillos_Solicitados ADD CONSTRAINT 
fk_platillossolicitados_2 FOREIGN KEY (idPlatillo) 
REFERENCES Platillo(idPlatillo);

ALTER TABLE Ventas ADD CONSTRAINT 
fk_ventas_1 FOREIGN KEY (idPago) 
REFERENCES Pago(idPago);

ALTER TABLE Ventas ADD CONSTRAINT 
fk_ventas_2 FOREIGN KEY (idOrden) 
REFERENCES Orden(idOrden);

ALTER TABLE Platillos_Consumidos ADD CONSTRAINT 
fk_platillosconsumidos_1 FOREIGN KEY (FolioVenta) 
REFERENCES Ventas(Folio);

ALTER TABLE Platillos_Consumidos ADD CONSTRAINT 
fk_platillosconsumidos_2 FOREIGN KEY (idPlatillo) 
REFERENCES Platillo(idPlatillo)ON DELETE CASCADE;

