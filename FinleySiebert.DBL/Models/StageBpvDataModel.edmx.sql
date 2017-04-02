
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/29/2017 13:16:10
-- Generated from EDMX file: C:\Users\Legacy\Desktop\MVC Website\FinleySiebert.DBL\Models\StageBpvDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Survey];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PermissionRole_Permission]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PermissionRole] DROP CONSTRAINT [FK_PermissionRole_Permission];
GO
IF OBJECT_ID(N'[dbo].[FK_PermissionRole_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PermissionRole] DROP CONSTRAINT [FK_PermissionRole_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRole_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_User];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRole_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRole1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_UserRole1];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfilePageUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_ProfilePageUser];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupEducation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Group] DROP CONSTRAINT [FK_GroupEducation];
GO
IF OBJECT_ID(N'[dbo].[FK_EducationSchool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Education] DROP CONSTRAINT [FK_EducationSchool];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupProfilePage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfilePage] DROP CONSTRAINT [FK_GroupProfilePage];
GO
IF OBJECT_ID(N'[dbo].[FK_InternshipProfilePage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Internship] DROP CONSTRAINT [FK_InternshipProfilePage];
GO
IF OBJECT_ID(N'[dbo].[FK_InternshipProfilePage1_Internship]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InternshipProfilePage1] DROP CONSTRAINT [FK_InternshipProfilePage1_Internship];
GO
IF OBJECT_ID(N'[dbo].[FK_InternshipProfilePage1_ProfilePage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InternshipProfilePage1] DROP CONSTRAINT [FK_InternshipProfilePage1_ProfilePage];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Permission]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Permission];
GO
IF OBJECT_ID(N'[dbo].[Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO
IF OBJECT_ID(N'[dbo].[ProfilePage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfilePage];
GO
IF OBJECT_ID(N'[dbo].[Education]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Education];
GO
IF OBJECT_ID(N'[dbo].[School]', 'U') IS NOT NULL
    DROP TABLE [dbo].[School];
GO
IF OBJECT_ID(N'[dbo].[Group]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Group];
GO
IF OBJECT_ID(N'[dbo].[Internship]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Internship];
GO
IF OBJECT_ID(N'[dbo].[PermissionRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PermissionRole];
GO
IF OBJECT_ID(N'[dbo].[UserRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRole];
GO
IF OBJECT_ID(N'[dbo].[InternshipProfilePage1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InternshipProfilePage1];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Permission'
CREATE TABLE [dbo].[Permission] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Role'
CREATE TABLE [dbo].[Role] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [IsBanned] bit  NOT NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LoginName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Updated] datetime  NOT NULL,
    [ProfilePageId] int  NOT NULL,
    [PrimaryRole_Id] int  NOT NULL
);
GO

-- Creating table 'ProfilePage'
CREATE TABLE [dbo].[ProfilePage] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Logo] nvarchar(max)  NULL,
    [Dob] datetime  NULL,
    [Description] nvarchar(max)  NULL,
    [Address] nvarchar(max)  NULL,
    [Phone] nvarchar(max)  NULL,
    [Zip] nvarchar(max)  NULL,
    [Kvk] int  NULL,
    [Btw] int  NULL,
    [StudentNumber] int  NULL,
    [GroupId] int  NOT NULL
);
GO

-- Creating table 'Education'
CREATE TABLE [dbo].[Education] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Level] int  NOT NULL,
    [Created] datetime  NOT NULL,
    [Updated] datetime  NULL,
    [School_Id] int  NOT NULL
);
GO

-- Creating table 'School'
CREATE TABLE [dbo].[School] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Logo] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Zip] nvarchar(max)  NOT NULL,
    [Created] datetime  NOT NULL
);
GO

-- Creating table 'Group'
CREATE TABLE [dbo].[Group] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Education_Id] int  NOT NULL
);
GO

-- Creating table 'Internship'
CREATE TABLE [dbo].[Internship] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Updated] datetime  NULL,
    [CompanyInternship_Id] int  NOT NULL
);
GO

-- Creating table 'PermissionRole'
CREATE TABLE [dbo].[PermissionRole] (
    [Permission_Id] int  NOT NULL,
    [Role_Id] int  NOT NULL
);
GO

-- Creating table 'UserRole'
CREATE TABLE [dbo].[UserRole] (
    [User_Id] int  NOT NULL,
    [Role_Id] int  NOT NULL
);
GO

