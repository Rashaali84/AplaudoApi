/*
 Navicat Premium Data Transfer

 Source Server         : aplaudo.database.windows.net
 Source Server Type    : SQL Server
 Source Server Version : 12002000
 Source Host           : aplaudo.database.windows.net:1433
 Source Catalog        : AplaudoDB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002000
 File Encoding         : 65001

 Date: 25/11/2020 12:27:44
*/


-- ----------------------------
-- Table structure for Artists
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Artists]') AND type IN ('U'))
	DROP TABLE [dbo].[Artists]
GO

CREATE TABLE [dbo].[Artists] (
  [ArtistId] bigint  IDENTITY(1,1) NOT NULL,
  [ArtistFirstName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ArtistLastName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ArtistNickName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailAddress] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [VCode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhotoLink] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ArtistTypeId] int  NULL,
  [Spotify] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [YouTube] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [iTunes] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SoundCloud] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LinkedIn] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Website] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bio] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CountryId] bigint  NULL
)
GO


-- ----------------------------
-- Records of Artists
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Artists] ON
GO

INSERT INTO [dbo].[Artists] ([ArtistId], [ArtistFirstName], [ArtistLastName], [ArtistNickName], [EmailAddress], [Password], [VCode], [PhotoLink], [ArtistTypeId], [Spotify], [YouTube], [iTunes], [SoundCloud], [LinkedIn], [Website], [Bio], [CountryId]) VALUES (N'1', N'Bob', N'Raly', N'ROR', N'rasaa@gmail.com', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'2', N'Pradeep', N'Pardeepo', N'ParPar', N'par@gmail.com', N'45rewdfr22d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'3', N'Arun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'5', N'Laila', N'Hole', N'Tom', N'tomEkker@yahoo.com', N'1qazwsxde43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'6', NULL, NULL, NULL, N'tomEkker@yahoo.com', N'1qazwsxde43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'7', N'Dam', N'Wool', N'DomWool', N'Dam@woo.com', N'hfhfhfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'8', N'Laila loa', N'Hole', N'Tom', N'lily@gmail.com', N'6C-7C-6E-0D-3A-7D-2D-13-72-C5-D2-F8-A9-66-2E-F3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'9', N'Mark', N'look', N'Tom', N'looklake@gmail.com', N'A4-DF-B9-B4-26-C6-FB-F3-4F-81-97-95-A1-BA-68-A3', N'fKBs4YiGH6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'10', NULL, NULL, NULL, N'looklajjjke@gmail.com', N'24-97-CE-75-25-A6-92-9F-1A-C2-A8-93-40-53-49-23', N'bGunXWTcda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'11', NULL, NULL, NULL, NULL, N'49-CE-DF-78-F2-D8-27-F4-99-E6-E7-A4-A7-F5-C4-84', N'FV3RrZNVwx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'12', NULL, NULL, NULL, NULL, N'E2-08-2C-8F-A2-5C-7B-15-96-CF-CE-35-A6-60-C1-F1', N'dK9oJss2uw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'13', NULL, NULL, NULL, NULL, N'24-10-85-BA-C3-60-4F-20-30-E8-D0-9D-55-14-F2-D4', N'e8P8E3hBb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'14', N'Bob', N'Raly', N'ROR', N'Ralyy.MM@gmail.com', N'1D-00-5B-F0-A1-04-97-ED-CE-AB-3D-2C-32-89-A3-31', N'frqCvua35M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'15', N'Rasha', N'Ali', N'Rasha', N'Rashaali@gmail.com', N'7A-40-23-D5-06-78-CD-C6-26-AF-CD-34-BD-30-35-65', N'ygVN614Gqu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (N'16', N'Rasha update update ', N'Ali update', N'Rasha update', N'Rashaali88@gmail.com', N'6C-92-37-A7-72-2F-B1-D8-F0-9E-07-99-52-DE-27-11', N'vqhWEeiEkP', N'http://wwww.google.com/2update', NULL, N'sot', N'http://wwww.google.com/2update', N'tunesupdate', N'sound', N'http://wwww.google.com/linkedinupdate', N'http://wwww.google.com/2update', N'Here is my Bio', N'22'), (N'17', N'Rasha', N'Ali', N'Rasha', N'Rashaali9999@gmail.com', N'34-56-D3-DA-1C-02-26-DF-9B-05-48-14-97-6E-2A-54', N'E9ekv0YyzE', N'http://wwww.google.com/2', NULL, N'sot', N'http://wwww.google.com/2', N'tunes', N'sound', N'http://wwww.google.com/linkedin', N'http://wwww.google.com/2', N'Here is my Bio', N'22'), (N'19', N'Rasha', N'Ali', N'Rasha', N'Rashaali3000@gmail.com', N'68-58-D1-33-C6-30-B2-C6-09-D8-DE-32-0E-37-5F-C6', N'MKQvh1rOO8', N'http://wwww.google.com/2', NULL, N'sot', N'http://wwww.google.com/2', N'', N'', N'http://wwww.google.com/linkedin', N'http://wwww.google.com/2', N'Here is my Bio', N'22'), (N'20', N'Rasha', N'Ali', N'Rasha', N'Rashaali2020@gmail.com', N'28-48-33-1A-FF-56-86-51-FE-F8-AC-FF-0D-A4-19-0C', N'Rw7Trqm3qm', N'http://wwww.google.com/2', NULL, N'sot', N'http://wwww.google.com/2', N'', N'', N'http://wwww.google.com/linkedin', N'http://wwww.google.com/2', N'Here is my Bio', N'22'), (N'21', N'Rasha', N'Ali', N'Rasha', N'RashaaliLasttest@gmail.com', N'EF-4E-E6-58-4F-23-20-1B-69-C6-2E-3B-77-43-C8-6A', N'fixNGo5U7t', N'http://wwww.google.com/2', NULL, N'sot', N'http://wwww.google.com/2', N'tunes', N'sound', N'http://wwww.google.com/linkedin', N'http://wwww.google.com/2', N'Here is my Bio', N'22'), (N'22', N'Rasha', N'Ali', N'Rasha', N'RashaaliLasttestestt@gmail.com', N'42-74-CE-63-CC-B2-BE-65-9E-34-C3-8C-A5-48-09-E1', N'L89ptDMqZs', N'http://wwww.google.com/2', NULL, N'sot', N'http://wwww.google.com/2', N'tunes', N'sound', N'http://wwww.google.com/linkedin', N'http://wwww.google.com/2', N'Here is my Bio', N'22'), (N'24', N'Rasha', N'Ali', N'Rasha', N'RashaaliLasttestest9t@gmail.com', N'BD-16-DF-1D-29-48-AA-79-7E-3D-CB-A2-5F-2E-CC-81', N'T2RbtWNNS9', N'http://wwww.google.com/2', NULL, N'sot', N'http://wwww.google.com/2', N'tunes', N'sound', N'http://wwww.google.com/linkedin', N'http://wwww.google.com/2', N'Here is my Bio', N'22'), (N'26', N'Rasha', N'Ali', N'Rasha', N'Rashaali2@gmail.com', N'C8-45-92-11-7A-C6-FE-C1-9B-C6-74-39-94-65-55-1C', N'u3UiC7L3LE', N'http://wwww.google.com/2', NULL, N'sot', N'http://wwww.google.com/2', N'tunes', N'sound', N'http://wwww.google.com/linkedin', N'http://wwww.google.com/2', N'Here is my Bio', N'22')
GO

SET IDENTITY_INSERT [dbo].[Artists] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ArtistsInstruments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ArtistsInstruments]') AND type IN ('U'))
	DROP TABLE [dbo].[ArtistsInstruments]
GO

CREATE TABLE [dbo].[ArtistsInstruments] (
  [ArtistId] bigint  NOT NULL,
  [InstrumentId] int  NOT NULL
)
GO


-- ----------------------------
-- Records of ArtistsInstruments
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[ArtistsInstruments] VALUES (N'16', N'1'), (N'16', N'2'), (N'16', N'3'), (N'17', N'1'), (N'17', N'2'), (N'17', N'3'), (N'19', N'1'), (N'19', N'2'), (N'19', N'3'), (N'21', N'1'), (N'21', N'2'), (N'21', N'3'), (N'22', N'1'), (N'22', N'2'), (N'22', N'3'), (N'24', N'1'), (N'24', N'2'), (N'24', N'3'), (N'26', N'1'), (N'26', N'2'), (N'26', N'3')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ArtistsStyles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ArtistsStyles]') AND type IN ('U'))
	DROP TABLE [dbo].[ArtistsStyles]
GO

CREATE TABLE [dbo].[ArtistsStyles] (
  [ArtistId] bigint  NOT NULL,
  [StyleId] int  NOT NULL
)
GO


-- ----------------------------
-- Records of ArtistsStyles
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[ArtistsStyles] VALUES (N'16', N'1'), (N'16', N'3'), (N'17', N'1'), (N'17', N'3'), (N'19', N'1'), (N'19', N'3'), (N'21', N'1'), (N'21', N'3'), (N'26', N'1'), (N'26', N'3')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ArtistTypes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ArtistTypes]') AND type IN ('U'))
	DROP TABLE [dbo].[ArtistTypes]
GO

