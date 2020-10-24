DROP DATABASE IF EXISTS arduino;
CREATE DATABASE arduino;

USE arduino;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs(
    logdate TIMESTAMP NOT NULL,
    room CHAR(4) NOT NULL,
    pinused CHAR(4) NOT NULL,
    success BIT NOT NULL,
    PRIMARY KEY(logdate, room) 
);

DROP TABLE IF EXISTS room_1001;
CREATE TABLE room_1001(
    date_from DATETIME NOT NULL,
    date_to DATETIME NOT NULL,
    pin char(4),
    PRIMARY KEY(date_from, date_to)
);

DROP TABLE IF EXISTS room_2001;
CREATE TABLE room_2001(
    date_from DATETIME NOT NULL,
    date_to DATETIME NOT NULL,
    pin char(4) NOT NULL,
    PRIMARY KEY(date_from, date_to)
);
