
CREATE TABLE Categoria (
                categoria_id INT NOT NULL,
                nombre VARCHAR(50) NOT NULL,
                PRIMARY KEY (categoria_id)
);


CREATE TABLE Detalle_pelicula (
                detalle_id INT NOT NULL,
                descripcion VARCHAR NOT NULL,
                generos VARCHAR(255) NOT NULL,
                elenco VARCHAR(255) NOT NULL,
                PRIMARY KEY (detalle_id)
);


CREATE TABLE Pelicula (
                pelicula_id INT NOT NULL,
                titulo VARCHAR(100) NOT NULL,
                ao_estreno INT NOT NULL,
                duracion VARCHAR(50) NOT NULL,
                clasificacion VARCHAR(20) NOT NULL,
                calidad VARCHAR(10) NOT NULL,
                porcentaje_coincidencia INT NOT NULL,
                detalle_id INT NOT NULL,
                PRIMARY KEY (pelicula_id)
);


CREATE TABLE Pelicula_categoria (
                pelicula_categoria_id INT NOT NULL,
                pelicula_id INT NOT NULL,
                categoria_id INT NOT NULL,
                PRIMARY KEY (pelicula_categoria_id)
);


ALTER TABLE Pelicula_categoria ADD CONSTRAINT categoria_pelicula_categoria_fk
FOREIGN KEY (categoria_id)
REFERENCES Categoria (categoria_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Pelicula ADD CONSTRAINT detalle_pelicula_pelicula_fk
FOREIGN KEY (detalle_id)
REFERENCES Detalle_pelicula (detalle_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Pelicula_categoria ADD CONSTRAINT pelicula_pelicula_categoria_fk
FOREIGN KEY (pelicula_id)
REFERENCES Pelicula (pelicula_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
