Select *from Customer 
 Insert into Customer values(1, 'Rick', 'Novek', 'Sydney', 'Australia', 124545)
 Insert into Customer values(2, 'James', 'Brown', 'Melbourne', 'Australia', 125689)
  Insert into Customer values(3, 'Ronald', 'Barr', 'Berlin', 'Germany', 136245)
   Insert into Customer values(4, 'Lucy', 'White', 'Hamburg', 'Germany', 135684)
    Insert into Customer values(5, 'Tannidi', 'Alekhya', 'Tanuku', 'India', 123456789)
	 
Select *from Customer Where Country LIKE'%A' OR  Country LIKE'%I'

Create Table "Order"
(
ID int NOT NULL,
Orderdate datetime NOT NULL,
Ordernumber int,
CustomerID int NOT NULL,
TotalAmount decimal(12,2)
)
Alter Table "Order"
Alter column Ordernumber CHAR;

Select *from "Order"
Insert into "Order" values(101, 10/10/2022, 'A', 3, 500)
Insert into "Order" values(102, 11/10/2022, 'B', 2, 5000)
Insert into "Order" values(103, 09/10/2022, 'C', 5, 1000)
Insert into "Order" values(104, 10/10/2022, 'D', 1, 600)
Insert into "Order" values(105, 13/10/2022, 'E', 4, 2000)

Create Table OrderItem
(
ID int NOT NULL Primary Key,
OrderID int NOT NULL,
ProductID int, 
UnitPrice decimal(12,2),
Quantity int
)


Select *from OrderItem
SET IDENTITY_INSERT OrderItem ON
Insert into Orderitem values(201, 103, 50001, NUll, NULL)
Insert into Orderitem values(202, 105, 50002, NUll, NULL)
Insert into Orderitem values(203, 101, 50003, NUll, NULL)
Insert into Orderitem values(204, 102, 50004, NUll, NULL)
Insert into Orderitem values(205, 104, 50005, NUll, NULL)

Alter table OrderItem add constraint OrderItem_ProductID_FK
Foreign Key (ProductID) references Product (ID)


Create Table Product
(
ID int NOT NULL Primary Key,
ProductName nvarchar(30) NOT NULL,
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscountinued bit
)
Select *from Product

Alter Table OrderItem add constraint FK_Orderitem_pid
Foreign Key (ProductID) references Product (ID) 
 
 Drop Table Product

 Create Table Product
 (
 Id int NOT NULL Primary key,
 ProductName nvarchar(50),
 UnitPrice decimal(12,2),
 Package nvarchar(30),
 IsDiscontinued bit
 )



 Select *from Product
 
 Insert into  Product values(50001, 'Backpack', Null, Null, Null)
 Insert into  Product values(50002, 'Shoes', Null, Null, Null)
 Insert into  Product values(50003, 'Waterbottle', Null, Null, Null)
 Insert into  Product values(50004, 'books', Null, Null, Null)
 Insert into  Product values(50005, 'Earphones', Null, Null, Null)

 Select *from Customer 
 Select Lastname from Customer Where Lastname LIKE'__i%'
 Select *from Customer Where Country='Germany'
 select 'Firstname+' 'Lastname+' as FullName from Customer 
  Select Lastname from Customer Where Lastname LIKE'_i%'

  Update OrderItem
  Set Quantity = 1 Where ID=205;

Select *from OrderItem

Select *from OrderItem Where UnitPrice >10 AND UnitPrice <20
Select *from "Order" order by TotalAmount

Select AVG(Quantity) FROM  OrderItem Where ID=201
Select AVG(Quantity) FROM  OrderItem Where ID=202
Select AVG(Quantity) FROM  OrderItem Where ID=203
Select AVG(Quantity) FROM  OrderItem Where ID=204
Select AVG(Quantity) FROM  OrderItem Where ID=205

Select ID from Customer Where Phone=136245
Select ID from "Order" Where CustomerID=3
Select ProductID from OrderItem Where OrderID=101
Select ProductName from Product Where ID=50003

Select *from "Order"

Select *from OrderItem

Select *from Product
 

 create Table Employee
 (
 Select *INTO OrderItem-copy from Orderitem Where 