CREATE TABLE [dbo].[ArtistTypes] (
  [ArtistTypeId] int  NOT NULL,
  [ArtistTypeName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of ArtistTypes
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Concerts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Concerts]') AND type IN ('U'))
	DROP TABLE [dbo].[Concerts]
GO

CREATE TABLE [dbo].[Concerts] (
  [ConcertId] bigint  IDENTITY(1,1) NOT NULL,
  [ConcertTitle] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [About] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StyleId] int  NULL,
  [Date] datetime  NULL,
  [ConcertLink] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PictureLink] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProgrammaLink] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [InstrumentationId] bigint  NULL,
  [CountryId] bigint  NULL,
  [TeaserLink] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of Concerts
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Concerts] ON
GO

INSERT INTO [dbo].[Concerts] ([ConcertId], [ConcertTitle], [About], [StyleId], [Date], [ConcertLink], [PictureLink], [ProgrammaLink], [InstrumentationId], [CountryId], [TeaserLink]) VALUES (N'1', NULL, N'Concert about singing', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'2', NULL, N'Concert about singing', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'3', NULL, N'Concert about singing', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'4', NULL, N'Concert about singing', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'5', NULL, N'Concert about singing', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'6', NULL, N'Concert about singing', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'7', NULL, N'Concert about singing', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'8', NULL, N'Concert about acting ', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'9', NULL, N'Concert about acting in the heart of brussels', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'10', NULL, N'Concert about acting in the heart of brussels in the heart of Europe', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'11', NULL, N'Concert about acting in the heart of brussels in the heart of Europe in chrismas', N'1', N'2010-12-01 00:00:00.000', N'http://localhost:50826/api/artists/', N'http://localhost:50826/api/artists/', NULL, NULL, NULL, NULL), (N'12', N'THis ia a test concert', N'Concert about acting in the heart of brussels in the heart of Europe in chrismas an all over the world last check final Lovely atomosphere test fun', N'1', N'2010-12-01 00:00:00.000', N'http://wwww.google.com/1', N'http://wwww.google.com/2', N'http://wwww.google.com/2', N'1', N'22', N'http://wwww.google.com/2'), (N'13', NULL, N'Concert about acting in the heart of brussels in the heart of Europe in chrismas', N'1', N'2010-12-01 00:00:00.000', N'http://wwww.google.com/1', N'http://wwww.google.com/2', N'http://wwww.google.com/2', N'1', N'1', N'http://wwww.google.com/2'), (N'14', N'Title is really what matters ', N'This concert is really fun and different let'' stry to update ', N'1', N'2010-12-01 00:00:00.000', N'http://wwww.google.com/44', N'http://wwww.google.com/442', N'http://wwww.google.com/44', N'1', N'22', N'http://wwww.google.com/44'), (N'15', N'Title is really what matters ', N'This concert is really fun and different let'' stry to update csssccc ', N'1', N'2010-12-01 00:00:00.000', N'http://wwww.google.com/44', N'http://wwww.google.com/442', N'http://wwww.google.com/44', N'1', N'22', N'http://wwww.google.com/44'), (N'16', N'title of the concert', N'It is a non-commercial charity concertwer', N'1', N'2020-11-28 00:00:00.000', N'ascsdcssdadzxcvsdc', N'C:\fakepath\Screenshot 2020-06-06 at 20.37.51.png', N'C:\fakepath\Screenshot 2020-04-18 at 21.35.11.png', N'5', N'1', N'Teaser link https://fhdcvsdfjnskdc.com'), (N'17', N'title of the concert', N'It is a non-commercial charity concert', N'1', N'2020-11-28 00:00:00.000', N'http://localhost:3007/9b48e43d-712a-41a2-97fd-f831e8c23a27', N'C:\fakepath\Screenshot 2020-06-06 at 20.37.51.png', N'C:\fakepath\Screenshot 2020-06-06 at 20.37.51.png', N'2', N'22', N'Teaser link https://fhdcvsdfjnskdc.com'), (N'18', N'title of the concert', N'It is a non-commercial charity concert', N'2', N'2020-10-29 00:00:00.000', N'http://localhost:3007/c7730618-fc00-433a-ba17-b94a4cc4e431', N'C:\fakepath\Screenshot 2020-08-25 at 20.24.54.png', N'C:\fakepath\Screenshot 2020-06-06 at 20.37.51.png', N'6', N'6', N'Teaser link https://fhdcvsdfjnskdc.com'), (N'19', N'Title is really what matters ', N'This concert is really fun and different let'' stry to update ', N'1', N'2010-12-01 00:00:00.000', N'http://wwww.google.com/44', N'http://wwww.google.com/442', N'http://wwww.google.com/44', N'1', N'22', N'http://wwww.google.com/44'), (N'20', N'Title is really what matters ', N'This concert is really fun and different let'' stry to update ', N'1', N'2010-12-01 00:00:00.000', N'http://wwww.google.com/44', N'http://wwww.google.com/442', N'http://wwww.google.com/44', N'1', N'22', N'http://wwww.google.com/44')
GO

SET IDENTITY_INSERT [dbo].[Concerts] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ConcertsArtists
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ConcertsArtists]') AND type IN ('U'))
	DROP TABLE [dbo].[ConcertsArtists]
GO

CREATE TABLE [dbo].[ConcertsArtists] (
  [ArtistId] bigint  NOT NULL,
  [ConcertId] bigint  NOT NULL
)
GO


-- ----------------------------
-- Records of ConcertsArtists
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[ConcertsArtists] VALUES (N'1', N'7'), (N'1', N'8'), (N'1', N'9'), (N'1', N'10'), (N'1', N'11'), (N'1', N'12'), (N'1', N'13'), (N'1', N'14'), (N'1', N'15'), (N'1', N'19'), (N'1', N'20'), (N'2', N'6'), (N'2', N'7'), (N'2', N'8'), (N'2', N'9'), (N'2', N'10'), (N'2', N'11'), (N'2', N'12'), (N'2', N'13'), (N'2', N'14'), (N'2', N'15'), (N'2', N'19'), (N'2', N'20'), (N'14', N'7'), (N'14', N'8'), (N'14', N'9'), (N'14', N'10'), (N'14', N'11'), (N'14', N'12'), (N'14', N'13'), (N'14', N'14'), (N'14', N'15'), (N'14', N'19'), (N'14', N'20')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ConcertsInstruments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ConcertsInstruments]') AND type IN ('U'))
	DROP TABLE [dbo].[ConcertsInstruments]
GO

CREATE TABLE [dbo].[ConcertsInstruments] (
  [ConcertId] bigint  NOT NULL,
  [InstrumentId] int  NOT NULL
)
GO


-- ----------------------------
-- Records of ConcertsInstruments
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[ConcertsInstruments] VALUES (N'12', N'1'), (N'12', N'2'), (N'12', N'3'), (N'13', N'1'), (N'13', N'2'), (N'13', N'3'), (N'14', N'1'), (N'14', N'2'), (N'14', N'3'), (N'15', N'1'), (N'15', N'2'), (N'15', N'3'), (N'19', N'1'), (N'19', N'2'), (N'19', N'3'), (N'20', N'1'), (N'20', N'2'), (N'20', N'3')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Countries
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND type IN ('U'))
	DROP TABLE [dbo].[Countries]
GO

