
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/16/2022 02:35:07
-- Generated from EDMX file: C:\Users\OWNER\source\repos\WebApplication2\WebApplication2\Student.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Student];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RollNo] bigint  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [MiddleName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL,
    [EmailID] nvarchar(max)  NOT NULL,
    [MobileNumber] nvarchar(max)  NOT NULL,
    [Qualification] nvarchar(max)  NOT NULL,
    [Stream] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Pincode] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------