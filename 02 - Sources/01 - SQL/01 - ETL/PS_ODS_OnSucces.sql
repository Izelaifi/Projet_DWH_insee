/*
*Author; IZI
*Type : Création de la procedure stockée PS_ODS_OnSucces
*Base : ETL
*Date : 01/09/2017
*Version : v0.01
*Description : Création de la table d'audit 
*/

use ETL
go

CREATE PROCEDURE PS_ODS_OnSucces
	
	 @Id_Audit int 
	   
AS
BEGIN
	
	SET NOCOUNT ON;
	update T_ETL_Audit set 
	LB_Statut = 'OK', 
	DT_DateFin = SYSDATETIME()
	
	
END
GO
