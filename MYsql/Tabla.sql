CREATE DATABASE Base_de_datos; 
USE Base_de_datos;
Create table Usuarios( 
ID_usuarios Int,
Nombre VARCHAR(15),
Subnombre Varchar(45),
Email Varchar(20),
Contraseña Varchar(15),
Fotodeperfil Varchar(45),
Descripcion VARCHAR (50),
Lista_de_musicas_propias VARCHAR (10),
ID_buscador int,
ID_listademúsicas int
);

Create table Musicas(
ID_Músicas INT,
Título VARCHAR (15),
Genero VARCHAR (10),
ID_Artista VARCHAR (30),
Duracion VARCHAR (45),
Valoraciónes VARCHAR (50),
ID_artista INT, 
ID_usuarios INT
);

Create table Artista(
ID_Artista INT,
Nombre VARCHAR (30),
Imagen VARCHAR (45)
);

create table Valoraciones(
ID_usuarios INT,
ID_Valoraciones VARCHAR (45),
ID_Musica VARCHAR (45),
Puntuacion VARCHAR (45),
Comentario VARCHAR (50),
Fecha VARCHAR (8)
);

create table Buscador(
ID_Buscador INT,
Título VARCHAR (15),
Genero VARCHAR (15),
Artista VARCHAR (30),
Valoraciónes VARCHAR (45)
);

create table Lista_de_músicas(
ID_Listas_de_músicas INT,
ID_Músicas VARCHAR (45),
Nombre VARCHAR (15), 
Descripcion VARCHAR (50)
);
