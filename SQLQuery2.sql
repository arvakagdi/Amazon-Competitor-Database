USE AmazonCompetiter;
 
SET IDENTITY_INSERT Addresses ON;

INSERT INTO Addresses (ZipCode, City, State) VALUES
('13210', 'Syracuse', 'NY'),
('94101', 'San Francisco', 'CA'),
('60601', 'Chicago', 'IL'),
('07097', 'Jersey City', 'NJ'),
('19092', 'Philadelphia', 'PA'),
('32003', 'Fleming Island', 'FL'),
('84321', 'Logan', 'UT'),
('80123', 'Littleton', 'CO'),
('53001', 'Adell', 'WI'),
('89429', 'SilverS prings', 'NV');
SET IDENTITY_INSERT Addresses OFF;

SELECT * FROM Addresses;


SET IDENTITY_INSERT Products ON;

INSERT INTO Products (ProductID, ProductName, Description, Price) VALUES
(1,'Hash Bubbie Women Boots', 'Women''s Classic Snow Boots Fur Lined Ankle Bootie Warm Short Boots Winter Shoes', '39.99'),
(2,'Nautica Men Boots', 'Nautica Mens Duck Boots - Waterproof Shell Insulated Snow Boot - Channing','65.61'),
(3,'OROLAY Womwn Jacket', 'Orolay Women''s Thickened Down Jacket (Most Wished &Gift Ideas)','159.99'),
(4,'Tommy Hilfiger Men''s', 'Tommy Hilfiger Men''s Classic Hooded Puffer Jacket (Regular and Big & Tall Sizes)', '75' ),
(5,'Camptrace Winter Beanie', 'Camptrace Winter Beanie Hats for Women Cable Knit Fleece Lining Warm Hats Slouchy Thick Skull Cap', '12.50'),
(6,'Winter Beanie Hats Scarf Set', 'Winter Beanie Hats Scarf Set Warm Knit Hats Skull Cap Neck Warmer with Thick Fleece Lined Winter Hat & Scarf for Men Women', '14.99'),
(7,'Burton Men''s Gore-Tex Glove', 'DRYRIDE two-layer fabric with Gore warm technology offers a dry and breathable level of performance', '133.54'),
(8,'Magnificient Baby', 'Magnetic Me So Soft Minky Fleece Magnetic Baby Mittens', '16'),
(9,'Spasilk Baby Blanket', 'Spasilk Minky Raised Dot Baby Blanket with Satin Trim—Double Layer Blanker for Baby Girls, Baby Boys—Gifts for Newborns—Receiving Blanket', '13.99'),
(10,'ikiki', 'ikiki Squeaky Shoes for Toddlers with On/Off Squeaker Switch', '29.95');
SET IDENTITY_INSERT Products OFF;

SELECT * FROM Products;


SET IDENTITY_INSERT StoredProducts ON;

INSERT INTO StoredProducts (StoredProductID, ProductID, ProductName, NumberOnTheWay,NumberInStock,NumberInReturn) VALUES
(50123, 1, 'Nautica Men Boots', 20, 500, 7),
(50220, 2, 'Hash Bubbie Women Boots', 45, 75, 10),
(50504, 3, 'OROLAY Womwn Jacket', 100, 654, 30),
(51234, 4, 'Tommy Hilfiger Men''s', 98, 245, 45),
(50335, 5, 'Camptrace Winter Beanie', 30, 120, 0),
(50225, 6, 'Winter Beanie Hats Scarf Set', 86, 305, 37),
(51100, 7, 'Burton Men''s Gore-Tex Glove', 15, 400, 20),
(50992, 8, 'Magnificient Baby', 150, 723, 22),
(50001, 9, 'Spasilk Baby Blanket', 75,125,35),
(50432, 10,'ikiki', 120, 290, 50);

SET IDENTITY_INSERT StoredProducts OFF;
SELECT * FROM StoredProducts;


SET IDENTITY_INSERT Warehouse ON;

