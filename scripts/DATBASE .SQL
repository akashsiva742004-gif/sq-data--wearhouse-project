/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


-- SCRIPT START---------------------------------------------------------------- 

USE MASTER 
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'AKASHWAREHOUSE')
BEGIN
    ALTER DATABASE akashwarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
    DROP DATABASE akashwarehouse
END
GO
CREATE DATABASE AKASHWAREHOUSE
GO
USE AKASHWAREHOUSE
GO

CREATE SCHEMA BRONZE 
GO
CREATE SCHEMA SILVER
GO
CREATE SCHEMA GOLD
GO
