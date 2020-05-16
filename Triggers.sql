CREATE TRIGGER reminder1  
ON Customers
AFTER INSERT, UPDATE   
AS RAISERROR ('Notify Customer', 16, 10);  
GO  

SET IDENTITY_INSERT Customers ON;

INSERT Customers(CustomerID,CustomerFirstName,CustomerLastName,Username,StreetAddress,ZipCode,PhoneNumberHome,PhoneNumberCell,WishlistID,ReturnsID,ReviewID)
VALUES (11,'Arva', 'Kagdi', 'ArvaKagdi', '232 Shoppingtown', 13210, '123-123-4342', '121-787-1234', 1, 1, 1);
SET IDENTITY_INSERT Customers OFF;

SELECT * FROM Customers