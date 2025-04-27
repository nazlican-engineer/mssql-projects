--STORED PRODUCRED  (up user procedure)
--alter procedure un içeriðini deðiþtirmek için kullanýlýr
--procedrue  u  veri tabanýndan  tamamen  yok etmek için drop  kullannýrýz
use NORTHWND
select FirstName +' '+ LastName  from Employees
alter Procedure up_IsimSoyisimYazdir3
as
Begin
select FirstName +' '+ LastName  from Employees
end

execute up_IsimSoyisimYazdir3
exec up_IsimSoyisimYazdir3  --execute un kýsaltýlmýþ hali

select *from Customers
create proc up_UlkedegerinegoreGetir3
@country nvarchar(15)
as begin 
select *from Customers
where country=@country
end 

exec up_UlkedegerinegoreGetir3 @country='UK'
exec up_UlkedegerinegoreGetir3 @country='Mexico'

select *from Employees
create proc up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3
@TitleofCourtesy nvarchar(25)
@Country nvarchar(15)
as
begin 
select *from Employees
where TitleofCourtesy=@TitleofCourtesy and 
Country=@Country
end 

exec  up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3 'Ms.','USA'--pARAMETRE SAYILARI AYNI OLMALI 

--SP_HELPTEX--YAZDIÐIMIZ STORED PROCEDURE NÝN ÝÇERÝÐÝNÝ GÖSTERÝYOR
sp_helptext up up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3

--drop  proc ulkedegernegoregetir3

--ÞÝFRELEME 
Alter proc up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3
@TitleofCourtesy nvarchar(25)
@Country nvarchar(15)
--with encryption--þifreleme
as
begin 
select *from Employees
where TitleofCourtesy=@TitleofCourtesy and 
Country=@Country
end 

 exec sp_helptext  up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3

--þifrelersek çalýþtýrabiliriz fakat göremiyoruz


-----------------------------------------------------------


--output parametreli sp

create proc up_toplsmçalýþansayýsýgetir4
as
begin 
  select count(*) from Employees
end

exec up_toplsmçalýþansayýsýgetir4

create proc up_TitleofCourtesyeGoreCalisanSayisiKac3
@TitleOfCourtesy nvarchar(25),
@sayi int output 
as begin 
   select sayi=count(TitleOfCourtesy)
   from Employees
   where TitleOfCourtesy=@TitleOfCourtesy
end

declare @sonuc int 
exec up_TitleofCourtesyeGoreCalisanSayisiKac3 'Ms.', @sonuc out 
go
create proc up_ProductIdyeGoreUcretiHesapla3
@ProductID int,
@Price money output
as 
begin 
    select @Price=UnitPrice from Products
	where ProductID=@ProductID
end 

declare  @ProducttID int=5
declare @ucret  money 
exec up_ProductIdyeGoreUcretiHesapla3  @ProductID=@ProducttID,@Price=@ucret  output 
print 'Ürünün  fiyatý ' + cast(@ucret as nvarchar(15))


 exec sp_help up_ProductIdyeGoreUcretiHesapla3--stored procedure nin ne zaman  yaratýldýðýný gösterir ne kadar yer kapladýðýný gösterir
 exec sp_depends up_ProductIdyeGoreUcretiHesapla3--update iþlemi yapýp yapýlmadýðýný gösterir
 --alter iþlemi kullanýldýðýnda yapýlan deðiþiklikleri buradan görebiliriz

select *from  Products
