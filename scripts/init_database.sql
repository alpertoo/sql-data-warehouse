/*
Create Database and Schemas

This script creates a new database names 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Then, the script sets up three schemas
within the database: 'bronze', 'silver', and 'gold'.

Warning: Running this script will drop the entire 'DataWarehouse' database if it exists.
*/

USE master;
GO

-- Drop the 'DataWarehouse' database if exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
