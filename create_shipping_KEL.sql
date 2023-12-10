DROP DATABASE IF EXISTS shipping;

CREATE DATABASE shipping;

USE shipping;

CREATE TABLE `ports` (
  `portName` char(20) NOT NULL,
  `city` char(10) NOT NULL,
  `country` char(15) NOT NULL
);

CREATE TABLE `ships` (
  `shipName` char(10) NOT NULL,
  `displacement` decimal(6,0) NOT NULL,
  `captainName` char(12) NOT NULL,
  `numCrew` decimal(2,0) NOT NULL,
  `homePort` char(20) NOT NULL,
  `yearBuilt` decimal(4,0) NOT NULL,
  PRIMARY KEY (`shipName`)
);

CREATE TABLE `containers` (
  `containerID` char(4) NOT NULL,
  `containerHeight` decimal(1,0) NOT NULL,
  `containerWidth` decimal(1,0) NOT NULL,
  `containerLength` decimal(2,0) NOT NULL,
  `containerWeight` decimal(5,0) NOT NULL,
  `shipID` char(7) DEFAULT NULL,
  PRIMARY KEY (`containerID`)
);
