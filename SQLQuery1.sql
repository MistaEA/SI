create database BIBILIOTECA;
use BIBILIOTECA;

create table Libros (
    idLibro int primary key not null,
    autor varchar (20),
    editorial varchar (15),
    edicion varchar (20),
    anio int, 
    vols int,
    genero varchar (15));

create table Alumnos (
    matricula int primary key not null,
    nombreAlu varchar (10),
    apellidoAlu varchar (10),
    telefono varchar (10));

create table Prestamos(
    idPrestamo int primary key not null,
    matricula int,
    CONSTRAINT fk_Alumnos FOREIGN KEY (matricula) REFERENCES Alumnos (matricula),
    idLibros int,
    CONSTRAINT fk_Libros FOREIGN KEY (idLibros) REFERENCES Libros (idLibro));


	/*PROCEDIMIENTOS PARA AGREGAR INFORMACION*/
CREATE PROCEDURE insertLibros
    @idlibro int,
    @autor varchar (20),
    @editorial varchar (15),
    @edicion varchar (20),
    @anio int, 
    @vols int,
    @genero varchar (15)

    as
    begin 
    Insert Into Libros (idLibro,autor,editorial,edicion,anio,vols,genero)
                values (@idlibro, @autor,@editorial,@edicion,@anio,@vols,@genero);
    Select * from Libros;
    end

    