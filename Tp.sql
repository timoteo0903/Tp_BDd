create database Trabajo_Practico;

use trabajo_practico;

create table sucursal ( 
		id_sucursal varchar(5) not null,
        nombre varchar(25),
        ciudad varchar(25),
        primary key(id_sucursal)
        );
create table salas(
	id_sala varchar(5) not null,
    nombre varchar(25),
    id_sucursal varchar(5) not null,
    primary key (id_sala),
    foreign key (id_sucursal) references sucursal(id_sucursal)
    );

create table butaca (
	id_butaca varchar(5) not null,
    id_sala varchar(5) not null,
    ds_grupo_butaca varchar (30),
    primary key (id_butaca),
    foreign key (id_sala) references salas(id_sala)
    );

create table generos(
	id_genero varchar(5) not null ,
    ds_genero varchar (20),
    primary key (id_genero)
    );


create table pelicula(
	id_pelicula varchar(10) not null,
	nombre varchar (40),
	apt bool,
	id_genero varchar(5) not null ,
    primary key (id_pelicula),
    foreign key (id_genero) references generos ( id_genero)
    );
    
create table fecha (
	id_tie_fecha date not null,
    primary key (id_tie_fecha)
    );

create table funcion(
	id_funcion varchar (5) not null,
    id_pelicula varchar(10) not null,
    id_sala varchar(5) not null,
    fecha date not null,
    primary key (id_funcion),
    foreign key (id_pelicula ) references pelicula(id_pelicula),
    foreign key (id_sala) references salas ( id_sala),
    foreign key (fecha) references fecha (id_tie_fecha)
    );
create table entrada ( 
	id_entrada varchar(8) not null,
    id_butaca varchar(5) not null,
	id_funcion varchar (5) not null,
    cliente varchar (20),
    precio int(10),
    primary key (id_entrada),
    foreign key (id_butaca) references butaca (id_butaca),
	foreign key (id_funcion) references funcion (id_funcion)
    );
    

    
    
    
	
        