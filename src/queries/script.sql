create table servico (
    id_servico int not null primary key,
    id_profissional int not null foreign key,
    id_filial int not null foreign key,
    descricao varchar(100) not null,
    data datetime not null,
    valor float not null
)