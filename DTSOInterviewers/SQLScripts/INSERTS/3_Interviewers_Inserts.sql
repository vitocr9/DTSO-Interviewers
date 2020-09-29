use $(input);
SET NOCOUNT ON;
DECLARE @Number INT
DECLARE @IdCompetency INT

SELECT @IdCompetency = COUNT(*) FROM Competency

SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Raul', ' Diaz', 'raul_diaz@epam.com', 'A4', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Dario', ' Cordoba', 'dario_cordoba@epam.com', 'B1', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Jose', ' Aguilera', 'jose_aguilera@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Eder', ' Fernandez', 'eder_fernandez@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Eduardo', ' Mejia', 'eduardo_mejia@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Rene', ' Rodriguez', 'rene_rodriguez@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Ivan', ' Herrera1', 'ivan_herrera1@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Fernando', ' Celis', 'fernando_celis@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Matteo', ' Bottini', 'matteo_bottini@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency));
INSERT INTO INTERVIEWER VALUES ('Hector', ' Navarro', 'hector_navarro@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Isidro', ' Garcia', 'isidro_garcia@epam.com', 'A3', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Luis', ' Cervantes', 'luis_cervantes@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('David', ' Robles', 'david_robles@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Miguel', ' Vallecillos', 'miguel_vallecillos@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Rommel', ' Juarez', 'rommel_juarez@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Paul', ' Rivas', 'paul_rivas@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Esmeralda', ' De La Fuente', 'esmeralda_de_la_fuente@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Julio', ' Garcia', 'julio_garcia@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Yara', ' Lopez', 'yara_lopez@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Gabriel', ' Cardenas', 'gabriel_cardenas@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Alejandro', ' Reyes', 'alejandro_reyes@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Jose', ' Hernandez', 'jose_hernandez@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Martin', ' Tinoco', 'martin_tinoco@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Luis', ' Vega', 'luis_vega@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Omar', ' Rivera', 'omar_rivera@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Luis', ' Torres', 'luis_torres@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Antonio', ' Aparicio', 'antonio_aparicio@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Zahid', ' Barrera', 'zahid_barrera@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Marco', ' Suarez', 'marco_suarez@epam.com', 'A2', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Ana', ' Elizondo', 'ana_elizondo@epam.com', 'A1', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Ana', ' Elizondo', 'teresa_elizondo@epam.com', 'A1', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Cesar', ' Rivera', 'cesar_rivera@epam.com', 'A1', 'Check outlook',1,0, @Number)
SELECT @Number = CEILING(rand()*(@IdCompetency)); 
INSERT INTO INTERVIEWER VALUES ('Nephtali', ' Ordaz', 'nephtali_ordaz@epam.com', 'A1', 'Check outlook',1,0, @Number)