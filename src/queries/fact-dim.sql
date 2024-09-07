-- Criação da tabela fato
CREATE TABLE [fato_servico] (
  [id_servico] integer PRIMARY KEY,
  [id_cliente] integer,
  [id_profissional] integer,
  [id_filial] integer,
  [descricao] nvarchar(255),
  [data] date,
  [valor] float
)
GO

--Criação das dimensões
CREATE TABLE [dim_cliente] (
  [id_cliente] integer PRIMARY KEY,
  [nome] nvarchar(255)
)
GO

CREATE TABLE [dim_profissional] (
  [id_profissional] integer PRIMARY KEY,
  [nome] nvarchar(255)
)
GO

CREATE TABLE [dim_filial] (
  [id_filial] integer PRIMARY KEY,
  [id_gerente] integer
)
GO

CREATE TABLE [dim_gerente] (
  [id_gerente] integer PRIMARY KEY,
  [nome] nvarchar(255)
)
GO

-- Adição das foreign keys
ALTER TABLE [fato_servico] ADD FOREIGN KEY ([id_cliente]) REFERENCES [dim_cliente] ([id_cliente])
GO

ALTER TABLE [fato_servico] ADD FOREIGN KEY ([id_profissional]) REFERENCES [dim_profissional] ([id_profissional])
GO

ALTER TABLE [fato_servico] ADD FOREIGN KEY ([id_filial]) REFERENCES [dim_filial] ([id_filial])
GO

ALTER TABLE [dim_gerente] ADD FOREIGN KEY ([id_gerente]) REFERENCES [dim_filial] ([id_gerente])
GO