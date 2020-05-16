USE AmazonCompetiter;

CREATE ROLE Grants
GRANT UPDATE ON Customers TO Grants
GRANT UPDATE, INSERT ON Addresses TO Grants
GRANT UPDATE, DELETE ON Suppliers TO Grants
EXEC sp_addrolemember db_datareader, Grants


CREATE LOGIN AmazonLogin with password = '123456',
Default_Database = AmazonCompetiter
Create USER Arva for login AmazonLogin
Exec sp_addrolemember Grants, Arva



GO 
Create Schema NewSchema
Go 
Alter Schema NewSchema Transfer dbo.Customers
Alter User Arva with Default_Schema = NewSchema 
Grant Delete,Select,Update, Insert, Execute on Schema :: NewSchema to Arva

