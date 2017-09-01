/*
*Author; IZI
*Type : Création de la table T_ETL_Error
*Base : ETL
*Date : 01/09/2017
*Version : v0.01
*Description : Création de la table d'audit des erreurs 
*/

USE [ETL]
GO

if  exists ( select * from sys.sysobjects where name ='T_ETL_Error' and xtype='U')
drop table T_ETL_Error
GO

CREATE TABLE [dbo].[T_ETL_Error](
	[ID_Erreur] int IDENTITY(1,1) NOT NULL,
	[ID_Audit] [int] NOT NULL,
	[LB_FichierSource] [nvarchar](50) NOT NULL,
	[LB_Destination] [nvarchar](50) NOT NULL,
	[LB_CodeErreur] [nvarchar](50) NOT NULL,
	[LB_LigneErreur] [nvarchar](500) NOT NULL
) ON [PRIMARY]

GO