CREATE TABLE [dbo].[Countries] (
  [CountryId] bigint  NOT NULL,
  [CountryName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of Countries
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Countries] VALUES (N'1', N'Afghanistan'), (N'2', N'Aland Islands'), (N'3', N'Albania'), (N'4', N'Algeria'), (N'5', N'American Samoa'), (N'6', N'Andorra'), (N'7', N'Angola'), (N'8', N'Anguilla'), (N'9', N'Antarctica'), (N'10', N'Antigua and Barbuda'), (N'11', N'Argentina'), (N'12', N'Armenia'), (N'13', N'Aruba'), (N'14', N'Australia'), (N'15', N'Austria'), (N'16', N'Azerbaijan'), (N'17', N'Bahamas'), (N'18', N'Bahrain'), (N'19', N'Bangladesh'), (N'20', N'Barbados'), (N'21', N'Belarus'), (N'22', N'Belgium'), (N'23', N'Belize'), (N'24', N'Benin'), (N'25', N'Bermuda'), (N'26', N'Bhutan'), (N'27', N'Bolivia'), (N'28', N'Bonaire, Sint Eustatius and Saba'), (N'29', N'Bosnia and Herzegovina'), (N'30', N'Botswana'), (N'31', N'Bouvet Island'), (N'32', N'Brazil'), (N'33', N'British Indian Ocean Territory'), (N'34', N'Brunei'), (N'35', N'Bulgaria'), (N'36', N'Burkina Faso'), (N'37', N'Burundi'), (N'38', N'Cambodia'), (N'39', N'Cameroon'), (N'40', N'Canada'), (N'41', N'Cape Verde'), (N'42', N'Cayman Islands'), (N'43', N'Central African Republic'), (N'44', N'Chad'), (N'45', N'Chile'), (N'46', N'China'), (N'47', N'Christmas Island'), (N'48', N'Cocos (Keeling) Islands'), (N'49', N'Colombia'), (N'50', N'Comoros'), (N'51', N'Congo'), (N'52', N'Cook Islands'), (N'53', N'Costa Rica'), (N'54', N'Ivory Coast'), (N'55', N'Croatia'), (N'56', N'Cuba'), (N'57', N'Curacao'), (N'58', N'Cyprus'), (N'59', N'Czech Republic'), (N'60', N'Democratic Republic of the Congo'), (N'61', N'Denmark'), (N'62', N'Djibouti'), (N'63', N'Dominica'), (N'64', N'Dominican Republic'), (N'65', N'Ecuador'), (N'66', N'Egypt'), (N'67', N'El Salvador'), (N'68', N'Equatorial Guinea'), (N'69', N'Eritrea'), (N'70', N'Estonia'), (N'71', N'Ethiopia'), (N'72', N'Falkland Islands (Malvinas)'), (N'73', N'Faroe Islands'), (N'74', N'Fiji'), (N'75', N'Finland'), (N'76', N'France'), (N'77', N'French Guiana'), (N'78', N'French Polynesia'), (N'79', N'French Southern Territories'), (N'80', N'Gabon'), (N'81', N'Gambia'), (N'82', N'Georgia'), (N'83', N'Germany'), (N'84', N'Ghana'), (N'85', N'Gibraltar'), (N'86', N'Greece'), (N'87', N'Greenland'), (N'88', N'Grenada'), (N'89', N'Guadaloupe'), (N'90', N'Guam'), (N'91', N'Guatemala'), (N'92', N'Guernsey'), (N'93', N'Guinea'), (N'94', N'Guinea-Bissau'), (N'95', N'Guyana'), (N'96', N'Haiti'), (N'97', N'Heard Island and McDonald Islands'), (N'98', N'Honduras'), (N'99', N'Hong Kong'), (N'100', N'Hungary')
GO

INSERT INTO [dbo].[Countries] VALUES (N'101', N'Iceland'), (N'102', N'India'), (N'103', N'Indonesia'), (N'104', N'Iran'), (N'105', N'Iraq'), (N'106', N'Ireland'), (N'107', N'Isle of Man'), (N'108', N'Israel'), (N'109', N'Italy'), (N'110', N'Jamaica'), (N'111', N'Japan'), (N'112', N'Jersey'), (N'113', N'Jordan'), (N'114', N'Kazakhstan'), (N'115', N'Kenya'), (N'116', N'Kiribati'), (N'117', N'Kosovo'), (N'118', N'Kuwait'), (N'119', N'Kyrgyzstan'), (N'120', N'Laos'), (N'121', N'Latvia'), (N'122', N'Lebanon'), (N'123', N'Lesotho'), (N'124', N'Liberia'), (N'125', N'Libya'), (N'126', N'Liechtenstein'), (N'127', N'Lithuania'), (N'128', N'Luxembourg'), (N'129', N'Macao'), (N'130', N'Macedonia'), (N'131', N'Madagascar'), (N'132', N'Malawi'), (N'133', N'Malaysia'), (N'134', N'Maldives'), (N'135', N'Mali'), (N'136', N'Malta'), (N'137', N'Marshall Islands'), (N'138', N'Martinique'), (N'139', N'Mauritania'), (N'140', N'Mauritius'), (N'141', N'Mayotte'), (N'142', N'Mexico'), (N'143', N'Micronesia'), (N'144', N'Moldava'), (N'145', N'Monaco'), (N'146', N'Mongolia'), (N'147', N'Montenegro'), (N'148', N'Montserrat'), (N'149', N'Morocco'), (N'150', N'Mozambique'), (N'151', N'Myanmar (Burma)'), (N'152', N'Namibia'), (N'153', N'Nauru'), (N'154', N'Nepal'), (N'155', N'Netherlands'), (N'156', N'New Caledonia'), (N'157', N'New Zealand'), (N'158', N'Nicaragua'), (N'159', N'Niger'), (N'160', N'Nigeria'), (N'161', N'Niue'), (N'162', N'Norfolk Island'), (N'163', N'North Korea'), (N'164', N'Northern Mariana Islands'), (N'165', N'Norway'), (N'166', N'Oman'), (N'167', N'Pakistan'), (N'168', N'Palau'), (N'169', N'Palestine'), (N'170', N'Panama'), (N'171', N'Papua New Guinea'), (N'172', N'Paraguay'), (N'173', N'Peru'), (N'174', N'Phillipines'), (N'175', N'Pitcairn'), (N'176', N'Poland'), (N'177', N'Portugal'), (N'178', N'Puerto Rico'), (N'179', N'Qatar'), (N'180', N'Reunion'), (N'181', N'Romania'), (N'182', N'Russia'), (N'183', N'Rwanda'), (N'184', N'Saint Barthelemy'), (N'185', N'Saint Helena'), (N'186', N'Saint Kitts and Nevis'), (N'187', N'Saint Lucia'), (N'188', N'Saint Martin'), (N'189', N'Saint Pierre and Miquelon'), (N'190', N'Saint Vincent and the Grenadines'), (N'191', N'Samoa'), (N'192', N'San Marino'), (N'193', N'Sao Tome and Principe'), (N'194', N'Saudi Arabia'), (N'195', N'Senegal'), (N'196', N'Serbia'), (N'197', N'Seychelles'), (N'198', N'Sierra Leone'), (N'199', N'Singapore'), (N'200', N'Sint Maarten')
GO

INSERT INTO [dbo].[Countries] VALUES (N'201', N'Slovakia'), (N'202', N'Slovenia'), (N'203', N'Solomon Islands'), (N'204', N'Somalia'), (N'205', N'South Africa'), (N'206', N'South Georgia and the South Sandwich Islands'), (N'207', N'South Korea'), (N'208', N'South Sudan'), (N'209', N'Spain'), (N'210', N'Sri Lanka'), (N'211', N'Sudan'), (N'212', N'Suriname'), (N'213', N'Svalbard and Jan Mayen'), (N'214', N'Swaziland'), (N'215', N'Sweden'), (N'216', N'Switzerland'), (N'217', N'Syria'), (N'218', N'Taiwan'), (N'219', N'Tajikistan'), (N'220', N'Tanzania'), (N'221', N'Thailand'), (N'222', N'Timor-Leste (East Timor)'), (N'223', N'Togo'), (N'224', N'Tokelau'), (N'225', N'Tonga'), (N'226', N'Trinidad and Tobago'), (N'227', N'Tunisia'), (N'228', N'Turkey'), (N'229', N'Turkmenistan'), (N'230', N'Turks and Caicos Islands'), (N'231', N'Tuvalu'), (N'232', N'Uganda'), (N'233', N'Ukraine'), (N'234', N'United Arab Emirates'), (N'235', N'United Kingdom'), (N'236', N'United States'), (N'237', N'United States Minor Outlying Islands'), (N'238', N'Uruguay'), (N'239', N'Uzbekistan'), (N'240', N'Vanuatu'), (N'241', N'Vatican City'), (N'242', N'Venezuela'), (N'243', N'Vietnam'), (N'244', N'Virgin Islands, British'), (N'245', N'Virgin Islands, US'), (N'246', N'Wallis and Futuna'), (N'247', N'Western Sahara'), (N'248', N'Yemen'), (N'249', N'Zambia'), (N'250', N'Zimbabwe')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Creations
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Creations]') AND type IN ('U'))
	DROP TABLE [dbo].[Creations]
GO

CREATE TABLE [dbo].[Creations] (
  [CreationId] bigint  NOT NULL,
  [CreationValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of Creations
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Instrumentation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Instrumentation]') AND type IN ('U'))
	DROP TABLE [dbo].[Instrumentation]
GO

CREATE TABLE [dbo].[Instrumentation] (
  [InstrumentationId] bigint  NOT NULL,
  [InstrumentationValue] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of Instrumentation
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Instrumentation] VALUES (N'1', N'Solo      '), (N'2', N'Duo       '), (N'3', N'Trio      '), (N'4', N'Quartet   '), (N'5', N'Quintet   '), (N'6', N'Chamber Music'), (N'7', N'Choir'), (N'8', N'Band'), (N'9', N'Big Band'), (N'10', N'String Quartet'), (N'11', N'Combo'), (N'12', N'Orchestra'), (N'13', N'Other')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Instruments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Instruments]') AND type IN ('U'))
	DROP TABLE [dbo].[Instruments]
GO

CREATE TABLE [dbo].[Instruments] (
  [InstrumentId] int  NOT NULL,
  [InstrumentName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of Instruments
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Instruments] VALUES (N'1', N'accordion'), (N'2', N'bass'), (N'3', N'Piano'), (N'4', N'bassoon'), (N'5', N'banjo'), (N'6', N'cello'), (N'7', N'clarinet'), (N'8', N'classical guitar'), (N'9', N'clavichord'), (N'10', N'double bass'), (N'11', N'drums'), (N'12', N'electrical guitar'), (N'13', N'electronics'), (N'14', N'english horn'), (N'15', N'flute'), (N'16', N'flugelhorn'), (N'17', N'french horn'), (N'18', N'harmonica'), (N'19', N'harp'), (N'20', N'harpsichord'), (N'21', N'keyboard'), (N'22', N'lute'), (N'23', N'mandolin'), (N'24', N'oboe'), (N'25', N'organ'), (N'26', N'other'), (N'27', N'oud'), (N'28', N'percussion'), (N'30', N'piano'), (N'31', N'piccolo'), (N'32', N'recorder'), (N'33', N'saxophone'), (N'34', N'sitar'), (N'35', N'theorbo'), (N'36', N'traverso'), (N'37', N'trombone'), (N'38', N'trumpet'), (N'39', N'tuba'), (N'40', N'ukulele'), (N'41', N'vihuela'), (N'42', N'viola'), (N'43', N'viola da gamba'), (N'44', N'viola d’amore'), (N'45', N'violin'), (N'46', N'voice')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Styles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Styles]') AND type IN ('U'))
	DROP TABLE [dbo].[Styles]
