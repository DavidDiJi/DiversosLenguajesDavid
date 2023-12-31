USE [DBTrviaPoli]
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePartida]    Script Date: 6/13/2023 7:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spUpdatePartida]

AS

BEGIN
-----Creamos temporal para traer preguntas aleatoreas------
CREATE TABLE #tbPreguntas(
IDPregunta   INT 
,Pregunta    VARCHAR(800)
);

INSERT INTO #tbPreguntas
SELECT TOP 5 IDPregunta, Pregunta FROM [dbo].[tbPreguntas] ORDER BY NEWID();
 
----- TRUNCAMOS E INSERTAMOS LA NUEVAS PREGUNTAS A LA  TABLA-----
TRUNCATE TABLE [dbo].[tbPreguntasPartida]

INSERT INTO [dbo].[tbPreguntasPartida]
SELECT 
A.PREGUNTA
,B.Respuesta
FROM #tbPreguntas A
INNER JOIN [dbo].[tbRespuestas] B 
ON A.IDPregunta = B.IDPregunta;

BEGIN 
DROP TABLE #tbPreguntas
END
END