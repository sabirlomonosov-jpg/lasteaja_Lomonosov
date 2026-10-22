CREATE DATABASE [Lasteaja_Lomonosov];
GO
USE [Lasteaja_Lomonosov];
GO

-- 2. Create all 14 tables with primary keys.

CREATE TABLE [dbo].[tootajaSet] (
        [tootaja_id] int IDENTITY(1,1) NOT NULL,
        [eesnimi] nvarchar(max)  NOT NULL,
        [perenimi] nvarchar(max)  NOT NULL,
        [isikukood] nvarchar(max)  NOT NULL,
        [telefon] nvarchar(max)  NOT NULL,
        [e_post] nvarchar(max)  NOT NULL,
        CONSTRAINT [PK_tootajaSet] PRIMARY KEY ([tootaja_id])
    );
GO

CREATE TABLE [dbo].[tootmineSet] (
        [tootmine_id] int IDENTITY(1,1) NOT NULL,
        [ametikoht_id] int  NOT NULL,
        [alguse_kp] date  NOT NULL,
        [lopu_kp] date  NOT NULL,
        [tootaja_id] int  NOT NULL,
        CONSTRAINT [PK_tootmineSet] PRIMARY KEY ([tootmine_id])
    );
GO

CREATE TABLE [dbo].[ametikohtSet] (
        [ametikoht_id] int IDENTITY(1,1) NOT NULL,
        [ruhm_id] int  NOT NULL,
        [ametikohttyyp_id] int  NOT NULL,
        [ametikoht_nimi] nvarchar(max)  NOT NULL,
        CONSTRAINT [PK_ametikohtSet] PRIMARY KEY ([ametikoht_id])
    );
GO

CREATE TABLE [dbo].[ametikohttyypSet] (
        [ametikohttyyp_id] int IDENTITY(1,1) NOT NULL,
        [nimetus] nvarchar(max)  NOT NULL,
        CONSTRAINT [PK_ametikohttyypSet] PRIMARY KEY ([ametikohttyyp_id])
    );
GO

CREATE TABLE [dbo].[ruhmSet] (
        [ruhm_id] int IDENTITY(1,1) NOT NULL,
        [ruhmtyyp_id] int  NOT NULL,
        [nimetus] nvarchar(max)  NOT NULL,
        [kohtadetri] nvarchar(max)  NOT NULL,
        CONSTRAINT [PK_ruhmSet] PRIMARY KEY ([ruhm_id])
    );
GO

CREATE TABLE [dbo].[ruhmatyypSet] (
        [ruhmtyyp_id] int IDENTITY(1,1) NOT NULL,
        [nimetus] nvarchar(max)  NOT NULL,
        CONSTRAINT [PK_ruhmatyypSet] PRIMARY KEY ([ruhmtyyp_id])
    );
GO

CREATE TABLE [dbo].[ruhmasOlekSet] (
        [ruhmasOlek_id] int IDENTITY(1,1) NOT NULL,
        [laps_id] int  NOT NULL,
        [ruhm_id] int  NOT NULL,
        [alguse_kp] datetime  NOT NULL,
        [lopu_kp] datetime  NOT NULL,
        CONSTRAINT [PK_ruhmasOlekSet] PRIMARY KEY ([ruhmasOlek_id])
    );
GO

CREATE TABLE [dbo].[lapsSet] (
        [laps_id] int IDENTITY(1,1) NOT NULL,
        [eesnimi] nvarchar(max)  NOT NULL,
        [perenimi] nvarchar(max)  NOT NULL,
        [isikukood] nvarchar(max)  NOT NULL,
        [synniaeg] datetime  NOT NULL,
        CONSTRAINT [PK_lapsSet] PRIMARY KEY ([laps_id])
    );
GO

CREATE TABLE [dbo].[pudumiseSet] (
        [puudumine_id] int IDENTITY(1,1) NOT NULL,
        [laps_id] int  NOT NULL)