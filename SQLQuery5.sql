use NORTHWND
select *from Products
select [ProductName] as[ürün Adý] from Products
--3. Takma Ýsimlerin Kullanýmýndaki Yazým Hatasý
--Takma isimlerde (alias) köþeli parantez kullanmanýza gerek yok;
--ancak, isimde boþluk veya özel karakter varsa kullanabilirsiniz.

select [ProductName] as[ürün Adý],
[UnitsInStock] Stok,--asc demeden direkmen yanýna stok yazsak da olur.asc =order by
[Unitprice] ücret
from Products--asc yapmazsak da ayný sonucu verir bizlere 
select *from Products order by UnitsInStock DESC --stok miktarý büyükten küçüðe olanlarý sýrala--önce þart sonra sýrala
 select productname from Products order by ProductName DESC ---isimlerine göre sýralama
 select unitsinstock from Products order by UnitsInStock-- 
--asc yapmazsak da ayný sonucu verir bizlere  asc=order by
select unitprice as fiyat from Products
where Unitprice>40--önce þart sonra sýrala
order by UnitPrice DESC
 select productname as isim from products order by ProductName DESC ---isimlerine göre sýralama
--kullanýcýlarý isim ve soyismleriini birleþtirin ve doðum tarihlerine göre sýralayýn 
Select [FirstName]+ ' ' + [LastName] as [AD SOYAD],
[BirthDate] as [Doðum Tarihi]
from Employees
order by BirthDate 
--en yaþlý kiþi kimdir top özelliðini  kullanarak yapacaðýz
Select top 4[FirstName]+ ' ' + [LastName] as [AD SOYAD],--burda bir kiþi kullanmamýz sadece en  yaþlýsýný getireceðiz
[BirthDate] as [Doðum Tarihi]
from Employees--en yaþlý kiþiyi getirmek için top kullanýlýr
order by BirthDate --özeelikler  ayný ise ne olur doðum tarihi ayný olursa getirir mi getirmez mi
--benim  sorum:en genç kiþiyi getirmek istersem ne yapmalýyým
--count kaç kiþiyi getirmek için kullanýlýr.
--3.KÝÞÝYÝ GETÝRMEK ÝSTERSEM NASIL GETÝREBÝLÝRÝM?
--ÖZELLÝKLER AYNI ÝSE  NE OLUR DOÐUM TARÝHÝ AYNI OLURSA GETÝRÝR MÝ GETÝRMEZ MÝ?
--NORTHWÝND ÝYÝ ÇALIÞ
select *from Employees
select lastname+' '+firstname as [ad soyad]  from employees where employeeid=3
select COUNT(*) from Products
select count( [ProductID]) from Products

select *from Customers
select  customerid as sirket ,country from Customers 
where Country='UK' ORDER BY City desc

--HÝÇ STOÐU  OLMAYAN ÜRÜNLERÝ ÜCRETÝNE GÖRE SIRALA?
select *from products
select productname as [ÜRÜN ADI],UnitsInStock as STOK ,UnitPrice as [ÜCRET] FROM Products WHERE UnitsInStock=0 order by UnitPrice


select * from Products where ProductName='Chai'
select *from Products where ProductName='C'--hiçbirþey yazmaz

select *from Products where ProductName LIKE 'C%'--c ile baþlayan
select *from Products where ProductName LIKE 'CHEF%'
select *from Products where ProductName LIKE 'c%'
select *from Products where ProductName LIKE '%G'--g ile biten
select *from Products where ProductName LIKE '%Rodney%'

select [FirstName],[LastName]
from Employees
where [FirstName] LIKE 'A%' AND LastName LIKE '%R'--köþeli  parantez sürükle býrak yaptýðýmýz için var

select *
from Employees
where PostalCode LIKE '9%'


--ülkesi ingiltere olan kaç kayýt vardýr
select count(*) from Customers
where Country='UK'

select *from Employees
where BirthDate>'1955-01-01' and BirthDate<'1960-01-01'--yýl olarak karþýlaþtýrýlýr

select *from  Employees
where BirthDate Between '1955-01-01' and '1960-01-01'

select *from Products
where UnitsInStock  between 0 and 10

select *from Products
where  CategoryID=1 or CategoryID=2 or CategoryID=7


select CategoryID from products 
where CategoryID in (1,2,7)--1,2,7 içerenler

select *from Products 
where CategoryID not in (1,2,7)

select * from Products
where UnitsInStock IN(0,1,2)
order by UnitPrice

select Region from Employees
--geçen yýllarýn sorusu null larýn sayýsý count kullan
--KAÇ TANE NULL VAR REGÝONLARDA
select count(*) region from Employees where region is null


select count(*)from Employees
where Region IS NOT NULL

--STOK MÝKTARI SIFIRSA EKRANDA STOKTA YOK  YAZSIN VARSA DA MÝKTARI  YAZSIN

SELECT [ProductName] as [Ürün Adý],[UnitPrice] ücret,
       case UnitsInStock when 0 then 'stokta yok'--integer olan yere string koyduðumuz için hata verir 
	   else convert(varchar,UnitsInStock) end as [Stok]--Yemek sepeti projende kullan ürünler stokta var mý yok mu 
from Products

where UnitPrice>50







