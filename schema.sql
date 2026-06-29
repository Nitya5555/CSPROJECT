CREATE DATABASE CrimeDB;
USE CrimeDB;
CREATE TABLE Criminal (
    Criminal_ID INT PRIMARY KEY,
    First_name VARCHAR(30),
    Last_name VARCHAR(30),
    Alias VARCHAR(30),
    Age INT,
    Gender CHAR(1),
    Nationality VARCHAR(30),
    Threat_level VARCHAR(30),
    Status_of_arrest VARCHAR(30)
);

CREATE TABLE Crime (
    Crime_ID INT PRIMARY KEY,
    Crime_type VARCHAR(40),
    Date_of_crime DATE,
    City VARCHAR(30),
    Description_of_crime VARCHAR(150),
    Criminal_ID INT
);

CREATE TABLE Officer (
    Officer_ID INT PRIMARY KEY,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Rank VARCHAR(30),
    Age INT,
    Department VARCHAR(30),
    Experience INT
);

CREATE TABLE Investigation (
    Investigation_ID INT PRIMARY KEY,
    Crime_ID INT,
    Officer_ID INT,
    Status_of_investigation VARCHAR(30),
    Notes VARCHAR(150)
);

CREATE TABLE Evidence (
    Evidence_ID INT PRIMARY KEY,
    Crime_ID INT,
    Type_of_evidence VARCHAR(30),
    Description_of_evidence VARCHAR(150),
    Storage_location VARCHAR(30)
);

CREATE TABLE Arrest (
    Arrest_ID INT PRIMARY KEY,
    Criminal_ID INT UNIQUE,
    Officer_ID INT,
    Arrest_date DATE,
    Location_of_arrest VARCHAR(30)
);

CREATE TABLE Prison (
    Prison_ID INT PRIMARY KEY,
    Prison_name VARCHAR(30),
    Security_level VARCHAR(30),
    City VARCHAR(30)
);

CREATE TABLE Inmates (
    Criminal_ID INT PRIMARY KEY,
    Prison_ID INT,
    Sentence_years INT,
    Cell_ID VARCHAR(15)
);