GO

CREATE TABLE [dbo].[Styles] (
  [StyleId] int  NOT NULL,
  [StyleName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of Styles
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Styles] VALUES (N'1', N'African'), (N'2', N'Alternative'), (N'3', N'Asian'), (N'4', N'Avant-garde'), (N'5', N'Blues'), (N'6', N'Caribbean'), (N'7', N'Classical'), (N'8', N'Country music'), (N'9', N'Easy Listening'), (N'10', N'Electronic'), (N'11', N'Folk'), (N'12', N'Fusion'), (N'13', N'Heavy metal'), (N'14', N'Hip-hop / Rap'), (N'15', N'Inspirational'), (N'16', N'Intrumental'), (N'17', N'Jazz'), (N'18', N'Latin'), (N'19', N'Other'), (N'20', N'Pop'), (N'21', N'R&B and soul'), (N'22', N'Reggae'), (N'23', N'Rock'), (N'24', N'Traditional'), (N'25', N'Vocal'), (N'26', N'World')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO


-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO

INSERT INTO [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagram_0', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF1F000000FEFFFFFF040000000500000006000000070000000800000009000000310000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E000000FEFFFFFFFEFFFFFF2100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F00000030000000FEFFFFFF32000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000807218FC75BED6010300000000120000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000004E0C0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000A000000C129000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000320000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000FEFFFFFF33000000FEFFFFFFFEFFFFFF360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F00000040000000410000004200000043000000440000004500000046000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000430000A1E100C050000803D0000000F00FFFF3D000000007D000021440000A82B000000AB0000036F0000380C0000988DFFFFDE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C260000005C0B000000A6011300003000A50900000700008001000000A002000000800000070000805363684772696400EE4D0000288DFFFF417274697374730000003000A50900000700008005000000A202000000800000080000805363684772696400D8DCFFFF24AFFFFF436F6E636572747300003000A509000007000080080000009E02000000800000060000805363684772696400AE15000058B7FFFF5374796C6573640000006C00A50900000700008011000000520000000180000041000080436F6E74726F6C0070EEFFFF57B6FFFF52656C6174696F6E736869702027464B5F436F6E63657274735F5374796C657327206265747765656E20275374796C65732720616E642027436F6E63657274732700740000002800B50100000700008012000000310000005700000002800000436F6E74726F6C0099FDFFFFECB5FFFF00003400A50900000700008017000000A8020000008000000B0000805363684772696400844E00003EB3FFFF41727469737454797065730000007400A50900000700008018000000520000000180000049000080436F6E74726F6C73834D0000DCA7FFFF52656C6174696F6E736869702027464B5F417274697374735F417274697374547970657327206265747765656E202741727469737454797065732720616E6420274172746973747327007D0000002800B50100000700008019000000310000005F00000002800000436F6E74726F6C00C94F000042AEFFFF00003800A5090000070000801A000000B0020000008000000F000080536368477269640006180000FA9CFFFF436F6E6365727473417274697374730000007C00A5090000070000801B0000005A0000000180000051000080436F6E74726F6C00312500002F93FFFF52656C6174696F6E736869702027464B5F41727469737473436F6E63657274735F4172746973747327206265747765656E2027417274697374732720616E642027436F6E6365727473417274697374732706000000002800B5010000070000801C000000310000006700000002800000436F6E74726F6C7345280000C492FFFF00007C00A5090000070000801D000000620000000180000053000080436F6E74726F6C0070EEFFFF75A5FFFF52656C6174696F6E736869702027464B5F41727469737473436F6E63657274735F436F6E636572747327206265747765656E2027436F6E63657274732720616E642027436F6E636572747341727469737473270000002800B5010000070000801E000000310000006900000002800000436F6E74726F6C00B60A00002BB2FFFF00003400A5090000070000801F000000A8020000008000000B000080536368477269640036F7FFFF7EA0FFFF496E737472756D656E74730000003C00A50900000700008024000000B8020000008000001300008053636847726964739ADEFFFF389BFFFF436F6E6365727473496E737472756D656E74730000008400A5090000070000802500000052000000018000005B000080436F6E74726F6C0099DDFFFF54A2FFFF52656C6174696F6E736869702027464B5F436F6E6365727473496E737472756D656E74735F436F6E636572747327206265747765656E2027436F6E63657274732720616E642027436F6E6365727473496E737472756D656E7473270000002800B50100000700008026000000310000007100000002800000436F6E74726F6C00DFDFFFFF81ACFFFF00008C00A50900000700008027000000520000000180000061000080436F6E74726F6C004AEFFFFF7D9FFFFF52656C6174696F6E736869702027464B5F436F6E6365727473496E737472756D656E74735F496E737472756D656E747327206265747765656E2027496E737472756D656E74732720616E642027436F6E6365727473496E737472756D656E74732700000000002800B50100000700008028000000310000007700000002800000436F6E74726F6C0032EAFFFF129FFFFF00003400A5090000070000802B000000A402000000800000090000805363684772696400EC130000C0C7FFFF436F756E747269657300000000003400A5090000070000802C000000A4020000008000000900008053636847726964007E36000044CBFFFF4372656174696F6E7300000000003800A5090000070000802D000000B0020000008000000F00008053636847726964739ADEFFFFECC8FFFF496E737472756D656E746174696F6E0000007000A5090000070000802E000000720000000180000045000080436F6E74726F6C00492E0000539AFFFF52656C6174696F6E736869702027464B5F417274697374735F436F756E747269657327206265747765656E2027436F756E74726965732720616E642027417274697374732700000000002800B5010000070000802F000000310000005B00000002800000436F6E74726F6C002430000019B6FFFF00007000A50900000700008030000000620000000180000047000080436F6E74726F6C0087EDFFFFD3C1FFFF52656C6174696F6E736869702027464B5F436F6E63657274735F436F756E747269657327206265747765656E2027436F756E74726965732720616E642027436F6E6365727473270000002800B50100000700008031000000310000005D00000002800000436F6E74726F6C0087F9FFFF1CC4FFFF00007C00A50900000700008032000000520000000180000053000080436F6E74726F6C0099DDFFFFD3C1FFFF52656C6174696F6E736869702027464B5F436F6E63657274735F496E737472756D656E746174696F6E27206265747765656E2027496E737472756D656E746174696F6E2720616E642027436F6E6365727473270000002800B50100000700008033000000310000006900000002800000436F6E74726F6C00DFDFFFFF91C6FFFF00003C00A50900000700008034000000B60200000080000012000080536368477269640070170000DEA9FFFF41727469737473496E737472756D656E7473720000003800A50900000700008035000000AC020000008000000D0000805363684772696400FA3200002CB6FFFF417274697374735374796C65730B000000008800A5090000070000803600000062000000018000005F000080436F6E74726F6C008304000047A8FFFF52656C6174696F6E736869702027464B5F41727469737473496E737472756D656E74735F496E737472756D656E747327206265747765656E2027496E737472756D656E74732720616E64202741727469737473496E737472756D656E7473270000002800B50100000700008037000000310000007500000002800000436F6E74726F6C00070200008DAAFFFF00007400A5090000070000803800000052000000018000004B000080436F6E74726F6C002025000071BAFFFF52656C6174696F6E736869702027464B5F417274697374735374796C65735F5374796C657327206265747765656E20275374796C65732720616E642027417274697374735374796C6573270000002800B50100000700008039000000310000006100000002800000436F6E74726F6C00B1260000B7BCFFFF00007800A5090000070000803A0000005A000000018000004D000080436F6E74726F6C00514100003FA1FFFF52656C6174696F6E736869702027464B5F417274697374735374796C65735F4172746973747327206265747765656E2027417274697374732720616E642027417274697374735374796C65732700000000002800B5010000070000803B000000310000006300000002800000436F6E74726F6C0021360000D4A0FFFF00008000A5090000070000803C000000620000000180000057000080436F6E74726F6C00442B000047A8FFFF52656C6174696F6E736869702027464B5F41727469737473496E737472756D656E74735F4172746973747327206265747765656E2027417274697374732720616E64202741727469737473496E737472756D656E7473270000002800B5010000070000803D000000310000006D00000002800000436F6E74726F6C0017320000DCA7FFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200F01217FC75BED6010202000010484500000000000000000000000000000000006C0100004400610074006100200053006F0075007200630065003D004D004D0045005400570041004C004C0059002D00500043003B0049006E0069007400690061006C00200043006100740061006C006F0067003D00410070006C006100750064006F00440042003B0049006E007400650067007200610074006500640020005300650063007500720069002143341208000000DA1200006F1D00007856341207000000140100004100720074006900730074007300000067010000000000000000000014000000020000000300000004000000040000000000000000000000140000000000000000000000010000000400000000000000430000004700000004000000000000000600000004000000000000001400000047000000010000000300000005000000E8FFFFFF000000001400000047000000000000000300000005000000ECFFFFFF0000000014000000470000000200000003000000050000000800000000000000530000004E0100000400000000000000060000000800000000000000530000004E01000001000000030000000500000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000002340000471C0000000000002D0100000A0000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000DA1200006F1D000000000000080000000800000002000000020000001C0100008C07000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000008000000410072007400690073007400730000002143341208000000C41200006A15000078563412070000001401000043006F006E006300650072007400730000000000A8B9821200000000A8B98212F80C7F120500000000000000030000000000000000000000000100000001000000000000D4018F620C6F8F6234277B6200000000090000004000000040000000000000004D006900630072006F0073006F00660074002000530053004C002000500072006F0074006F0063006F006C002000500072006F00760069006400650072000000020000007C0200007C020000000000007C020000336C73730103000014C000000100000030020000140000000E91EAFDA01EE8459FB392A811EE480F6A3FBE2000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000023400000C1A0000000000002D010000090000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000C41200006A15000000000000070000000700000002000000020000001C0100008007000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000043006F006E0063006500720074007300000021433412080000009E100000D70900007856341207000000140100005300740079006C00650073000000440072006100770069006E0067002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003000330066003500660037006600310031006400350030006100330061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC06000000000000010000009E100000D709000000000000020000000200000002000000020000001C0100004407000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000005300740079006C0065007300000002000B00AE150000EEB7FFFF9CEFFFFFEEB7FFFF0000000002000000F0F0F0000000000000000000000000000000000001000000120000000000000099FDFFFFECB5FFFF180A00005301000032000000010000020000180A0000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D61120046004B005F0043006F006E00630065007200740073005F005300740079006C006500730021433412080000009E1000006B0A0000785634120700000014010000410072007400690073007400540079007000650073000000802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC06000000000000010000009E1000006B0A000000000000020000000200000002000000020000001C0100004407000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C00000041007200740069007300740054007900700065007300000002000B001A4F00003EB3FFFF1A4F000097AAFFFF0000000002000000F0F0F00000000000000000000000000000000000010000001900000000000000C94F000042AEFFFF880B00005301000032000000010000020000880B0000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D61160046004B005F0041007200740069007300740073005F00410072007400690073007400540079007000650073002143341208000000A10F0000D40A000078563412070000001401000043006F006E006300650072007400730041007200740069007300740073000000020000000300000004000000040000000000000000000000140000000000000000000000010000000400000000000000430000004700000004000000000000000600000004000000000000001400000047000000010000000300000005000000E8FFFFFF000000001400000047000000000000000300000005000000ECFFFFFF0000000014000000470000000200000003000000050000000800000000000000530000004E0100000400000000000000060000000800000000000000530000004E01000001000000030000000500000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000A10F0000D40A000000000000020000000200000002000000020000001C010000B406000000000000010000003A1800003008000000000000020000000200000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001000000043006F006E00630065007200740073004100720074006900730074007300000003000B00EE4D0000C694FFFFAC260000C694FFFFAC260000FA9CFFFF0000000002000000F0F0F00000000000000000000000000000000000010000001C0000000000000045280000C492FFFF840D00005301000032000000010000020000840D0000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D611A0046004B005F00410072007400690073007400730043006F006E00630065007200740073005F00410072007400690073007400730004000B009CEFFFFF7CB1FFFF7C0D00007CB1FFFF7C0D0000F0A6FFFF06180000F0A6FFFF0000000002000000F0F0F00000000000000000000000000000000000010000001E00000000000000B60A00002BB2FFFFC70E00005301000034000000010000020000C70E0000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D611B0046004B005F00410072007400690073007400730043006F006E00630065007200740073005F0043006F006E00630065007200740073002143341208000000790E0000D709000078563412070000001401000049006E0073007400720075006D0065006E00740073000000802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000790E0000D709000000000000020000000200000002000000020000001C0100000C06000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C00000049006E0073007400720075006D0065006E007400730000002143341208000000DC110000D709000078563412070000001401000043006F006E006300650072007400730049006E0073007400720075006D0065006E007400730000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000DC110000D709000000000000020000000200000002000000020000001C010000F807000000000000010000003A1800003008000000000000020000000200000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000007000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001400000043006F006E006300650072007400730049006E0073007400720075006D0065006E0074007300000002000B0030DFFFFF24AFFFFF30DFFFFF0FA5FFFF0000000002000000F0F0F00000000000000000000000000000000000010000002600000000000000DFDFFFFF81ACFFFFAA110000530100000F000000010000020000AA110000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D611F0046004B005F0043006F006E006300650072007400730049006E0073007400720075006D0065006E00740073005F0043006F006E006300650072007400730002000B0036F7FFFF14A1FFFF76F0FFFF14A1FFFF0000000002000000F0F0F0000000000000000000000000000000000001000000280000000000000032EAFFFF129FFFFF49130000530100003200000001000002000049130000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D61220046004B005F0043006F006E006300650072007400730049006E0073007400720075006D0065006E00740073005F0049006E0073007400720075006D0065006E00740073002143341208000000891B0000D709000078563412070000001401000043006F0075006E00740072006900650073000000FFFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000891B0000D709000000000000020000000200000002000000020000001C010000740D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000043006F0075006E007400720069006500730000002143341208000000891B0000D70900007856341207000000140100004300720065006100740069006F006E00730000001400000013000000020000002400000032000000020000002B0000003A000000020000002F00000041000000100000003700000048000000020000003C0000004E00000010000000420000005300000002000000500000005B000000020000005E0000006300000002000000630000006700000002000000680000006B000000020000006F0000007300000002000000730000007A000000100000007B0000008100000002000000800000008700000010000000880000008E000000020000008D00000092000000020000009200000096000000020000009900000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000891B0000D709000000000000020000000200000002000000020000001C010000740D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A0000004300720065006100740069006F006E00730000002143341208000000FE1500005709000078563412070000001401000049006E0073007400720075006D0065006E0074006100740069006F006E000000450F945B53B81A4E9DBDECC457A5BE2A0400000002000000000010660000000100002000000075F82B5CE1E3577274B729BA01C2775F274BCDCC00435B345C75DFCD83DC7587000000000E80000000020000200000000C8FF20891D8C4CD4ED391B36DB4E22A71EC41AA332A426F1A568AF4E669BA71600000007DB45508DF18C9E9E72CDD2FDEA1BF2686021D5BA2C53424C784D652ED54EC4F27C90219A4AD26DF072BA61502E431560F85C81202F5167FE6304C92F2BFEB3380BFBD603F7F19AA4A096468B4A61CE9273DA551000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000FE1500005709000000000000020000000200000002000000020000001C010000500A000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001000000049006E0073007400720075006D0065006E0074006100740069006F006E00000006000B00752F000056C8FFFF0531000056C8FFFF0531000030C6FFFF752F000030C6FFFF752F0000CE9BFFFFEE4D0000CE9BFFFF0000000002000000F0F0F00000000000000000000000000000000000010000002F000000000000002430000019B6FFFFA20A0000530100001A000000010000020000A20A0000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D61140046004B005F0041007200740069007300740073005F0043006F0075006E007400720069006500730004000B0082140000C0C7FFFF821400001EC6FFFF02EFFFFF1EC6FFFF02EFFFFF8EC4FFFF0000000002000000F0F0F0000000000000000000000000000000000001000000310000000000000087F9FFFF1CC4FFFFE50B00005301000048000000010000020000E50B0000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D61150046004B005F0043006F006E00630065007200740073005F0043006F0075006E007400720069006500730002000B0030DFFFFFECC8FFFF30DFFFFF8EC4FFFF0000000002000000F0F0F00000000000000000000000000000000000010000003300000000000000DFDFFFFF91C6FFFF240F00005301000022000000010000020000240F000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D611B0046004B005F0043006F006E00630065007200740073005F0049006E0073007400720075006D0065006E0074006100740069006F006E0021433412080000000015000043090000785634120700000014010000410072007400690073007400730049006E0073007400720075006D0065006E0074007300000000000000000008000000000000000000000000010000000100000000000010B12F6610B12F6610B12F6620E61A665CB93166D4012F660C6F2F6634271B66E6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9FFFFE6F9000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000001500004309000000000000020000000200000002000000020000001C010000C009000000000000010000003A1800003008000000000000020000000200000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000013000000410072007400690073007400730049006E0073007400720075006D0065006E0074007300000021433412080000009E100000FF0A000078563412070000001401000041007200740069007300740073005300740079006C00650073000000610063006C00650043006C00690065006E0074002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC06000000000000010000009E100000FF0A000000000000020000000200000002000000020000001C0100004407000000000000010000003A1800003008000000000000020000000200000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E00000041007200740069007300740073005300740079006C0065007300000004000B00AF050000DEA9FFFF8F0E0000DEA9FFFF8F0E000024AFFFFF7017000024AFFFFF0000000002000000F0F0F00000000000000000000000000000000000010000003700000000000000070200008DAAFFFF05120000530100000E0000000100000200000512000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D61210046004B005F00410072007400690073007400730049006E0073007400720075006D0065006E00740073005F0049006E0073007400720075006D0065006E007400730002000B004C26000008BCFFFFFA32000008BCFFFF0000000002000000F0F0F00000000000000000000000000000000000010000003900000000000000B1260000B7BCFFFFE50B00005301000032000000010000020000E50B000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D61170046004B005F0041007200740069007300740073005300740079006C00650073005F005300740079006C006500730003000B00EE4D0000D6A2FFFFCC420000D6A2FFFFCC4200002CB6FFFF0000000002000000F0F0F00000000000000000000000000000000000010000003B0000000000000021360000D4A0FFFF130C00005301000024000000010000020000130C000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D61180046004B005F0041007200740069007300740073005300740079006C00650073005F00410072007400690073007400730004000B00EE4D0000DEA9FFFF2F3D0000DEA9FFFF2F3D000074AAFFFF702C000074AAFFFF0000000002000000F0F0F00000000000000000000000000000000000010000003D0000000000000017320000DCA7FFFF240F00005301000024000000010000020000240F000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D611D0046004B005F00410072007400690073007400730049006E0073007400720075006D0065006E00740073005F0041007200740069007300740073000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000200000003F2100000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000340000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000350000004A0400000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000004700000012000000000000000C000000380C0000988DFFFF0100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900330032000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000050000000500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000080000000800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003800360030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000001100000011000000000000003600000001D1101201000000640062006F00000046004B005F0043006F006E00630065007200740073005F005300740079006C006500730000000000000000000000C402000000001200000012000000110000000800000001AAFF11F0AAFF110000000000000000AD070000000000170000001700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003800360030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000001800000018000000000000003E000000016AEE1301000000640062006F00000046004B005F0041007200740069007300740073005F004100720074006900730074005400790070006500730000000000000000000000C402000000001900000019000000180000000800000001A5FF11F0A5FF110000000000000000AD0700000000001A0000001A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700310036000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000001B0000001B00000000000000460000000100270001000000640062006F00000046004B005F00410072007400690073007400730043006F006E00630065007200740073005F00410072007400690073007400730000000000000000000000C402000000001C0000001C0000001B0000000800000001A5FF11B0A5FF110000000000000000AD0700000000001D0000001D00000000000000480000000100270001000000640062006F00000046004B005F00410072007400690073007400730043006F006E00630065007200740073005F0043006F006E006300650072007400730000000000000000000000C402000000001E0000001E0000001D0000000800000001A5FF1170A5FF110000000000000000AD0700000000001F0000001F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003500340038000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000240000002400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003000340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000250000002500000000000000500000000100350001000000640062006F00000046004B005F0043006F006E006300650072007400730049006E0073007400720075006D0065006E00740073005F0043006F006E006300650072007400730000000000000000000000C402000000002600000026000000250000000800000001A4FF11F0A4FF110000000000000000AD070000000000270000002700000000000000560000000100440001000000640062006F00000046004B005F0043006F006E006300650072007400730049006E0073007400720075006D0065006E00740073005F0049006E0073007400720075006D0065006E007400730000000000000000000000C402000000002800000028000000270000000800000001A8FF11B0A8FF110000000000000000AD0700000000002B0000002B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340034000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000002C0000002C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340034000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000002D0000002D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003600340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000002E0000002E000000000000003A000000016AEE1301000000640062006F00000046004B005F0041007200740069007300740073005F0043006F0075006E007400720069006500730000000000000000000000C402000000002F0000002F0000002E0000000800000001A6FF11F0A6FF110000000000000000AD0700000000003000000030000000000000003C000000016AEE1301000000640062006F00000046004B005F0043006F006E00630065007200740073005F0043006F0075006E007400720069006500730000000000000000000000C402000000003100000031000000300000000800000001A9FF11F0A9FF110000000000000000AD070000000000320000003200000000000000480000000100270001000000640062006F00000046004B005F0043006F006E00630065007200740073005F0049006E0073007400720075006D0065006E0074006100740069006F006E0000000000000000000000C402000000003300000033000000320000000800000001A4FF1170A4FF110000000000000000AD070000000000340000003400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400390036000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000350000003500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003800360030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000360000003600000000000000540000000100440001000000640062006F00000046004B005F00410072007400690073007400730049006E0073007400720075006D0065006E00740073005F0049006E0073007400720075006D0065006E007400730000000000000000000000C402000000003700000037000000360000000800000001201E1238201E120000000000000000AD0F000001000038000000380000000000000040000000016AEE1301000000640062006F00000046004B005F0041007200740069007300740073005300740079006C00650073005F005300740079006C006500730000000000000000000000C402000000003900000039000000380000000800000001211E12F8211E120000000000000000AD0F00000100003A0000003A00000000000000420000000100000001000000640062006F00000046004B005F0041007200740069007300740073005300740079006C00650073005F00410072007400690073007400730000000000000000000000C402000000003B0000003B0000003A00000008000000011C1E12381C1E120000000000000000AD0F00000100003C0000003C000000000000004C000000016AEE1301000000640062006F00000046004B005F00410072007400690073007400730049006E0073007400720075006D0065006E00740073005F00410072007400690073007400730000000000000000000000C402000000003D0000003D0000003C0000000800000001221E1278221E120000000000000000AD0F0000010000410000003C00000001000000340000009E000000470000003A000000010000003500000086000000340000001B000000010000001A000000560000003000000025000000050000002400000006000000010000001D000000050000001A00000045000000520000003800000008000000350000004500000048000000110000000800000005000000360000005B0000001800000017000000010000000000000003000000360000001F000000340000004D00000056000000270000001F000000240000002E0000004D0000002E0000002B000000010000005D0000006E000000300000002B00000005000000000000003D000000320000002D00000005000000000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500140000004400690061006700720061006D005F0030000000000226002000000049006E0073007400720075006D0065006E0074006100740069006F006E00000008000000640062006F00000000022600140000004300720065006100740069006F006E007300000008000000640062006F000000000226001400000043006F0075006E0074007200690065007300000008000000640062006F000000000226002800000043006F006E006300650072007400730049006E0073007400720075006D0065006E0074007300000008000000640062006F000000000226001800000049006E0073007400720075006D0065006E0074007300000008000000640062006F000000000226002000000043006F006E00630065007200740073004100720074006900730074007300000008000000640062006F000000000226001800000041007200740069007300740054007900700065007300000008000000640062006F000000000226000E0000005300740079006C0065007300000008000000640062006F000000000226001200000043006F006E0063006500720074007300000008000000640062006F00000000022600100000004100720074006900730074007300000008000000640062006F0000000002260026000000410072007400690073007400730049006E0073007400720075006D0065006E0074007300000008000000640062006F000000000224001C00000041007200740069007300740073005300740079006C0065007300000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for tbl_Countries
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Countries]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_Countries]
GO

