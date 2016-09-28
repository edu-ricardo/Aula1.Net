
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/27/2016 22:17:14
-- Generated from EDMX file: D:\Dev\A6LP2\VendasApp\VendasApp\VendasModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [VendasModel];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClienteVenda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vendas] DROP CONSTRAINT [FK_ClienteVenda];
GO
IF OBJECT_ID(N'[dbo].[FK_ClienteTelefone]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Telefones] DROP CONSTRAINT [FK_ClienteTelefone];
GO
IF OBJECT_ID(N'[dbo].[FK_ClienteEndereco]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Enderecos] DROP CONSTRAINT [FK_ClienteEndereco];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoriaProduto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Produtos] DROP CONSTRAINT [FK_CategoriaProduto];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutoItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_ProdutoItem];
GO
IF OBJECT_ID(N'[dbo].[FK_VendaItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_VendaItem];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Telefones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Telefones];
GO
IF OBJECT_ID(N'[dbo].[Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clientes];
GO
IF OBJECT_ID(N'[dbo].[Vendas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vendas];
GO
IF OBJECT_ID(N'[dbo].[Enderecos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Enderecos];
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

-- Creating table 'Telefones'
CREATE TABLE [dbo].[Telefones] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ddd] nvarchar(max)  NOT NULL,
    [Numero] nvarchar(max)  NOT NULL,
    [ClienteId] int  NOT NULL
);
GO

-- Creating table 'Clientes'
CREATE TABLE [dbo].[Clientes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Idade] int  NOT NULL
);
GO

-- Creating table 'Vendas'
CREATE TABLE [dbo].[Vendas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Data] datetime  NOT NULL,
    [ClienteId] int  NOT NULL
);
GO

-- Creating table 'Enderecos'
CREATE TABLE [dbo].[Enderecos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClienteId] int  NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL,
    [Logradouro] nvarchar(max)  NOT NULL,
    [Numero] int  NOT NULL
);
GO

-- Creating table 'Produtos'
CREATE TABLE [dbo].[Produtos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CategoriaId] int  NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Preco] float  NOT NULL,
    [PercImposto] float  NOT NULL
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
    [ProdutoId] int  NOT NULL,
    [VendaId] int  NOT NULL,
    [Preco] float  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Telefones'
ALTER TABLE [dbo].[Telefones]
ADD CONSTRAINT [PK_Telefones]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [PK_Clientes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Vendas'
ALTER TABLE [dbo].[Vendas]
ADD CONSTRAINT [PK_Vendas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Enderecos'
ALTER TABLE [dbo].[Enderecos]
ADD CONSTRAINT [PK_Enderecos]
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

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

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

-- Creating foreign key on [ClienteId] in table 'Telefones'
ALTER TABLE [dbo].[Telefones]
ADD CONSTRAINT [FK_ClienteTelefone]
    FOREIGN KEY ([ClienteId])
    REFERENCES [dbo].[Clientes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteTelefone'
CREATE INDEX [IX_FK_ClienteTelefone]
ON [dbo].[Telefones]
    ([ClienteId]);
GO

-- Creating foreign key on [ClienteId] in table 'Enderecos'
ALTER TABLE [dbo].[Enderecos]
ADD CONSTRAINT [FK_ClienteEndereco]
    FOREIGN KEY ([ClienteId])
    REFERENCES [dbo].[Clientes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteEndereco'
CREATE INDEX [IX_FK_ClienteEndereco]
ON [dbo].[Enderecos]
    ([ClienteId]);
GO

-- Creating foreign key on [CategoriaId] in table 'Produtos'
ALTER TABLE [dbo].[Produtos]
ADD CONSTRAINT [FK_CategoriaProduto]
    FOREIGN KEY ([CategoriaId])
    REFERENCES [dbo].[Categorias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoriaProduto'
CREATE INDEX [IX_FK_CategoriaProduto]
ON [dbo].[Produtos]
    ([CategoriaId]);
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------