/* 
========================================================================
Create Database and Schemas
========================================================================
Script Purpose:
    This script creats a new database named 'DataWareHouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas.
    within the database: 'bronze','sliver', and 'gold'.

WARNING:
    Running this scripts will drop the entire 'DataWareHouse' database if is exits.
    All data in tha datbase will be premanently deleted. Proceed with caution
    and ensure you have proper backups before running the script.
*/

USE master;
GO

--Drop and recreated the 'DataWareHouse' database
if exists(select 1 from sys.databases where name = 'DataWareHouse')
Begin
  alter datavbase datawarehouse set single user with rollback immediate;
