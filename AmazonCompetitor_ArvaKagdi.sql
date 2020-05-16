USE master
GO

/****** Object:  Database AmazonCompetitor     ******/
IF DB_ID('AmazonCompetiter') IS NOT NULL
	DROP DATABASE AmazonCompetiter
GO

CREATE DATABASE AmazonCompetiter
GO 

USE AmazonCompetiter
GO


/****** Object:  Table Addresses  ******/   

CREATE TABLE Addresses(
ZipCode					INT				PRIMARY KEY			IDENTITY,
City					VARCHAR(40)		NOT NULL,
State					VARCHAR(2)		NOT NULL,
);

/****** Object:  Table Products  ******/   

CREATE TABLE Products(
ProductID				INT				PRIMARY KEY			IDENTITY,
ProductName				VARCHAR(255)	NOT NULL,
Description				VARCHAR(255)	NOT NULL,
Price					MONEY			NOT NULL
);

/****** Object:  Table StoredProducts  ******/   

CREATE TABLE StoredProducts(
StoredProductID			INT				PRIMARY KEY			IDENTITY,
ProductID				INT				REFERENCES Products (ProductID),
ProductName				VARCHAR(255)	NOT NULL,
NumberOnTheWay			INT				NOT NULL,
NumberInStock			INT				NOT NULL,
NumberInReturn			INT				NOT NULL,
);

/****** Object:  Table Warehouse  ******/   

CREATE TABLE Warehouse(
WarehouseID				INT				PRIMARY KEY			IDENTITY,
StreetAddress			VARCHAR(60)		NOT NULL,
ZipCode					INT				REFERENCES Addresses(ZipCode),
);

/****** Object:  Table OrderItems  ******/   
CREATE TABLE OrderItems(
OrderItemsID			INT				PRIMARY KEY			IDENTITY,
ProductID				INT				REFERENCES Products (ProductID),
Quantity				INT				NOT NULL,
UnitPrice				MONEY			NOT NULL,
TotalPrice				MONEY			NOT NULL,
);

/****** Object:  Table Wishlist  ******/   
CREATE TABLE Wishlist(
WishlistID				INT				PRIMARY KEY			IDENTITY,
ProductID				INT				REFERENCES Products (ProductID)
);

/****** Object:  Table Suppliers  ******/   
CREATE TABLE Suppliers(
SupplierID				INT				PRIMARY KEY			IDENTITY,
Name					VARCHAR(255)	NOT NULL,
SupplierStreetAddress	VARCHAR(60)		NOT NULL,
ZipCode					INT				REFERENCES Addresses(ZipCode),
PhoneNumber				VARCHAR(12)		NOT NULL,
EmailAddress			VARCHAR(255)	NOT NULL,
);

/****** Object:  Table ReturnsItems  ******/   
CREATE TABLE ReturnsItems(
ReturnItemsID			INT				PRIMARY KEY			IDENTITY,
ProductID				INT				REFERENCES Products (ProductID),
NumberOfItems			INT				NOT NULL
);

/****** Object:  Table Returns  ******/   
CREATE TABLE Returns(
ReturnsID				INT				PRIMARY KEY			IDENTITY,
Status					VARCHAR(20)		NOT NULL,	
ReturnDate				DATETIME							DEFAULT NULL,
ReturnItemsID			INT				REFERENCES ReturnsItems (ReturnItemsID),
ShippingService			VARCHAR(255)	NOT NULL,
ShippingStreet			VARCHAR(255)	NOT NULL,
ZipCode					INT				REFERENCES Addresses(ZipCode),
ReturnShippingFee		MONEY			NOT NULL,
ShippingInfo			VARCHAR(255)						DEFAULT NULL,
);

/****** Object:  Reviews   ******/   
CREATE TABLE Reviews(
ReviewID				INT				PRIMARY KEY			IDENTITY,
CustomerName			VARCHAR(255)						DEFAULT NULL,
DateOfReview			DATETIME		NOT NULL,
Rating					INT									DEFAULT NULL,
Text					VARCHAR(255)						DEFAULT NULL,
ProductID				INT				REFERENCES Products (ProductID),
);

/****** Object:  Table Customers  ******/   
CREATE TABLE Customers(
CustomerID				INT				PRIMARY KEY			IDENTITY,
CustomerFirstName		VARCHAR(255)	NOT NULL,
CustomerLastName		VARCHAR(255)	NOT NULL,
Username				VARCHAR(255)	NOT NULL,
StreetAddress			VARCHAR(255)	NOT NULL,
ZipCode					INT				REFERENCES Addresses(ZipCode),
PhoneNumberHome			VARCHAR(12)		NOT NULL,
PhoneNumberCell			VARCHAR(12)		NOT NULL,
WishlistID				INT				REFERENCES Wishlist (WishlistID),
ReturnsID				INT				REFERENCES Returns (ReturnsID),
ReviewID				INT				REFERENCES Reviews (ReviewID),
);

/****** Object:  Table Orders  ******/   
CREATE TABLE Orders(
OrderID					INT			    PRIMARY KEY			IDENTITY,
Status					VARCHAR(20)		NOT NULL,	
OrderDate				DATETIME		NOT NULL,
OrderItemsID			INT				REFERENCES OrderItems (OrderItemsID),
TotalPrice				MONEY			NOT NULL,
ShippingService			VARCHAR(255)	NOT NULL,
ShippingStreet			VARCHAR(255)	NOT NULL,
ZipCode					INT				REFERENCES Addresses(ZipCode),
ShippingFee				MONEY			NOT NULL,
ExpectedShippingDate	DATETIME		NOT NULL,
ActualShippingDate		DATETIME							DEFAULT NULL,
ShippingInfo			VARCHAR(255)						DEFAULT NULL,
SupplierID				INT				REFERENCES Suppliers (SupplierID),
ReturnsID				INT				REFERENCES Returns (ReturnsID),
CustomerID				INT				REFERENCES Customers (CustomerID)
);

/****** Object:  Table ProductsAndOrders  ******/   
CREATE TABLE ProductsAndOrders(
ProductiD				INT				REFERENCES Products (ProductiD),
OrderID					INT				REFERENCES Orders (OrderID)
);

/****** Object:  Table ProductsAndSuppliers  ******/   
CREATE TABLE ProductsAndSuppliers(
ProductiD				INT				REFERENCES Products (ProductiD),
SupplierID				INT				REFERENCES Suppliers (SupplierID)
);

/****** Object:  Table SuppliersAndWarehouse  ******/   
CREATE TABLE SuppliersAndWarehouse(
SupplierID				INT				REFERENCES Suppliers (SupplierID),
WarehouseID				INT				REFERENCES Warehouse (WarehouseID)
);

CREATE TABLE StoredProductAndWarehouse(
StoredProductID			INT				REFERENCES StoredProducts (StoredProductID),
WarehouseID				INT				REFERENCES Warehouse (WarehouseID)
);
