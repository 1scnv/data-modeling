create table servico (
    id_servico int not null primary key,
    id_profissional int not null foreign key,
    id_filial int not null foreign key,
    descricao varchar(100) not null,
    data datetime not null,
    valor float not null
)

create table cliente(
    id_cliente int not null primary key,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    telefone int(20) not null
)

create table profissional(
    id_profissional int not null primary key,
    nome varchar(100) not null,
    cargo varchar(100) not null
)

create table filial(
    id_filial int not null primary key,
    endereco varchar(100) not null,
    telefone int(20) not null,
    id_gerente int not null foreign key
)

create table gerente(
    id_gerente int not null primary key,
    nome varchar(100) not null,
    telefone int(20) not null,
    id_filial int(20) not null foreign key
)