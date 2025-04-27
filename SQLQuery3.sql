
use NORTHWND
SELECT *FROM Products
select *from Products order by UnitPrice --en d���kten en y�kse�e do�ru s�ralar
--select *from Products order by UnitPrice  as fiyat
--ORDER BY k�sm�nda alias tan�mlanamaz; 
--AS yaln�zca s�tunlara ya da ifadelerdeki sonu�lara takma ad vermek i�in
--SELECT ifadesinde kullan�l�r.
select ProductName as �sim,UnitPrice as Fiyat  from Products order by UnitPrice
--ORDER BY DA �K�  �NEML�  KOMUT DESC(azalan) VE ASC(artan) ASC ve DESC ifadeleri 
--sadece string ifadelerde kullan�lmaz ayn� zamanda integer ifadelerde kullan�l�r.
Select ProductName as isim from Products order by  ProductName desc 
select Productname as isim from Products order by ProductName asc
select ProductID as id_numaralar� from Products order by ProductID DESC

select Productname from Products where ProductName like '%an%' 
--i�inde an ifadesi olanlar� getirir
select *from Products
select productname from products where ProductName like '%n_'
--sadece i�inden n ge�ip nla devam eden ifadeler son  i�� karakteri n olan ifadeler
select productname from Products where ProductName like '%n_%'
select productname from products where ProductName like '%n'
--n ile bitenler
select productname from products where ProductName like 'n%'
--n ile ba�layan
select productname from products where ProductName like '%n%'
--i�erisinde n olanlar
select productname from products where ProductName like '%[n,k]'
--n  ya da k ile biten
select productname from products where ProductName like '[n,k]%'
--n ya da k ba�layan
select productname from products where ProductName like '%[n,k]%'
--n k i�erenler 
select productname from products where ProductName like '%[a-b]'
--a ve b aras�ndaki harfler ile bitenler
select productname from products where ProductName like '%[a-c]%'
--a ve  b aras�nda kalan  harflerini  i�eren ifadeler
select productname from products where ProductName like '[a-k]%'
--a ve b aras�nda kalan  harfleri i�erir ile ba�layanlar

select top 3 *from Products  
select top 2  * from Employees

SELECT UnitPrice AS fiyat FROM Products;--benim from ifadesinden sonra unitprice � 
--se�mem b�t�n s�tunlar� getirece�imi g�sterir yani burda sadece unitprice ifadesini 
--se�ti�im i�in * ge�ersiz oluyor.
select top 4 unitprice from products
--SQL'de FROM ifadesi yaln�zca bir tablodan veri almak i�in kullan�l�r,
--tek bir s�tundan veri almak i�in kullan�lmaz.
select unitprice as fiyat  from products
--sadece bri veya birden fazla ifade getireceksem y�ld�z ifadesini kullanmam sa�ma olur
-- b�t�n s�tunlar i�in y�ld�z ifadesi kullan�l�r.
select top 4*from Products order by ProductID desc
select  top 95 percent *from Products --��kan ifadeyi yuvarlar products tablosundaki t�m asat�rlar�n y�zde 95 ini al�r
--select top 4 95 percent *from  products
--A��klama:
--UNION kullan�ld���nda, iki sorgunun birle�ik sonucunda tekrar eden sat�rlar kald�r�l�r.
--E�er tekrar eden sat�rlar� da g�rmek istiyorsan�z, UNION ALL kullanabilirsiniz:
--UN�ON ALL farkl� iki tabloyu birle�tirme yani
select top 4* from Products
union
--
--select 98 percent *from  products
--sgl serverda percent ifadesi sadece top ifadesiyle kullan�l�r
SELECT TOP 50 PERCENT * FROM Products

select top 5*from products
union all
select top 50 percent *from products
select *from products
select  productname as isim,  unitprice as fiyat from Products where UnitPrice in(18.00,21.00,15.00)
select productname as isim,unitprice as fiyat from products where unitprice in (18.40,21.35,15.50)
select productname as isim,unitprice as fiyat from  products where UnitPrice in (18,21,15)
--18.00  ile 18  i ayn� alg�lar.
select productname as isim,unitprice as fiyat from products where UnitPrice not in(21,35,67)
select productname as isim from Products where productname in ('chai','chang','konbu')

select productname as isim from Products where productname between 'z' and 'a'
--z den a ya kadar dedi�imde kaul etmez a dan sonraki de�erleri hesaba katar
select unitprice  as fiayt from products where UnitPrice not  between 30 and 40


select  *from Shippers
insert into Shippers (CompanyName,Phone) values ('Kurdish Shipper','5359231103')--sql server da k��eli parantezler s�tun adlar� olarak ge�er 
--burda �nemli  olan bir di�er nokta ise id numaras�  otomotik olarak artan bir de�er oldu�u i�in biz ekleyemeyiz



select *from [Order Details]
update [Order Details]
set Quantity=1,UnitPrice=30 --burda b�t�n  s�t�na etki eder


select DATEDIFF(year,'1980-12-11','2020-01-01') as [year differenece]--y�l olarak fark als�n 
--DATED�FF :�ki tarih aras�ndaki fark� al�r
--GETDATE �imdiki tarihi  al�r

--DELETE komutunda silinen kay�tlar tam olarak silinmez.�d numaras� kald��� yerden devam eder.Truncate ise tabloyu  ka�c�  olarak sildi�imiizde kald��� yerden devam eder.


select *from Customers
where Country<>'Brazil' --<> brazilyadan  farkl� olanlar� getir

select* from Customers where Country='Brazil'