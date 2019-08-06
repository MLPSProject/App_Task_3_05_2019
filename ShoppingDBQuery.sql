Create database Shopping
use shopping
drop database Shopping
create table CustomerDetails
(
	iCustId int identity(1,1) primary key,
	vFirstName varchar(50),
	vLastName varchar(50),
	vEmailId varchar(100) unique,
	vPassword varchar(100) not null,
	dDateOfBirth date,
	vMobileNo varchar(50) unique,
	vAddress varchar(200) null
);

select * from CustomerDetails

create table ProductDetails
(
	iProductId int identity(1,1) primary key,
	vProductName varchar(50) unique,
	vCategory varchar(50),
	vDescription varchar(50),
	mMoney money not null,
	iQuantity int not null,
	vImage varBinary(max) not null
);

Alter table productDetails alter column mMoney smallmoney

create procedure stpCustomerDetails
(
	@pFirstName varchar(50),
	@pLastName varchar(50),
	@pEmail varchar(100),
	@pPassword varchar(100),
	@pDateOfBirth date,
	@pMobileNo varchar(50),
	@pAddress varchar(200)
)
As
Insert into CustomerDetails (vFirstName,vLastName,vEmailId,vPassword,dDateOfBirth,vMobileNo,vAddress)
values (@pFirstName,@pLastName,@pEmail,@pPassword,@pDateOfBirth,@pMobileNo,@pAddress)

create procedure stpProductDetails
(
	@pProductName varchar(50),
	@pCategory varchar(50),
	@pDescription varchar(50),
	@pMoney money,
	@pQuantity int,
	@pImage varBinary(max)
)
As
insert into ProductDetails (vProductName,vCategory,vDescription,mMoney,iQuantity,vImage)
values
(@pProductName,@pCategory,@pDescription,@pMoney,@pQuantity,@pImage)

select * from ProductDetails

Delete from ProductDetails where iProductId>1;

Create table OrderDetails
(
	iOrderid int identity(1,1) primary key,
	iProductid int foreign key REFERENCES ProductDetails(iProductId) ,
	iCustomerid int foreign key REFERENCES CustomerDetails(iCustId),
	smTotalPrice smallmoney,
	iTotalQuantity int,
	dOrderDate date default getdate()

);
Select * from OrderDetails;
create procedure stpOrderDetails
(
	@pProductid int,
	@pCustomerid int,
	@pTotalPrice smallmoney,
	@pTotalQuantity int
)
as
insert into OrderDetails (iProductid,iCustomerid,smTotalPrice,iTotalQuantity)
values
(@pProductid,@pCustomerid,@pTotalPrice,@pTotalQuantity);


