/*
*Author; IZI
*Type : Création de la procedure stockée PS_ODS_OnStart
*Base : ETL
*Date : 01/09/2017
*Version : v0.01
*Description : Création de la table d'audit 
*/

use ETL
go

CREATE PROCEDURE PS_ODS_OnStart 
	
	 @LB_Fichier_Source nvarchar(50),   
     @LB_Destination nvarchar(50)
	   
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into T_ETL_Audit(LB_Fichier_Source,LB_Destination,DT_DateDebut) values (@LB_Fichier_Source, @LB_Destination, SYSDATETIME())
 
END
GO
