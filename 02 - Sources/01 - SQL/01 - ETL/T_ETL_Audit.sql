/*
*Author; IZI
*Type : Création de la table T_ETL_Audit
*Base : ETL
*Date : 01/09/2017
*Version : v0.01
*Description : Création de la table d'audit 
*/


USE [ETL]
GO

if  exists ( select * from sys.sysobjects where name ='T_ETL_Audit' and xtype='U')
drop table T_ETL_Audit
GO

CREATE TABLE dbo.T_ETL_Audit
	(
	ID_Audit int IDENTITY(1,1) NOT NULL,
	LB_Fichier_Source nvarchar(50) NOT NULL,
	LB_Destination nvarchar(50) NOT NULL,
	DT_DateDebut datetime2(7) NOT NULL,
	DT_DateFin datetime2(7) NULL,
	LB_Statut nvarchar(5) NULL
	)  ON [PRIMARY]

