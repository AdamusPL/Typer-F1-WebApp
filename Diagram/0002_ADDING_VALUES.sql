﻿USE TyperF1;
GO

INSERT INTO Season VALUES(2020);
INSERT INTO Season VALUES(2021);
INSERT INTO Season VALUES(2022);
INSERT INTO Season VALUES(2023);
INSERT INTO Season VALUES(2024);

SELECT * FROM Season;

INSERT INTO GrandPrix VALUES('Bahrain', 5);
INSERT INTO GrandPrix VALUES('Saudi Arabia', 5);
INSERT INTO GrandPrix VALUES('Australia', 5);
INSERT INTO GrandPrix VALUES('Japan', 5);
INSERT INTO GrandPrix VALUES('China', 5);
INSERT INTO GrandPrix VALUES('Miami', 5);
INSERT INTO GrandPrix VALUES('Emilia Romagna', 5);
INSERT INTO GrandPrix VALUES('Monaco', 5);
INSERT INTO GrandPrix VALUES('Canada', 5);
INSERT INTO GrandPrix VALUES('Spain', 5);
INSERT INTO GrandPrix VALUES('Austria', 5);
INSERT INTO GrandPrix VALUES('Great Britain', 5);
INSERT INTO GrandPrix VALUES('Hungary', 5);
INSERT INTO GrandPrix VALUES('Belgium', 5);
INSERT INTO GrandPrix VALUES('Netherlands', 5);
INSERT INTO GrandPrix VALUES('Italy', 5);
INSERT INTO GrandPrix VALUES('Azerbaijan', 5);
INSERT INTO GrandPrix VALUES('Singapore', 5);
INSERT INTO GrandPrix VALUES('United States', 5);
INSERT INTO GrandPrix VALUES('Mexico', 5);
INSERT INTO GrandPrix VALUES('Brazil', 5);
INSERT INTO GrandPrix VALUES('Las Vegas', 5);
INSERT INTO GrandPrix VALUES('Qatar', 5);
INSERT INTO GrandPrix VALUES('Abu Dhabi', 5);

SELECT * FROM GrandPrix;

INSERT INTO Participant VALUES('Andrzej', 'Borowczyk', 'The most famous Polish F1 commentator. He is distinguished by the fact that he places stress on every syllable while talking.');
INSERT INTO Participant VALUES('Mikolaj', 'Sokol', 'Sports commentator. "All-F1-Knower".');
INSERT INTO Participant VALUES('Maciej', 'Jermakow', 'Journalist who specialises in automotive.');
INSERT INTO Participant VALUES('Cezary', 'Gutowski', 'Formula 1 specialist. He thinks about it 24/7. He has a nose with finding talents. He published texts about Robert Kubica while he was an unknown driver.');

SELECT * FROM Participant;

DECLARE @counter INT;
SET @counter = 1;

WHILE @counter <= 24
BEGIN
	IF(@counter = 5 or @counter = 6 or @counter = 11 or @counter = 21 or @counter = 23)
	BEGIN
    INSERT INTO Session VALUES('Sprint Shootout', @counter);
	INSERT INTO Session VALUES('Qualifying', @counter);
	INSERT INTO Session VALUES('Sprint', @counter);
	INSERT INTO Session VALUES('Race', @counter);
	END;
	ELSE
	BEGIN
	INSERT INTO Session VALUES('Qualifying', @counter);
	INSERT INTO Session VALUES('Race', @counter);
	END;
	

    SET @counter = @counter + 1;
END;

SELECT * FROM Session;

INSERT INTO Track VALUES('Asia', 'Bahrain', 0, 1);
INSERT INTO Track VALUES('Asia', 'Saudi Arabia', 0, 2);
INSERT INTO Track VALUES('Australia', 'Australia', 0, 3);
INSERT INTO Track VALUES('Asia', 'Japan', 0, 4);
INSERT INTO Track VALUES('Asia', 'China', 0, 5);
INSERT INTO Track VALUES('North America', 'United States', 0, 6);
INSERT INTO Track VALUES('Europe', 'Italy', 0, 7);
INSERT INTO Track VALUES('Europe', 'Monaco', 0, 8);
INSERT INTO Track VALUES('North America', 'Canada', 0, 9);
INSERT INTO Track VALUES('Europe', 'Spain', 0, 10);
INSERT INTO Track VALUES('Europe', 'Austria', 0, 11);
INSERT INTO Track VALUES('Europe', 'Great Britain', 0, 12);
INSERT INTO Track VALUES('Europe', 'Hungary', 0, 13);
INSERT INTO Track VALUES('Europe', 'Belgium', 0, 14);
INSERT INTO Track VALUES('Europe', 'Netherlands', 0, 15);
INSERT INTO Track VALUES('Europe', 'Italy', 0, 16);
INSERT INTO Track VALUES('Asia', 'Azerbaijan', 0, 17);
INSERT INTO Track VALUES('Asia', 'Singapore', 0, 18);
INSERT INTO Track VALUES('North America', 'United States', 0, 19);
INSERT INTO Track VALUES('North America', 'Mexico', 0, 20);
INSERT INTO Track VALUES('South America', 'Brazil', 0, 21);
INSERT INTO Track VALUES('North America', 'United States', 0, 22);
INSERT INTO Track VALUES('Asia', 'Qatar', 0, 23);
INSERT INTO Track VALUES('Asia', 'Abu Dhabi', 0, 24);

SELECT * FROM Track;

