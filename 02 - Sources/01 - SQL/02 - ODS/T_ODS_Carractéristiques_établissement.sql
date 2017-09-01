/*
*Author; IZI
*Type : Création de la table T_ODS_Carractéristiques_établissement
*Base : ODS
*Date : 01/09/2017
*Version : v0.01
*Description : Création de la table d'audit 
*/

use ODS

if  exists ( select * from sys.sysobjects where name ='T_ODS_Carractéristiques_établissement' and xtype='U')
drop table T_ODS_Carractéristiques_établissement
GO

create table T_ODS_Carractéristiques_établissement
(
ID_CarracteristiqueEtablissement int IDENTITY(1,1) NOT NULL, 
ID_CodeSource int NOT NULL,
LB_LibelleCodeSource varchar(200) NOT NULL,
ID_Region int NOT NULL, 
ID_Departement int NOT NULL, 
NB_TotalEtsActif int NOT NULL, 
NB_TotalEtsActifAgriculture int NOT NULL, 
NB_TotalEtsActifIndustrie int NOT NULL, 
NB_TotalEtsActifConstruction int NOT NULL, 
NB_TotalEtsActifComSer int NOT NULL, 
NB_TotalEtsActifADM int NOT NULL, 
NB_TotalEtsSS int NOT NULL, 
NB_TotalEtsTPE int NOT NULL, 
NB_TotalEtsPE int NOT NULL, 
NB_TotalEtsME int NOT NULL, 
NB_TotalEtsGE int NOT NULL, 
NB_TotalPosteActif int NOT NULL, 
NB_TotalPosteActifAgriculture int NOT NULL, 
NB_TotalPosteActifIndustrie int NOT NULL, 
NB_TotalPosteActifConstruction int NOT NULL, 
NB_TotalPosteActifComSer int NOT NULL, 
NB_TotalPosteActifADM int NOT NULL
)