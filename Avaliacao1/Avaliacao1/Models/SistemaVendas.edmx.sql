
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/04/2016 20:10:49
-- Generated from EDMX file: D:\Dev\A6LP2\Avaliacao1\Avaliacao1\Models\SistemaVendas.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Avaliacao1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_VendaItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_VendaItem];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutoItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_ProdutoItem];
GO
IF OBJECT_ID(N'[dbo].[FK_ClienteVenda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vendas] DROP CONSTRAINT [FK_ClienteVenda];
GO
IF OBJECT_ID(N'[dbo].[FK_VendedorVenda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vendas] DROP CONSTRAINT [FK_VendedorVenda];
GO
IF OBJECT_ID(N'[dbo].[FK_LojaVenda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vendas] DROP CONSTRAINT [FK_LojaVenda];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoriaCliente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_CategoriaCliente];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Vendas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vendas];
GO
IF OBJECT_ID(N'[dbo].[Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clientes];
GO
IF OBJECT_ID(N'[dbo].[Lojas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lojas];
GO
IF OBJECT_ID(N'[dbo].[Vendedores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vendedores];
GO
IF OBJECT_ID(N'[dbo].[Produtos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Produtos];
GO
IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[Items]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Items];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Vendas'
CREATE TABLE [dbo].[Vendas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Data] datetime  NOT NULL,
    [ClienteId] int  NOT NULL,
    [VendedorId] int  NOT NULL,
    [LojaId] int  NOT NULL
);
GO

-- Creating table 'Clientes'
CREATE TABLE [dbo].[Clientes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Idade] int  NOT NULL,
    [Telefone] nvarchar(max)  NOT NULL,
    [Cpf] nvarchar(max)  NOT NULL,
    [CategoriaId] int  NOT NULL
);
GO

-- Creating table 'Lojas'
CREATE TABLE [dbo].[Lojas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RazaoSocial] nvarchar(max)  NOT NULL,
    [Cnpj] nvarchar(max)  NOT NULL,
    [Matriz] bit  NOT NULL,
    [RedeId] int  NOT NULL
);
GO

-- Creating table 'Vendedores'
CREATE TABLE [dbo].[Vendedores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Telefone] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Produtos'
CREATE TABLE [dbo].[Produtos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL,
    [Preco] float  NOT NULL
);
GO

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Items'
CREATE TABLE [dbo].[Items] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Quantidade] int  NOT NULL,
    [Preco] float  NOT NULL,
    [VendaId] int  NOT NULL,
    [ProdutoId] int  NOT NULL
);
GO

-- Creating table 'Redes'
CREATE TABLE [dbo].[Redes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RazaoSocial] nvarchar(max)  NOT NULL,
    [Cnpj] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Vendas'
ALTER TABLE [dbo].[Vendas]
ADD CONSTRAINT [PK_Vendas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [PK_Clientes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Lojas'
ALTER TABLE [dbo].[Lojas]
ADD CONSTRAINT [PK_Lojas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Vendedores'
ALTER TABLE [dbo].[Vendedores]
ADD CONSTRAINT [PK_Vendedores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Produtos'
ALTER TABLE [dbo].[Produtos]
ADD CONSTRAINT [PK_Produtos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [PK_Items]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Redes'
ALTER TABLE [dbo].[Redes]
ADD CONSTRAINT [PK_Redes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [VendaId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [FK_VendaItem]
    FOREIGN KEY ([VendaId])
    REFERENCES [dbo].[Vendas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendaItem'
CREATE INDEX [IX_FK_VendaItem]
ON [dbo].[Items]
    ([VendaId]);
GO

-- Creating foreign key on [ProdutoId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [FK_ProdutoItem]
    FOREIGN KEY ([ProdutoId])
    REFERENCES [dbo].[Produtos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProdutoItem'
CREATE INDEX [IX_FK_ProdutoItem]
ON [dbo].[Items]
    ([ProdutoId]);
GO

-- Creating foreign key on [ClienteId] in table 'Vendas'
ALTER TABLE [dbo].[Vendas]
ADD CONSTRAINT [FK_ClienteVenda]
    FOREIGN KEY ([ClienteId])
    REFERENCES [dbo].[Clientes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteVenda'
CREATE INDEX [IX_FK_ClienteVenda]
ON [dbo].[Vendas]
    ([ClienteId]);
GO

-- Creating foreign key on [VendedorId] in table 'Vendas'
ALTER TABLE [dbo].[Vendas]
ADD CONSTRAINT [FK_VendedorVenda]
    FOREIGN KEY ([VendedorId])
    REFERENCES [dbo].[Vendedores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendedorVenda'
CREATE INDEX [IX_FK_VendedorVenda]
ON [dbo].[Vendas]
    ([VendedorId]);
GO

-- Creating foreign key on [LojaId] in table 'Vendas'
ALTER TABLE [dbo].[Vendas]
ADD CONSTRAINT [FK_LojaVenda]
    FOREIGN KEY ([LojaId])
    REFERENCES [dbo].[Lojas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LojaVenda'
CREATE INDEX [IX_FK_LojaVenda]
ON [dbo].[Vendas]
    ([LojaId]);
GO

-- Creating foreign key on [CategoriaId] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [FK_CategoriaCliente]
    FOREIGN KEY ([CategoriaId])
    REFERENCES [dbo].[Categorias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoriaCliente'
CREATE INDEX [IX_FK_CategoriaCliente]
ON [dbo].[Clientes]
    ([CategoriaId]);
GO

-- Creating foreign key on [RedeId] in table 'Lojas'
ALTER TABLE [dbo].[Lojas]
ADD CONSTRAINT [FK_RedeLoja]
    FOREIGN KEY ([RedeId])
    REFERENCES [dbo].[Redes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RedeLoja'
CREATE INDEX [IX_FK_RedeLoja]
ON [dbo].[Lojas]
    ([RedeId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------