CREATE TABLE [dbo].[tbl_Countries] (
  [CountryID] int  NULL,
  [CountryName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TwoCharCountryCode] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ThreeCharCountryCode] char(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO


-- ----------------------------
-- Records of tbl_Countries
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[tbl_Countries] VALUES (N'1', N'Afghanistan', N'AF', N'AFG'), (N'2', N'Aland Islands', N'AX', N'ALA'), (N'3', N'Albania', N'AL', N'ALB'), (N'4', N'Algeria', N'DZ', N'DZA'), (N'5', N'American Samoa', N'AS', N'ASM'), (N'6', N'Andorra', N'AD', N'AND'), (N'7', N'Angola', N'AO', N'AGO'), (N'8', N'Anguilla', N'AI', N'AIA'), (N'9', N'Antarctica', N'AQ', N'ATA'), (N'10', N'Antigua and Barbuda', N'AG', N'ATG'), (N'11', N'Argentina', N'AR', N'ARG'), (N'12', N'Armenia', N'AM', N'ARM'), (N'13', N'Aruba', N'AW', N'ABW'), (N'14', N'Australia', N'AU', N'AUS'), (N'15', N'Austria', N'AT', N'AUT'), (N'16', N'Azerbaijan', N'AZ', N'AZE'), (N'17', N'Bahamas', N'BS', N'BHS'), (N'18', N'Bahrain', N'BH', N'BHR'), (N'19', N'Bangladesh', N'BD', N'BGD'), (N'20', N'Barbados', N'BB', N'BRB'), (N'21', N'Belarus', N'BY', N'BLR'), (N'22', N'Belgium', N'BE', N'BEL'), (N'23', N'Belize', N'BZ', N'BLZ'), (N'24', N'Benin', N'BJ', N'BEN'), (N'25', N'Bermuda', N'BM', N'BMU'), (N'26', N'Bhutan', N'BT', N'BTN'), (N'27', N'Bolivia', N'BO', N'BOL'), (N'28', N'Bonaire, Sint Eustatius and Saba', N'BQ', N'BES'), (N'29', N'Bosnia and Herzegovina', N'BA', N'BIH'), (N'30', N'Botswana', N'BW', N'BWA'), (N'31', N'Bouvet Island', N'BV', N'BVT'), (N'32', N'Brazil', N'BR', N'BRA'), (N'33', N'British Indian Ocean Territory', N'IO', N'IOT'), (N'34', N'Brunei', N'BN', N'BRN'), (N'35', N'Bulgaria', N'BG', N'BGR'), (N'36', N'Burkina Faso', N'BF', N'BFA'), (N'37', N'Burundi', N'BI', N'BDI'), (N'38', N'Cambodia', N'KH', N'KHM'), (N'39', N'Cameroon', N'CM', N'CMR'), (N'40', N'Canada', N'CA', N'CAN'), (N'41', N'Cape Verde', N'CV', N'CPV'), (N'42', N'Cayman Islands', N'KY', N'CYM'), (N'43', N'Central African Republic', N'CF', N'CAF'), (N'44', N'Chad', N'TD', N'TCD'), (N'45', N'Chile', N'CL', N'CHL'), (N'46', N'China', N'CN', N'CHN'), (N'47', N'Christmas Island', N'CX', N'CXR'), (N'48', N'Cocos (Keeling) Islands', N'CC', N'CCK'), (N'49', N'Colombia', N'CO', N'COL'), (N'50', N'Comoros', N'KM', N'COM'), (N'51', N'Congo', N'CG', N'COG'), (N'52', N'Cook Islands', N'CK', N'COK'), (N'53', N'Costa Rica', N'CR', N'CRI'), (N'54', N'Ivory Coast', N'CI', N'CIV'), (N'55', N'Croatia', N'HR', N'HRV'), (N'56', N'Cuba', N'CU', N'CUB'), (N'57', N'Curacao', N'CW', N'CUW'), (N'58', N'Cyprus', N'CY', N'CYP'), (N'59', N'Czech Republic', N'CZ', N'CZE'), (N'60', N'Democratic Republic of the Congo', N'CD', N'COD'), (N'61', N'Denmark', N'DK', N'DNK'), (N'62', N'Djibouti', N'DJ', N'DJI'), (N'63', N'Dominica', N'DM', N'DMA'), (N'64', N'Dominican Republic', N'DO', N'DOM'), (N'65', N'Ecuador', N'EC', N'ECU'), (N'66', N'Egypt', N'EG', N'EGY'), (N'67', N'El Salvador', N'SV', N'SLV'), (N'68', N'Equatorial Guinea', N'GQ', N'GNQ'), (N'69', N'Eritrea', N'ER', N'ERI'), (N'70', N'Estonia', N'EE', N'EST'), (N'71', N'Ethiopia', N'ET', N'ETH'), (N'72', N'Falkland Islands (Malvinas)', N'FK', N'FLK'), (N'73', N'Faroe Islands', N'FO', N'FRO'), (N'74', N'Fiji', N'FJ', N'FJI'), (N'75', N'Finland', N'FI', N'FIN'), (N'76', N'France', N'FR', N'FRA'), (N'77', N'French Guiana', N'GF', N'GUF'), (N'78', N'French Polynesia', N'PF', N'PYF'), (N'79', N'French Southern Territories', N'TF', N'ATF'), (N'80', N'Gabon', N'GA', N'GAB'), (N'81', N'Gambia', N'GM', N'GMB'), (N'82', N'Georgia', N'GE', N'GEO'), (N'83', N'Germany', N'DE', N'DEU'), (N'84', N'Ghana', N'GH', N'GHA'), (N'85', N'Gibraltar', N'GI', N'GIB'), (N'86', N'Greece', N'GR', N'GRC'), (N'87', N'Greenland', N'GL', N'GRL'), (N'88', N'Grenada', N'GD', N'GRD'), (N'89', N'Guadaloupe', N'GP', N'GLP'), (N'90', N'Guam', N'GU', N'GUM'), (N'91', N'Guatemala', N'GT', N'GTM'), (N'92', N'Guernsey', N'GG', N'GGY'), (N'93', N'Guinea', N'GN', N'GIN'), (N'94', N'Guinea-Bissau', N'GW', N'GNB'), (N'95', N'Guyana', N'GY', N'GUY'), (N'96', N'Haiti', N'HT', N'HTI'), (N'97', N'Heard Island and McDonald Islands', N'HM', N'HMD'), (N'98', N'Honduras', N'HN', N'HND'), (N'99', N'Hong Kong', N'HK', N'HKG'), (N'100', N'Hungary', N'HU', N'HUN')
GO

INSERT INTO [dbo].[tbl_Countries] VALUES (N'101', N'Iceland', N'IS', N'ISL'), (N'102', N'India', N'IN', N'IND'), (N'103', N'Indonesia', N'ID', N'IDN'), (N'104', N'Iran', N'IR', N'IRN'), (N'105', N'Iraq', N'IQ', N'IRQ'), (N'106', N'Ireland', N'IE', N'IRL'), (N'107', N'Isle of Man', N'IM', N'IMN'), (N'108', N'Israel', N'IL', N'ISR'), (N'109', N'Italy', N'IT', N'ITA'), (N'110', N'Jamaica', N'JM', N'JAM'), (N'111', N'Japan', N'JP', N'JPN'), (N'112', N'Jersey', N'JE', N'JEY'), (N'113', N'Jordan', N'JO', N'JOR'), (N'114', N'Kazakhstan', N'KZ', N'KAZ'), (N'115', N'Kenya', N'KE', N'KEN'), (N'116', N'Kiribati', N'KI', N'KIR'), (N'117', N'Kosovo', N'XK', N'---'), (N'118', N'Kuwait', N'KW', N'KWT'), (N'119', N'Kyrgyzstan', N'KG', N'KGZ'), (N'120', N'Laos', N'LA', N'LAO'), (N'121', N'Latvia', N'LV', N'LVA'), (N'122', N'Lebanon', N'LB', N'LBN'), (N'123', N'Lesotho', N'LS', N'LSO'), (N'124', N'Liberia', N'LR', N'LBR'), (N'125', N'Libya', N'LY', N'LBY'), (N'126', N'Liechtenstein', N'LI', N'LIE'), (N'127', N'Lithuania', N'LT', N'LTU'), (N'128', N'Luxembourg', N'LU', N'LUX'), (N'129', N'Macao', N'MO', N'MAC'), (N'130', N'Macedonia', N'MK', N'MKD'), (N'131', N'Madagascar', N'MG', N'MDG'), (N'132', N'Malawi', N'MW', N'MWI'), (N'133', N'Malaysia', N'MY', N'MYS'), (N'134', N'Maldives', N'MV', N'MDV'), (N'135', N'Mali', N'ML', N'MLI'), (N'136', N'Malta', N'MT', N'MLT'), (N'137', N'Marshall Islands', N'MH', N'MHL'), (N'138', N'Martinique', N'MQ', N'MTQ'), (N'139', N'Mauritania', N'MR', N'MRT'), (N'140', N'Mauritius', N'MU', N'MUS'), (N'141', N'Mayotte', N'YT', N'MYT'), (N'142', N'Mexico', N'MX', N'MEX'), (N'143', N'Micronesia', N'FM', N'FSM'), (N'144', N'Moldava', N'MD', N'MDA'), (N'145', N'Monaco', N'MC', N'MCO'), (N'146', N'Mongolia', N'MN', N'MNG'), (N'147', N'Montenegro', N'ME', N'MNE'), (N'148', N'Montserrat', N'MS', N'MSR'), (N'149', N'Morocco', N'MA', N'MAR'), (N'150', N'Mozambique', N'MZ', N'MOZ'), (N'151', N'Myanmar (Burma)', N'MM', N'MMR'), (N'152', N'Namibia', N'NA', N'NAM'), (N'153', N'Nauru', N'NR', N'NRU'), (N'154', N'Nepal', N'NP', N'NPL'), (N'155', N'Netherlands', N'NL', N'NLD'), (N'156', N'New Caledonia', N'NC', N'NCL'), (N'157', N'New Zealand', N'NZ', N'NZL'), (N'158', N'Nicaragua', N'NI', N'NIC'), (N'159', N'Niger', N'NE', N'NER'), (N'160', N'Nigeria', N'NG', N'NGA'), (N'161', N'Niue', N'NU', N'NIU'), (N'162', N'Norfolk Island', N'NF', N'NFK'), (N'163', N'North Korea', N'KP', N'PRK'), (N'164', N'Northern Mariana Islands', N'MP', N'MNP'), (N'165', N'Norway', N'NO', N'NOR'), (N'166', N'Oman', N'OM', N'OMN'), (N'167', N'Pakistan', N'PK', N'PAK'), (N'168', N'Palau', N'PW', N'PLW'), (N'169', N'Palestine', N'PS', N'PSE'), (N'170', N'Panama', N'PA', N'PAN'), (N'171', N'Papua New Guinea', N'PG', N'PNG'), (N'172', N'Paraguay', N'PY', N'PRY'), (N'173', N'Peru', N'PE', N'PER'), (N'174', N'Phillipines', N'PH', N'PHL'), (N'175', N'Pitcairn', N'PN', N'PCN'), (N'176', N'Poland', N'PL', N'POL'), (N'177', N'Portugal', N'PT', N'PRT'), (N'178', N'Puerto Rico', N'PR', N'PRI'), (N'179', N'Qatar', N'QA', N'QAT'), (N'180', N'Reunion', N'RE', N'REU'), (N'181', N'Romania', N'RO', N'ROU'), (N'182', N'Russia', N'RU', N'RUS'), (N'183', N'Rwanda', N'RW', N'RWA'), (N'184', N'Saint Barthelemy', N'BL', N'BLM'), (N'185', N'Saint Helena', N'SH', N'SHN'), (N'186', N'Saint Kitts and Nevis', N'KN', N'KNA'), (N'187', N'Saint Lucia', N'LC', N'LCA'), (N'188', N'Saint Martin', N'MF', N'MAF'), (N'189', N'Saint Pierre and Miquelon', N'PM', N'SPM'), (N'190', N'Saint Vincent and the Grenadines', N'VC', N'VCT'), (N'191', N'Samoa', N'WS', N'WSM'), (N'192', N'San Marino', N'SM', N'SMR'), (N'193', N'Sao Tome and Principe', N'ST', N'STP'), (N'194', N'Saudi Arabia', N'SA', N'SAU'), (N'195', N'Senegal', N'SN', N'SEN'), (N'196', N'Serbia', N'RS', N'SRB'), (N'197', N'Seychelles', N'SC', N'SYC'), (N'198', N'Sierra Leone', N'SL', N'SLE'), (N'199', N'Singapore', N'SG', N'SGP'), (N'200', N'Sint Maarten', N'SX', N'SXM')
GO

INSERT INTO [dbo].[tbl_Countries] VALUES (N'201', N'Slovakia', N'SK', N'SVK'), (N'202', N'Slovenia', N'SI', N'SVN'), (N'203', N'Solomon Islands', N'SB', N'SLB'), (N'204', N'Somalia', N'SO', N'SOM'), (N'205', N'South Africa', N'ZA', N'ZAF'), (N'206', N'South Georgia and the South Sandwich Islands', N'GS', N'SGS'), (N'207', N'South Korea', N'KR', N'KOR'), (N'208', N'South Sudan', N'SS', N'SSD'), (N'209', N'Spain', N'ES', N'ESP'), (N'210', N'Sri Lanka', N'LK', N'LKA'), (N'211', N'Sudan', N'SD', N'SDN'), (N'212', N'Suriname', N'SR', N'SUR'), (N'213', N'Svalbard and Jan Mayen', N'SJ', N'SJM'), (N'214', N'Swaziland', N'SZ', N'SWZ'), (N'215', N'Sweden', N'SE', N'SWE'), (N'216', N'Switzerland', N'CH', N'CHE'), (N'217', N'Syria', N'SY', N'SYR'), (N'218', N'Taiwan', N'TW', N'TWN'), (N'219', N'Tajikistan', N'TJ', N'TJK'), (N'220', N'Tanzania', N'TZ', N'TZA'), (N'221', N'Thailand', N'TH', N'THA'), (N'222', N'Timor-Leste (East Timor)', N'TL', N'TLS'), (N'223', N'Togo', N'TG', N'TGO'), (N'224', N'Tokelau', N'TK', N'TKL'), (N'225', N'Tonga', N'TO', N'TON'), (N'226', N'Trinidad and Tobago', N'TT', N'TTO'), (N'227', N'Tunisia', N'TN', N'TUN'), (N'228', N'Turkey', N'TR', N'TUR'), (N'229', N'Turkmenistan', N'TM', N'TKM'), (N'230', N'Turks and Caicos Islands', N'TC', N'TCA'), (N'231', N'Tuvalu', N'TV', N'TUV'), (N'232', N'Uganda', N'UG', N'UGA'), (N'233', N'Ukraine', N'UA', N'UKR'), (N'234', N'United Arab Emirates', N'AE', N'ARE'), (N'235', N'United Kingdom', N'GB', N'GBR'), (N'236', N'United States', N'US', N'USA'), (N'237', N'United States Minor Outlying Islands', N'UM', N'UMI'), (N'238', N'Uruguay', N'UY', N'URY'), (N'239', N'Uzbekistan', N'UZ', N'UZB'), (N'240', N'Vanuatu', N'VU', N'VUT'), (N'241', N'Vatican City', N'VA', N'VAT'), (N'242', N'Venezuela', N'VE', N'VEN'), (N'243', N'Vietnam', N'VN', N'VNM'), (N'244', N'Virgin Islands, British', N'VG', N'VGB'), (N'245', N'Virgin Islands, US', N'VI', N'VIR'), (N'246', N'Wallis and Futuna', N'WF', N'WLF'), (N'247', N'Western Sahara', N'EH', N'ESH'), (N'248', N'Yemen', N'YE', N'YEM'), (N'249', N'Zambia', N'ZM', N'ZMB'), (N'250', N'Zimbabwe', N'ZW', N'ZWE')
GO

COMMIT
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for Artists
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Artists]', RESEED, 27)
GO


