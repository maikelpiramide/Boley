create database boleybol;
use boleybol;

create table equipos{
    id int auto_increment,
    nombre varchar(255),
    puntos int,
    constraint pkEquipos primary key (id)
};

create table grupos{
    id int auto_increment,
    nombre varchar(255),
    idEquipo int,
    constraint pkGrupos primary key (id),
    constraint fkEquipoGrupo foreign key(idEquipo) references equipos(id)
};

create table partidos{
    id int auto_increment,
    idEquipo1 int,
    idEquipo2 int,
    p1 int,
    p2 int,
    f1 int,
    f2 int,
    constraint pkPartidos primary key (id),
    constraint fkEquipo1Partidos foreign key (idEquipo1) references grupos(id),
    constraint fkEquipo2Partidos foreign key (idEquipo2) references grupos(id)
};

create table sets{
    id int auto_increment,
    idPartido int,
    equipo1 int,
    equipo2 int,
    numero int,
    constraint pkSets primary key(id),
    constraint fkPartidoSets foreign key(IdPartido)
}