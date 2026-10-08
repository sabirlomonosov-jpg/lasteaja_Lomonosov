
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:50:52
-- Generated from EDMX file: C:\Users\opilane\source\repos\lasteaja_Lomonosov\lasteaja_Lomonosov\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Lasteaja_Lomonosov];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_tootajatootmine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tootmineSet] DROP CONSTRAINT [FK_tootajatootmine];
GO
IF OBJECT_ID(N'[dbo].[FK_ametikohttyypametikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametikohtSet] DROP CONSTRAINT [FK_ametikohttyypametikoht];
GO
IF OBJECT_ID(N'[dbo].[FK_ametikohttootmine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tootmineSet] DROP CONSTRAINT [FK_ametikohttootmine];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmatyypruhm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ruhmSet] DROP CONSTRAINT [FK_ruhmatyypruhm];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmametikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametikohtSet] DROP CONSTRAINT [FK_ruhmametikoht];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmruhmasOlek]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ruhmasOlekSet] DROP CONSTRAINT [FK_ruhmruhmasOlek];
GO
IF OBJECT_ID(N'[dbo].[FK_lapsruhmasOlek]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ruhmasOlekSet] DROP CONSTRAINT [FK_lapsruhmasOlek];
GO
IF OBJECT_ID(N'[dbo].[FK_lapspudumise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[pudumiseSet] DROP CONSTRAINT [FK_lapspudumise];
GO
IF OBJECT_ID(N'[dbo].[FK_lapsjarjekord]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[jarjekordSet] DROP CONSTRAINT [FK_lapsjarjekord];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmjarjekord]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[jarjekordSet] DROP CONSTRAINT [FK_ruhmjarjekord];
GO
IF OBJECT_ID(N'[dbo].[FK_menyyroog_menyy]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[roog_menyySet] DROP CONSTRAINT [FK_menyyroog_menyy];
GO
IF OBJECT_ID(N'[dbo].[FK_roogroog_menyy]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[roog_menyySet] DROP CONSTRAINT [FK_roogroog_menyy];
GO
IF OBJECT_ID(N'[dbo].[FK_roogtoidu_valjastus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[toidu_valjastusSet] DROP CONSTRAINT [FK_roogtoidu_valjastus];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmtoidu_valjastus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[toidu_valjastusSet] DROP CONSTRAINT [FK_ruhmtoidu_valjastus];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootajaSet];
GO
IF OBJECT_ID(N'[dbo].[tootmineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootmineSet];
GO
IF OBJECT_ID(N'[dbo].[ametikohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametikohtSet];
GO
IF OBJECT_ID(N'[dbo].[ametikohttyypSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametikohttyypSet];
GO
IF OBJECT_ID(N'[dbo].[ruhmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ruhmSet];
GO
IF OBJECT_ID(N'[dbo].[ruhmatyypSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ruhmatyypSet];
GO
IF OBJECT_ID(N'[dbo].[ruhmasOlekSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ruhmasOlekSet];
GO
IF OBJECT_ID(N'[dbo].[lapsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[lapsSet];
GO
IF OBJECT_ID(N'[dbo].[pudumiseSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[pudumiseSet];
GO
IF OBJECT_ID(N'[dbo].[jarjekordSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[jarjekordSet];
GO
IF OBJECT_ID(N'[dbo].[roogSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[roogSet];
GO
IF OBJECT_ID(N'[dbo].[menyySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[menyySet];
GO
IF OBJECT_ID(N'[dbo].[roog_menyySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[roog_menyySet];
GO
IF OBJECT_ID(N'[dbo].[toidu_valjastusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[toidu_valjastusSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tootajaSet'
CREATE TABLE [dbo].[tootajaSet] (
    [tootaja_id] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [isikukood] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL,
    [e_post] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tootmineSet'
CREATE TABLE [dbo].[tootmineSet] (
    [tootmine_id] int IDENTITY(1,1) NOT NULL,
    [ametikoht_id] int  NOT NULL,
    [alguse_kp] datetime  NOT NULL,
    [lopu_kp] datetime  NOT NULL,
    [tootaja_id] int  NOT NULL,
    [tootaja_tootaja_id] int  NOT NULL,
    [ametikoht_ametikoht_id] int  NOT NULL
);
GO

-- Creating table 'ametikohtSet'
CREATE TABLE [dbo].[ametikohtSet] (
    [ametikoht_id] int IDENTITY(1,1) NOT NULL,
    [ruhm_id] int  NOT NULL,
    [ametikohttyyp_id] int  NOT NULL,
    [ametikoht_nimi] nvarchar(max)  NOT NULL,
    [ametikohttyyp_ametikohttyyp_id] int  NOT NULL,
    [ruhm_ruhm_id] int  NOT NULL
);
GO

-- Creating table 'ametikohttyypSet'
CREATE TABLE [dbo].[ametikohttyypSet] (
    [ametikohttyyp_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ruhmSet'
CREATE TABLE [dbo].[ruhmSet] (
    [ruhm_id] int IDENTITY(1,1) NOT NULL,
    [ruhmtyyp_id] int  NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kohtadetri] nvarchar(max)  NOT NULL,
    [ruhmatyyp_ruhmtyyp_id] int  NOT NULL
);
GO

-- Creating table 'ruhmatyypSet'
CREATE TABLE [dbo].[ruhmatyypSet] (
    [ruhmtyyp_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ruhmasOlekSet'
CREATE TABLE [dbo].[ruhmasOlekSet] (
    [ruhmasOlek_id] int IDENTITY(1,1) NOT NULL,
    [laps_id] int  NOT NULL,
    [ruhm_id] int  NOT NULL,
    [alguse_kp] datetime  NOT NULL,
    [lopu_kp] datetime  NOT NULL,
    [ruhm_ruhm_id] int  NOT NULL,
    [laps_laps_id] int  NOT NULL
);
GO

-- Creating table 'lapsSet'
CREATE TABLE [dbo].[lapsSet] (
    [laps_id] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [isikukood] nvarchar(max)  NOT NULL,
    [synniaeg] datetime  NOT NULL
);
GO

-- Creating table 'pudumiseSet'
CREATE TABLE [dbo].[pudumiseSet] (
    [puudumine_id] int IDENTITY(1,1) NOT NULL,
    [laps_id] int  NOT NULL,
    [alguse_kp] datetime  NOT NULL,
    [lopu_kp] datetime  NOT NULL,
    [pohjus] nvarchar(max)  NOT NULL,
    [laps_laps_id] int  NOT NULL
);
GO

-- Creating table 'jarjekordSet'
CREATE TABLE [dbo].[jarjekordSet] (
    [jarjekord_id] int IDENTITY(1,1) NOT NULL,
    [laps_id] int  NOT NULL,
    [soovitudruhm_id] int  NOT NULL,
    [lisamise_id] int  NOT NULL,
    [staatus] nvarchar(max)  NOT NULL,
    [laps_laps_id] int  NOT NULL,
    [ruhm_ruhm_id] int  NOT NULL
);
GO

-- Creating table 'roogSet'
CREATE TABLE [dbo].[roogSet] (
    [roog_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'menyySet'
CREATE TABLE [dbo].[menyySet] (
    [menyy_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kuupaev] datetime  NOT NULL
);
GO

-- Creating table 'roog_menyySet'
CREATE TABLE [dbo].[roog_menyySet] (
    [menyy_id] int IDENTITY(1,1) NOT NULL,
    [roog_id] int  NOT NULL,
    [kogus] nvarchar(max)  NOT NULL,
    [toidukord] nvarchar(max)  NOT NULL,
    [menyy_menyy_id] int  NOT NULL,
    [roog_roog_id] int  NOT NULL
);
GO

-- Creating table 'toidu_valjastusSet'
CREATE TABLE [dbo].[toidu_valjastusSet] (
    [valjastus_id] int IDENTITY(1,1) NOT NULL,
    [ruhm_id] int  NOT NULL,
    [roog_id] int  NOT NULL,
    [kuupaev] datetime  NOT NULL,
    [portsionite_arv] int  NOT NULL,
    [roog_roog_id] int  NOT NULL,
    [ruhm_ruhm_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [tootaja_id] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [PK_tootajaSet]
    PRIMARY KEY CLUSTERED ([tootaja_id] ASC);
GO

-- Creating primary key on [tootmine_id] in table 'tootmineSet'
ALTER TABLE [dbo].[tootmineSet]
ADD CONSTRAINT [PK_tootmineSet]
    PRIMARY KEY CLUSTERED ([tootmine_id] ASC);
GO

-- Creating primary key on [ametikoht_id] in table 'ametikohtSet'
ALTER TABLE [dbo].[ametikohtSet]
ADD CONSTRAINT [PK_ametikohtSet]
    PRIMARY KEY CLUSTERED ([ametikoht_id] ASC);
GO

-- Creating primary key on [ametikohttyyp_id] in table 'ametikohttyypSet'
ALTER TABLE [dbo].[ametikohttyypSet]
ADD CONSTRAINT [PK_ametikohttyypSet]
    PRIMARY KEY CLUSTERED ([ametikohttyyp_id] ASC);
GO

-- Creating primary key on [ruhm_id] in table 'ruhmSet'
ALTER TABLE [dbo].[ruhmSet]
ADD CONSTRAINT [PK_ruhmSet]
    PRIMARY KEY CLUSTERED ([ruhm_id] ASC);
GO

-- Creating primary key on [ruhmtyyp_id] in table 'ruhmatyypSet'
ALTER TABLE [dbo].[ruhmatyypSet]
ADD CONSTRAINT [PK_ruhmatyypSet]
    PRIMARY KEY CLUSTERED ([ruhmtyyp_id] ASC);
GO

-- Creating primary key on [ruhmasOlek_id] in table 'ruhmasOlekSet'
ALTER TABLE [dbo].[ruhmasOlekSet]
ADD CONSTRAINT [PK_ruhmasOlekSet]
    PRIMARY KEY CLUSTERED ([ruhmasOlek_id] ASC);
GO

-- Creating primary key on [laps_id] in table 'lapsSet'
ALTER TABLE [dbo].[lapsSet]
ADD CONSTRAINT [PK_lapsSet]
    PRIMARY KEY CLUSTERED ([laps_id] ASC);
GO

-- Creating primary key on [puudumine_id] in table 'pudumiseSet'
ALTER TABLE [dbo].[pudumiseSet]
ADD CONSTRAINT [PK_pudumiseSet]
    PRIMARY KEY CLUSTERED ([puudumine_id] ASC);
GO

-- Creating primary key on [jarjekord_id] in table 'jarjekordSet'
ALTER TABLE [dbo].[jarjekordSet]
ADD CONSTRAINT [PK_jarjekordSet]
    PRIMARY KEY CLUSTERED ([jarjekord_id] ASC);
GO

-- Creating primary key on [roog_id] in table 'roogSet'
ALTER TABLE [dbo].[roogSet]
ADD CONSTRAINT [PK_roogSet]
    PRIMARY KEY CLUSTERED ([roog_id] ASC);
GO

-- Creating primary key on [menyy_id] in table 'menyySet'
ALTER TABLE [dbo].[menyySet]
ADD CONSTRAINT [PK_menyySet]
    PRIMARY KEY CLUSTERED ([menyy_id] ASC);
GO

-- Creating primary key on [menyy_id] in table 'roog_menyySet'
ALTER TABLE [dbo].[roog_menyySet]
ADD CONSTRAINT [PK_roog_menyySet]
    PRIMARY KEY CLUSTERED ([menyy_id] ASC);
GO

-- Creating primary key on [valjastus_id] in table 'toidu_valjastusSet'
ALTER TABLE [dbo].[toidu_valjastusSet]
ADD CONSTRAINT [PK_toidu_valjastusSet]
    PRIMARY KEY CLUSTERED ([valjastus_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tootaja_tootaja_id] in table 'tootmineSet'
ALTER TABLE [dbo].[tootmineSet]
ADD CONSTRAINT [FK_tootajatootmine]
    FOREIGN KEY ([tootaja_tootaja_id])
    REFERENCES [dbo].[tootajaSet]
        ([tootaja_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajatootmine'
CREATE INDEX [IX_FK_tootajatootmine]
ON [dbo].[tootmineSet]
    ([tootaja_tootaja_id]);
GO

-- Creating foreign key on [ametikohttyyp_ametikohttyyp_id] in table 'ametikohtSet'
ALTER TABLE [dbo].[ametikohtSet]
ADD CONSTRAINT [FK_ametikohttyypametikoht]
    FOREIGN KEY ([ametikohttyyp_ametikohttyyp_id])
    REFERENCES [dbo].[ametikohttyypSet]
        ([ametikohttyyp_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametikohttyypametikoht'
CREATE INDEX [IX_FK_ametikohttyypametikoht]
ON [dbo].[ametikohtSet]
    ([ametikohttyyp_ametikohttyyp_id]);
GO

-- Creating foreign key on [ametikoht_ametikoht_id] in table 'tootmineSet'
ALTER TABLE [dbo].[tootmineSet]
ADD CONSTRAINT [FK_ametikohttootmine]
    FOREIGN KEY ([ametikoht_ametikoht_id])
    REFERENCES [dbo].[ametikohtSet]
        ([ametikoht_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametikohttootmine'
CREATE INDEX [IX_FK_ametikohttootmine]
ON [dbo].[tootmineSet]
    ([ametikoht_ametikoht_id]);
GO

-- Creating foreign key on [ruhmatyyp_ruhmtyyp_id] in table 'ruhmSet'
ALTER TABLE [dbo].[ruhmSet]
ADD CONSTRAINT [FK_ruhmatyypruhm]
    FOREIGN KEY ([ruhmatyyp_ruhmtyyp_id])
    REFERENCES [dbo].[ruhmatyypSet]
        ([ruhmtyyp_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmatyypruhm'
CREATE INDEX [IX_FK_ruhmatyypruhm]
ON [dbo].[ruhmSet]
    ([ruhmatyyp_ruhmtyyp_id]);
GO

-- Creating foreign key on [ruhm_ruhm_id] in table 'ametikohtSet'
ALTER TABLE [dbo].[ametikohtSet]
ADD CONSTRAINT [FK_ruhmametikoht]
    FOREIGN KEY ([ruhm_ruhm_id])
    REFERENCES [dbo].[ruhmSet]
        ([ruhm_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmametikoht'
CREATE INDEX [IX_FK_ruhmametikoht]
ON [dbo].[ametikohtSet]
    ([ruhm_ruhm_id]);
GO

-- Creating foreign key on [ruhm_ruhm_id] in table 'ruhmasOlekSet'
ALTER TABLE [dbo].[ruhmasOlekSet]
ADD CONSTRAINT [FK_ruhmruhmasOlek]
    FOREIGN KEY ([ruhm_ruhm_id])
    REFERENCES [dbo].[ruhmSet]
        ([ruhm_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmruhmasOlek'
CREATE INDEX [IX_FK_ruhmruhmasOlek]
ON [dbo].[ruhmasOlekSet]
    ([ruhm_ruhm_id]);
GO

-- Creating foreign key on [laps_laps_id] in table 'ruhmasOlekSet'
ALTER TABLE [dbo].[ruhmasOlekSet]
ADD CONSTRAINT [FK_lapsruhmasOlek]
    FOREIGN KEY ([laps_laps_id])
    REFERENCES [dbo].[lapsSet]
        ([laps_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lapsruhmasOlek'
CREATE INDEX [IX_FK_lapsruhmasOlek]
ON [dbo].[ruhmasOlekSet]
    ([laps_laps_id]);
GO

-- Creating foreign key on [laps_laps_id] in table 'pudumiseSet'
ALTER TABLE [dbo].[pudumiseSet]
ADD CONSTRAINT [FK_lapspudumise]
    FOREIGN KEY ([laps_laps_id])
    REFERENCES [dbo].[lapsSet]
        ([laps_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lapspudumise'
CREATE INDEX [IX_FK_lapspudumise]
ON [dbo].[pudumiseSet]
    ([laps_laps_id]);
GO

-- Creating foreign key on [laps_laps_id] in table 'jarjekordSet'
ALTER TABLE [dbo].[jarjekordSet]
ADD CONSTRAINT [FK_lapsjarjekord]
    FOREIGN KEY ([laps_laps_id])
    REFERENCES [dbo].[lapsSet]
        ([laps_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lapsjarjekord'
CREATE INDEX [IX_FK_lapsjarjekord]
ON [dbo].[jarjekordSet]
    ([laps_laps_id]);
GO

-- Creating foreign key on [ruhm_ruhm_id] in table 'jarjekordSet'
ALTER TABLE [dbo].[jarjekordSet]
ADD CONSTRAINT [FK_ruhmjarjekord]
    FOREIGN KEY ([ruhm_ruhm_id])
    REFERENCES [dbo].[ruhmSet]
        ([ruhm_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmjarjekord'
CREATE INDEX [IX_FK_ruhmjarjekord]
ON [dbo].[jarjekordSet]
    ([ruhm_ruhm_id]);
GO

-- Creating foreign key on [menyy_menyy_id] in table 'roog_menyySet'
ALTER TABLE [dbo].[roog_menyySet]
ADD CONSTRAINT [FK_menyyroog_menyy]
    FOREIGN KEY ([menyy_menyy_id])
    REFERENCES [dbo].[menyySet]
        ([menyy_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_menyyroog_menyy'
CREATE INDEX [IX_FK_menyyroog_menyy]
ON [dbo].[roog_menyySet]
    ([menyy_menyy_id]);
GO

-- Creating foreign key on [roog_roog_id] in table 'roog_menyySet'
ALTER TABLE [dbo].[roog_menyySet]
ADD CONSTRAINT [FK_roogroog_menyy]
    FOREIGN KEY ([roog_roog_id])
    REFERENCES [dbo].[roogSet]
        ([roog_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_roogroog_menyy'
CREATE INDEX [IX_FK_roogroog_menyy]
ON [dbo].[roog_menyySet]
    ([roog_roog_id]);
GO

-- Creating foreign key on [roog_roog_id] in table 'toidu_valjastusSet'
ALTER TABLE [dbo].[toidu_valjastusSet]
ADD CONSTRAINT [FK_roogtoidu_valjastus]
    FOREIGN KEY ([roog_roog_id])
    REFERENCES [dbo].[roogSet]
        ([roog_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_roogtoidu_valjastus'
CREATE INDEX [IX_FK_roogtoidu_valjastus]
ON [dbo].[toidu_valjastusSet]
    ([roog_roog_id]);
GO

-- Creating foreign key on [ruhm_ruhm_id] in table 'toidu_valjastusSet'
ALTER TABLE [dbo].[toidu_valjastusSet]
ADD CONSTRAINT [FK_ruhmtoidu_valjastus]
    FOREIGN KEY ([ruhm_ruhm_id])
    REFERENCES [dbo].[ruhmSet]
        ([ruhm_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmtoidu_valjastus'
CREATE INDEX [IX_FK_ruhmtoidu_valjastus]
ON [dbo].[toidu_valjastusSet]
    ([ruhm_ruhm_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------