-- ----------------------------
-- Primary Key structure for table Artists
-- ----------------------------
ALTER TABLE [dbo].[Artists] ADD CONSTRAINT [PK_Aritsts] PRIMARY KEY CLUSTERED ([ArtistId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ArtistsInstruments
-- ----------------------------
ALTER TABLE [dbo].[ArtistsInstruments] ADD CONSTRAINT [PK_ArtistsInstruments] PRIMARY KEY CLUSTERED ([ArtistId], [InstrumentId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ArtistsStyles
-- ----------------------------
ALTER TABLE [dbo].[ArtistsStyles] ADD CONSTRAINT [PK_ArtistsStyles] PRIMARY KEY CLUSTERED ([ArtistId], [StyleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ArtistTypes
-- ----------------------------
ALTER TABLE [dbo].[ArtistTypes] ADD CONSTRAINT [PK_ArtistType] PRIMARY KEY CLUSTERED ([ArtistTypeId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Concerts
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Concerts]', RESEED, 20)
GO


-- ----------------------------
-- Primary Key structure for table Concerts
-- ----------------------------
ALTER TABLE [dbo].[Concerts] ADD CONSTRAINT [PK_Concerts] PRIMARY KEY CLUSTERED ([ConcertId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ConcertsArtists
-- ----------------------------
ALTER TABLE [dbo].[ConcertsArtists] ADD CONSTRAINT [PK_ArtistsConcerts] PRIMARY KEY CLUSTERED ([ArtistId], [ConcertId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ConcertsInstruments
-- ----------------------------
ALTER TABLE [dbo].[ConcertsInstruments] ADD CONSTRAINT [PK_ConcertsInstruments] PRIMARY KEY CLUSTERED ([ConcertId], [InstrumentId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Countries
-- ----------------------------
ALTER TABLE [dbo].[Countries] ADD CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED ([CountryId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Creations
-- ----------------------------
ALTER TABLE [dbo].[Creations] ADD CONSTRAINT [PK_Creations] PRIMARY KEY CLUSTERED ([CreationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Instrumentation
-- ----------------------------
ALTER TABLE [dbo].[Instrumentation] ADD CONSTRAINT [PK_Instrumentation] PRIMARY KEY CLUSTERED ([InstrumentationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Instruments
-- ----------------------------
ALTER TABLE [dbo].[Instruments] ADD CONSTRAINT [PK_Instruments] PRIMARY KEY CLUSTERED ([InstrumentId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Styles
-- ----------------------------
ALTER TABLE [dbo].[Styles] ADD CONSTRAINT [PK_Styles] PRIMARY KEY CLUSTERED ([StyleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for sysdiagrams
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sysdiagrams]', RESEED, 1)
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B61182C9B23] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Foreign Keys structure for table Artists
-- ----------------------------
ALTER TABLE [dbo].[Artists] ADD CONSTRAINT [FK_Artists_ArtistTypes] FOREIGN KEY ([ArtistTypeId]) REFERENCES [dbo].[ArtistTypes] ([ArtistTypeId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Artists] ADD CONSTRAINT [FK_Artists_Countries] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Countries] ([CountryId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ArtistsInstruments
-- ----------------------------
ALTER TABLE [dbo].[ArtistsInstruments] ADD CONSTRAINT [FK_ArtistsInstruments_Instruments] FOREIGN KEY ([InstrumentId]) REFERENCES [dbo].[Instruments] ([InstrumentId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ArtistsInstruments] ADD CONSTRAINT [FK_ArtistsInstruments_Artists] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artists] ([ArtistId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ArtistsStyles
-- ----------------------------
ALTER TABLE [dbo].[ArtistsStyles] ADD CONSTRAINT [FK_ArtistsStyles_Styles] FOREIGN KEY ([StyleId]) REFERENCES [dbo].[Styles] ([StyleId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ArtistsStyles] ADD CONSTRAINT [FK_ArtistsStyles_Artists] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artists] ([ArtistId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Concerts
-- ----------------------------
ALTER TABLE [dbo].[Concerts] ADD CONSTRAINT [FK_Concerts_Styles] FOREIGN KEY ([StyleId]) REFERENCES [dbo].[Styles] ([StyleId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Concerts] ADD CONSTRAINT [FK_Concerts_Countries] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Countries] ([CountryId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Concerts] ADD CONSTRAINT [FK_Concerts_Instrumentation] FOREIGN KEY ([InstrumentationId]) REFERENCES [dbo].[Instrumentation] ([InstrumentationId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ConcertsArtists
-- ----------------------------
ALTER TABLE [dbo].[ConcertsArtists] ADD CONSTRAINT [FK_ArtistsConcerts_Artists] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artists] ([ArtistId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ConcertsArtists] ADD CONSTRAINT [FK_ArtistsConcerts_Concerts] FOREIGN KEY ([ConcertId]) REFERENCES [dbo].[Concerts] ([ConcertId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ConcertsInstruments
-- ----------------------------
ALTER TABLE [dbo].[ConcertsInstruments] ADD CONSTRAINT [FK_ConcertsInstruments_Instruments] FOREIGN KEY ([InstrumentId]) REFERENCES [dbo].[Instruments] ([InstrumentId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ConcertsInstruments] ADD CONSTRAINT [FK_ConcertsInstruments_Concerts] FOREIGN KEY ([ConcertId]) REFERENCES [dbo].[Concerts] ([ConcertId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

