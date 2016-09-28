
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/27/2016 20:10:13
-- Generated from EDMX file: D:\Dev\A6LP2\ModelFirst\ModelFirst\Model\EscolaOnline.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [labefmodelfirst];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Cursos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cursos];
GO
IF OBJECT_ID(N'[dbo].[Modulos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Modulos];
GO
IF OBJECT_ID(N'[dbo].[Atividades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Atividades];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Cursos'
CREATE TABLE [dbo].[Cursos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Titulo] nvarchar(max)  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Modulos'
CREATE TABLE [dbo].[Modulos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Titulo] nvarchar(max)  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL,
    [CursoId] int  NOT NULL
);
GO

-- Creating table 'Atividades'
CREATE TABLE [dbo].[Atividades] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL,
    [ModuloId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Cursos'
ALTER TABLE [dbo].[Cursos]
ADD CONSTRAINT [PK_Cursos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Modulos'
ALTER TABLE [dbo].[Modulos]
ADD CONSTRAINT [PK_Modulos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Atividades'
ALTER TABLE [dbo].[Atividades]
ADD CONSTRAINT [PK_Atividades]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CursoId] in table 'Modulos'
ALTER TABLE [dbo].[Modulos]
ADD CONSTRAINT [FK_CursoModulo]
    FOREIGN KEY ([CursoId])
    REFERENCES [dbo].[Cursos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CursoModulo'
CREATE INDEX [IX_FK_CursoModulo]
ON [dbo].[Modulos]
    ([CursoId]);
GO

-- Creating foreign key on [ModuloId] in table 'Atividades'
ALTER TABLE [dbo].[Atividades]
ADD CONSTRAINT [FK_ModuloAtividade]
    FOREIGN KEY ([ModuloId])
    REFERENCES [dbo].[Modulos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ModuloAtividade'
CREATE INDEX [IX_FK_ModuloAtividade]
ON [dbo].[Atividades]
    ([ModuloId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------