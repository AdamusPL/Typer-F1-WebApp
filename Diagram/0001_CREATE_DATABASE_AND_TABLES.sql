USE TyperF1;
GO

CREATE TABLE Season(
    Id INT UNIQUE NOT NULL IDENTITY(1,1),
    Year INT UNIQUE NOT NULL,
    PRIMARY KEY(Id)
)

SELECT * FROM Season;

CREATE TABLE GrandPrix(
    Id INT UNIQUE NOT NULL IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
	SeasonId INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(SeasonId) REFERENCES Season(Id)
);

SELECT * FROM GrandPrix;

CREATE TABLE Track(
	Id INT UNIQUE NOT NULL IDENTITY(1,1),
	Continent VARCHAR(255) NOT NULL,
	Country VARCHAR(255) NOT NULL,
	IsStreet BIT NOT NULL,
	GrandPrixId INT NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(GrandPrixId) REFERENCES GrandPrix(Id)
);

SELECT * FROM Track;

CREATE TABLE Session(
	Id INT UNIQUE NOT NULL IDENTITY(1,1),
	Name VARCHAR(255) NOT NULL,
	GrandPrixId INT NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(GrandPrixId) REFERENCES GrandPrix(Id)
);

SELECT * FROM Session;

CREATE TABLE Stats(
	IsRainy BIT NOT NULL,
	IsFastestLapGuessed BIT NOT NULL,
	IsWinnerGuessed BIT NOT NULL,
	SessionId INT NOT NULL,
	FOREIGN KEY(SessionId) REFERENCES Session(Id)
);

SELECT * FROM Stats;

CREATE TABLE Email(
	Id INT UNIQUE NOT NULL IDENTITY(1,1),
	Email VARCHAR(320) NOT NULL
	PRIMARY KEY(Id)
);

CREATE TABLE ParticipantLoginData(
	Id INT UNIQUE NOT NULL IDENTITY(1,1),
	Username VARCHAR(32) NOT NULL UNIQUE,
	Password VARCHAR(40) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Participant(
	Id INT UNIQUE NOT NULL IDENTITY(1,1),
	Name VARCHAR(255) NOT NULL,
	Surname VARCHAR(255) NOT NULL,
	Description VARCHAR(255),
	UserId INT NOT NULL,
	EmailId INT NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(UserId) REFERENCES Email(Id),
	FOREIGN KEY(EmailId) REFERENCES Email(Id)
);


CREATE TABLE Points(
	Id INT UNIQUE NOT NULL IDENTITY(1,1),
	Number INT NOT NULL,
	ParticipantId INT NOT NULL,
	SessionId INT NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(SessionId) REFERENCES Session(Id),
	FOREIGN KEY(ParticipantId) REFERENCES Participant(Id)

);

CREATE TABLE Joker(
	Id INT UNIQUE NOT NULL IDENTITY(1,1),
	ParticipantId INT NOT NULL,
	GrandPrixId INT NOT NULL,
	FOREIGN KEY(ParticipantId) REFERENCES Participant(Id),
	FOREIGN KEY(GrandPrixId) REFERENCES GrandPrix(Id)
);
