CREATE DATABASE CrimeDB;
USE CrimeDB;
CREATE TABLE Criminals (
    Criminal_ID INT PRIMARY KEY,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Age INT
);
CREATE TABLE Investigators (
    Criminal_ID INT PRIMARY KEY,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Age INT
);