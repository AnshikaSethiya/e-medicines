--CREATE DATABASE	EMedicine;

USE	EMedicine;

CREATE TABLE Users(ID INT IDENTITY(1,1) PRIMARY KEY, FirstName VARCHAR(100), LastName VARCHAR(100), Password VARCHAR(100),
Email VARCHAR(100), Fund Decimal(18,2), Type VARCHAR(100), Status INT, CreatedOn Datetime)

CREATE TABLE Medicines(ID INT IDENTITY(1,1) PRIMARY KEY, Name VARCHAR(100), Mancufacturer VARCHAR(100), 
UnitPrice DECIMAL(18,2), Discount DECIMAL(18,2), Quantity INT, ExpDate DateTime, ImageUrl VARCHAR(200),
Details VARCHAR(1500),Status INT)

CREATE TABLE Cart(ID INT IDENTITY(1,1) PRIMARY KEY, UserId INT, MedicineID INT, UnitPrice DECIMAL(18,2), 
Discount DECIMAL(18,2), Quantity INT, TotalPrice DECIMAL(18,2))

CREATE TABLE Orders(ID INT IDENTITY(1,1) PRIMARY KEY, UserID INT, OrderNo VARCHAR(100),
OrderTotal DECIMAL(18,2), OrderStatus VARCHAR(100) )

CREATE TABLE [dbo].[OrderItems] (
    [ID]         INT             IDENTITY (1, 1) NOT NULL,
    [OrderNo]    VARCHAR (100)   NULL,
    [MedicineID] INT             NULL,
    [UnitPrice]  DECIMAL (18, 2) NULL,
    [Discount]   DECIMAL (18, 2) NULL,
    [Quantity]   DECIMAL (18, 2) NULL,
    [TotalPrice] DECIMAL (18, 2) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

SELECT * FROM Users;
SELECT * FROM Medicines;
SELECT * FROM Cart;
SELECT * FROM Orders;
SELECT * FROM OrderItems;

