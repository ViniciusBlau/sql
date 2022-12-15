DROP TABLE IF EXISTS usuarios CASCADE;

CREATE TABLE usuarios (
  n int NOT NULL,
  nome varchar(100) DEFAULT NULL,
  PRIMARY KEY (n)
);

drop table if exists cartaos;

create table cartaos (
    n int not null,
    numero char(10) not null unique,
    usuario_n int not null,
    tipos_cartao char(30) not null,
    primary key (n),
    foreign key (usuario_n) references usuarios(n) 
);

drop table if exists funcionarios;

create table funcionarios (
  id int not null,
  nome varchar(100) DEFAULT null,
  cargo varchar(100) not null,
  primary key (id)
);

drop table if exists onibus;

create table onibus (
  id int not null,
  linha int not null,
  horario timestamp not null,
  primary key (id),
  foreign key (horario) references onibus(horario)
);

