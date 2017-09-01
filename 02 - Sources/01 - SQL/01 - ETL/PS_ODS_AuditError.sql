/*
*Author; IZI
*Type : Création de la procedure stockée PS_ODS_AuditError
*Base : ETL
*Date : 01/09/2017
*Version : v0.01
*Description : Alimentation de la table Audit Error en cas d'erreur
*/

use ETL
go

CREATE PROCEDURE PS_ODS_PS_ODS_AuditError
	
	 @Id_Audit int ,
	 @LB_FichierSource nvarchar(50),
	 @LB_Destination nvarchar(50),
	 @LB_CodeErreur nvarchar(50),
	 @LB_LigneErreur nvarchar(500)  

AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [dbo].[T_ETL_Error]
           ([ID_Audit]
           ,[LB_FichierSource]
           ,[LB_Destination]
           ,[LB_CodeErreur]
           ,[LB_LigneErreur])
     VALUES
           (@ID_Audit
           ,@LB_FichierSource
           ,@LB_Destination 
           ,@LB_CodeErreur
           ,@LB_LigneErreur)

	
	
END
GO