INSERT INTO Warehouse (WarehouseID,StreetAddress,ZipCode) VALUES
(1,'122 Clinton St',13210),
(2,'109 Westcott St',94101),
(3,'811 James Pl', 60601),
(4,'741 Maryland Avenue', 07097),
(5,'215 Downtown', 07097),
(6,'10 South Beech Street',19092),
(7,'909 Emerlyville',32003),
(8,'666 Lombard St',84321),
(9,'657 E.Fayettville', 94101),
(10, '011 Colvin St', 89429);


SET IDENTITY_INSERT Warehouse OFF;
SELECT * FROM Warehouse;


INSERT INTO StoredProductAndWarehouse (StoredProductID,WarehouseID) VALUES
(50123, 1),
(50220,1),
(50504,2),
(50504,3),
(50504,4),
(51234,2),
(51234,5),
(50335,6),
(50225,7),
(50225,5),
(51100,7),
(50992,3),
(50992,8),
(50001,9),
(50432, 9),
(50432,10);


SELECT * FROM StoredProductAndWarehouse;



SET IDENTITY_INSERT OrderItems ON;

INSERT INTO OrderItems (OrderItemsID,ProductID,Quantity,UnitPrice,TotalPrice) VALUES
(1,1,4,13,42),
(2,2,10,20, 200),
(3,3,1,160, 160),
(4,1, 1, 13, 13),
(5, 4, 1, 75, 75),
(6,5,1,12.50, 12.50),
(7,6,2, 14.99, 29.98),
(8,8, 2, 16, 32),
(9,9,1,14,14),
(10,10,1,29.95, 29.95);

SET IDENTITY_INSERT OrderItems OFF;

SELECT * FROM OrderItems;



SET IDENTITY_INSERT Wishlist ON;

INSERT INTO Wishlist (WishlistID,ProductID) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

SET IDENTITY_INSERT Wishlist OFF;
SELECT * FROM Wishlist;



SET IDENTITY_INSERT Suppliers ON;

INSERT INTO Suppliers (SupplierID,Name,SupplierStreetAddress,ZipCode,PhoneNumber,EmailAddress) VALUES
(1,'Allan','100 East Ridgewood Ave.', 13210,'201-653-4472','allan.sherwood@yahoo.com'),
(2,'Barry', '21 Rosewood Rd.',94101,'402-896-2576','barry.b@gmail.com'),
(3,'Cyan', '186 Vermont St.', 13210, '303-912-3852','cyanbyan@gmail.com'),
(4,'Danny', '7361 N. 41st St.',60601,'325-740-3778', 'danny.kardas@yahoo.com'),
(5,'Emily', '19270 NW Cornell Rd.', 07097, '454-232-7364', 'emilyrose@horror.com'),
(6,'Fatema', '21 jamesville', 19092, '746-456-1122', 'fatema.bhatia@yahoo.com'),
(7,'Helli', '100 eastwood',32003, '900-111-1212', 'hellimaxyton@gmail.com'),
(8,'Jess', '1374 46th Ave.',84321, '235-555-4545', 'jess_chaffins@hotmail.com'),
(9,'Glory', '212 MOuntain View', 94101, '455-123-7865', 'glory.schendlier@gmail.com'),
(10, 'Gary', '1212 Buena Vista St', 89429, '544-676-1839', 'garywilliams@gmail.com');

SET IDENTITY_INSERT Suppliers OFF;
SELECT * FROM Suppliers;




SET IDENTITY_INSERT ReturnsItems ON;

INSERT INTO ReturnsItems (ReturnItemsID,ProductID,NumberOfItems) VALUES
(1,10,2),
(2,9,1),
(3,3,3),
(4,8,1),
(5,7,2),
(6,1,1),
(7,2,5),
(8,4,1),
(9,5,1),
(10,6,3);

SET IDENTITY_INSERT ReturnsItems OFF;
SELECT * FROM ReturnsItems;