-- Creating table 'InternshipProfilePage1'
CREATE TABLE [dbo].[InternshipProfilePage1] (
    [InternshipSchool_Id] int  NOT NULL,
    [StudentInternship_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Permission'
ALTER TABLE [dbo].[Permission]
ADD CONSTRAINT [PK_Permission]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Role'
ALTER TABLE [dbo].[Role]
ADD CONSTRAINT [PK_Role]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProfilePage'
ALTER TABLE [dbo].[ProfilePage]
ADD CONSTRAINT [PK_ProfilePage]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Education'
ALTER TABLE [dbo].[Education]
ADD CONSTRAINT [PK_Education]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'School'
ALTER TABLE [dbo].[School]
ADD CONSTRAINT [PK_School]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Group'
ALTER TABLE [dbo].[Group]
ADD CONSTRAINT [PK_Group]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Internship'
ALTER TABLE [dbo].[Internship]
ADD CONSTRAINT [PK_Internship]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Permission_Id], [Role_Id] in table 'PermissionRole'
ALTER TABLE [dbo].[PermissionRole]
ADD CONSTRAINT [PK_PermissionRole]
    PRIMARY KEY CLUSTERED ([Permission_Id], [Role_Id] ASC);
GO

-- Creating primary key on [User_Id], [Role_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [PK_UserRole]
    PRIMARY KEY CLUSTERED ([User_Id], [Role_Id] ASC);
GO

-- Creating primary key on [InternshipSchool_Id], [StudentInternship_Id] in table 'InternshipProfilePage1'
ALTER TABLE [dbo].[InternshipProfilePage1]
ADD CONSTRAINT [PK_InternshipProfilePage1]
    PRIMARY KEY CLUSTERED ([InternshipSchool_Id], [StudentInternship_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Permission_Id] in table 'PermissionRole'
ALTER TABLE [dbo].[PermissionRole]
ADD CONSTRAINT [FK_PermissionRole_Permission]
    FOREIGN KEY ([Permission_Id])
    REFERENCES [dbo].[Permission]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Role_Id] in table 'PermissionRole'
ALTER TABLE [dbo].[PermissionRole]
ADD CONSTRAINT [FK_PermissionRole_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PermissionRole_Role'
CREATE INDEX [IX_FK_PermissionRole_Role]
ON [dbo].[PermissionRole]
    ([Role_Id]);
GO

-- Creating foreign key on [User_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [FK_UserRole_User]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Role_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [FK_UserRole_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRole_Role'
CREATE INDEX [IX_FK_UserRole_Role]
ON [dbo].[UserRole]
    ([Role_Id]);
GO

-- Creating foreign key on [PrimaryRole_Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [FK_UserRole1]
    FOREIGN KEY ([PrimaryRole_Id])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRole1'
CREATE INDEX [IX_FK_UserRole1]
ON [dbo].[User]
    ([PrimaryRole_Id]);
GO

-- Creating foreign key on [ProfilePageId] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [FK_ProfilePageUser]
    FOREIGN KEY ([ProfilePageId])
    REFERENCES [dbo].[ProfilePage]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfilePageUser'
CREATE INDEX [IX_FK_ProfilePageUser]
ON [dbo].[User]
    ([ProfilePageId]);
GO

-- Creating foreign key on [Education_Id] in table 'Group'
ALTER TABLE [dbo].[Group]
ADD CONSTRAINT [FK_GroupEducation]
    FOREIGN KEY ([Education_Id])
    REFERENCES [dbo].[Education]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupEducation'
CREATE INDEX [IX_FK_GroupEducation]
ON [dbo].[Group]
    ([Education_Id]);
GO

-- Creating foreign key on [School_Id] in table 'Education'
ALTER TABLE [dbo].[Education]
ADD CONSTRAINT [FK_EducationSchool]
    FOREIGN KEY ([School_Id])
    REFERENCES [dbo].[School]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EducationSchool'
CREATE INDEX [IX_FK_EducationSchool]
ON [dbo].[Education]
    ([School_Id]);
GO

-- Creating foreign key on [GroupId] in table 'ProfilePage'
ALTER TABLE [dbo].[ProfilePage]
ADD CONSTRAINT [FK_GroupProfilePage]
    FOREIGN KEY ([GroupId])
    REFERENCES [dbo].[Group]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupProfilePage'
CREATE INDEX [IX_FK_GroupProfilePage]
ON [dbo].[ProfilePage]
    ([GroupId]);
GO

-- Creating foreign key on [CompanyInternship_Id] in table 'Internship'
ALTER TABLE [dbo].[Internship]
ADD CONSTRAINT [FK_InternshipProfilePage]
    FOREIGN KEY ([CompanyInternship_Id])
    REFERENCES [dbo].[ProfilePage]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InternshipProfilePage'
CREATE INDEX [IX_FK_InternshipProfilePage]
ON [dbo].[Internship]
    ([CompanyInternship_Id]);
GO

-- Creating foreign key on [InternshipSchool_Id] in table 'InternshipProfilePage1'
ALTER TABLE [dbo].[InternshipProfilePage1]
ADD CONSTRAINT [FK_InternshipProfilePage1_Internship]
    FOREIGN KEY ([InternshipSchool_Id])
    REFERENCES [dbo].[Internship]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [StudentInternship_Id] in table 'InternshipProfilePage1'
ALTER TABLE [dbo].[InternshipProfilePage1]
ADD CONSTRAINT [FK_InternshipProfilePage1_ProfilePage]
    FOREIGN KEY ([StudentInternship_Id])
    REFERENCES [dbo].[ProfilePage]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InternshipProfilePage1_ProfilePage'
CREATE INDEX [IX_FK_InternshipProfilePage1_ProfilePage]
ON [dbo].[InternshipProfilePage1]
    ([StudentInternship_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------