use NORTHWND
go 
create procedure al�m
as
begin 
select *from Orders where ShipVia>2

end

exec al�m

--silmek i�in drop kullan�r�z
drop procedure al�m
go

create procedure Toplamaa(@sayi1 int,@sayi2 int,@sonuc int output)
as
 
set @sonuc=@sayi1+@sayi2;


declare @t int
exec Toplamaa 3,4,@t output
print @t

------------------------------
go

-- Prosed�r� tan�mlama veya de�i�tirme
ALTER PROCEDURE carpma(
    @sayi1 INT,
    @sayi2 INT,
    @carpim INT OUTPUT
)
AS
BEGIN
    -- �arpma i�lemi
    SET @carpim = @sayi1 * @sayi2;
END;
GO

-- Output de�i�kenini tan�mlama
DECLARE @a INT;

-- Prosed�r� �a��rma
EXEC carpma 2, 3, @a OUTPUT;

-- Sonucu yazd�rma
PRINT @a;
GO


Alter procedure  ortalama 
(
 @sayi1 int,
 @sayi2 int,
 @sayi3 int ,
 @ort int output
)

as 
begin 
set @ort=(@sayi1+@sayi2+@sayi3)/3
end

declare @x int 
exec ortalama 1,3,4 ,@x output
print @x

--------------------------
go
CREATE PROCEDURE GetCustomerOrders
    @CustomerID NVARCHAR(5)
AS
BEGIN
    SELECT * 
    FROM Orders
    WHERE CustomerID = @CustomerID;
END;
GO

exec GetCustomerOrders 'ALFKI'

go
Alter procedure adsoyad
as
begin 
select FirstName + '  ' + LastName from Employees

end

exec adsoyad
go

select *from Customers
go
create procedure up_�lke
@country nvarchar(15)
as
begin
 select *from Customers where Country=@country
end

exec up_�lke 'UK'
exec up_�lke 'AMER�CA'
