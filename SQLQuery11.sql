--STORED PRODUCRED  (up user procedure)
--alter procedure un i�eri�ini de�i�tirmek i�in kullan�l�r
--procedrue  u  veri taban�ndan  tamamen  yok etmek i�in drop  kullann�r�z
use NORTHWND
select FirstName +' '+ LastName  from Employees
alter Procedure up_IsimSoyisimYazdir3
as
Begin
select FirstName +' '+ LastName  from Employees
end

execute up_IsimSoyisimYazdir3
exec up_IsimSoyisimYazdir3  --execute un k�salt�lm�� hali

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

--SP_HELPTEX--YAZDI�IMIZ STORED PROCEDURE N�N ��ER���N� G�STER�YOR
sp_helptext up up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3

--drop  proc ulkedegernegoregetir3

--��FRELEME 
Alter proc up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3
@TitleofCourtesy nvarchar(25)
@Country nvarchar(15)
--with encryption--�ifreleme
as
begin 
select *from Employees
where TitleofCourtesy=@TitleofCourtesy and 
Country=@Country
end 

 exec sp_helptext  up_TitleOfCourtesyVeUlkeyeGoreDegerleriGetir3

--�ifrelersek �al��t�rabiliriz fakat g�remiyoruz


-----------------------------------------------------------


--output parametreli sp

create proc up_toplsm�al��ansay�s�getir4
as
begin 
  select count(*) from Employees
end

exec up_toplsm�al��ansay�s�getir4

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
print '�r�n�n  fiyat� ' + cast(@ucret as nvarchar(15))


 exec sp_help up_ProductIdyeGoreUcretiHesapla3--stored procedure nin ne zaman  yarat�ld���n� g�sterir ne kadar yer kaplad���n� g�sterir
 exec sp_depends up_ProductIdyeGoreUcretiHesapla3--update i�lemi yap�p yap�lmad���n� g�sterir
 --alter i�lemi kullan�ld���nda yap�lan de�i�iklikleri buradan g�rebiliriz

select *from  Products
