use NORTHWND
select *from Products
select [ProductName] as[�r�n Ad�] from Products
--3. Takma �simlerin Kullan�m�ndaki Yaz�m Hatas�
--Takma isimlerde (alias) k��eli parantez kullanman�za gerek yok;
--ancak, isimde bo�luk veya �zel karakter varsa kullanabilirsiniz.

select [ProductName] as[�r�n Ad�],
[UnitsInStock] Stok,--asc demeden direkmen yan�na stok yazsak da olur.asc =order by
[Unitprice] �cret
from Products--asc yapmazsak da ayn� sonucu verir bizlere 
select *from Products order by UnitsInStock DESC --stok miktar� b�y�kten k����e olanlar� s�rala--�nce �art sonra s�rala
 select productname from Products order by ProductName DESC ---isimlerine g�re s�ralama
 select unitsinstock from Products order by UnitsInStock-- 
--asc yapmazsak da ayn� sonucu verir bizlere  asc=order by
select unitprice as fiyat from Products
where Unitprice>40--�nce �art sonra s�rala
order by UnitPrice DESC
 select productname as isim from products order by ProductName DESC ---isimlerine g�re s�ralama
--kullan�c�lar� isim ve soyismleriini birle�tirin ve do�um tarihlerine g�re s�ralay�n 
Select [FirstName]+ ' ' + [LastName] as [AD SOYAD],
[BirthDate] as [Do�um Tarihi]
from Employees
order by BirthDate 
--en ya�l� ki�i kimdir top �zelli�ini  kullanarak yapaca��z
Select top 4[FirstName]+ ' ' + [LastName] as [AD SOYAD],--burda bir ki�i kullanmam�z sadece en  ya�l�s�n� getirece�iz
[BirthDate] as [Do�um Tarihi]
from Employees--en ya�l� ki�iyi getirmek i�in top kullan�l�r
order by BirthDate --�zeelikler  ayn� ise ne olur do�um tarihi ayn� olursa getirir mi getirmez mi
--benim  sorum:en gen� ki�iyi getirmek istersem ne yapmal�y�m
--count ka� ki�iyi getirmek i�in kullan�l�r.
--3.K���Y� GET�RMEK �STERSEM NASIL GET�REB�L�R�M?
--�ZELL�KLER AYNI �SE  NE OLUR DO�UM TAR�H� AYNI OLURSA GET�R�R M� GET�RMEZ M�?
--NORTHW�ND �Y� �ALI�
select *from Employees
select lastname+' '+firstname as [ad soyad]  from employees where employeeid=3
select COUNT(*) from Products
select count( [ProductID]) from Products

select *from Customers
select  customerid as sirket ,country from Customers 
where Country='UK' ORDER BY City desc

--H�� STO�U  OLMAYAN �R�NLER� �CRET�NE G�RE SIRALA?
select *from products
select productname as [�R�N ADI],UnitsInStock as STOK ,UnitPrice as [�CRET] FROM Products WHERE UnitsInStock=0 order by UnitPrice


select * from Products where ProductName='Chai'
select *from Products where ProductName='C'--hi�bir�ey yazmaz

select *from Products where ProductName LIKE 'C%'--c ile ba�layan
select *from Products where ProductName LIKE 'CHEF%'
select *from Products where ProductName LIKE 'c%'
select *from Products where ProductName LIKE '%G'--g ile biten
select *from Products where ProductName LIKE '%Rodney%'

select [FirstName],[LastName]
from Employees
where [FirstName] LIKE 'A%' AND LastName LIKE '%R'--k��eli  parantez s�r�kle b�rak yapt���m�z i�in var

select *
from Employees
where PostalCode LIKE '9%'


--�lkesi ingiltere olan ka� kay�t vard�r
select count(*) from Customers
where Country='UK'

select *from Employees
where BirthDate>'1955-01-01' and BirthDate<'1960-01-01'--y�l olarak kar��la�t�r�l�r

select *from  Employees
where BirthDate Between '1955-01-01' and '1960-01-01'

select *from Products
where UnitsInStock  between 0 and 10

select *from Products
where  CategoryID=1 or CategoryID=2 or CategoryID=7


select CategoryID from products 
where CategoryID in (1,2,7)--1,2,7 i�erenler

select *from Products 
where CategoryID not in (1,2,7)

select * from Products
where UnitsInStock IN(0,1,2)
order by UnitPrice

select Region from Employees
--ge�en y�llar�n sorusu null lar�n say�s� count kullan
--KA� TANE NULL VAR REG�ONLARDA
select count(*) region from Employees where region is null


select count(*)from Employees
where Region IS NOT NULL

--STOK M�KTARI SIFIRSA EKRANDA STOKTA YOK  YAZSIN VARSA DA M�KTARI  YAZSIN

SELECT [ProductName] as [�r�n Ad�],[UnitPrice] �cret,
       case UnitsInStock when 0 then 'stokta yok'--integer olan yere string koydu�umuz i�in hata verir 
	   else convert(varchar,UnitsInStock) end as [Stok]--Yemek sepeti projende kullan �r�nler stokta var m� yok mu 
from Products

where UnitPrice>50







