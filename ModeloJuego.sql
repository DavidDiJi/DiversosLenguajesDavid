------ Modelo de la BD---------

DROP TABLE tbPreguntas
CREATE TABLE tbPreguntas(
IDPregunta   INT IDENTITY(1,1)
,Pregunta    VARCHAR(800)
,PRIMARY KEY (IDPregunta)
);

--DROP TABLE tbRespuestas
CREATE TABLE tbRespuestas(
IDRespuestas  INT IDENTITY(1,1)
,Respuesta    VARCHAR(800)
,Correcta     VARCHAR(10)
,IDPregunta   INT
,PRIMARY KEY (IDRespuestas)
,FOREIGN KEY (IDPregunta ) REFERENCES tbPreguntas(IDPregunta)
);

--DROP TABLE tbPartida
CREATE TABLE tbPartida(
 IDPartida     INT IDENTITY(1,1)
,Fecha        DATE
,IDPregunta	  INT
,PRIMARY KEY (IDPartida)
);
--DROP TABLE tbJugador
CREATE TABLE tbJugador(
 NickName    VARCHAR(200)
,IDPartida   INT  
,PRIMARY KEY (NickName)
,FOREIGN KEY (IDPartida) REFERENCES tbPartida(IDPartida)
 );

--drop table tbPuntaje
CREATE TABLE tbPuntaje(
 IDPuntaje   INT IDENTITY(1,1) 
,Puntaje     INT
,IDPartida   INT
,PRIMARY KEY (IDPuntaje)
,FOREIGN KEY (IDPartida) REFERENCES tbPartida(IDPartida)
 );


 CREATE TABLE tbPreguntasPartida(
 IDPregPartida  INT IDENTITY(1,1)
 ,Pregunta      VARCHAR(800)
 ,Respuestas    VARCHAR(800)
 );


