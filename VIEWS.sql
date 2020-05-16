USE AmazonCompetiter;

EXECUTE('CREATE VIEW CustomerDetails AS
SELECT CustomerFirstName,CustomerLastName,PhoneNumberCell
FROM Customers;')

SELECT * FROM CustomerDetails


EXECUTE('CREATE VIEW SuppliersDetails AS
SELECT Name, PhoneNumber, EmailAddress
FROM Suppliers;')

SELECT * FROM SuppliersDetails


EXECUTE('CREATE VIEW WarehouseFullAddress AS
SELECT StreetAddress,City, State
FROM Warehouse JOIN Addresses ON Warehouse.ZipCode = Addresses.ZipCode;')

SELECT * FROM WarehouseFullAddress


EXECUTE('CREATE VIEW TopRatedProduct AS
SELECT TOP 2 ProductName,SUM(Rating) AS TotalRating
FROM Reviews Join Products
ON Products.ProductID = Reviews.ProductID
GROUP BY ProductName
ORDER BY SUM(Rating) DESC;')

SELECT * FROM TopRatedProduct


EXECUTE('CREATE VIEW NoShippingFee AS
SELECT ReturnItemsID, ReturnShippingFee
FROM Returns
WHERE ReturnShippingFee = 0;')

SELECT * FROM NoShippingFee
