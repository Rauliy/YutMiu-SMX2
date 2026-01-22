create database Tabla;
USE tabla; 
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
Subnombre VARCHAR(30),
Imagen VARCHAR (45)
);

insert into Usuarios (ID_usuarios, Nombre, Subnombre, Email, Contraseña, Fotodeperfil, Descripcion, Lista_de_musicas_propias, ID_buscador, ID_listademúsicas)
values (12, "Pep", "Pepe", "pepito", "popete", "popeye", "popote", "popeta", 13, 14);

insert into Musicas (ID_Músicas, Título, Genero, ID_Artista, Duracion, Valoraciónes, ID_artista, ID_usuarios)
values (15, "musica", "pop", 16, "minutos", "valoraciones", "16", "17");

insert into Artista (ID_Artista, Nombre, Imagen)
values (18, "Nachote", "imagen");

delete from Usuarios 
where Nombre (15) and Subnombre (45) and Email (20);

delete from Musicas
where Título (20) and Genero (15) and Duracion (30);

delete from Artista
where Nombre (20) and Subnombre (20);

UPDATE Usuarios
SET Nombre = "Juan"
WHERE ID_Usuarios = 112;

UPDATE Musicas
SET Título = 132
WHERE ID_Musicas = 113;

UPDATE Artista
SET Nombre = "Nachote"
WHERE ID_Artista = 114;


