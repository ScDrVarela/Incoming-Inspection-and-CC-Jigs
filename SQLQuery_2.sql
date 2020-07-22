ALTER DATABASE  Incoming
SET COMPATIBILITY_LEVEL = { 150 | 140 | 130 | 120 | 110 | 100 | 90}

SELECT SERVERPROPERTY('ProductVersion');

SELECT name, compatibility_level FROM sys.databases;