SET IDENTITY_INSERT Returns ON;

INSERT INTO Returns (ReturnsID,Status,ReturnDate,ReturnItemsID,ShippingService,ShippingStreet,ZipCode,ReturnShippingFee,ShippingInfo) VALUES
(1,'Return', 12/10/2019, 1, 'USPS', '100 East Ridgewood Ave.', '13210', 0, 'To be Shipped' ),
(2,'Return', 12/20/2019, 2, 'UPS', '21 Rosewood Rd.', '94101', 0, 'To be Shipped' ),
(3,'Return', 12/5/2019,3,'USPS','186 Vermont St.', '13210', 15, 'In Transit'),
(4,'Return', 11/30/2019,4,'USPS','7361 N. 41st St.','60601',0, 'Returned'),
(5,'Return', 12/20/2019, 5, 'UPS','19270 NW Cornell Rd.', '07097',0, 'To be Shipped'),
(6,'Return',11/25/2019, 6, 'Fedex', '21 jamesville', '19092', 20, 'Returned'),
(7,'Return',12/10/2019, 7, 'USPS', '100 eastwood','32003',5, 'To be Shipped'),
(8,'Return', 12/1/2019,8, 'Fedex', '1374 46th Ave.','84321',0, 'In Transit'),
(9,'Return',11/30/2019,9, 'USPS', '212 MOuntain View', 94101, 0, 'Returned' ),
(10,'Return', 12/12/2019, 10,'USPS','1212 Buena Vista St', 89429, 0, 'To be Shipped');


SET IDENTITY_INSERT Returns OFF;
SELECT * FROM Returns;


SET IDENTITY_INSERT Reviews ON;

INSERT INTO Reviews (ReviewID,CustomerName,DateOfReview,Rating,Text,ProductID) VALUES
(1,'Andy', 9/1/2018, 4, 'Great Item!', 1),
(2,'' , 10/5/2019, 5,'' , 5),
(3, 'Charles' , 11/1/2019, 5,'Amazing!' , 2),
(4,'',9/30/2019, 3,'' ,3),
(5,'Davis', 7/1/2018,5,'' ,6),
(6, '' , 10/10/2019, 1,'' , 7),
(7, '' , 1/1/2019, 5, '' , 8),
(8,'Garry', 9/15/2019, 5, '', 9),
(9, '', 2/25/2018, 4, '' , 1),
(10, '' , 12/01/2019,5, '', 10);


SET IDENTITY_INSERT Reviews OFF;
SELECT * FROM Reviews;


SET IDENTITY_INSERT Customers ON;

INSERT INTO Customers (CustomerID,CustomerFirstName,CustomerLastName,Username,StreetAddress,ZipCode,PhoneNumberHome,PhoneNumberCell,WishlistID,ReturnsID,ReviewID) VALUES
(1,'Andy', 'Vasas', 'Andyvas', '232 Shoppingtown', 13210, '123-123-4342', '121-787-1234', 1, 1, 1),
(2,'Charles', 'Mann', 'Charlesm', '7689 Louisville', 94101, '765-237-5678', '123-789-6543', 2,2,2),
(3,'Davis', 'K', 'KDavis', '456 Brinhimgtom Ave.', 60601, '672-898-0022', '900-211-0654',3,3,3),
(4,'Garry', 'L', 'Glaman', '100 MAryland Street', 07097, '212-111-3456', '678-111-9090', 4, 4,4),
(5,'Minnie', 'Jonas', 'MJOnas', '211 lexy Street', 32003, '432-787-3546', '123-676-8888',5,5,5),
(6,'Jenny', 'Roosvelt', 'Jroose', '4444 Clinton St', 84321, '666-888-1212', '111-000-7878',6,6,6),
(7,'Mary', 'Xi', 'XiMary', '12344 Euclid St', 80123, '122-444-6789', '123-876-9999', 7,7,7),
(8, 'Vincent','Joe', 'VincentJ', '3234 Ostrom Ave', 53001, '222-555-7878', '111-666-5555',8,8,8),
(9,'Ima', 'Morris', 'ImaMorris', '1233 Livingston Ave', 89429, '234-888-0000', '123-678-9955',9,9,9),
(10, 'Xeba', 'Mehta', 'MehtaXeba123', '123 Sumner Ave', 13210, '565-787-0909', '666-888-2345', 10,10,10)
SET IDENTITY_INSERT Customers OFF;
SELECT * FROM Customers;



