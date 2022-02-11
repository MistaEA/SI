create database BIBLIOTECA;
use BIBLIOTECA;

create table Libros (
    idLibro int primary key not null,
    titulo varchar (45),
	autor varchar (20),
    editorial varchar (15),
    edicion varchar (20),
    anio int, 
    vols int,
    genero varchar (15),
	descripcion varchar (100),
	Catalogacion varchar(20),
	Seccion varchar (10));

create table Alumnos (
    matricula int primary key not null,
    nombreAlu varchar (10),
    apellidoAlu varchar (10),
    telefono varchar (10),
	especialidad varchar (20),
	Observacion varchar(60));

create table Prestamos(
    idPrestamo int primary key not null,
    matricula int,
    CONSTRAINT fk_Alumnos FOREIGN KEY (matricula) REFERENCES Alumnos (matricula),
    idLibros int,
    CONSTRAINT fk_Libros FOREIGN KEY (idLibros) REFERENCES Libros (idLibro));


	/*PROCEDIMIENTOS PARA AGREGAR INFORMACION*/
CREATE PROCEDURE insertLibros
    @idlibro int,
	@titulo varchar (45),
    @autor varchar (20),
    @editorial varchar (15),
    @edicion varchar (20),
    @anio int, 
    @vols int,
    @genero varchar (15),
	@descripcion varchar (100),
	@catalogacion varchar (20),
	@seccion varchar (10)

    as
    begin 
    Insert Into Libros (idLibro,titulo,autor,editorial,edicion,anio,vols,genero,descripcion,Catalogacion,Seccion)
                values (@idlibro, @titulo,@autor,@editorial,@edicion,@anio,@vols,@genero,@descripcion,@catalogacion,@seccion);
    Select * from Libros;
    end
execute insertLibros 1,'Matar a un Ruiseñor', 'Harper Lee','Caurin','1ra Edicion','1960','0','Novela','','','';
    