CREATE TABLE CUSTOMER(
customerID varchar(20),
cusName varchar(20),
cusAge int,
cusPhone int);


CREATE PROCEDURE customerStored
@customerID varchar(50),
@cusName varchar(50),
@cusAge int,
@cusPhone varchar(50) 
AS
  INSERT INTO CUSTOMER(customerID, cusName, cusAge, cusPhone)
  values(@customerID,@cusName,@cusAge,@cusPhone);
  GO

  EXEC customerStored @customerID='102',@cusName='vijay',@cusAge='26',@cusPhone='649679';

  DROP PROCEDURE customerStored;

  select * from CUSTOMER;

  CREATE PROCEDURE pick1
  @cusName varchar(50)

AS
  select * from CUSTOMER
  where cusName=@cusName;
  GO

  exec pick1 @cusName = 'Ajay';

  drop procedure pick1;

  CREATE PROCEDURE pick2
  @cusName varchar(50),
  @customerID varchar(20)

AS
  UPDATE  CUSTOMER
  SET cusName=@cusName
  where customerID=@customerID;
 GO

 drop procedure pick2;

 exec pick2 @cusName='afsal', @customerID='101';

 select * from CUSTOMER;