SET IDENTITY_INSERT Orders ON;

INSERT INTO Orders (OrderID,Status,OrderDate,OrderItemsID,TotalPrice,ShippingService,ShippingStreet,ZipCode,ShippingFee,ExpectedShippingDate,ActualShippingDate,ShippingInfo,SupplierID,ReturnsID,CustomerID) VALUES
(1,'Shipped', 11/30/2019, 1, 42,'USPS', '100 East Ridgewood Ave.', 13210, 1 , 12/2/2019, 12/7/2019, 'Shipped through USPS', 1,1,1),
(2,'Ready to go', 12/06/2019, 2,200, 'UPS', '21 Rosewood Rd.',94101, 5, 12/09/2019, 12/07/2019, 'Shipped through UPS',2,2,2),
(3, 'Return', 12/05/2019, 3,160, 'Fedex', '186 Vermont St.', 13210, 1, 12/07/2019, 12/07/2019, 'Shipped to warehouse',3,3,3),
(4,'Shipped', 11/30/2019, 4, 13,'UPS', '100 East Ridgewood Ave.', 13210, 1 , 12/2/2019, 12/7/2019, 'Shipped through UPS', 4,4,4),
(5,'Ready to go', 12/05/2019, 5, 75, 'Fedex','21 jamesville', 19092, 5, 12/09/2019, 12/07/2019, 'Shipped through UPS',5,5,5),
(6, 'Return', 12/05/2019, 6,12.50, 'Fedex', '1374 46th Ave.',84321, 1, 12/07/2019, 12/07/2019, 'Shipped to warehouse',6,6,6),
(7,'Shipped', 12/1/2019, 7, 29.98,'Fedex', '212 MOuntain View', 94101, 10 , 12/3/2019, 12/6/2019, 'Shipped through UPS', 7,7,7),
(8,'Ready to go', 12/06/2019, 8,32, 'UPS', '21 Rosewood Rd.',94101, 5, 12/09/2019, 12/07/2019, 'Shipped through UPS',8,8,8),
(9,'Shipped', 12/1/2019, 9, 14,'UPS',  '1212 Buena Vista St', 89429, 1 , 12/3/2019, 12/6/2019, 'Shipped through UPS', 9,9,9),
(10, 'Return', 12/05/2019, 6,12.50, 'Fedex', '1374 46th Ave.',84321, 1, 12/07/2019, 12/07/2019, 'Shipped to warehouse',10,10,10);

SET IDENTITY_INSERT Orders OFF;
SELECT * FROM Orders;




INSERT INTO ProductsAndOrders (ProductID, OrderID) VALUES
(1,5),
(2,1),
(1,1),
(5,2),
(10,7),
(8,9),
(5,5),
(3,4),
(8,10),
(9,6);

SELECT * FROM ProductsAndOrders;


INSERT INTO ProductsAndSuppliers (ProductiD,SupplierID) VALUES
(1,6),
(5,1),
(10,1),
(5,7),
(10,1),
(8,4),
(5,9),
(1,4),
(4,10),
(10,6);

SELECT * FROM ProductsAndSuppliers;


INSERT INTO SuppliersAndWarehouse (SupplierID,WarehouseID) VALUES
(5,7),
(10,1),
(8,4),
(5,9),
(1,4),
(4,10),
(1,5),
(2,1),
(1,1),
(5,2);
SELECT * FROM SuppliersAndWarehouse;

